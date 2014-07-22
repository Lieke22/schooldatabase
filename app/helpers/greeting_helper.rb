module GreetingHelper
  def greeting
    hour = Time.now.hour

    if hour < 12
      "Goedemorgen"
    elsif hour < 18
      "Goedemiddag"
    else
      "Goedenavond"
    end


  end
end
