class CreateCreatives < ActiveRecord::Migration[5.1]
  def change
    create_table :creatives do |t|
      t.string :email
      t.timestamps null: false
    end
  end
end
