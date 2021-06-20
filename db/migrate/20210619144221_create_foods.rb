class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false # 食品名
      t.integer :calorie, null: false # カロリー
      t.float :protein, null: false # たんぱく質
      t.float :lipid, null: false # 脂質
      t.float :carbohydrate, null: false # 炭水化物
      t.float :salt_equivalent, null: false # 食塩相当量
      t.integer :kind, null: false # 区分

      t.timestamps
    end
  end
end
