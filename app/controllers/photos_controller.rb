class PhotosController < ApplicationController
  
  def index
    @photos = Photo.all
  end
  
  def create
    @photo = Photo.new
    @photo.file = params[:file] if params.has_key?(:file)
    # detect Mime-Type (mime-type detection doesn't work in flash)
    @photo.file_content_type = MIME::Types.type_for(params[:name]).to_s if params.has_key?(:name)
    @photo.save!
    
    respond_to :js
  end
end
