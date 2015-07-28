class RenameTableMyselfsToMyselves < ActiveRecord::Migration
  def change
    rename_table :myselfs, :myselves
  end
end
