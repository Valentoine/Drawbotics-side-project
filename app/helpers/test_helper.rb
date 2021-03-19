require 'pycall/import'
include PyCall::Import

module TestHelper
  PyCall.init('python3')
  
  # Run in console : python3 -m pip install XXX

  PyCall.exec('import os')
  PyCall.exec('import sys')
  PyCall.exec('import pandas as pd')
  PyCall.exec('import numpy as np')

  PyCall.exec("df = pd.read_csv('../../storage/data_warehouse.csv', sep=',', encoding='latin-1')")

  p PyCall.eval("'First information about the csv'")

  p PyCall.eval("df.shape")
  p PyCall.eval("''")
  p PyCall.eval("df.describe()")
  p PyCall.eval("''")
  p PyCall.eval("df.dtypes")
  p PyCall.eval("''")

  p PyCall.eval('df.head(10)')

  # p PyCall.eval('double(123)')
end

