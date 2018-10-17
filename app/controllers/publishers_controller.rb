class PublishersController < ApplicationController

  def destroy
    @publisher = Publisher.find(params[:id])
    @id = @publisher.book_id
    @publisher.destroy
    redirect_to book_path(@id)
  end
end
