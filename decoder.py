def map_op_funct(op:str):
    if op == "add":
        return 0b100000
    if op == "sub":
        return 0b100010
    if op == "or":
        return 0b100101

def translate(instr: str):
    #add $0 $1 $2
    #parts = [add, $0, $1, $2]
    parts = instr.split(" ")
    op = parts[0]
    funct = map_op_funct(op)
    # R-type
    rd = int(parts[1].lstrip("$"))
    rs = int(parts[2].lstrip("$"))
    rt = int(parts[3].lstrip("$"))

    #opcode src 1 src 2 dst shamt funct
    #000000 00000 00001 01010 00000 100000

    out = ""
    out += "000000" #opcode
    out += bin(rs)[2:].zfill(5) #src 1
    out += bin(rt)[2:].zfill(5) #src 2
    out += bin(rd)[2:].zfill(5) #dst
    out += "00000" #dst
    out += bin(funct)[2:] #dst

    return out
