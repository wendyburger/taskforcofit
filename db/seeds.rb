# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Workout.create(item:'跑步', workout_cal: 8.2)
Workout.create(item:'騎腳踏車', workout_cal: 4)
Workout.create(item:'瑜伽', workout_cal: 3)
Workout.create(item:'游泳', workout_cal: 6.3)
Workout.create(item:'排球', workout_cal: 3.6)

Food.create(food_name: '起司披薩', carbohydrate: 30.33, protein: 12.33, fat: 11.74, gram: 100, per_serve: 105.5, food_cal: 276)
Food.create(food_name: '番茄湯', carbohydrate: 7.35, protein: 1.25, fat: 1.2, gram: 100, per_serve: 300, food_cal: 42)
Food.create(food_name: '蘋果', carbohydrate: 13.81, protein: 0.26, fat: 0.17, gram: 100, per_serve: 120, food_cal: 52)
Food.create(food_name: '糖粉甜甜圈', carbohydrate: 50.8, protein: 5.2, fat: 22.9, gram: 100, per_serve: 43, food_cal: 426)
Food.create(food_name: '炒飯', carbohydrate: 21.06, protein: 6.3, fat: 6.23, gram: 100, per_serve: 225, food_cal: 168)
Food.create(food_name: '蔬菜義大利麵', carbohydrate: 23.27, protein: 4.51, fat: 1.48, gram: 100, per_serve: 248, food_cal: 125)
Food.create(food_name: '綜合綠色沙拉', carbohydrate: 3.2, protein: 1.52, fat: 0.24, gram: 100, per_serve: 180, food_cal: 17)
Food.create(food_name: '優格', carbohydrate: 18.64, protein: 3.98, fat: 1.15, gram: 100, per_serve: 200, food_cal: 99)
Food.create(food_name: '白麵包', carbohydrate: 30.33, protein: 12.33, fat: 11.74, gram: 100, per_serve: 162, food_cal: 276)
Food.create(food_name: '雞胸肉', carbohydrate: 0, protein: 29.55, fat: 7.72, gram: 100, per_serve: 79, food_cal: 195)

wendy = User.create(email: 'wen1123wen@gmail.com', password: 'password')
fred = User.create(email: 'fred@gmail.com', password: 'password')
test = User.create(email: 'test@gmail.com', password: 'password')
test2 = User.create(email: 'test2@gmail.com', password: 'password')

Profile.create(gender: '女', birth: Date.parse('1988-11-23'), height: 160, user_id: 1)
Profile.create(gender: '男', birth: Date.parse('1986-9-7'), height: 180, user_id: 2)
Profile.create(gender: '男', birth: Date.parse('1984-5-30'), height: 175, user_id: 3)
Profile.create(gender: '女', birth: Date.parse('1990-5-14'), height: 180, user_id: 4)

