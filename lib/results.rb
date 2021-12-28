class Results
  include HTTParty
  # debug_output STDOUT
  base_uri 'jsonplaceholder.typicode.com/'

  def get(end_point)
    self.class.get(end_point)
  end

  def query(end_point, params)

    if params[:userId]
      @options = { query: { userId: params[:userId]} }
    elsif params[:albumId]
      @options = { query: { albumId: params[:albumId]} }
    end

    self.class.get(end_point, @options)
  end
end
