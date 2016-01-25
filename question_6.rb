require "benchmark"

def even_recursive(n, x = 1, array = [])
  if array.length == n
    array
  elsif x % 2 == 0
    array << x
    even_recursive(n, x+1, array)
  else
    even_recursive(n, x+1, array)
  end
end

Benchmark.bm do |x|
  x.report do
    # code to benchmark goes here
    1000000.times {even_recursive(10)}
  end
end

def even_loop(n)
  array = []
  x = 1
  until array.length == n do
    if x % 2 == 0
      array << x
      x += 1
    else
      x += 1
    end
  end
  array
end

Benchmark.bm do |x|
  x.report do
    # code to benchmark goes here
    1000000.times {even_loop(10)}
  end
end

# Loops are faster by over one second!
