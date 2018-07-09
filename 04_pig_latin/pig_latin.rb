#write your code here
def translate phrase
    phrase.split(" ").map { |word|
        translateWord word
    }.join(" ")
end

def translateWord word
    cap = false
    if word.start_with?(/[A-Z]/)
        cap = true
    end
    if (word.start_with?(/[aeiouAEIOU]/))
        word = word + "ay"
    else
        start = 0
        while word[start].match?(/^((?![aeiou]).)*$/)
            if word[start] == "q"
                start += 2
            else
                start += 1
            end
        end
        word = word.slice(start,word.length) + word.slice(0,start) + "ay"
    end
    if cap
        word.capitalize!
    end
    word
end