class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :entity_name
      t.string :entity_email
      t.string :entity_role
      t.string :password_digest

      t.timestamps
    end
  end
end
