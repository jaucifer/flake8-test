# -*- coding: utf-8 -*-
"""
Created on Mon Sep 23 17:03:59 2019

@author: akbar
https://runnable.com/docker/python/dockerize-your-flask-application
"""

from flask import Flask
app = Flask(__name__)
var_test = ""
@app.route('/getmul')
def getmul():
    x = 5*2
      return ('multiply of 2 and 5 = {}'.format(x))

if __name__=='__main__':
    app.run(debug=True, host='0.0.0.0', port=5002,)

