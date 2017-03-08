#!/usr/bin/env python
'''Utility to parse and plot sensor data'''
__author__ = "dccharacter"

import numpy as np
import matplotlib.pyplot as plt
##import matplotlib.rcsetup as rcsetup

infile = './meas7.txt'

#data = np.loadtxt(infile)
data = np.genfromtxt(infile, names=True, usecols=(0,1))
#print data

plt.plot(data['Squal'])
plt.show()
