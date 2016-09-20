class LeadUploadsController < ApplicationController


  def create
    @lead_upload = LeadUpload.new

    @leads = @lead_upload.load_file(params[:file])

    render 'new'

  end

end