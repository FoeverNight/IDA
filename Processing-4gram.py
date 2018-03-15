import sys
import os
import subprocess
os.chdir('./data')

CodeFile = open("3gram.txt", "r").readlines()
tcodelist = []

for line in CodeFile:
    line = line.replace('\n', '').replace('\r', '')
    # print line
    tcodelist.append(line)
print tcodelist
#print codedict


TargetFile = open("index.txt", "r").readlines()
codelist = []
codenum = []
codedict = {}
for line in TargetFile:
    # print line
    line = line.replace('\n', '').replace('\r', '').replace('asm', 'txt')
    txtFile = open(line, "r")
    # print line
    sum = 0
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
        if gram in tcodelist:
            gram = gram + t[now % 4]
            sum = sum + 1
            if gram in codelist:
                codenum[codelist.index(gram)] = codenum[codelist.index(gram)]+1
            else:
                codelist.append(gram)
                codenum.append(1)
                codedict[gram] = 0
    length = len(codelist)
    for i in range(length):
        codedict[codelist[i]] = codedict[codelist[i]] + float(codenum[i])/sum
    txtFile.close()
#print(str(codedict))
resultout = open('4gram.txt', "w")
sortdict = sorted(codedict.items(), lambda x, y: cmp(x[1], y[1]), reverse=True)
now = 0
for k, v in sortdict:
    now = now + 1
    resultout.write(str(k)+'\n')
    if now == 150:
        break
resultout.close()
print ("All Process have been started!")
