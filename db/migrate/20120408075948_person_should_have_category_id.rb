class PersonShouldHaveCategoryId < ActiveRecord::Migration
  def up
    add_column :people, :category_id, :integer
    add_index :people, :category_id
  end

  def down
    remove_column :people, :category_id
  end
end