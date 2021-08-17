class CreateCeps < ActiveRecord::Migration[6.1]
  def change
    create_table :ceps do |t|
      t.string :cep
      t.string :uf
      t.string :cidade
      t.string :bairro
      t.string :logradouro
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
