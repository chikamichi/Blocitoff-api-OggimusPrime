class Api::ListsController < ApiController
  before_action :authenticated?

  def create
    list = List.new(params.require(:list).permit(:name, :permissions))

    if list.save
      render json: list #, status: 201, location: list
    end
  end
end