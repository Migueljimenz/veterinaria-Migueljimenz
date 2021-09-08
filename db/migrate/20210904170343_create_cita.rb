class CreateCita < ActiveRecord::Migration[6.1]
  def change
    create_table :cita do |t|
      t.string :mascota
      t.integer :edad
      t.string :raza
      t.string :fecha
      t.string :hora
      t.string :amo

      t.timestamps
    end
  end
end
