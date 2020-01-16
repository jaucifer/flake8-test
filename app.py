# -*- coding: utf-8 -*-
"""
Created on Mon Sep 23 17:03:59 2019

@author: akbar
https://runnable.com/docker/python/dockerize-your-flask-application
"""

from flask import Flask
app = Flask(__name__)

@app.route('/getsum')
def getsum():
    x = 19+2
    return ('sum of 2 and 8 = {}'.format(x))
    
if __name__=='__main__':
    app.run(debug=True, host='0.0.0.0', port=5001)
