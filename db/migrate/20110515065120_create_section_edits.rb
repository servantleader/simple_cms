class CreateSectionEdits < ActiveRecord::Migration
  def self.up
    create_table :section_edits do |t|
      t.integer :admin_user_id
      t.integer :section_id
      t.string  :summary
      t.timestamps
    end
    add_index :section_edits, [:admin_user_id, :section_id]
  end

  def self.down
    drop_table :section_edits
  end
end