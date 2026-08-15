class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :completed
      t.validates :title, presence: true

      t.timestamps
    end
  end
end
