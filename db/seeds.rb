# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Region.destroy_all
AccessibleRegion.destroy_all

User.create(login: 'admin', email: 'aaa@aaa.aaa', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', admin:true)
User.create(login: 'xxxxx', email: 'xxx@xxx.xxx', password: 'xxxxxxxx', password_confirmation: 'xxxxxxxx')

['Винницкая область', 'Волынская область', 'Днепропетровская область', 'Донецкая область', 'Житомирская область',
'Закарпатская область', 'Запорожская область', 'Ивано- Франковская область', 'Киевская область',
'Кировоградская область', 'Крым', 'Луганская область', 'Львовская область', 'Николаевская область',
'Одесская область', 'Полтавская область', 'Ровенская область', 'Сумская область', 'Тернопольская область',
'Харьковская область', 'Херсонская область', 'Хмельницкая область', 'Черкасская область', 'Черниговская область',
'Черновицкая область'].each do |region|
  Region.create(name: region)
end

AccessibleRegion.create(user_id: User.last.id, region_id: Region.last.id)
AccessibleRegion.create(user_id: User.last.id, region_id: Region.first.id)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')