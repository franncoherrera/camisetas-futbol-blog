class AddColumnsAndForeignKeysToProfiles < ActiveRecord::Migration[7.1]
  def change
    add_column :profiles, :team_id, :integer,  null: false
    add_foreign_key :profiles, :teams, column: :team_id

    add_column :profiles, :user_id, :integer,  null: false
    add_foreign_key :profiles, :users, column: :user_id

    add_column :profiles, :position_id, :integer, null: false
    add_foreign_key :profiles, :positions, column: :position_id
  end
end
