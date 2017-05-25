# -*- coding: utf-8 -*-
"""
Created on Fri Mar 24 09:57:59 2017

@author: admin
"""
import csv

survived = []
datapoints = []

dataFile = open('train.csv').readlines()


def age_or_mean(age):
    if age == '':
        return 28.5
    else:
        return float(age)
        
dataReader = csv.DictReader(dataFile)
for x in dataReader: 
    age = age_or_mean(x['Age'])
    sex = x['Sex']
    pclass = int(x['Pclass'])

    if sex == 'male':
        sex = 1
    else: 
        sex = 0
        
    datapoints.append([age, sex, pclass])
    
    if x['Survived'] == '1':
        survived.append(True)
    else:
        survived.append(False)

#train and test on different datapoints to ensure your regression line is not too ad hoc
train_datapoints = datapoints[0:700]
train_survived = survived[0:700]
test_datapoints = datapoints[700:]
test_survived = survived[700:]

from sklearn import tree
from sklearn.linear_model import LogisticRegression
#from sklearn.neighbors import KNeighborsClassifier
#mymodel = KNeighborsClassifier(n_neighbors=3, weights='distance')
mymodel = LogisticRegression()

mymodel.fit(train_datapoints, train_survived)

#-0.02 * age + -2.41 * sex + -0.98 * pclass
predictions = mymodel.predict(test_datapoints)

corrects = 0
for index in range(len(test_survived)):
    if test_survived[index] == predictions[index]:
        corrects += 1

numOfPassengers = len(test_survived)
print "You got " + str(corrects/float(numOfPassengers)) + " percent correct"