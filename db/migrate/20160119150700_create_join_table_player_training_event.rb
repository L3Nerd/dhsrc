class CreateJoinTablePlayerTrainingEvent < ActiveRecord::Migration
  def change
    create_join_table :players, :training_events do |t|
      t.index [:player_id, :training_event_id], name: 'index_player_id_training_event_id'
      t.index [:training_event_id, :player_id], name: 'index_training_event_idplayer_id'
    end
  end
end
