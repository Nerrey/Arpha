class VideosController < ApplicationController

  include ActionController::Live

  def client

  end

  def server
    $redis.keys("/video/*").count == 0 ? id = 0 : id = $redis.keys("/video/*").map{|e| e.split("/")[2].to_i}.max
    if params[:p] == "new" && id < 1000
      id = id + 1
      key = "/video/#{id}"
      $redis.set(key, params[:text]) 
      puts "Запись идет"
    else
      puts "Запись остановлена"
    end
    render text: "okay"
  end

  def canvideo
    
  end

  def refresh
    cadr = params[:shot]
    @stopcam = $redis.get("/video/" + cadr)
    @cadr = cadr.to_i + 1
  end
  
  def recordvideo

  end

  def savevideo
    video = params.inspect
    puts video
    redirect_to recordvideo_path
  end

  def videotest
    response.headers['Content-Type'] = 'text/event-stream'
    # SSE.new(response.stream)
    if $redis.get("flag") == "on"
       
      $redis.set("cadr", "0") if $redis.get("cadr").nil?

      response.stream.write "retry: 60\ndata: #{$redis.get("/video/" + "#{$redis.get("cadr")}")}\n\n"
      
      $redis.set("cadr", "#{$redis.get("cadr").to_i + 1}")

      $redis.set("cadr", "0") if $redis.get("cadr").to_i >= 1000
      
      response.stream.close
    end
    # rescue IOError 
    # ensure
    # end
    render nothing: true
  end

  def flag
    if $redis.get("flag") == "on" || nil
      $redis.set("flag", "off")
    else
      $redis.set("flag", "on")
    end
  end

end
