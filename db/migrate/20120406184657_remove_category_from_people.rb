class RemoveCategoryFromPeople < ActiveRecord::Migration
  def up
    remove_column :people, :category
  end

  def down
    add_column :people, :category
  end
end
