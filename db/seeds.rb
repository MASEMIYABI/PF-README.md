# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   name: 'まさや',
   email: 'admin@admin',
   password: 'testtest'
)

Customer.create!(
  email: 'momoki@gmail.com',
  password: 'customer1',
  last_name: '桃木',
  first_name: '太郎',
  last_name_kana: 'モモキ',
  first_name_kana: 'タロウ',
  phone_number: '09012345678',
)
Genre.create!(
	genre_name: '揚げ物',
)
Genre.create!(
	genre_name: 'お弁当',
)
Genre.create!(
	genre_name: '一品物',
	)
Item.create!(
	genre_id: '1',
	name: '唐揚げ',
	description: '揚げたてうまうま',
	price: '420',
	is_stopped: 'false',
	image: File.open('./app/assets/images/karaage.jpg')
	)
Shop.create!(
	name: 'まさや',
	address: '東京都世田谷区',
	description: '出来立てで美味しいよ',
	phonenumber: 0564732277,
	image: File.open('./app/assets/images/shop1.jpg')
	)