filename = ARGV.first

puts "Ok! Here it is"

target = open(filename,'w')
target.truncate(0)

puts "Enter the contents"
line = $stdin.gets.chomp
target.write(line)
target.close
target = open(filename)

# target.read()
print target.read
