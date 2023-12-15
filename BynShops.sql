Create database Bynshops;

USE [BynShops]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 12/12/2023 12:14:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](100) NULL,
	[Role] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 12/12/2023 12:14:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[StreetAddress] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[CustomerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/12/2023 12:14:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/12/2023 12:14:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[AccountID] [int] NULL,
	[Review] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fruits]    Script Date: 12/12/2023 12:14:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fruits](
	[FruitID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [text] NULL,
	[Price] [decimal](10, 2) NULL,
	[CategoryID] [int] NULL,
	[image_link] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[FruitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 12/12/2023 12:14:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[OrderItemID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[FruitID] [int] NULL,
	[Quantity] [int] NULL,
	[Subtotal] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/12/2023 12:14:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [date] NULL,
	[TotalAmount] [decimal](10, 2) NULL,
	[AddressID] [int] NULL,
	[PaymentID] [int] NULL,
	[Status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 12/12/2023 12:14:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[PaymentMethod] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 
GO
INSERT [dbo].[Accounts] ([AccountID], [Username], [Password], [Role]) VALUES (1, N'user1', N'123', N'user')
GO
INSERT [dbo].[Accounts] ([AccountID], [Username], [Password], [Role]) VALUES (16, N'admin1', N'123', N'seller')
GO
INSERT [dbo].[Accounts] ([AccountID], [Username], [Password], [Role]) VALUES (17, N'user2', N'123', N'user')
GO
INSERT [dbo].[Accounts] ([AccountID], [Username], [Password], [Role]) VALUES (18, N'user3', N'123', N'user')
GO
INSERT [dbo].[Accounts] ([AccountID], [Username], [Password], [Role]) VALUES (19, N'user4', N'123', N'user')
GO
INSERT [dbo].[Accounts] ([AccountID], [Username], [Password], [Role]) VALUES (20, N'user5', N'123', N'user')
GO
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (1, N'124 Main St', N'New York', N'NY', N'USA', 1)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (2, N'456 Oak Ave', N'Los Angeles', N'CA', N'USA', 2)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (3, N'789 Pine Rd', N'Chicago', N'IL', N'USA', 3)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (4, N'101 Maple Ave', N'Houston', N'TX', N'USA', 4)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (5, N'202 Oak Dr', N'Miami', N'FL', N'USA', 5)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (6, N'303 Cedar Ln', N'Seattle', N'WA', N'USA', 6)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (7, N'404 Elm St', N'Boston', N'MA', N'USA', 7)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (8, N'505 Birch Blvd', N'San Francisco', N'CA', N'USA', 8)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (9, N'606 Willow Ct', N'Denver', N'CO', N'USA', 9)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (10, N'707 Redwood Pl', N'Philadelphia', N'PA', N'USA', 10)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (106, N'Viglacera', N'Ha Noi', N'HN', N' VietNam', 23)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (108, N'Viglacera', N'Ha Noi', N'HN', N' VietNam', 24)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (109, N'Viglacera', N'Ha Noi', N'HN', N' VietNam', 27)
GO
INSERT [dbo].[Addresses] ([AddressID], [StreetAddress], [City], [State], [Country], [CustomerID]) VALUES (110, N'FPT', N'Ha', N'HN', N' VietNam', 26)
GO
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Fresh Fruits')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Vegetables')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Organic Produce')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Leafy Greens')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (1, N'John', N'Doe', N'john.doe@example.com', N'555-555-551', 1, N'I had an amazing experience shopping at BYN Shop. The products were of excellent quality and the prices were very reasonable. The customer service team was also very helpful and responsive. I would highly recommend BYN Shop to anyone looking for high-quality products at great prices. I will definitely be shopping here again in the future!')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (2, N'Jane', N'Doe', N'jane.doe@example.com', N'555-555-552', NULL, N'I was pleasantly surprised by the quality of the items I purchased from BYN Shop. The clothes were stylish and well-made, and they arrived in perfect condition. My only suggestion would be to improve the packaging to ensure items dont get wrinkled during transit. Overall, I had a positive experience and I would definitely consider shopping here again.')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (3, N'Michael', N'Johnson', N'michael.johnson@example.com', N'555-555-5553', NULL, N'I found BYN Shop to be a reliable source for fashion. The range of products is impressive and the quality is great for the price. I had a minor issue with the sizing, but the customer service team was quick to assist me and provide a solution. I appreciate their dedication to customer satisfaction.')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (4, N'Sarah', N'Smith', N'sarah.smith@example.com', N'555-555-5554', NULL, N'The variety of products at BYN Shop is outstanding. I was able to find everything I needed in one place. The website is easy to navigate and the checkout process was seamless. My order arrived on time and the items were just as described. I will definitely be a repeat customer.')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (5, N'David', N'Brown', N'david.brown@example.com', N'555-555-5555', NULL, N'I had a mixed experience with BYN Shop. While the products were of good quality, I encountered some issues with the customer service team. It took longer than expected to get a response to my inquiry. However, once I did get in touch, they were able to resolve my issue satisfactorily.')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (6, N'Emma', N'Wilson', N'emma.wilson@example.com', N'555-555-5556', NULL, N'BYN Shop has become my go-to place for fashion. The selection is on-trend and the prices are reasonable. I love that they regularly update their inventory with new arrivals. The shipping process was smooth, and my items arrived in perfect condition.')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (7, N'Matthew', N'Jones', N'matthew.jones@example.com', N'555-555-5557', NULL, N'I had a positive experience shopping at BYN Shop. The products were of decent quality for the price. The website was easy to navigate, and the checkout process was straightforward. My order arrived on time, and I was satisfied with my purchase.')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (8, N'Olivia', N'Davis', N'olivia.davis@example.com', N'555-555-5558', NULL, N'I was impressed with the level of communication from BYN Shop. They kept me informed about my order every step of the way. The products were as described, and the quality exceeded my expectations. I will definitely be recommending BYN Shop to friends and family.')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (9, N'Ethan', N'Taylor', N'ethan.taylor@example.com', N'555-555-5559', NULL, N'BYN Shop offers top-notch quality products. I was thoroughly satisfied with my purchase. The customer service team was responsive and helpful. I will be a loyal customer and will continue to shop here in the future.')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (10, N'Ava', N'Wilson', N'ava.wilson@example.com', N'555-555-5560', NULL, N'My experience with BYN Shop was a bit of a mixed bag. While some items exceeded my expectations, others fell short. The customer service team was responsive in addressing my concerns, which I appreciated. Overall, I would say it was a decent shopping experience.')
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (23, N'Minh', N'Anh', N'dragonufx0@gmail.com', N'0913817595', 16, NULL)
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (24, N'Gia', N'Bao', N'pgb.168', N'0969689982', 17, NULL)
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (25, N'Minh', N'Bao', N'dragonufx@gmail.com', N'0913817596', 18, NULL)
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (26, N'Gia', N'Bao', N'byn', N'0969689982', 19, NULL)
GO
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Email], [Phone], [AccountID], [Review]) VALUES (27, N'Bao', N'DZ', N'BYN123', N'09138175950', 20, NULL)
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Fruits] ON 
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (3, N'Carrot', N'Crunchy and vibrant orange carrots.', CAST(0.50 AS Decimal(10, 2)), 2, N'images/Carrot.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (5, N'Strawberry', N'Plump and juicy strawberries.', CAST(2.00 AS Decimal(10, 2)), 1, N'images/Strawberry.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (6, N'Mango', N'Exotic and luscious mangoes.', CAST(2.50 AS Decimal(10, 2)), 1, N'images/Mango.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (7, N'Blueberry', N'Sweet and tangy blueberries.', CAST(2.20 AS Decimal(10, 2)), 1, N'images/Blueberry.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (8, N'Watermelon', N'Hydrating and refreshing watermelon.', CAST(1.50 AS Decimal(10, 2)), 1, N'images/Watermelon.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (9, N'Organic Apples', N'Certified organic juicy red apples.', CAST(2.00 AS Decimal(10, 2)), 3, N'images/OrganicApple.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (10, N'Organic Oranges', N'Organic, zesty and sweet oranges.', CAST(3.50 AS Decimal(10, 2)), 3, N'images/OrganicOrange.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (11, N'Organic Berries', N'Fresh, organic mixed berries.', CAST(3.00 AS Decimal(10, 2)), 3, N'images/OrganicBerries.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (12, N'Organic Avocado', N'Creamy and delicious organic avocados.', CAST(2.80 AS Decimal(10, 2)), 3, N'images/OrganicAvocado.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (13, N'Organic Spinach', N'Fresh and organic baby spinach leaves.', CAST(2.50 AS Decimal(10, 2)), 4, N'images/OrganicSpinach.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (14, N'Kale', N'Nutrient-dense and crisp kale leaves.', CAST(2.20 AS Decimal(10, 2)), 4, N'images/Kale.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (15, N'Romaine Lettuce', N'Crisp and refreshing organic romaine lettuce.', CAST(2.00 AS Decimal(10, 2)), 4, N'images/RomaineLettuce.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (16, N'Arugula', N'Peppery and organic arugula leaves.', CAST(2.30 AS Decimal(10, 2)), 4, N'images/Arugula.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (17, N'Broccoli', N'Nutritious and tender broccoli florets.', CAST(2.50 AS Decimal(10, 2)), 2, N'images/Broccoli.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (18, N'Cucumber', N'Crisp and refreshing cucumbers.', CAST(1.80 AS Decimal(10, 2)), 2, N'images/Cucumber.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (19, N'Bell Pepper', N'Colorful and crunchy bell peppers.', CAST(2.30 AS Decimal(10, 2)), 2, N'images/BellPepper.jpg')
GO
INSERT [dbo].[Fruits] ([FruitID], [Name], [Description], [Price], [CategoryID], [image_link]) VALUES (20, N'Apple', N'Sweet, ripe apples', CAST(1.00 AS Decimal(10, 2)), 1, N'images/Apple.jpg')
GO
SET IDENTITY_INSERT [dbo].[Fruits] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (120, 142, 5, 1, CAST(2.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (121, 142, 12, 1, CAST(2.80 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (122, 143, 5, 3, CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (123, 143, 12, 2, CAST(5.60 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (124, 144, 5, 1, CAST(2.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (125, 144, 9, 1, CAST(2.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (126, 144, 12, 1, CAST(2.80 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (141, 149, 3, 1, CAST(0.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (142, 149, 5, 1, CAST(2.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (143, 149, 6, 1, CAST(2.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (144, 150, 8, 1, CAST(1.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (145, 150, 13, 1, CAST(2.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (146, 150, 14, 1, CAST(2.20 AS Decimal(10, 2)))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [FruitID], [Quantity], [Subtotal]) VALUES (147, 150, 18, 1, CAST(1.80 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [TotalAmount], [AddressID], [PaymentID], [Status]) VALUES (142, 1, CAST(N'2023-12-11' AS Date), CAST(4.56 AS Decimal(10, 2)), 1, 1, N'Success')
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [TotalAmount], [AddressID], [PaymentID], [Status]) VALUES (143, 1, CAST(N'2023-12-11' AS Date), CAST(11.02 AS Decimal(10, 2)), 1, 1, N'Cancel')
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [TotalAmount], [AddressID], [PaymentID], [Status]) VALUES (144, 24, CAST(N'2023-12-11' AS Date), CAST(6.46 AS Decimal(10, 2)), 108, 111, N'Pending')
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [TotalAmount], [AddressID], [PaymentID], [Status]) VALUES (149, 26, CAST(N'2023-12-11' AS Date), CAST(4.75 AS Decimal(10, 2)), 110, 113, N'Success')
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [TotalAmount], [AddressID], [PaymentID], [Status]) VALUES (150, 27, CAST(N'2023-12-11' AS Date), CAST(7.60 AS Decimal(10, 2)), 109, 112, N'Pending')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (1, 1, N'Credit Card')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (2, 2, N'PayPal')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (3, 3, N'Credit Card')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (4, 4, N'PayPal')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (5, 5, N'Credit Card')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (6, 6, N'PayPal')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (7, 7, N'Credit Card')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (8, 8, N'PayPal')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (9, 9, N'Credit Card')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (10, 10, N'PayPal')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (109, 23, N'PayPal')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (111, 24, N'Credit Card')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (112, 27, N'Credit Card')
GO
INSERT [dbo].[Payments] ([PaymentID], [CustomerID], [PaymentMethod]) VALUES (113, 26, N'PayPal')
GO
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Customers]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Accounts]
GO
ALTER TABLE [dbo].[Fruits]  WITH CHECK ADD  CONSTRAINT [FK_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Fruits] CHECK CONSTRAINT [FK_CategoryID]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Fruits] FOREIGN KEY([FruitID])
REFERENCES [dbo].[Fruits] ([FruitID])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Fruits]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Addresses] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Addresses] ([AddressID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Addresses]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payments] ([PaymentID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Customers]
GO
