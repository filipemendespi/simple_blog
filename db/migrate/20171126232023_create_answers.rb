class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.belongs_to :user, index: true
      t.belongs_to :question, index: true
      t.text :body, limit: 65_536

      t.timestamps
    end
  end
end
