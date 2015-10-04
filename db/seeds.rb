# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




# User.create(:name => 'taneisan', :email => 'taneisan@tanei.com', :profile => '東京都長野区', :image => 'https://hack418b.herokuapp.com/public/img/taneisan.png')

# User.create(:name => 'kettsun', :email => 'kettsun@tanei.com', :profile => '兵庫県神戸市', :image => 'https://hack418b.herokuapp.com/public/img/kettsun.png')

# User.create(:name => 'moricchi', :email => 'moricchi@tanei.com', :profile => '大阪府堺市', :image => 'https://hack418b.herokuapp.com/public/img/moricchi.png')

# User.create(:name => 'ryu-shi', :email => 'ryu-shi@tanei.com', :profile => '兵庫県神戸市', :image => 'https://hack418b.herokuapp.com/public/img/ryu-shi.png')


# Now.create(:user_id => '1', :now_position_x => '35.12345', :now_position_y => '135.53141', :point => '120')

# Now.create(:user_id => '2', :now_position_x => '35.1234', :now_position_y => '135.76565', :point => '55')

# Now.create(:user_id => '3', :now_position_x => '35.12354', :now_position_y => '135.76544', :point => '99')

# Now.create(:user_id => '4', :now_position_x => '35.12365', :now_position_y => '135.76123', :point => '100')

1.upto(100) do |abc|

  User.create(:name => 'taneisan', :email => 'taneisan@tanei.com', :profile => '東京都長野区', :image => 'https://hack418b.herokuapp.com/app/assets/images/dummy_icon.png')
  Now.create(:user_id => abc, :now_position_x => 37+(0.01*rand(10)), :now_position_y => 125+(0.01*rand(10)), :point => abc+rand(100))
end

Match.create(:user_id => 1, :user_id_2 => 5, :position_x => 37.001, :position_y => 125.01)
Match.create(:user_id => 2, :user_id_2 => 3, :position_x => 37.001, :position_y => 125.01)
Match.create(:user_id => 4, :user_id_2 => 8, :position_x => 37.001, :position_y => 125.01)
Match.create(:user_id => 1, :user_id_2 => 9, :position_x => 37.001, :position_y => 125.01)






