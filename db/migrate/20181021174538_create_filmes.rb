class CreateFilmes < ActiveRecord::Migration[5.2]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.string :created_by

      t.timestamps
    end
  end
end
