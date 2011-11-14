class CreateMicroposts < ActiveRecord::Migration
  def self.up
    create_table :microposts do |t|
      t.string :title
      t.string :content
      t.string :user_id
      t.string :category

      t.timestamps
    end
    
    add_index :microposts, [:title, :created_at, :category]
  end

  def self.down
    drop_table :microposts
  end
end
