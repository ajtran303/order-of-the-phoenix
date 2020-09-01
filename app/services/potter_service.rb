class PotterService
  def conn
    Faraday.new 'https://www.potterapi.com/v1/' do |f|
      f.params['key'] = ENV['POTTER_API_KEY']
      f.headers['Content-Type'] = 'application/json'
    end
  end
end
