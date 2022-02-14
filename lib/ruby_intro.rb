# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for i in arr do
    sum += i
  end
  return sum
end

def max_2_sum arr
  if(arr.length()<1)
    return 0
  end
  if(arr.length()<2)
    return arr[0]
  end
  arr = arr.sort()
  return arr[arr.length()-1] + arr[arr.length()-2] 
  
end

def sum_to_n? arr, n
  for i in (0..arr.length()-1).step(1) do 
    for j in (i+1..arr.length()-1).step(1) do
      if(arr[i]+arr[j]==n)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  
  if(s.length()==0)
    return false
  end
  s = s.downcase()
  arr = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
  for i in arr
    if(i==s[0])
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
  if s.length()==0
    return false
  end
  s.each_char{|a|
  
    if(a!="0" && a!="1")
      return false
    end
  }
  s = s.to_i(2)%4
  if s==0
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    raise ArgumentError.new(
      "ISBN is Empty")if isbn.length == 0
    raise ArgumentError.new(
      "Price should be greater than zero")if price<=0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price
    @price
  end
  def price=(price)
    @price=price
  end
  def price_as_string
    price_string = '$' + '%0.2f'
    return price_string % [price]
  end
end
