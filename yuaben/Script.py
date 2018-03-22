import sys
import os
import subprocess

global idcScriptFileName
global ida32qFilePath
global ida64qFilePath
global ida32wFilePath
global ida64wFilePath

idcScriptFileName = "batchmod.idc"
ida32qFilePath = '"C:\Program Files\IDAPro6.6\idaq.exe"'
ida64qFilePath = "C:\Program Files\IDAPro6.6\idaq64.exe"
ida32wFilePath = '"C:\Program Files\IDAPro6.6\idaw.exe"'
ida64wFilePath = '"C:\Program Files\IDAPro6.6\idaw64.exe"'
ida64wFilePath2 = "idaw64.exe"

TargetList = "C:\\Users\\Night\\Documents\\Code\\new\\test.txt"

TargetFile_object = open(TargetList, "r").readlines()
for eachline in TargetFile_object:
    # print eachline,
    # print eachline
    eachline = eachline.replace('\n', '').replace('\r', '')
    if os.path.exists(eachline):
        # tmpExecStr = ida64wFilePath + " -B " + eachline
        tmpExecStr = "cd C:\Program Files\IDAPro6.6 && " + ida64wFilePath2 + " -B " + eachline
        print tmpExecStr + '\n',
        # os.system(tmpExecStr) # singl process with cmdwindow
        os.popen(tmpExecStr)  # singl process without cmdwindow
        # subprocess.Popen(tmpExecStr)  # mulity process with cmd window

print ("All Process have been started!")