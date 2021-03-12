
include 'emu8086.inc'
 
org 100h

print "Input Marks % value :"
call scan_num ; 

printn ''
printn 'Your Letter Grade:'



cmp cx,80
jge gradeA+

cmp cx,75
jge gradeA

cmp cx,70
jge grdA-

cmp cx,65
jge gradeB+

cmp cx,60
jge gradeB

cmp cx,55
jge grdB- 

cmp cx,50
jge gradeC+ 

cmp cx,45
jge gradeC 

cmp cx,40
jge gradeD 

cmp cx,40
jl gradeF

gradeA+: 
printn 'A+ (Plus)' 

jmp stop

gradeA: 
printn 'A (Plain)'

jmp stop

grdA-: 
printn 'A- (Minus)' 
 
jmp stop

gradeB+: 
printn 'B+ (Plus)'

jmp stop

gradeB: 
printn 'B (Plain)'

jmp stop

grdB-: 
printn 'B- (Minus)'  

jmp stop

gradeC+: 
printn 'C+ (Plus)'

jmp stop

gradeC: 
printn 'C (Plain)'

jmp stop 

gradeD: 
printn 'D (Plain)'

jmp stop 


gradeF: 
printn 'F (Fail)'

jmp stop 

stop:

ret 

define_scan_num

define_print_num
define_print_num_uns
end

