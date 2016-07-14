text = "I am a dude.  A friendly dude I was born. He was here. I was raised. I was learned. A friendly person."

def sanitize_text(text)
  text.gsub(/\s+/, ' ')
end

def break_into_sentences(sanetized_text)
  sanetized_text.split(' ')
end

def break_into_trigrams(array_of_words)
  trigrams_of_words = Hash.new {|hash,key| hash[key] = {}  }
  array_of_words.each_with_index do |item, index| 
    #prevent last three words from being counted
    if array_of_words[index + 2]
    #
    trigrams_of_words.update( item => { array_of_words[index + 1] => array_of_words[index + 2] } )
  end
  trigrams_of_words
end

for i in array
  position = 0
