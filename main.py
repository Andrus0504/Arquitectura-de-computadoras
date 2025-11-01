import tkinter as tk
from tkinter.filedialog import askopenfilename, asksaveasfilename
import decoder

filename = None
contens = None


def slect_file():
    global filename, contens, filename_label, file_text
    filename = askopenfilename()
    filename_label["text"] = filename
    with open(filename) as file:
        contents = file.read()
        file_textarea.delete("1.0", tk.END)
        file_textarea.insert(tk.END, contents)

def translate_file():
    global filename

    if filename is None:
        return

    with open(filename) as file:
        lines = file.readlines()

    instructions = []
    for line in lines:
        instr = decoder.translate(line)
        instructions.append(instr + "\n")

    savefile = asksaveasfilename(defaultextension=".mem")
    with open(savefile, "w") as file:
        file.writelines(instructions)

root = tk.Tk()

tk.Button(root, text="Select file", command=slect_file).pack(pady=5)

filename_label = tk.Label(root, text="File name")
filename_label.pack(pady=5)

file_textarea = tk.Text(root, height=12, width=40)
file_textarea.pack(pady=5)

tk.Button(root, text="Translate", command=translate_file).pack(pady=5)

root.mainloop()
