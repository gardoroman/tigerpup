class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|

      t.datetime  :date
      t.string    :first_name
      t.string    :last_name
      t.string    :dob
      t.string    :address
      t.string    :city
      t.string    :state
      t.string    :zipcode
      t.string    :number #phone number
      t.string    :medicare_ID
      t.string    :doctor_NPI
      t.string    :doctor_name
      t.string    :doctor_address
      t.string    :doctor_phone
      t.string    :doctor_fax
      t.string    :brace_size
      t.integer   :lead_upload_id

      t.timestamps
    end
  end
end
