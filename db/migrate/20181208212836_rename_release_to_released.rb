class RenameReleaseToReleased < ActiveRecord::Migration[5.2]
  def change
    rename_column :albums, :release_at, :released_at
  end
end
