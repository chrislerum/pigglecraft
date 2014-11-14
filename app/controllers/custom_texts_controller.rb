class CustomTextsController < ApplicationController

  private
  def custom_text_params
    params.require(:custom_text).permit(:name, :the_text)
  end
end
