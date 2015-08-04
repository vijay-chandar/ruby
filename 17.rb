f1, f2 = ARGV

puts "Copying File"

file = open(f1)
data = file.read

file.close

new = open(f2,'w')
new.write(data)
