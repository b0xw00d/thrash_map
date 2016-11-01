class CreateSkatespots < ActiveRecord::Migration
  def change
    create_table :skatespots do |t|
      t.string  :title
      t.string  :address
      t.string  :city
      t.string  :state
      t.string  :zip
      t.float   :latitude
      t.float   :longitude

      t.timestamps null: false
    end
  end
end
