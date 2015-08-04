def my_method(*args)
  # this line unrolls all the arguments out of the array
  # otherwise you'd be passing in an array to sub_method (see below)
  puts "Arguments received by sub_method as individual items:"
  sub_method(*args)
  # here we don't unroll the arguments so you can see the receiver
  # just gets an array instead of a series of arguments
  puts "Arguments received by sub_method as single array:"
  sub_method(args)
end

def sub_method(*args)
  args.each do |arg_item|
    puts arg_item.inspect
    puts arg_item.class.inspect
  end
end

my_method('1','2',3,[4,5,6])
