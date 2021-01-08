class PoemService

  def self.search_poems(author)
    response = Faraday.get("https://poetrydb.org/author/#{author}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_tones(text)
    conn = Faraday.new("https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/e48e49d5-ae4b-4c48-8a3b-469963fafe35") do |connection|
            connection.basic_auth("apikey", ENV["IBM_API_KEY"] )
           end

    response = conn.get("/v3/tone?version=2017-09-21&text=#{text}")

    json = JSON.parse(response.body, symbolize_names: true)
  end

end
