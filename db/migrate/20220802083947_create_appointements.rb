class CreateAppointements < ActiveRecord::Migration[6.1]
  def change
    create_table :appointements do |t|
      t.datetime :appointment_date
      t.references :Patient, null: false, foreign_key: true
      t.references :Physician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
