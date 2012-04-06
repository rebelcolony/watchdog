class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :description
      t.boolean :red
      t.boolean :yellow
      t.boolean :green

      t.timestamps
    end
  end
end
