module FreeFarmer
  module Resources
    class Resource < LuckyLuciano::Resource
    end
  end
end

dir = File.dirname(__FILE__)
require "#{dir}/resources/web_root"
