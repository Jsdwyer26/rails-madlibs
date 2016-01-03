class CreateMadlibs < ActiveRecord::Migration
  def change
    create_table :madlibs do |t|
      t.string :title
      t.string :description
      t.string :story
      t.string :blanks, default: [], array: true

      t.timestamps null: false
    end
  end
end
