class LeadUploadsController < ApplicationController


  def create
    @lead_upload = LeadUpload.new

    @lead_upload.load_file(params[:file])

    redirect_to lead_uploads_new_url

  end

end