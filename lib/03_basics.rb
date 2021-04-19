def who_is_bigger (*args)
    res = nil
    alphabet = ('a'..'z').to_a
    hash = args.map.with_index {|v,i| 
        return "nil detected" if v == nil
        [v,alphabet[i]] if v != nil
    }
    hash.max.map.with_index{|v,i| res = v if hash.max}
    return "#{res} is bigger"
end

def reverse_upcase_noLTA (s)
    return s.upcase.reverse.gsub(/[LTA]/, "")
end

def array_42 (a)
    if a.is_a? Array
        return a.include?(42)
    end
end

def magic_array (a)
    if a.is_a? Array
        return a.flatten
                .uniq
                .select {|v,k| v%3 != 0}
                .map{|v| v * 2}
                .sort
    end
end