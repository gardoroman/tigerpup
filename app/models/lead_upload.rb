class LeadUpload < ApplicationRecord
  require 'csv'

  def load_file(file)

    leads = []

    CSV.foreach(file.path, headers: true) do |row|
      row_hash = Hash[row.to_hash.map { |k,v| [k.downcase.gsub(" ","_"),v] if k }]
      leads << create_lead(row_hash)
    end

    leads

  end

  private

  def create_lead(csv_row)
    Lead.new(csv_row)
  end

end
