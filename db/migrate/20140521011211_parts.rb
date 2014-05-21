class Parts < ActiveRecord::Migration
  def up
      create_table 'parts' do |p|
      p.string 'name'
      p.string 'gg_id'
      p.string 'ext_id'
      p.string 'supplier'
      p.text 'description'
      p.datetime 'added_to_db'
      #add fields to let rails automatically track when records are add/modified
      p.timestamps
    end
  end
  def down
    drop_table 'parts'
  end
end
