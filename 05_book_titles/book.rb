require_relative "../03_simon_says/simon_says"

class Book
# write your code here
    attr_reader :title #getter

    def title= (title)
        conjunctions = ["and","but","yet","for","nor","or","so"]
        articles = ["the", "a", "an"]
        prepositions = ["with","at","from","into","during","including","of","to","in","on"]

        titleArray = title.split(" ").map { |word|
            unless conjunctions.include?(word) or
                 articles.include?(word) or prepositions.include?(word)
                word.capitalize
            else
                word
            end 
        }
        titleArray[0].capitalize!
        @title = titleArray.join(" ")
    end

end
