import sys
import os
import subprocess
os.chdir('./data')

CodeFile = open("code.txt", "r").readlines()
tcodelist = []
for line in CodeFile:
    line = line.replace('\n', '').replace('\r', '')
    # print line
    tcodelist.append(line)
#print codedict
tlength = len(tcodelist)

codelist = []
codenum = []
codedict = {}
for i in range(tlength):
    for j in range(tlength):
        codelist.append(tcodelist[i]+tcodelist[j])
        codenum.append(0)
        codedict[tcodelist[i]+tcodelist[j]] = 0
length = len(codelist)

TargetFile = open("index.txt", "r").readlines()
for line in TargetFile:
    # print line
    line = line.replace('\n', '').replace('\r', '').replace('asm', 'txt')
    txtFile = open(line, "r")
    # print line
    sum = 0
    print sum
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
        for j in range(length):
            if gram == codelist[j]:
                sum = sum + 1
                codenum[j] = codenum[j] + 1
                break
    for i in range(length):
        codedict[codelist[i]] = codedict[codelist[i]] + float(codenum[i])/sum

    txtFile.close()
resultout = open('2gram.txt', "w")
sortdict = sorted(codedict.items(), lambda x, y: cmp(x[1], y[1]), reverse=True)
now = 0
for k, v in sortdict:
    now = now + 1
    resultout.write(str(k)+'\n')
    if now == 150:
        break
resultout.close()
print ("All Process have been started!")
