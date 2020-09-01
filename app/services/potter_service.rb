class PotterService
  def find_order_of_the_phoenix_members(hogwarts_house)
    url = "https://www.potterapi.com/v1/characters" +
          "?key=#{ENV['POTTER_API_KEY']}" +
          "&orderOfThePhoenix=true" +
          "&house=#{hogwarts_house}"
    response = Faraday.get url
    JSON.parse(response.body, symbolize_names: :true)
  end
end
