class AddAssociations < ActiveRecord::Migration
  def up
    add_column :builds, :part_id, :integer
    add_column :parts, :supplier_id, :integer
    add_column :parts, :build_id, :integer
    add_column :suppliers, :part_id, :integer
    add_column :builds, :part_id, :integer
    add_column :builds, :part_id, :integer
    add_column :builds, :part_id, :integer
    add_column :builds, :part_id, :integer
    add_column :builds, :part_id, :integer
    add_column :builds, :part_id, :integer
    add_column :builds, :part_id, :integer
    create_table 'uses' do |u|
      u.string 'name'
      u.string 'gg_id'
      u.string 'ext_id'
      u.text 'description'
      u.datetime 'added_to_db'
      u.datetime 'due_by'
      #add fields to let rails automatically track when records are add/modified
      u.timestamps
    end
  end
  def down
  end
end
