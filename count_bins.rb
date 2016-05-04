require 'json'
file = File.read('bin2.csv')
data = JSON.parse(file)
entries = data["log"]["entries"]
puts entries.count
