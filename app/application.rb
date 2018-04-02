class Application
  def call(env)
    resp = Rack::Response.new
    
    current_time = Time.now.to_i
    noon = Time.parse "12:00pm"
    noon = noon.to_i

    if current_time < noon
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    #binding.pry
    end
    resp.finish

  end

end