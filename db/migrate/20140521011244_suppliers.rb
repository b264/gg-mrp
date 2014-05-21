class Suppliers < ActiveRecord::Migration
  def up
      create_table 'suppliers' do |s|
      s.string 'name'
      s.string 'gg_id'
      s.text 'description'
      s.string 'phone'
      s.string 'email'
      s.string 'address0'
      s.string 'address1'
      s.string 'address2'
      s.string 'address3'
      s.string 'address4'
      s.datetime 'added_to_db'
      #add fields to let rails automatically track when records are add/modified
      s.timestamps
    end
  end
  def down
    drop_table 'suppliers'
  end
end
