import sys
import os
import subprocess
os.chdir('./data')

CodeFile = open("4gram.txt", "r").readlines()
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
fout = open("4gram-libsvm.txt", "w")
for line in TargetFile:
    # print line
    line = line.replace('\n', '').replace('\r', '').replace('asm', 'txt')
    txtFile = open(line, "r")
    # print line
    for i in range(length):
        codenum[i] = 0
    now = 0
    t = []
    t.append("")
    t.append("")
    t.append("")
    t.append("")
    for code in txtFile:
        now = now + 1
        gram = t[(now+1) % 4]+t[(now+2) % 4]+t[(now+3) % 4]
        t[now % 4] = code.replace('\n', '')
        if now != 1 and now != 2 and now!=3:
            gram = gram + t[now % 4]
            for i in range(length):
                if gram == codelist[i]:
                    codenum[i] = codenum[i] + 1
    for i in range(length):
        fout.write(' ' + str(i) + ':' + str(codenum[i]))
    fout.write('\n')
    #fout.write(str(codedict))
    txtFile.close()
fout.close()
print ("All Process have been started!")
