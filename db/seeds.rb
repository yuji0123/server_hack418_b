# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.create(:name => 'taneisan', :email => 'taneisan@tanei.com', :profile => '東京都長野区', :image => 'https://hack418b.herokuapp.com/public/img/taneisan.png')

User.create(:name => 'kettsun', :email => 'kettsun@tanei.com', :profile => '兵庫県神戸市', :image => 'https://hack418b.herokuapp.com/public/img/kettsun.png')

User.create(:name => 'moricchi', :email => 'moricchi@tanei.com', :profile => '大阪府堺市', :image => 'https://hack418b.herokuapp.com/public/img/moricchi.png')

User.create(:name => 'ryu-shi', :email => 'ryu-shi@tanei.com', :profile => '兵庫県神戸市', :image => 'https://hack418b.herokuapp.com/public/img/ryu-shi.png')
