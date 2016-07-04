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

@kingdom1= Kingdom.new({'name' => 'kingdom of scotland', 'flag' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Lionrampant.svg/2000px-Lionrampant.svg.png','arms' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Royal_Coat_of_Arms_of_the_Kingdom_of_Scotland.svg/2000px-Royal_Coat_of_Arms_of_the_Kingdom_of_Scotland.svg.png'}).save
@kingdom2= Kingdom.new({'name' => 'kingdom of england', 'flag' => 'http://www.templateof.com/postpic/2014/07/medieval-england-flag_264431.PNG','arms' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Royal_Coat_of_Arms_of_the_United_Kingdom.svg/2000px-Royal_Coat_of_Arms_of_the_United_Kingdom.svg.png'}).save
@kingdom3= Kingdom.new({'name' => 'kingdom of france', 'flag' => 'https://upload.wikimedia.org/wikipedia/en/1/1f/Flag_of_medieval_France.png','arms' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Grand_Royal_Coat_of_Arms_of_France_%26_Navarre.svg/2000px-Grand_Royal_Coat_of_Arms_of_France_%26_Navarre.svg.png'}).save

@horse1= Horse.new({'name'=>'Horsey Mchorseface', 'img' => 'http://www.isoladellecolombe.it/wp-content/uploads/2016/05/frison-black.jpg'}).save
@horse2= Horse.new({'name'=>'Redrum', 'img' => 'http://isyourgirlfriendahorse.com/carousel-horse-1.jpg'}).save
@horse3= Horse.new({'name'=>'Horse I win', 'img' => 'http://media1.santabanta.com/full1/Animals/Horses/horses-82a.jpg'}).save
@horse4= Horse.new({'name'=>'Racheal', 'img' => 'https://s-media-cache-ak0.pinimg.com/736x/bd/a8/b1/bda8b1a2fbaac4cdfc4de55ee0f8bf3d.jpg'}).save

@knight1= Knight.new({'name' => 'Sir Reginald', 'nation_id' => @kingdom1.id,'img' => 'http://www.3dtotal.com/admin/new_cropper/tutorial_content_images/797_tid_thelastknight.jpg', 'wealth' => 500}).save
@knight2= Knight.new({'name' => 'Sir Percival', 'nation_id' => @kingdom2.id,'img' => 'http://p2.storage.canalblog.com/24/16/577050/54588570.jpg', 'wealth' => 500}).save
@knight3= Knight.new({'name' => 'Sir Robin', 'nation_id' => @kingdom3.id,'img' => 'https://s-media-cache-ak0.pinimg.com/236x/08/fb/73/08fb73851b6c0bacbfed0599850a9fa0.jpg', 'wealth' => 500}).save
@knight4= Knight.new({'name' => 'Sir Galahad', 'nation_id' => @kingdom1.id,'img' => 'https://s-media-cache-ak0.pinimg.com/736x/28/1f/81/281f81f43d14cc46b6ba1326f031a6e5.jpg', 'wealth' => 500}).save
@knight5= Knight.new({'name' => 'Sir Artod', 'nation_id' => @kingdom1.id,'img' => 'http://1.bp.blogspot.com/_o8EbVx1uV6c/S_04U5HCW1I/AAAAAAAAA7I/wEKhVoAMcTM/s1600/20080715174808_medieval_punk.jpg', 'wealth' => 500}).save
@knight6= Knight.new({'name' => 'Sir Baran', 'nation_id' => @kingdom2.id,'img' => 'https://s-media-cache-ak0.pinimg.com/236x/e0/75/be/e075bebc855a639ff3703dfff61820c7.jpg', 'wealth' => 500}).save
@knight7= Knight.new({'name' => 'Sir Tim', 'nation_id' => @kingdom2.id,'img' => 'https://pixabay.com/static/uploads/photo/2013/06/07/22/33/knight-122910_960_720.jpg', 'wealth' => 500}).save
@knight8= Knight.new({'name' => 'Sir Simon', 'nation_id' => @kingdom1.id,'img' => 'https://s-media-cache-ak0.pinimg.com/236x/f0/e7/14/f0e71430b835e8950da0e213e7548190.jpg', 'wealth' => 500}).save

@list=List.new([@knight2,@knight1,@knight3,@knight4])
@list.save

@event1=Event.new({'name' => 'fast joust','type' => 'jousting','family'=>'mounted','max' => 5, 'img' => 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Jousting_at_Hever_Castle,_Kent_(5)_-_geograph.org.uk_-_1453366.jpg','prize' => 500,'event_date' => '2016-03-30'}).save
@event2=Event.new({'name' => '200yd archery','type' => 'archery','family'=>'ranged','max' => 5, 'img' => 'http://medieval-time-period.weebly.com/uploads/1/7/5/7/17574385/712630_orig.jpgm','prize' => 200,'event_date' => '2016-05-30'}).save
@event1=Event.new({'name' => 'Sword & Shield','type' => 'combat on foot','family'=>'On foot','max' => 6, 'img' => 'http://schmitt.seafog.net/PeterSchmitt/wp-content/uploads/2013/01/17SwordFight11-1024x977.jpg','prize' => 400,'event_date' => '1216-03-30'}).save

@event1.add_knight(@knight1)
@event1.add_knight(@knight2)
@event1.add_knight(@knight3)
@event1.add_knight(@knight4)
@event1.run_event

@ranking= Ranking.new()
