module FreeFarmer
  module Resources
    class WebRoot < Resource
      def get
        "Hello World #{params[:name]}".strip
      end
    end
  end
end