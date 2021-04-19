def translate_s(s)
    cons = 'BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz'
    res = "#{s}ay"
    if (cons.include?(s[0]) && cons.include?(s[1]) && cons.include?(s[2])) || (s[1..2] == 'qu')
        res = "#{s.slice(3, s.length)}#{s[0]}#{s[1]}#{s[2]}ay"
    elsif (cons.include?(s[0]) && cons.include?(s[1])) || (s[0..1] == 'qu')
        res = "#{s.slice(2, s.length)}#{s[0]}#{s[1]}ay"
    elsif cons.include?(s[0])
        res = "#{s.slice(1, s.length)}#{s[0]}ay"
    end
    return res
end

def translate(sentence)
    sentence.split.map{|s| translate_s(s)}.join(' ')
end