import sys
import os
import subprocess
datapath = "C:\\Users\\Night\\Documents\\Code\\IDA\\data\\"
opcodepath = "C:\\Users\\Night\\Documents\\Code\\IDA\\data\\opcode\\"

tcodelist = []
for line in open(datapath + "1gram-sort.txt"):
    line = line.replace('\n', '').replace('\r', '')
    tcodelist.append(line)

codelist = []
codenum = []
codedict = {}
for file in os.listdir(opcodepath):
    opcode = open(opcodepath + file, "r")
    sum = 0
    now = 0
    t = ["", ""]
    for line in opcode:
        now = now + 1
        gram = t[(now+1) % 2]
        t[now % 2] = line.replace('\n', '')
        if gram in tcodelist:
            gram = gram + t[now % 2]
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

sortout = open(datapath + '2gram-sort.txt', "w")
sortdict = sorted(codedict.items(), lambda x, y: cmp(x[1], y[1]), reverse=True)
now = 0
for k, v in sortdict:
    now = now + 1
    sortout.write(str(k)+'\n')
    if now == 150:
        break
sortout.close()

twogramout = open(datapath + "2gram-libsvm.txt", "w")
codelist = []
codenum = []
for line in open(datapath + "2gram-sort.txt"):
    line = line.replace('\n', '').replace('\r', '')
    codelist.append(line)
    codenum.append(0)
length = len(codelist)

for file in os.listdir(opcodepath):
    opcode = open(opcodepath + file, "r")
    for i in range(length):
        codenum[i] = 0
    now = 0
    t = ["", ""]
    for line in opcode:
        now = now + 1
        t[now % 2] = line.replace('\n', '')
        gram = t[(now+1) % 2] + t[now % 2]
        if gram in codelist:
            codenum[codelist.index(gram)] = codenum[codelist.index(gram)] + 1
    for i in range(length):
        twogramout.write(' ' + str(i) + ':' + str(codenum[i]))
print ("All Process have been started!")
