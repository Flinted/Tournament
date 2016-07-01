require_relative('../knight')
require_relative('../trophy')
require_relative('../horse')
require_relative('../list')
require_relative('../kingdom')
require_relative('../event')

@kingdom1= Kingdom.new({'name' => 'kingdom of scotland', 'flag' => 'www.google.co.uk','arms' => 'www.amazon.co.uk'}).save
@kingdom2= Kingdom.new({'name' => 'kingdom of england', 'flag' => 'www.google.co.uk','arms' => 'www.amazon.co.uk'}).save
@kingdom3= Kingdom.new({'name' => 'kingdom of france', 'flag' => 'www.google.co.uk','arms' => 'www.amazon.co.uk'}).save

@horse1= Horse.new({'name'=>'Horsey Mchorseface', 'img' => 'www.google.co.uk', 'knight_id' => 2}).save
@horse2= Horse.new({'name'=>'Redrum', 'img' => 'www.google.co.uk', 'knight_id' => 3}).save
@horse3= Horse.new({'name'=>'Horse I win', 'img' => 'www.google.co.uk', 'knight_id' => 4}).save
@horse4= Horse.new({'name'=>'Racheal', 'img' => 'www.google.co.uk', 'knight_id' => 1}).save

@knight2= Knight.new({'name' => 'Sir Reginald', 'nation_id' => 1,'horse' => @horse1,'img' => 'www.google.co.uk', 'wealth' => 500}).save
@knight2= Knight.new({'name' => 'Sir Percival', 'nation_id' => 2,'horse' => @horse2,'img' => 'www.google.co.uk', 'wealth' => 500}).save
@knight2= Knight.new({'name' => 'Sir Robin', 'nation_id' => 3,'horse' => @horse3,'img' => 'www.google.co.uk', 'wealth' => 500}).save
@knight2= Knight.new({'name' => 'Sir Galahad', 'nation_id' => 2,'horse' => @horse4,'img' => 'www.google.co.uk', 'wealth' => 500}).save
@knight2= Knight.new({'name' => 'Sir Artod', 'nation_id' => 2,'img' => 'www.google.co.uk', 'wealth' => 500}).save
@knight2= Knight.new({'name' => 'Sir Baran', 'nation_id' => 1,'img' => 'www.google.co.uk', 'wealth' => 500}).save
@knight2= Knight.new({'name' => 'Sir Tim', 'nation_id' => 1,'img' => 'www.google.co.uk', 'wealth' => 500}).save
@knight2= Knight.new({'name' => 'Sir Simon', 'nation_id' => 2,'img' => 'www.google.co.uk', 'wealth' => 500}).save

@event1=Event.new({'name' => 'fast joust','type' => 'jousting','family'=>'mounted','max' => 1, 'img' => 'www.google.co.uk','prize' => 500,'event_date' => '2016-03-30'}).save
@event2=Event.new({'name' => '200yd archery','type' => 'archery','family'=>'ranged','max' => 5, 'img' => 'www.google.co.uk','prize' => 200,'event_date' => '2016-05-30'}).save
@event1=Event.new({'name' => 'Sword & Shield','type' => 'combat on foot','family'=>'On foot','max' => 6, 'img' => 'www.google.co.uk','prize' => 400,'event_date' => '1216-03-30'}).save


@trophy1= Trophy.new({'type'=> "gold",'event' => "jousting",'event_id' => 2,'family' => "mounted",'event_img' => 'www.google.co.uk', 'prize' => 500}).save