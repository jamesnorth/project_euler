# -*- coding: utf-8 -*-
"""
My Mathematics Library
This Python library is an accumulation of several mathematical algorithms
that I have implemented. Most are not optimised but they do work.

James North
"""

# TODO:
#   1) Add more simple algorihtms
#   2) Add unit tests

from __future__ import division
from numpy import r_
from math import sqrt

def EratostheneSieve(n):
    """
    An implementation of the Sieve of Eratosthene algorithm, it
    generates a list of the prime numbers from 2 to the value of
    n. This is a very efficient algorithm, this implementation is
    not optimised yet however.
    """
    p = 2
    
    x = r_[p:n:1]
    
    def test(x):
        if x % p == 0 and x != p:
            return 0
        else:
            return x
    
    while p**2 <= n:
        x = map(test, x)
        p = p + 1
    
    temp = []
    for val in x:
        if val != 0:
            temp.append(val)
    
    return temp

def is_prime(n):
    """
    A simple aglorithm to test if a number is a prime or not.
    Got this from stackoverflow.com.
    """

    # Numbers less than 1 are not prime numbers
    if n <= 1:
        return False

    # Two is the only even prime number
    if n == 2:
        return True

    # No other even number is a prime number
    if n % 2 == 0:
        return False
    
    maxFactor = sqrt(n)
    for i in range(3, maxFactor, 2):
        if n % i == 0:
            return False
    
    return True


def fibonacci(N):
    """
    Generates the fibonacci sequence, the function will
    generate N elements of the sequence.
    """
    # Start the sequence with two seed values
    sequence = [0, 1]
    
    for n in range(2, N, 1):
        sequence.append(sequence[n-1] + sequence[n-2])
    
    return sequence

def EuclideanGCG(a, b):
    """"
    A very simple implementation of Euclid's GCD algorithm.
    """
    while b != 0:
        t = b
        b = a % b
    return a

if __name__ == "__main__":
    print "Sieve Of Eratosthenes Implementation"
    print EratostheneSieve(150)
    print ""
    
    print "Fibonacci Sequence"
    print fibonacci(25)
    print ""
    
    print "GCD Implementation"
    

