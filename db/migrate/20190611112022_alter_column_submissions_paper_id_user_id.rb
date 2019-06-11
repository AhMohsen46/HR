class AlterColumnSubmissionsPaperIdUserId < ActiveRecord::Migration
  def change
    add_index :submissions, [:paper_id, :user_id], unique: true


  end
end
