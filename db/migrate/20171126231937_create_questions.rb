class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :body, limit: 65_536
      t.boolean :privy, default: false

      t.timestamps
    end
  end
end
