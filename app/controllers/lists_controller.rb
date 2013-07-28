class ListsController < ApplicationController

  def index
  	@list = List.new
  	@lists = List.all
  end

  def create
  	list = List.new(list_params)
  	if list.save
  		redirect_to lists_path, notice: "The new list was created"
  	else
  		redirect_to lists_path, alert: "The new list was not created"
  	end
  end

  private

	def list_params
		params.require(:list).permit(:title)
	end

end