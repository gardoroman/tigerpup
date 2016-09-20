class CreateLeadUploads < ActiveRecord::Migration[5.0]
  def change
    create_table :lead_uploads do |t|

      t.timestamps
    end
  end
end
