# -*- coding: utf-8 -*-
def _parse_macros(self):
    self._iter_macros(self._parse_macro)

def _parse_macro(self, line, p, o):
    if line[0] == "$":
        command_line = line[1:] 
        macro_command = command_line.split("(")[0]
        
        if(len(command_line.split("(")) == 1): #nemamo argumente rijec je o END makro 
            real_arguemnts = []
        else:
            arguments = command_line.split("(")[1] #string koji sadrzi argumente no i zagrade
            arguments = arguments.split(")")
            real_arguemnts = arguments[0].split(",") #lista argumenata
        
        #print(macro_command)
        #print(real_arguemnts)
        
        if(macro_command == "MV"):
            #asemblerski kod
            asm_code = ["@" + real_arguemnts[0], "D=M", "@" + real_arguemnts[1], "M=D"] #lista linija asm koda za move
            return asm_code
        elif(macro_command == "SWP"):
            asm_code = ["@" + real_arguemnts[0], "D=M", "@temp", "M=D", "@"+ real_arguemnts[1], "D=M", "@"+real_arguemnts[0], "M=D", "@temp", "D=M",  "@"+real_arguemnts[1], "M=D"]
            return asm_code
        elif(macro_command == "SUM"):
            asm_code = ["@" + real_arguemnts[0], "D=M", "@" + real_arguemnts[1], "D=D+M", "@" + real_arguemnts[2], "M=D"]
            return asm_code
        elif(macro_command == "WHILE"):
            self._nested_loops += 1 # u slucaju nested loops broj nam govori koji while je pridruzen kojem endu
            asm_code = ["(WHILE" + str(self._nested_loops) + ")", "@" + real_arguemnts[0], "D=M", "@END" + str(self._nested_loops), "D;JEQ"]
            return asm_code
        elif(macro_command == "END"):
            asm_code = ["@WHILE" + str(self._nested_loops), "0;JMP", "(END" + str(self._nested_loops) + ")"]
            self._nested_loops -= 1 #sada smanjujemom jer smo zatvorili jedan loop
            return asm_code
        else:
            self._flag = False
            self._line = o
            self._errm = "Invalid command"
            return ""
    else:
        return [line] #nije makro

