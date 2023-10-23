class CreateShirts < ActiveRecord::Migration[7.1]
  def change
    create_table :shirts do |t|
      t.string :birth_year
      t.string :shirt_description
      t.string :shirt_title

      t.timestamps
    end
  end
end
