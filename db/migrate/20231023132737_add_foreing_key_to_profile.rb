class AddForeingKeyToProfile < ActiveRecord::Migration[7.1]
  def change
    add_reference :profiles, :user, null: false, foreign_key: true
    add_reference :profiles, :team, null: false, foreign_key: true
    add_reference :profiles, :position, null: false, foreign_key: true
  end
end
