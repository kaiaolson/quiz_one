module HelperMethods
  def titleize(string)
    print string.split(" ").each {|word| (word == "in" || word == "the" || word == "of" || word == "or" || word == "from") ? word : word.capitalize!}.join(" ")
  end
end
