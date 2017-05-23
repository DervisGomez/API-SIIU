class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
      t.string :cedula
      t.string :nombre
      t.string :apellido
      t.date :fechaNacimiento
      t.string :estadoCivil
      t.string :sexo
      t.string :correo
      t.integer :celular
      t.string :pais
      t.string :estado
      t.string :ciudad
      t.string :direccion
      t.integer :telefonoLocal
      t.string :universidad
      t.string :decanato
      t.string :departamento
      t.string :tituloAcademico
      t.string :experiencia

      t.timestamps null: false
    end
  end
end
