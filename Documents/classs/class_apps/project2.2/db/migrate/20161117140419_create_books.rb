class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :author
      t.datetime :due_date

      t.timestamps
    end
  end
end
