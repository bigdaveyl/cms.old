class GalleryphotosController < ApplicationController
  load_and_authorize_resource

  def create
    @gallery = Gallery.find(params[:gallery_id])
    logger.debug "gallery found: #{@gallery.attributes.inspect}"
    @galleryphoto = @gallery.galleryphotos.new(galleryphoto_params)

    logger.debug "New galleryphoto posted: #{@galleryphoto.attributes.inspect}"
  end

  def show
    @gallery = Gallery.find(params[:gallery_id])
    @galleyphoto = @gallery.galleryphotos.find(params[:id])
    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gallery }
    end
  end

  private
   def galleryphoto_params
     params.require(:galleryphoto).permit(:gallery_id, :photo_file_name, :photo_content_type, :photo_updated_at, :photo_file_size, :photo_description)
   end

end
