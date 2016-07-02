require_relative('../models/knight')
require_relative('../models/trophy')
require_relative('../models/horse')
require_relative('../models/list')
require_relative('../models/kingdom')
require_relative('../models/event')
require ('pry-byebug')


Event.delete_all
Knight.delete_all
Horse.delete_all
Kingdom.delete_all




@kingdom1= Kingdom.new({'name' => 'kingdom of scotland', 'flag' => 'https://www.google.co.uk/','arms' => 'hello'}).save
@kingdom2= Kingdom.new({'name' => 'kingdom of england', 'flag' => 'https://www.google.co.uk/','arms' => 'https://www.amazon.co.uk/'}).save
@kingdom3= Kingdom.new({'name' => 'kingdom of france', 'flag' => 'https://www.google.co.uk/','arms' => 'https://www.amazon.co.uk/'}).save

@horse1= Horse.new({'name'=>'Horsey Mchorseface', 'img' => 'https://www.google.co.uk/', 'knight_id' => 2}).save
@horse2= Horse.new({'name'=>'Redrum', 'img' => 'https://www.google.co.uk/', 'knight_id' => 3}).save
@horse3= Horse.new({'name'=>'Horse I win', 'img' => 'https://www.google.co.uk/', 'knight_id' => 4}).save
@horse4= Horse.new({'name'=>'Racheal', 'img' => 'https://www.google.co.uk/', 'knight_id' => 1}).save

@knight1= Knight.new({'name' => 'Sir Reginald', 'nation_id' => @kingdom1.id,'horse' => @horse1,'img' => 'https://www.google.co.uk/', 'wealth' => 500}).save
@knight2= Knight.new({'name' => 'Sir Percival', 'nation_id' => @kingdom2.id,'horse' => @horse2,'img' => 'https://www.google.co.uk/', 'wealth' => 500}).save
@knight3= Knight.new({'name' => 'Sir Robin', 'nation_id' => @kingdom3.id,'horse' => @horse3,'img' => 'https://www.google.co.uk/', 'wealth' => 500}).save
@knight4= Knight.new({'name' => 'Sir Galahad', 'nation_id' => @kingdom1.id,'horse' => @horse4,'img' => 'https://www.google.co.uk/', 'wealth' => 500}).save
@knight5= Knight.new({'name' => 'Sir Artod', 'nation_id' => @kingdom1.id,'img' => 'https://www.google.co.uk/', 'wealth' => 500}).save
@knight6= Knight.new({'name' => 'Sir Baran', 'nation_id' => @kingdom2.id,'img' => 'https://www.google.co.uk/', 'wealth' => 500}).save
@knight7= Knight.new({'name' => 'Sir Tim', 'nation_id' => @kingdom2.id,'img' => 'https://www.google.co.uk/', 'wealth' => 500}).save
@knight8= Knight.new({'name' => 'Sir Simon', 'nation_id' => @kingdom1.id,'img' => 'https://www.google.co.uk/', 'wealth' => 500}).save

@list=List.new([@knight2,@knight1,@knight3,@knight4])
@list.save

@event1=Event.new({'name' => 'fast joust','type' => 'jousting','family'=>'mounted','max' => 1, 'img' => 'https://www.google.co.uk/','prize' => 500,'event_date' => '2016-03-30'}).save
@event2=Event.new({'name' => '200yd archery','type' => 'archery','family'=>'ranged','max' => 5, 'img' => 'https://www.google.co.uk/','prize' => 200,'event_date' => '2016-05-30'}).save
@event1=Event.new({'name' => 'Sword & Shield','type' => 'combat on foot','family'=>'On foot','max' => 6, 'img' => 'https://www.google.co.uk/','prize' => 400,'event_date' => '1216-03-30'}).save


@trophy1= Trophy.new({'type'=> "gold",'event' => "jousting",'event_id' => 2,'family' => "mounted",'event_img' => 'https://www.google.co.uk/', 'prize' => 500})