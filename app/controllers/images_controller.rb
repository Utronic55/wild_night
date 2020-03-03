class ImagesController < ApplicationController
  class ImagesController < ApplicationController
    def destroy
      image = Image.find(params[:id]) 
      
    end
    # def image_params
    #   params.require(:image).permit(:id)
    # end
  end
end
