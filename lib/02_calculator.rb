def add (n,m)
    return n + m
end

def subtract (n,m)
    return n - m
end

def sum (a)
    return a.sum
end

def multiply (n,m)
    return n * m
end

def power (n)
    return n * n
end

def factorial (n)
    i = 1
    fact = 1
    while i <= n
        fact *= i
        i += 1
    end
    return fact
end