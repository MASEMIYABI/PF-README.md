class AddEvaluationToProdustComment < ActiveRecord::Migration[5.2]
  def change
    add_column :produst_comments, :evaluation, :float
  end
end
