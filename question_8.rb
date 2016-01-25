module HelperMethods
  def titleize(string)
    new_words = string.split(" ").map do |word|
      (word == "in" || word == "the" || word == "of" || word == "or" || word == "from") ? word : word.capitalize
    end
    new_words.join(" ")
  end
end

module Blog
  class Article
    include HelperMethods
    attr_accessor :body, :title
    def initialize(title, body)
      @title, @body = title, body
    end
    def title
      titleize(@title)
    end
  end
  class Snippet < Article
    def initialize(title, body)
      super(title, body)
    end
    def body
      (@body.length < 100) ? (print @body) : (print "#{@body.slice(0..100)}...")
    end
  end
end
