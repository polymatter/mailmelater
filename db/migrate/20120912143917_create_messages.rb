class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.datetime :send_at
      t.string :send_to
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
