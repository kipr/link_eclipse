'''
Created on Mar 4, 2015

@author: gras
'''

from kovan import msleep
from kovan import motor
from kovan import ao

def main() :
    print "Starting...."
    testMotors()
    print "Finished"

def testMotors() :
    motor(1,100)
    motor(3,100)
    msleep(500)
    ao()


if __name__ == "__main__":
    main()
