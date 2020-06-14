

-- Практическое задание тема "NoSQL"
-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
HINCRBY addresses '127.0.0.1' 1
HGETALL addresses

HINCRBY addresses '127.0.0.2' 1
HGETALL addresses

HGET addresses '127.0.0.1'

-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному
-- адресу и наоборот, поиск электронного адреса пользователя по его имени.
HSET emails 'katya' 'ikatya@gmail.com'
HSET emails 'Pasha' 'pasha@yahoo.com'
HSET emails 'Uliana' 'uliana@mail.com'

HGET emails 'katya'

HSET users 'katya@gmail.com' 'katya'
HSET users 'pasha@yahoo.com' 'pasha'
HSET users 'uliana@mail.com' 'uliana'

HGET users 'uliana@mail.ru'

-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
-- Предлагаемый вариант

show dbs

use shop

db.createCollection('catalogs')
db.createCollection('products')

db.catalogs.insert({name: 'SSD'})
db.catalogs.insert({name: 'Монитор'})
db.catalogs.insert({name: 'МФУ лазерный'})

db.products.insert(
  {
    name: 'TOSHIBA Canvio Basics',
    description: 'Внешний жесткий диск TOSHIBA Canvio Basics HDTB410EK3AA, 1ТБ,',
    price: 3590.00,
    catalog_id: new ObjectId("57153ae9aec9680a8ae8f5a6")
  }
);

db.products.insert(
  {
    name: ' BENQ Zowie',
    description: 'Монитор игровой BENQ Zowie XL2411P 24" серый [9h.lgplb.qbe]',
    price: 15270.00,
    catalog_id: new ObjectId("7fh432xef700498cbdc56b")7fh432xei89
  }
);

db.products.insert(
  {
    name: 'HP LaserJet Pro MFP M28w',
    description: 'МФУ лазерный HP LaserJet Pro MFP M28w RU, A4, лазерный, белый [w2g55a]',
    price: 10500.00,
    catalog_id: new ObjectId("42jn49d9d4329443t9fudew8")
  }
);

db.products.find()

db.products.find({catalog_id: ObjectId("42jn49d9d4329443t9fudew8")})
 
