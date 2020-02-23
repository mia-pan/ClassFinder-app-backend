class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.datetime :time
      t.integer :duration
      t.string :location
      t.string :instructor
      t.string :status
      t.integer :category_id

      t.timestamps
    end
  end
end
