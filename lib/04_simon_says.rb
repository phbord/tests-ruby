def echo (s)
    if s.is_a? String
        return s
    end
end

def shout (s)
    if s.is_a? String
        return s.upcase
    end
end

def repeat (s, n=2)
    if s.is_a? String
        return (1..n).map {|i| s}.join(" ")
    end
end

def start_of_word (s, n=1)
    if s.is_a? String
        return s.slice(0,n)
    end
end

def first_word (s)
    if s.is_a? String
        return s.partition(" ").first
    end
end

def titleize (s)
    s.split.map.with_index{|e,i|
        (e == "and" || e == "the") && i > 0 ? e : e.capitalize
    }.join(" ")
end