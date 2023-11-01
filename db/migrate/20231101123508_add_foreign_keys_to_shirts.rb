class AddForeignKeysToShirts < ActiveRecord::Migration[7.1]
  def change
    add_reference :shirts, :team, null: false, foreign_key: true
    add_reference :shirts, :profile, null: false, foreign_key: true
  end
end
