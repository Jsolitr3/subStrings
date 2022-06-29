$dictionary = [ "below" , "down" , "go" , "going" , "horn" , "how" , "howdy" , "it" , "i" , "low" , "own" , "part" , "partner" , "sit" ]

def substrings(inputString = "Howdy partner, sit down! How's it going?", csvInput = $dictionary)
    result = Hash.new(0)
    csvInput.each do |word|
        if inputString.downcase.include?(word)
            result[word] = inputString.downcase.scan(/(?=#{word})/).count
        end
    end
    p result
end