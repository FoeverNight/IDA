import sys
import os
import subprocess
os.chdir('./data')

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

#print codelist
TargetFile = open("index.txt", "r").readlines()
for line in TargetFile:
    # print line
    line = line.replace('\n', '').replace('\r', '')
    AsmFile = open(line, "r")
    outfile = line.replace('asm', 'txt')
    fout = open(outfile, "w")
    # print line
    sum = 0
    for i in range(length):
        codenum[i] = 0
    for code in AsmFile:
        element = code.split()
        elength = len(element)
        #print code
        if elength >= 2:
            for i in range(length):
                if element[1] == codelist[i]:
                    sum = sum + 1
                    codenum[i] = codenum[i] + 1
                    fout.write(codelist[i])
                    fout.write('\n')
                    break
    for i in range(length):
        codedict[codelist[i]] = codedict[codelist[i]] + float(codenum[i])/sum
    #fout.write(str(codedict))
    AsmFile.close()
    fout.close()
resultout = open('1gram.txt', "w")
sortdict = sorted(codedict.items(), lambda x, y: cmp(x[1], y[1]), reverse=True)
now = 0
for k, v in sortdict:
    now = now + 1
    resultout.write(str(k)+'\n')
    if now == 50:
        break
resultout.close()
print ("All Process have been started!")
