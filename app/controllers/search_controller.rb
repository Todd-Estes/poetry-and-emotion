class SearchController < ApplicationController

  def index
    author_name = params[:author]

    @poems = PoemFacade.find_poems(author_name)

    @tones = @poems.each do |poem|
              PoemFacade.poem_tone(poem.text)
            end




     # response = Faraday.get("https://poetrydb.org/author/#{author_name}")
     #
     # @poem = json = JSON.parse(response.body, symbolize_names: true)
  end

end
