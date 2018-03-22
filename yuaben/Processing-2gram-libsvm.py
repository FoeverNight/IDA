import sys
import os
import subprocess
os.chdir('./data')

CodeFile = open("2gram.txt", "r").readlines()
codelist = []
codenum = []
for line in CodeFile:
    line = line.replace('\n', '').replace('\r', '')
    # print line
    codelist.append(line)
    codenum.append(0)
#print codedict
length = len(codelist)

#print codelist
TargetFile = open("index.txt", "r").readlines()
fout = open("2gram-libsvm.txt", "w")
for line in TargetFile:
    # print line
    line = line.replace('\n', '').replace('\r', '').replace('asm', 'txt')
    txtFile = open(line, "r")
    # print line
    for i in range(length):
        codenum[i] = 0
    now = 0
    t = ""
    for code in txtFile:
        now = now + 1
        gram = t
        t = code.replace('\n', '')
        if now != 1:
            gram = gram + t
        for i in range(length):
            if codelist[i] == gram:
                codenum[i] = codenum[i] + 1
                break
    for i in range(length):
        fout.write(' ' + str(i) + ':' + str(codenum[i]))
    fout.write('\n')
    #fout.write(str(codedict))
    txtFile.close()
fout.close()
print ("All Process have been started!")
