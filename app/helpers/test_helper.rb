require 'pycall/import'
include PyCall::Import

module TestHelper
  PyCall.init('python3')

  pyimport :os
  p os.uname

  PyCall.exec 'def double(x): return x * 2'

  p PyCall.eval('double(123)')
end

