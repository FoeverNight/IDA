import sys
import os
import subprocess
os.chdir('./data')
path = "C:\\Users\\Night\\Documents\\Code\\asm\\"
files = os.listdir(path)

CodeFile = open("code.txt", "r").readlines()
codelist = []
codenum = []
codedict = {}
for line in CodeFile:
    line = line.replace('\n', '').replace('\r', '')
    # print line
    codelist.append(line)
    codenum.append(0)
    codedict[line] = 0
#print codedict
length = len(codelist)
headlist = []
headnum = []
headdict = {}

headout = open("headfile-libsbm.txt", "w")
onegramout = open("1gram-libsbm.txt", "w")
#print codelist
for line in files:
    # print line
    AsmFile = open(path + line, "r")
    opcodeout = open(line.replace('asm', 'txt'), "w")
    # print line
    sum = 0
    for i in range(length):
        codenum[i] = 0
    for code in AsmFile:
        #print code
        element = code.split()
        elength = len(element)

        h = element[0].split(':')
        if h not in headlist:
            headlist.append(h)
            headnum.append(0)

        t = headlist.index(h)
        headnum[t] = headnum[t] + 1

        if elength >= 2:
            for i in range(length):
                if element[1] == codelist[i]:
                    sum = sum + 1
                    codenum[i] = codenum[i] + 1
                    opcodeout.write(codelist[i])
                    opcodeout.write('\n')
                    break
    for i in range(length(headlist)):
        headout.write(' ' + str(headlist[i]) + ':' + str(headnum[i]))
    for i in range(length):
        codedict[codelist[i]] = codedict[codelist[i]] + float(codenum[i])/sum
    #fout.write(str(codedict))
    AsmFile.close()
    opcodeout.close()

resultout = open('1gram.txt', "w")
sortdict = sorted(codedict.items(), lambda x, y: cmp(x[1], y[1]), reverse=True)
now = 0
for k, v in sortdict:
    now = now + 1
    resultout.write(str(k)+'\n')
    if now == 150:
        break
resultout.close()


print ("All Process have been started!")
