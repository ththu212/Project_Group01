create database [Fruit_Shop2]
go
USE [Fruit_Shop2]

GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](100) primary key NOT NULL,
	[pass] [varchar](1000) NOT NULL,
	[fullname] [nvarchar](1000) not NULL,
	[email] [varchar](50) not NULL,
	[isAdmin] [int] NOT NULL,
	[isCus] [int] NOT NULL,
	[phone] [varchar](20) NULL,
	[address] [nvarchar](max) NULL,

)
go
CREATE TABLE [dbo].[Catelogy](
	[cId] [int] primary key NOT NULL,
	[cName] [nvarchar](50) NOT NULL,

) 
go
CREATE TABLE [dbo].[Product](
	[pId] [int] IDENTITY(1,1) primary key NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[price] [float] not NULL,
	[img] [varchar](1000) NOT NULL,
	[des] [nvarchar](1000) NOT NULL,
	[cId] [int] not NULL,
	[status] [int] not NULL,
	[quantity] [int] not NULL,
	FOREIGN KEY (cId) REFERENCES Catelogy(cId)
	)
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/8/2023 3:59:50 AM ******/
CREATE TABLE [dbo].[Cart](
	[username] [varchar](100) NULL,
	[pId] [int] NOT NULL,
	[quantity] [int] not NULL,
	[total_quantity] [int] NOT NULL,
	FOREIGN KEY (username) REFERENCES Account(username),
	FOREIGN KEY (pId) REFERENCES Product(pId)
) 

go
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) primary key NOT NULL,
	[username] [varchar](50) NULL,
	[order_date] [date] not NULL,
	[total_amount] [decimal](10, 2) not NULL,
	[total_quantity] [int] NOT NULL,
	[name] [nvarchar](max) not NULL,
	[address] [nvarchar](max) not NULL,
	[phone] [varchar](50) NOT NULL,
	[startus] [int] NOT NULL,
	[note] [nvarchar](max) NULL,
	[pay] [int] NOT NULL,
 

) 

	go
CREATE TABLE [dbo].[OrderItem](
	[order_item_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] not NULL,
	[pId] [int] not NULL,
	[quantity] [int] not NULL,
	[amount] [float] not NULL,
	FOREIGN KEY (order_id) REFERENCES [Order](order_id),
	FOREIGN KEY (pId) REFERENCES Product(pId)
)
go
 
INSERT [dbo].[Account] ([username], [pass], [fullname], [email], [isAdmin], [isCus], [phone], [address]) VALUES (N'thanhthu', N'202cb962ac59075b964b07152d234b70', N'Thu Vo', N'thuvtce170522@fpt.edu.vn', 1, 0, N'+84383395692', N'Ninh Kieu, Can Tho, Viet Nam')
GO
INSERT [dbo].[Account] ([username], [pass], [fullname], [email], [isAdmin], [isCus], [phone], [address]) VALUES (N'thune', N'f8d4f7994e1155d8cc5f9f9c7f6f5a7c', N'Thu Vo', N'thuvo464@gmail.com', 0, 1, N'+84383395692', N'Ninh Kieu, Can Tho, Viet Nam')
GO

INSERT [dbo].[Catelogy] ([cId], [cName]) VALUES (1, N'Strawberry')
GO
INSERT [dbo].[Catelogy] ([cId], [cName]) VALUES (2, N'Berry')
GO
INSERT [dbo].[Catelogy] ([cId], [cName]) VALUES (3, N'Lemon')
GO
INSERT [dbo].[Catelogy] ([cId], [cName]) VALUES (4, N'Orther')

GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( 'thanh thu', 123, 'assets/img/products/hero-bg-3.jpg', 'Huhu', 1, 0, 6)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Berry', 70, N'assets/img/products/product-img-2_2.jpg', N'Grapes are small, sweet, and juicy fruits with a crisp skin and succulent pulp. They come in various colors, offering a delightful blend of flavors. Grapes are versatile, perfect for snacking, winemaking, and culinary uses. They''re not only delicious but also nutritious, rich in vitamins and antioxidants.', 2, 0, 15)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Lemon', 35, N'assets/img/products/product-img-3.jpg', N'Lemons are small, yellow citrus fruits known for their tart, refreshing taste and versatility in cooking and beverages. They''re a rich source of vitamin C and add brightness to many dishes.', 3, 0, 10)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Kiwi', 50, N'assets/img/products/product-img-4.jpg', N'Avocado is a creamy, green fruit known for its buttery texture and mild, nutty flavor. It''s often used in salads, spreads, and as a topping for various dishes. Avocado is also a good source of healthy fats and essential nutrients.', 4, 1, 9)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Green Apple', 45, N'assets/img/products/product-img-5.jpg', N'Green apples are crisp, tart fruits with a bright green skin. They offer a refreshing and slightly sour taste, making them popular for snacking and use in pies and salads. Green apples are known for their firm texture and are a good source of dietary fiber and essential vitamins.', 4, 1, 9)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Strawberry', 80, N'assets/img/products/product-img-6.jpg', N'Strawberries are vibrant red, heart-shaped berries known for their sweet and juicy flavor. They are a popular fruit for snacking, desserts, and preserves. Strawberries are celebrated for their delicious taste and high vitamin C content.', 1, 0, 10)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Mua do', 123, N'assets/img/products/feature-bg.jpg', N'Toi dang mua do', 1, 0, 10)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'thanh thu', 123, N'assets/img/products/hero-bg.jpg', N'Haha', 1, 0, 10)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'thanh thu', 123, N'assets/img/products/product-img-6_1.jpg', N'Strawberries are vibrant red, heart-shaped berries known for their sweet and juicy flavor. They are a popular fruit for snacking, desserts, and preserves. Strawberries are celebrated for their delicious taste and high vitamin C content.', 2, 1, 10)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Avocado 034', 80000, N'assets\img\products\bo034.jpg', N'Avocado 034 is an avocado variety that is considered a type of avocado that produces fruit in the main season and off-season, has high yield, and has the best fruit quality among current avocado varieties.', 1, 1, 30)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Cau Duc Pineapple', 14000, N'assets\img\products\khom.jpg', N'Cau Duc pineapple belongs to the Queen variety. The unique feature of this variety is that the fruit has an elegant shape, short stem, small core, bulging eyes, slightly deep eye pits, dark yellow flesh, little fiber, little juice, crunchy and sweet. In particular, Cau Duc pineapple can be left for about 10-15 days without rotting.', 3, 1, 15)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Hoa Loc Mango', 45000, N'assets\img\products\xoai.jpg', N'Hoa Loc mangoes are usually eaten when ripe. When eating a piece of mango in the mouth, the mango has a rich, pleasant aroma, the flesh is golden yellow, not at all greasy, the sweetness is deep, the aftertaste is good, and after eating, the mouth still smells. fragrant scent for an hour.', 1, 1, 65)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Longan', 45000, N'assets\img\products\nhan.jpg', N'Longan is a longan variety that produces the largest fruit. The rice of the longan fruit is easy to recognize because it is ivory yellow, crunchy and very delicious.', 1, 1, 22)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Luc Ngan Lychee', 50000, N'assets\img\products\vai.jpg', N'When ripe, Luc Ngan lychee is bright red, has small seeds, thick pulp, sweet and rich in nutrients. Lychees here are larger and have a unique flavor that is different from lychees in other lands.', 1, 1, 80)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Nam Roi Pomelo', 28000, N'assets\img\products\buoi5roi.jpg', N'Nam Roi Pomelo is pear-shaped, can peel off its skin, has many succulent segments, is sweet, and has no seeds. Each year, this pomelo variety is harvested twice in August and December.', 2, 1, 20)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Ri 6 Durian', 90000, N'assets\img\products\sr.jpg', N'Ri 6 durian is popular for its unique aroma, thick rice, flat seeds, sweet taste, and moderate fat.', 1, 1, 60)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Star apple', 50000, N'assets\img\products\vs.jpg', N'Star apple is commonly grown in the orchards of central and southern parts of Viet Nam,it has sweet, tropical flavor and creamy, jellylike fruit flesh.', 2, 1, 43)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Thai jackfruit', 21000, N'assets\img\products\mit.jpg', N'Thai jackfruit has large, thick segments that are sweet and have a subtle aroma when eaten. If you want to enjoy a lot of crunch, you can preserve and serve cold.', 1, 1, 40)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Avocado', 75000, N'assets\img\products\bo.jpg', N'Avocado is a famous specialty fruit of the highlands. The avocado here stands out for its deliciousness and nutritional value. Avocados have outstanding advantages compared to regular avocados: the fruit is large and not rough, the fruit is not too round but not too long, and the skin of the avocado is plump when almost ripe but still a bit rough and very firm to hold.', 1, 2, 62)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Sapoche', 45000, N'assets\img\products\spc.jpg', N'With a thin, light brown skin, fragrant, very sweet and succulent when ripe, saboche is an ideal fruit for dessert or refreshment. Saboche has a sweet taste because it contains a lot of fructose and sucrose, so this is a natural food that helps increase the body energy.', 2, 1, 35)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Mangosteen', 50000, N'assets\img\products\mc.jpg', N'When ripe, mangosteen fruit has a thick, dark purple-red outer skin. The flesh is ivory white and divided into many segments, has a sweet and sour taste and an attractive aroma. Mangosteen contains a lot of protein, calcium, iron, phosphorus, etc., so it is very good for health.', 1, 1, 62)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Thai Rambutan', 55000, N'assets\img\products\cc.jpg', N'Rambutan is as small as a golf ball with a hairy red and blue shell that looks a bit like a sea urchin. When eating rambutan, the clear white flesh has a mild sweet taste and has seeds in the center.', 1, 1, 94)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Orange', 12000, N'assets\img\products\cx.jpg', N'Orange is a fruit tree in the same family as grapefruit. It has a fruit smaller than a grapefruit, with thin skin. Depending on the type, it is orange or green when ripe, with a sweet or slightly sour taste.', 1, 1, 95)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Persimmon', 80000, N'assets\img\products\hong.jpg', N'Persimmons are orange-yellow to red depending on the variety. The fruit is spherical, heart-shaped, or flattened tomato-shaped. The calyx often sticks to the fruit when ripe.', 1, 2, 63)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Tangerine', 45000, N'assets\img\products\qd.jpg', N'Lai Vung tangerines are succulent and sweet, a famous specialty of Lai Vung - Dong Thap. Characterized by a peel with a pleasant aroma like essential oils, large round fruit, thin and shiny peel that is easy to peel, super succulent tangerine segments, sweet taste mixed with a slight sourness.', 1, 1, 88)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Dragon Fruit', 20000, N'assets\img\products\tl.jpg', N'Dragon fruit is an orchid tree, the fruit is oval in shape, has many green leaves, green skin, when ripe it turns purple and then dark red, many black seeds, mild sweet taste.', 1, 2, 77)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Rose Apple', 13000, N'assets\img\products\man.jpg', N' The skin color of the fruit can be paled red, greenish-white, or cream-colored. The skin is thin and waxy. Inside the white flesh is spongy and dry, but can be juicy and crispy depending on the variety. it, have a mild, watery sweetness, although them and they can be bland or sour at times.', 2, 2, 64)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Dalat strawberry', 200000, N'assets/img/products/product-img-1_1.jpg', N'Strawberries are red, succulent, have a sweet candy aroma and have a rich, sweet taste, different from all other types of strawberries being grown in Da Lat and surrounding areas today:', 1, 0, 0)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Areca Banana.', 20000, N'assets\img\products\chuoi.jpg', N'Originally called areca banana because it has a small, round shape, is thick and fat like an areca fruit in Vietnam. Currently, in our country market, areca bananas are grown the most in Tien Giang province. Areca bananas have more fruit density, smooth skin, rounder fruit and usually no beard at the top of the fruit. When the banana peel is ripe, it will turn yellow and have a sweet taste and characteristic aroma.', 2, 2, 77)
GO
INSERT [dbo].[Product] ( [name], [price], [img], [des], [cId], [status], [quantity]) VALUES ( N'Dau', 23, N'assets/img/products/dau.jpg', N'Day la dau', 1, 1, 6)
GO

CREATE PROCEDURE [dbo].[CheckLogin]
@username varchar(10),
@password varchar(32)
AS
SELECT username
FROM Account
WHERE username = @username AND pass = @password;
GO
create TRIGGER [dbo].[MyTriggerName]
ON [dbo].[Cart]
AFTER update
AS
BEGIN
    UPDATE t1
    SET t1.total_quantity = t1.quantity * t2.price
    FROM Cart t1
    INNER JOIN Product t2 ON t1.pId = t2.pId
END;
GO
create TRIGGER [dbo].[MyTriggerOrderItem]
ON [dbo].[OrderItem]
AFTER insert
AS
BEGIN
    UPDATE t1
    SET t1.amount = t1.quantity * t2.price
    FROM OrderItem t1
    INNER JOIN Product t2 ON t1.pId = t2.pId
END;
GO
Create TRIGGER [dbo].[OrderID]
ON [dbo].[OrderItem] 
AFTER INSERT
AS
BEGIN
    UPDATE OrderItem 
	SET OrderItem.order_id = (SELECT [Order].order_id FROM [Order] WHERE [Order].order_id = (SELECT SCOPE_IDENTITY()))
	WHERE OrderItem.order_id = (SELECT SCOPE_IDENTITY());
END;
GO
Create TRIGGER [dbo].[UpdateOrderID]
ON [dbo].[OrderItem]
AFTER INSERT
AS
BEGIN
    DECLARE @MaxOrderID INT;
    SELECT @MaxOrderID = MAX(order_id) FROM [Order];
    
    UPDATE OrderItem
    SET order_id = @MaxOrderID
    FROM inserted
    WHERE OrderItem.order_item_id = inserted.order_item_id;
END;
GO
Create   TRIGGER [dbo].[UpdateProductQuantity]
ON [dbo].[OrderItem]
AFTER INSERT
AS
BEGIN
  UPDATE p
  SET quantity = p.quantity - i.quantity
  FROM Product p
  INNER JOIN inserted i ON p.pId = i.pId;
END
GO
create TRIGGER [dbo].[update_product_status2]
ON [dbo].[Product]
AFTER UPDATE
AS
BEGIN
  IF UPDATE(quantity)
  BEGIN
    UPDATE Product
    SET status = 0
    FROM Product AS p
    INNER JOIN inserted AS i ON p.pId = i.pId
    WHERE i.quantity <= 0;
  END
END;


