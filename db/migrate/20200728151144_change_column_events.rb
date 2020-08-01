class ChangeColumnEvents < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :context, :content
  end
end
