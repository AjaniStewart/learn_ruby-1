#write your code here
def add a,b
    a + b
end

def subtract a,b
    a - b
end

def sum array
    array.reduce(0, :+)
end

def multiply(*nums)
    nums.reduce(1,:*)
end

def power a,b
    a ** b
end

def fact a
    if a < 2
        return 1
    end
    fact(a-1) * a 
end