import sys
import os
import subprocess

global idcScriptFileName
global ida32qFilePath
global ida64qFilePath
global ida32wFilePath
global ida64wFilePath

ida32qFilePath = '"C:\Program Files\IDAPro6.6\idaq.exe"'
ida64qFilePath = "C:\Program Files\IDAPro6.6\idaq64.exe"
ida32wFilePath = '"C:\Program Files\IDAPro6.6\idaw.exe"'
ida64wFilePath = '"C:\Program Files\IDAPro6.6\idaw64.exe"'
ida64wFilePath2 = "idaw64.exe"
idcScriptFileName = "myanalysis.idc"
path = "C:\\Users\\Night\\Documents\\Code\\exe\\"
files = os.listdir(path)

#TargetList = "C:\\Users\\Night\\Documents\\Code\\new\\test.txt"
#TargetFile_object = open(TargetList, "r").readlines()
#for eachline in TargetFile_object:
for line in files:
    # print eachline,
    # print eachline
    tmpExecStr = ida64wFilePath + " -B -S" + idcScriptFileName + " " + path + line
    # tmpExecStr = "cd C:\Program Files\IDAPro6.6 && " + ida64wFilePath2 + " -B -S"+idcScriptFileName + " " + eachline
    print tmpExecStr + "\n"
    # os.system(tmpExecStr) # singl process with cmdwindow
    # os.popen(tmpExecStr)  # singl process without cmdwindow
    subprocess.Popen(tmpExecStr)  # mulity process with cmd window

print ("All Process have been started!")
subprocess.Popen()