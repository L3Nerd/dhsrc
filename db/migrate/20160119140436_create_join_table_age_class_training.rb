class CreateJoinTableAgeClassTraining < ActiveRecord::Migration
  def change
    create_join_table :age_classes, :trainings do |t|
      t.index [:age_class_id, :training_id]
      t.index [:training_id, :age_class_id]
    end
  end
end
