class PoemFacade

  def self.find_poems(author)
    poem_info = PoemService.search_poems(author)
    poem_info[0..9].map do |poem|
      Poem.new(poem)
    end
  end

  def self.poem_tone(text)
    poem_tones = PoemService.search_tones(text)

  end



end
