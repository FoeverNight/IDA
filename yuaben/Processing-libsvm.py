import sys
import os
import subprocess
os.chdir('./data')

CodeFile = open("1gram.txt", "r").readlines()
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
fout = open("1gram-libsvm.txt", "w")
for line in TargetFile:
    # print line
    line = line.replace('\n', '').replace('\r', '').replace('asm', 'txt')
    txtFile = open(line, "r")
    # print line
    for i in range(length):
        codenum[i] = 0
    for code in txtFile:
        #print code
        for i in range(length):
            if code.replace('\n', '') == codelist[i]:
                codenum[i] = codenum[i] + 1
                break
    for i in range(length):
        fout.write(' ' + str(i) + ':' + str(codenum[i]))
    fout.write('\n')
    #fout.write(str(codedict))
    txtFile.close()
fout.close()
print ("All Process have been started!")
