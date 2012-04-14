class RadioButtons < ActiveRecord::Migration
  def up
    remove_column :people, :red
    remove_column :people, :yellow
    remove_column :people, :green
    add_column :people, :category, :string
  end

  def down
    add_column :people, :red
    add_column :people, :yellow
    add_column :people, :green
    remove_column :people, :category
  end
end