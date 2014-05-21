class Builds < ActiveRecord::Migration
  def up
      create_table 'builds' do |b|
      b.string 'name'
      b.string 'gg_id'
      b.string 'ext_id'
      b.text 'description'
      b.datetime 'added_to_db'
      #add fields to let rails automatically track when records are add/modified
      b.timestamps
    end
  end
  def down
    drop_table 'builds'
  end
end
