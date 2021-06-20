module Foods::ResultsHelper
  # @return [String] 個別のエネルギー
  def view_calorie(food_calorie)
    "エネルギー：#{food_calorie}(kcal)"
  end

  # @return [String] 個別のたんぱく質
  def view_protein(food_protein)
    "たんぱく質：#{food_protein}(g)"
  end

  # @return [String] 個別の脂質
  def view_lipid(food_lipid)
    "脂質：#{food_lipid}(g)"
  end

  # @return [String] 個別の炭水化物
  def view_carbohydrate(food_carbohydrate)
    "炭水化物：#{food_carbohydrate}(g)"
  end

  # @return [String] 個別の食塩相当量
  def view_salt_equivalent(food_salt_equivalent)
    "食塩相当量：#{food_salt_equivalent}(g)"
  end
end
