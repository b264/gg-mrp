class DropMoviesTable < ActiveRecord::Migration
  def up
    drop_table :movies
  end
  def down
    raise ActiveRecord::IrreversibleMigration, "You cannot reverse this migration 'down' because that would create an unused table which was dropped already."
  end
end
