class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question
      t.text :content

      t.timestamps
    end
    add_index :answers, :question_id
  end
end
