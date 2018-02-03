class CreateRecensios < ActiveRecord::Migration[5.1]
  def change
    create_table :recensios do |t|
      t.string :critic_name
      t.string :critic_email
      t.string :body

      t.timestamps
    end
  end
end
