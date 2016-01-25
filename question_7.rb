module HelperMethods
  def titleize(string)
    new_words = string.split(" ").map do |word|
      (word == "in" || word == "the" || word == "of" || word == "or" || word == "from") ? word : word.capitalize
    end
    print new_words.join(" ")
  end
end
