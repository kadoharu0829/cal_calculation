class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name # 食品名
      t.integer :calorie # カロリー
      t.float :protein # たんぱく質
      t.float :lipid # 脂質
      t.float :carbohydrate # 炭水化物
      t.float :salt_equivalent # 食塩相当量
      t.integer :kind # 区分

      t.timestamps
    end
  end
end
