dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)
    substr_count = Hash.new(0)
    for substr in dictionary
        substr_count[substr] = str.each_char.each_cons(substr.length).count(substr.chars)
    end
    substr_count.select {|k,v| v > 0}
end


p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)