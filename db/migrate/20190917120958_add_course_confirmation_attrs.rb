class AddCourseConfirmationAttrs < ActiveRecord::Migration
  def up
    add_column :event_kinds, :can_have_confirmations, :boolean, null: false, default: false
    add_column :events, :has_confirmations, :boolean, null: false, default: true
  end

  def down
    remove_column :events, :has_confirmations
    remove_column :event_kinds, :can_have_confirmations
  end
end
