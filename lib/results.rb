class Results
  include HTTParty
  # debug_output STDOUT
  base_uri 'jsonplaceholder.typicode.com/'

  def get(end_point, key)
    Rails.cache.fetch(key, expires_in: 4.hours) do
      self.class.get(end_point)
    end
  end

  def query(end_point, params, key)

    if params[:userId]
      @options = { query: { userId: params[:userId]} }
    elsif params[:albumId]
      @options = { query: { albumId: params[:albumId]} }
    end

    Rails.cache.fetch(key, expires_in: 4.hours) do
      self.class.get(end_point, @options)
    end
  end
end
