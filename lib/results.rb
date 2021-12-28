class Results
  include HTTParty
  # debug_output STDOUT
  base_uri 'jsonplaceholder.typicode.com/'

  def get(end_point)
    self.class.get(end_point)
  end
end
