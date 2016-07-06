require_relative('../models/knight')
require_relative('../models/trophy')
require_relative('../models/horse')
require_relative('../models/list')
require_relative('../models/kingdom')
require_relative('../models/event')
require_relative('../models/ranking')
require ('pry-byebug')

List.delete_all
Event.delete_all
Knight.delete_all
Horse.delete_all
Kingdom.delete_all

@kingdom1= Kingdom.new({'name' => 'kingdom of scotland', 'flag' => '/flags/scotland.jpg','arms' => '/arms/'}).save
@kingdom2= Kingdom.new({'name' => 'kingdom of england', 'flag' => '/flags/england.png','arms' => '/arms/'}).save
@kingdom3= Kingdom.new({'name' => 'frankish empire', 'flag' => '/flags/france.jpg','arms' => '/arms/'}).save
@kingdom4= Kingdom.new({'name' => 'lordship of ireland', 'flag' => '/flags/ireland.png','arms' => '/arms/'}).save
@kingdom5= Kingdom.new({'name' => 'kingdom of wales', 'flag' => '/flags/wales.jpg','arms' => '/arms/'}).save
@kingdom6= Kingdom.new({'name' => 'holy roman empire', 'flag' => '/flags/holyroman.png','arms' => '/arms/'}).save
@kingdom7= Kingdom.new({'name' => 'byzantine empire', 'flag' => '/flags/byzantine.png','arms' => '/arms/'}).save
@kingdom8= Kingdom.new({'name' => 'duchy of burgundy', 'flag' => '/flags/burgundy.png','arms' => '/arms/'}).save
@kingdom9= Kingdom.new({'name' => 'kingdom of aragon', 'flag' => '/flags/aragon.svg','arms' => '/arms/'}).save
@kingdom10= Kingdom.new({'name' => 'kingdom of sicily', 'flag' => '/flags/sicily.png','arms' => '/arms/'}).save
@kingdom11= Kingdom.new({'name' => 'kingdom of hungary', 'flag' => '/flags/hungary.png','arms' => '/arms/'}).save
@kingdom12= Kingdom.new({'name' => 'kingdom of poland', 'flag' => '/flags/poland.png','arms' => '/arms/'}).save
@kingdom13= Kingdom.new({'name' => 'kingdom of bulgaria', 'flag' => '/flags/bulgaria.png','arms' => '/arms/'}).save
@kingdom14= Kingdom.new({'name' => 'kingdom of naples', 'flag' => '/flags/naples.png','arms' => '/arms/'}).save


@horse1= Horse.new({'name'=>'Horsey Mchorseface', 'img' => '/horses/horse1.jpg'}).save
@horse2= Horse.new({'name'=>'Chuck', 'img' => '/horses/horse2.jpg'}).save
@horse3= Horse.new({'name'=>'Horace', 'img' => '/horses/horse6.jpg'}).save
@horse4= Horse.new({'name'=>'Trotalot', 'img' => '/horses/horse7.jpg'}).save
@horse5= Horse.new({'name'=>'Hamburger', 'img' => '/horses/horse4.jpg'}).save
@horse6= Horse.new({'name'=>'Red Rum', 'img' => '/horses/horse8.jpg'}).save
@horse7= Horse.new({'name'=>'Canterbury', 'img' => '/horses/horse3.jpg'}).save
@horse8= Horse.new({'name'=>'Mr Jones', 'img' => '/horses/horse5.jpg'}).save

@knight1= Knight.new({'name' => 'Sir Jock', 'nation_id' => @kingdom1.id,'img' => '/knights/knight1.jpg', 'wealth' => 0}).save
@knight2= Knight.new({'name' => 'Sir Tim', 'nation_id' => @kingdom1.id,'img' => '/knights/knight2.jpg', 'wealth' => 0}).save
@knight3= Knight.new({'name' => 'Sir Pierre', 'nation_id' => @kingdom2.id,'img' => '/knights/knight3.jpg', 'wealth' => 0}).save
@knight4= Knight.new({'name' => 'Sir Connor', 'nation_id' => @kingdom2.id,'img' => '/knights/knight4.jpg', 'wealth' => 0}).save
@knight5= Knight.new({'name' => 'Sir Hugh', 'nation_id' => @kingdom3.id,'img' => '/knights/knight5.jpg', 'wealth' => 0}).save
@knight6= Knight.new({'name' => 'Sir Rico', 'nation_id' => @kingdom3.id,'img' => '/knights/knight6.jpg', 'wealth' => 0}).save
@knight7= Knight.new({'name' => 'Sir Constantine', 'nation_id' => @kingdom4.id,'img' => '/knights/knight7.jpg', 'wealth' => 0}).save
@knight8= Knight.new({'name' => 'Sir Paul', 'nation_id' => @kingdom4.id,'img' => '/knights/knight8.jpg', 'wealth' => 0}).save
@knight9= Knight.new({'name' => 'Sir Reginald', 'nation_id' => @kingdom5.id,'img' => '/knights/knight9.jpg', 'wealth' => 0}).save
@knight10= Knight.new({'name' => 'Sir Cumference', 'nation_id' => @kingdom5.id,'img' => '/knights/knight10.jpg', 'wealth' => 0}).save
@knight11= Knight.new({'name' => 'Sir Zsolt', 'nation_id' => @kingdom11.id,'img' => '/knights/zsolt.jpg', 'wealth' => 0}).save
@knight12= Knight.new({'name' => 'Sir Cuthbert', 'nation_id' => @kingdom11.id,'img' => '/knights/knight12.jpg', 'wealth' => 0}).save
@knight13= Knight.new({'name' => 'Sir Arthur', 'nation_id' => @kingdom6.id,'img' => '/knights/knight13.jpg', 'wealth' => 0}).save
@knight14= Knight.new({'name' => 'Sir Thomas', 'nation_id' => @kingdom6.id,'img' => '/knights/knight14.jpg', 'wealth' => 0}).save
@knight15= Knight.new({'name' => 'Sir Bruce', 'nation_id' => @kingdom7.id,'img' => '/knights/knight15.jpg', 'wealth' => 0}).save
@knight16= Knight.new({'name' => 'Sir Cameron', 'nation_id' => @kingdom7.id,'img' => '/knights/knight16.jpg', 'wealth' => 0}).save
@knight17= Knight.new({'name' => 'Sir Alan', 'nation_id' => @kingdom8.id,'img' => '/knights/knight17.jpg', 'wealth' => 0}).save
@knight18= Knight.new({'name' => 'Sir Orion', 'nation_id' => @kingdom8.id,'img' => '/knights/knight18.jpg', 'wealth' => 0}).save
@knight19= Knight.new({'name' => 'Sir Stefan', 'nation_id' => @kingdom9.id,'img' => '/knights/knight19.jpg', 'wealth' => 0}).save
@knight21= Knight.new({'name' => 'Sir Derek', 'nation_id' => @kingdom9.id,'img' => '/knights/knight21.jpg', 'wealth' => 0}).save
@knight22= Knight.new({'name' => 'Sir Raoul', 'nation_id' => @kingdom10.id,'img' => '/knights/knight22.jpg', 'wealth' => 0}).save
@knight23= Knight.new({'name' => 'Sir Fred', 'nation_id' => @kingdom10.id,'img' => '/knights/knight23.jpg', 'wealth' => 0}).save
@knight24= Knight.new({'name' => 'Sir Gary', 'nation_id' => @kingdom12.id,'img' => '/knights/knight24.jpg', 'wealth' => 0}).save
@knight25= Knight.new({'name' => 'Sir Forest', 'nation_id' => @kingdom12.id,'img' => '/knights/knight25.jpg', 'wealth' => 0}).save
@knight26= Knight.new({'name' => 'Sir Tain Def', 'nation_id' => @kingdom13.id,'img' => '/knights/knight26.jpg', 'wealth' => 0}).save
@knight27= Knight.new({'name' => 'Sir Luke', 'nation_id' => @kingdom13.id,'img' => '/knights/knight27.jpg', 'wealth' => 0}).save
@knight28= Knight.new({'name' => 'Sir Joseph', 'nation_id' => @kingdom14.id,'img' => '/knights/knight11.jpg', 'wealth' => 0}).save
@knight20= Knight.new({'name' => 'Sir Barry', 'nation_id' => @kingdom14.id,'img' => '/knights/knight20.jpg', 'wealth' => 0}).save


@list=List.new([@knight2,@knight1,@knight3,@knight4])
@list.save

@event1=Event.new({'name' => 'fast joust','type' => 'joust','family'=>'mounted','max' => 10, 'prize' => 500,'event_date' => '1299-03-30'}).save
@event2=Event.new({'name' => '200yd archery','type' => 'archery','family'=>'ranged','max' => 6,'prize' => 200,'event_date' => '1299-05-30'}).save
@event3=Event.new({'name' => '200yd crossbow','type' => 'crossbow','family'=>'ranged','max' => 12,'prize' => 300,'event_date' => '1299-03-16'}).save
@event4=Event.new({'name' => '100yd crossbow','type' => 'crossbow','family'=>'ranged','max' => 12,'prize' => 250,'event_date' => '1299-03-14'}).save
@event5=Event.new({'name' => '300yd archery','type' => 'archery','family'=>'ranged','max' => 6,'prize' => 400,'event_date' => '1299-03-18'}).save
@event6=Event.new({'name' => 'Armoured Sword & Shield','type' => 'sword','family'=>'On foot','max' => 6,'prize' => 500,'event_date' => '1299-02-12'}).save
@event7=Event.new({'name' => 'Sword & Shield','type' => 'sword','family'=>'On foot','max' => 6,'prize' => 450,'event_date' => '1299-03-12'}).save
@event8=Event.new({'name' => '10yd Horseshoes','type' => 'horseshoe','family'=>'sport','max' => 6,'prize' => 100,'event_date' => '1299-03-18'}).save
@event21=Event.new({'name' => '20yd Horseshoes','type' => 'horseshoe','family'=>'sport','max' => 8,'prize' => 200,'event_date' => '1299-03-03'}).save
@event9=Event.new({'name' => 'Bowls','type' => 'bowls','family'=>'sport','max' => 8,'prize' => 50,'event_date' => '1299-03-04'}).save
@event10=Event.new({'name' => 'Quarterstaff','type' => 'staff','family'=>'On foot','max' => 8,'prize' => 200,'event_date' => '1299-03-22'}).save
@event22=Event.new({'name' => 'Clubs','type' => 'staff','family'=>'On foot','max' => 16,'prize' => 300,'event_date' => '1299-03-21'}).save
@event11=Event.new({'name' => 'Wrestling','type' => 'wrestle','family'=>'On foot','max' => 8,'prize' => 400,'event_date' => '1299-03-04'}).save
@event12=Event.new({'name' => 'Hammer Toss','type' => 'hammer','family'=>'sport','max' => 10,'prize' => 450,'event_date' => '1299-03-17'}).save
@event13=Event.new({'name' => 'Heavy Joust','type' => 'joust','family'=>'mounted','max' => 28,'prize' => 800,'event_date' => '1299-03-18'}).save
@event14=Event.new({'name' => '9 hole Colf','type' => 'colf','family'=>'sport','max' => 10,'prize' => 200,'event_date' => '1299-03-19'}).save
@event23=Event.new({'name' => '15 hole Colf','type' => 'colf','family'=>'sport','max' => 12,'prize' => 800,'event_date' => '1299-03-05'}).save
@event24=Event.new({'name' => '5 hole Colf','type' => 'colf','family'=>'sport','max' => 6,'prize' => 100,'event_date' => '1299-03-14'}).save
@event15=Event.new({'name' => 'Sword only','type' => 'sword','family'=>'On foot','max' => 10,'prize' => 500,'event_date' => '1299-03-26'}).save
@event16=Event.new({'name' => '3v3','type' => 'team','family'=>'On foot','max' => 6,'prize' => 250,'event_date' => '1299-03-29'}).save
@event17=Event.new({'name' => 'Joust to Ground','type' => 'joust','family'=>'mounted','max' => 6,'prize' => 1000,'event_date' => '1299-03-11'}).save
@event18=Event.new({'name' => 'Fist fight','type' => 'wrestle','family'=>'On foot','max' => 6,'prize' => 300,'event_date' => '1299-03-07'}).save
@event19=Event.new({'name' => '400yd archery','type' => 'archery','family'=>'ranged','max' => 16,'prize' => 750,'event_date' => '1299-03-10'}).save
@event20=Event.new({'name' => '50yd crossbow','type' => 'crossbow','family'=>'ranged','max' => 9,'prize' => 150,'event_date' => '1299-03-01'}).save

@ranking= Ranking.new()
