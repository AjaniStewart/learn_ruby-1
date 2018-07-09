#write your code here
def echo phrase
    phrase
end

def shout phrase
    phrase.upcase
end

def repeat phrase, times = 2
    ((phrase + " ") * times).rstrip
end

def start_of_word word, span
    word.slice(0,span)
end

def first_word phrase
    phrase.split(" ")[0]
end

def titleize phrase
    wordArray = phrase.split(" ")
    wordArray[0] = wordArray.first.capitalize
    wordArray[wordArray.length - 1] = wordArray.last.capitalize
    wordArray.map {|word|
        unless word.start_with?(/[A-Z]/) or word.length < 5
            word.capitalize!
        end
    }
    wordArray.join(" ")
end
