class LeadUpload < ApplicationRecord
  require 'csv'

  def load_file(file)

    leads = CSV.read(file.path)

  end

end
