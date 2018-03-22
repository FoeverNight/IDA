import sys
import os
import subprocess
asmpath = "C:\\Users\\Night\\Documents\\Code\\IDA\\data\\asm\\"
datapath = "C:\\Users\\Night\\Documents\\Code\\IDA\\data\\"
opcodepath = "C:\\Users\\Night\\Documents\\Code\\IDA\\data\\opcode\\"

asmfiles = os.listdir(asmpath)

# preprocessing
CodeFile = open(datapath + "code.txt", "r").readlines()
codelist = []
codenum = []
codedict = {}
for line in CodeFile:
    line = line.replace('\n', '').replace('\r', '')
    codelist.append(line)
    codenum.append(0)
    codedict[line] = 0
length = len(codelist)
headlist = []
headnum = []
headdict = {}


# readasm
headout = open(datapath + "headfile-libsvm.txt", "w")

for line in asmfiles:
    print line
    asm = open(asmpath + line, "r")
    opcodeout = open(opcodepath + line.replace('asm', 'txt'), "w")
    sum = 0
    for i in range(length):
        codenum[i] = 0
    for code in asm:
        element = code.split()
        elength = len(element)

        if elength >=1:
            h = element[0].split(':')
            if h[0] not in headlist:
                headlist.append(h[0])
                headnum.append(0)

            t = headlist.index(h[0])
            headnum[t] = headnum[t] + 1

        if elength >= 2:
            for i in range(length):
                if element[1] == codelist[i]:
                    sum = sum + 1
                    codenum[i] = codenum[i] + 1
                    opcodeout.write(codelist[i])
                    opcodeout.write('\n')
                    break

    for i in range(len(headlist)):
        headout.write(' ' + str(i) + ':' + str(headnum[i]))
        headnum[i] = 0
    headout.write('\n')

    for i in range(length):
        codedict[codelist[i]] = codedict[codelist[i]] + float(codenum[i])/sum
    opcodeout.close()
headout.close()

sortout = open(datapath + '1gram-sort.txt', "w")
sortdict = sorted(codedict.items(), lambda x, y: cmp(x[1], y[1]), reverse=True)
now = 0
for k, v in sortdict:
    now = now + 1
    sortout.write(str(k)+'\n')
    if now == 150:
        break
sortout.close()

onegramout = open(datapath + "1gram-libsvm.txt", "w")
onegramsort = open(datapath + "1gram-sort.txt", "r").readlines()
codelist = []
codenum = []
for line in onegramsort:
    line = line.replace('\n', '').replace('\r', '')
    codelist.append(line)
    codenum.append(0)
length = len(codelist)

opcodefiles = os.listdir(opcodepath)
for line in opcodefiles:
    opcode = open(opcodepath + line, "r")
    for i in range(length):
        codenum[i] = 0
    for line in opcode:
        for i in range(length):
            if line.replace('\n', '') == codelist[i]:
                codenum[i] = codenum[i] + 1
                break
    for i in range(length):
        onegramout.write(' ' + str(i) + ':' + str(codenum[i]))
    onegramout.write('\n')
    opcode.close()

print ("All Process have been started!")
