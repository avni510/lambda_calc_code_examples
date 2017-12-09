## currying exmaple
  
def add(x, y)
  fn = add_x(x)
  puts fn.call(y)
end

def add_x(x)
  lambda { |y| x + y }
end

add(2, 3)


## alpha equivalence example

FOO = "foo"
BAR = "bar"
  
def subtract(x, y)
  x + y
end

def func1(x, y)
  puts FOO
  subtract(x, y)
end

def func2(t, p)
  puts BAR
  subtract(t, p)
end
