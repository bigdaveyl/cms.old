class GalleryphotosController < ApplicationController
  load_and_authorize_resource

  def show
    @gallery = Gallery.find(params[:gallery_id])
    @galleyphoto = @gallery.galleryphotos.find(params[:id])
    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gallery }
    end
  end
end
