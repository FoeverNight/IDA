import sys
import os
import subprocess
os.chdir('./data')

CodeFile = open("1gram.txt", "r").readlines()
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
        for k in range(tlength):
            for p in range(tlength):
                codelist.append(tcodelist[i]+tcodelist[j]+tcodelist[k]+tcodelist[p])
                codenum.append(0)
                codedict[tcodelist[i]+tcodelist[j]+tcodelist[k]+tcodelist[p]] = 0
length = len(codelist)

TargetFile = open("index.txt", "r").readlines()
for line in TargetFile:
    # print line
    line = line.replace('\n', '').replace('\r', '').replace('asm', 'txt')
    txtFile = open(line, "r")
    # print line
    sum = 0
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
        gram = t[(now+1) % 4]+t[(now+2) % 4] + t[(now+3) % 4]
        t[now % 4] = code.replace('\n', '')
        if now != 1 and now != 2 and now!=3:
            gram = gram + t[now % 3]
            for i in range(tlength):
                if t[(now+1) % 4] == tcodelist[i]:
                    for j in range(tlength):
                        if t[(now+2) % 4] == tcodelist[j]:
                            for k in range(tlength):
                                if t[(now+3) % 4] == tcodelist[k]:
                                    for p in range(tlength):
                                        if t[now % 4] == tcodelist[p]:
                                            sum = sum + 1
                                            codenum[i*125000+j*2500+k*50+p] = codenum[i*125000+j*2500+k*50+p] + 1
                                            break
                                    break
                            break
                    break
    for i in range(length):
        codedict[codelist[i]] = codedict[codelist[i]] + float(codenum[i])/sum

    txtFile.close()
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
