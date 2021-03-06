USE [Library]
GO
/****** Object:  Table [dbo].[Annotation]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Annotation](
	[AnnotationID] [int] NOT NULL,
	[Annotation] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Annotation] PRIMARY KEY CLUSTERED 
(
	[AnnotationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appeals]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appeals](
	[AppealsID] [int] NOT NULL,
	[Appeals] [nvarchar](50) NULL,
 CONSTRAINT [PK_Appeals] PRIMARY KEY CLUSTERED 
(
	[AppealsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] NOT NULL,
	[FIO_Author] [nvarchar](50) NOT NULL,
	[BirthYear] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] NOT NULL,
	[NameBook] [nvarchar](max) NOT NULL,
	[Annotation] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Genre] [int] NOT NULL,
	[Quanity] [int] NULL,
	[Author] [int] NOT NULL,
	[PublishHouse] [int] NOT NULL,
	[TomeNumber] [int] NOT NULL,
	[TomeQuanity] [int] NOT NULL,
	[PublicType] [int] NOT NULL,
	[Language] [int] NOT NULL,
	[LanguageTranstation] [int] NOT NULL,
	[Redaction] [nvarchar](50) NOT NULL,
	[ReleaseYear] [int] NOT NULL,
	[BookCode] [nvarchar](50) NOT NULL,
	[ReadyFIssuanse] [int] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreID] [int] NOT NULL,
	[Genre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageID] [int] NOT NULL,
	[Language] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LanguageTranslation]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageTranslation](
	[LanguageTranslationID] [int] NOT NULL,
	[LanguageTranslation] [nvarchar](50) NOT NULL,
	[FIO_Translation] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LanguageTranslation] PRIMARY KEY CLUSTERED 
(
	[LanguageTranslationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublicType]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicType](
	[PublicTypeID] [int] NOT NULL,
	[PublicType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PublicType] PRIMARY KEY CLUSTERED 
(
	[PublicTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublishHouse]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishHouse](
	[PublishHouseID] [int] NOT NULL,
	[PublishHouse] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_PublishHouse] PRIMARY KEY CLUSTERED 
(
	[PublishHouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Queue]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Queue](
	[QueueID] [int] NOT NULL,
	[UserID] [int] NULL,
	[BookID] [int] NULL,
 CONSTRAINT [PK_Queue] PRIMARY KEY CLUSTERED 
(
	[QueueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReadyIssuance]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReadyIssuance](
	[ReadyIssuanceID] [int] NOT NULL,
	[ReadyIssuance] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReadyIssuance] PRIMARY KEY CLUSTERED 
(
	[ReadyIssuanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 03.06.2022 9:57:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Addrees] [nvarchar](max) NOT NULL,
	[Telephone] [nvarchar](50) NOT NULL,
	[Book] [int] NULL,
	[Appeals] [int] NOT NULL,
	[DateExtradition] [date] NULL,
	[DateReturn] [date] NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Readers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Annotation] ([AnnotationID], [Annotation]) VALUES (1, N'Справочная')
INSERT [dbo].[Annotation] ([AnnotationID], [Annotation]) VALUES (2, N'Общая')
INSERT [dbo].[Annotation] ([AnnotationID], [Annotation]) VALUES (3, N'Специализированная')
INSERT [dbo].[Annotation] ([AnnotationID], [Annotation]) VALUES (4, N'Краткая')
INSERT [dbo].[Annotation] ([AnnotationID], [Annotation]) VALUES (5, N'Развёрнутая')
GO
INSERT [dbo].[Appeals] ([AppealsID], [Appeals]) VALUES (1, N'Да')
INSERT [dbo].[Appeals] ([AppealsID], [Appeals]) VALUES (2, N'Нет')
GO
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (1, N'Дмитриев Семен Яковлевич', N'1986', N'7(904)265-60-36', N'город Балашиха, проезд Славы, 38')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (2, N'Сысоев Назарий Филатович', N'2001', N'7(876)993-47-64', N'город Красногорск, ул. Ленина, 79')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (3, N'Воробьёв Иосиф Максимович', N'2004', N'7(389)234-37-35', N'город Наро-Фоминск, спуск Бухарестская, 77')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (4, N'Фомин Виссарион Митрофанович', N'2008', N'7(914)711-47-14', N'город Дорохово, пер. Ленина, 21')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (5, N'Голубев Аверкий Сергеевич', N'1986', N'7(5841)416-20-15', N'город Дорохово, ул. Чехова, 12')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (6, N'Романов Платон Витальевич', N'2000', N'7(581)358-40-12', N'город Мытищи, пер. Ленина, 41')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (7, N'Власов Арнольд Александрович', N'2001', N'7(27)416-90-10', N'город Наро-Фоминск, шоссе Домодедовская, 33')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (8, N'Орлов Даниил Семенович', N'2006', N'7(520)314-77-29', N'город Солнечногорск, ул. Домодедовская, 49')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (9, N'Шаров Лев Александрович', N'1996', N'7(6561)747-91-73', N'город Ступино, шоссе Гоголя, 31')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (10, N'Дьячков Емельян Тимурович', N'2004', N'7(334)370-68-90', N'город Ступино, пр. Чехова, 79')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (11, N'Новиков Антон Иосифович', N'1989', N'7(48)785-33-15', N'город Лотошино, спуск Ломоносова, 05')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (12, N'Павлов Исак Давидович', N'1998', N'7(978)424-85-93', N'город Домодедово, пр. Бухарестская, 75')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (13, N'Потапов Сергей Филатович', N'1987', N'7(464)648-42-52', N'город Можайск, проезд Сталина, 07')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (14, N'Шаров Аверкий Иринеевич', N'1998', N'7(694)834-64-99', N'город Люберцы, въезд Ладыгина, 31')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (15, N'Елисеев Елисей Филиппович', N'1996', N'7(481)550-09-74', N'город Пушкино, пл. Космонавтов, 96')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (16, N'Морозов Терентий Тихонович', N'1981', N'7(725)124-68-29', N'город Воскресенск, спуск Чехова, 91')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (17, N'Селезнёв Юлиан Евгеньевич', N'1989', N'7(94)849-32-07', N'город Чехов, бульвар Бухарестская, 77')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (18, N'Костин Нисон Мэлорович', N'2006', N'7(885)338-05-35', N'город Видное, ул. Ленина, 63')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (19, N'Ефимов Рудольф Германович', N'2005', N'7(034)371-79-01', N'город Мытищи, пл. 1905 года, 08')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (20, N'Евсеев Евдоким Петрович', N'1987', N'7(492)501-16-44', N'город Коломна, спуск Балканская, 96')
INSERT [dbo].[Author] ([AuthorID], [FIO_Author], [BirthYear], [Telephone], [Address]) VALUES (21, N'Копылов Арсений Витальевич', N'1995', N'7(508)841-29-35', N'город Дмитров, проезд Балканская, 12')
GO
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (1, N'Бей беги', 4, N'Это книга.', 1, 1, 2, 11, 4, 4, 4, 14, 15, N'Адакна', 2004, N'978-1-56581-231-4', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (2, N'Самая длинная ночь в году', 1, N'Это книга.', 2, 4, 19, 20, 4, 2, 5, 4, 3, N'Амплуа', 1998, N'978-1-23456-789-7', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (3, N'Милый заяц', 5, N'Это книга.', 7, 1, 10, 10, 1, 1, 2, 13, 16, N'Ацетал', 1981, N'978-5-15687-458-8', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (4, N'Лето в кружке', 4, N'Это книга.', 11, 7, 2, 11, 3, 2, 5, 2, 11, N'Барсук', 1985, N'978-2-25789-168-1', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (5, N'Моя вечная зима', 3, N'Это книга.', 5, 11, 10, 18, 4, 3, 4, 10, 16, N'Бербер', 1992, N'978-6-32764-564-8', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (6, N'Мы такие разные', 4, N'Это книга.', 6, 3, 20, 7, 2, 2, 1, 12, 6, N'Гептод', 1991, N'978-2-65327-753-2', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (7, N'Не верь людям', 1, N'Это книга.', 3, 3, 5, 7, 3, 3, 3, 1, 16, N'Гессит', 2004, N'978-1-78952-756-5', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (8, N'Мост', 2, N'Это книга.', 9, 2, 2, 14, 2, 2, 2, 6, 13, N'Гифема', 2002, N'978-1-58745-565-2', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (9, N'Песочный человек', 5, N'Это книга.', 10, 2, 7, 15, 3, 2, 5, 4, 2, N'Глюцин', 1990, N'978-4-86542-763-8', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (10, N'Жизнь как красная книга', 1, N'Это книга.', 9, 6, 8, 5, 4, 1, 6, 7, 6, N'Дафнея', 1992, N'978-5-44287-756-4', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (11, N'Чистейшая душа', 2, N'Это книга.', 11, 2, 21, 6, 2, 1, 4, 7, 12, N'Замета', 2006, N'978-1-75875-865-1', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (12, N'Шёпот цветов', 4, N'Это книга.', 1, 2, 10, 11, 1, 4, 6, 1, 10, N'Кумпол', 2001, N'978-5-45889-598-5', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (13, N'Сломанные часы', 2, N'Это книга.', 5, 5, 3, 12, 1, 1, 5, 13, 6, N'Кунифе', 2009, N'978-8-75875-556-1', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (14, N'Дом на берегу озера', 2, N'Это книга.', 3, 12, 11, 8, 1, 2, 3, 9, 11, N'Могота', 1993, N'978-7-74555-855-6', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (15, N'Лес чудес', 5, N'Это книга.', 3, 5, 7, 16, 3, 3, 3, 4, 13, N'Нардек', 1986, N'978-4-64455-858-6', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (16, N'Зачарованные мысли', 1, N'Это книга.', 6, 11, 2, 9, 3, 3, 2, 16, 4, N'Орешек', 1998, N'978-9-45877-454-6', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (17, N'Сохранить себя', 5, N'Это книга.', 11, 7, 15, 20, 4, 2, 1, 11, 8, N'Пепель', 2000, N'978-7-84678-466-1', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (18, N'Космический парк', 1, N'Это книга.', 2, 9, 14, 19, 2, 1, 3, 15, 6, N'Потесь', 1988, N'978-5-59852-430-5', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (19, N'Комната снов', 4, N'Это книга.', 9, 6, 3, 6, 1, 3, 6, 15, 3, N'Саудит', 1980, N'978-5-77468-567-5', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (20, N'Любовь и демоны', 2, N'Это книга.', 1, 6, 13, 15, 1, 1, 1, 5, 6, N'Синтон', 1982, N'978-7-95489-589-8', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (21, N'Прятки со смертью', 3, N'Это книга.', 11, 9, 21, 18, 4, 3, 6, 2, 5, N'Стахис', 1980, N'978-8-48668-421-1', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (22, N'Завтра начнётся Апокалипсис', 4, N'Это книга.', 1, 6, 9, 13, 3, 2, 6, 3, 3, N'Триния', 1997, N'978-6-45445-632-8', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (23, N'Чёрная полоса', 1, N'Это книга.', 9, 4, 11, 20, 4, 2, 2, 7, 14, N'Фимиам', 2002, N'978-2-96465-457-2', 1)
INSERT [dbo].[Book] ([BookID], [NameBook], [Annotation], [Description], [Genre], [Quanity], [Author], [PublishHouse], [TomeNumber], [TomeQuanity], [PublicType], [Language], [LanguageTranstation], [Redaction], [ReleaseYear], [BookCode], [ReadyFIssuanse]) VALUES (24, N'Противоположности', 4, N'Это книга.', 9, 2, 2, 4, 2, 2, 4, 9, 5, N'Чалдон', 1985, N'978-1-85478-587-3', 1)
GO
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (1, N'Роман')
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (2, N'Любовный роман')
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (3, N'Митсика')
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (4, N'Ужасы')
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (5, N'Боевик')
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (6, N'Приключения')
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (7, N'Фантастика')
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (8, N'Фэнтези')
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (9, N'Сказки')
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (10, N'Авангардная литература')
INSERT [dbo].[Genre] ([GenreID], [Genre]) VALUES (11, N'Исторический роман')
GO
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (1, N'Английский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (2, N'Русский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (3, N'Украинский3')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (4, N'Французский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (5, N'Немекций')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (6, N'Испанский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (7, N'Казахский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (8, N'Итальянский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (9, N'Финский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (10, N'Шведский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (11, N'Китайский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (12, N'Японский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (13, N'Индийский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (14, N'Узбекский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (15, N'Чешский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (16, N'Польский')
INSERT [dbo].[Language] ([LanguageID], [Language]) VALUES (17, N'Португальский')
GO
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (1, N'Английский', N'Бирюков Владислав Георгиевич')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (2, N'Русский', N'Доронин Вилли Анатольевич')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (3, N'Украинский3', N'Шилов Олег Демьянович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (4, N'Французский', N'Колобов Нинель Донатович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (5, N'Немекций', N'Ефремов Исаак Иринеевич')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (6, N'Испанский', N'Волков Мирон Антонович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (7, N'Казахский', N'Мухин Климент Ростиславович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (8, N'Итальянский', N'Моисеев Карл Федорович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (9, N'Финский', N'Фомин Касьян Иосифович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (10, N'Шведский', N'Гуляев Анатолий Аристархович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (11, N'Китайский', N'Савин Митрофан Геннадиевич')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (12, N'Японский', N'Шубин Наум Эльдарович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (13, N'Индийский', N'Рябов Александр Авдеевич')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (14, N'Узбекский', N'Одинцов Агафон Станиславович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (15, N'Чешский', N'Ситников Платон Федорович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (16, N'Польский', N'Мельников Антон Тарасович')
INSERT [dbo].[LanguageTranslation] ([LanguageTranslationID], [LanguageTranslation], [FIO_Translation]) VALUES (17, N'Португальский', N'Сидоров Феликс Петрович')
GO
INSERT [dbo].[PublicType] ([PublicTypeID], [PublicType]) VALUES (1, N'Рецензируемые')
INSERT [dbo].[PublicType] ([PublicTypeID], [PublicType]) VALUES (2, N'Нерецензируемые')
INSERT [dbo].[PublicType] ([PublicTypeID], [PublicType]) VALUES (3, N'Переиздание')
INSERT [dbo].[PublicType] ([PublicTypeID], [PublicType]) VALUES (4, N'Книга')
INSERT [dbo].[PublicType] ([PublicTypeID], [PublicType]) VALUES (5, N'Журнал')
INSERT [dbo].[PublicType] ([PublicTypeID], [PublicType]) VALUES (6, N'Газета')
GO
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (1, N'Море', N'Белград')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (2, N'Память', N'Сеул')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (3, N'Конференция', N'Доха')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (4, N'Точка', N'Шри-Джаяварденепура-Котте')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (5, N'Голос', N'Уагадугу')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (6, N'Поэт', N'Любляна')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (7, N'Озеро', N'Хараре')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (8, N'Самокат', N'Бужумбура')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (9, N'Библиотека', N'Люксембург')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (10, N'Памятник', N'Мапуту')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (11, N'Семья', N'София')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (12, N'Диван', N'Степанакерт')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (13, N'Сюжет', N'Вена')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (14, N'Музей', N'Бейрут')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (15, N'Информация', N'Санто-Доминго')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (16, N'Успех', N'Бамако')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (17, N'Июль', N'Рабат')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (18, N'Сделка', N'Эр-Рияд')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (19, N'Компания', N'Абу-Даби')
INSERT [dbo].[PublishHouse] ([PublishHouseID], [PublishHouse], [City]) VALUES (20, N'Реальность', N'Лилонгве')
GO
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (1, 5, 23)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (2, 2, 21)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (3, 17, 22)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (4, 13, 13)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (5, 9, 8)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (6, 13, 9)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (7, 8, 23)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (8, 7, 9)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (9, 10, 18)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (10, 11, 22)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (11, 4, 23)
INSERT [dbo].[Queue] ([QueueID], [UserID], [BookID]) VALUES (12, 9, 5)
GO
INSERT [dbo].[ReadyIssuance] ([ReadyIssuanceID], [ReadyIssuance]) VALUES (1, N'Готов')
INSERT [dbo].[ReadyIssuance] ([ReadyIssuanceID], [ReadyIssuance]) VALUES (2, N'Не готов')
GO
INSERT [dbo].[Role] ([RoleID], [Role]) VALUES (1, N'Читатель')
INSERT [dbo].[Role] ([RoleID], [Role]) VALUES (2, N'Администратор')
GO
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (1, N'Шилова', N'Полина', N'Макаровна', N'Taoaaa
', N'WInKZ2~R7
', N'город Егорьевск, наб. Будапештсткая, 66', N'+7(146)695-23-93
', 4, 1, CAST(N'2022-06-09' AS Date), CAST(N'2022-06-18' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (2, N'Трофимова', N'Алиса', N'Матвеевна', N'Kirianalil
', N'?k@h#T#hC
', N'город Дмитров, въезд Гагарина, 35', N'+7(397)575-76-22
', 23, 2, CAST(N'2022-11-21' AS Date), CAST(N'2022-12-22' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (3, N'Федотов', N'Кирилл', N'Маркович', N'Hloeaaaaa
', N'Md*z7~@KT
', N'город Солнечногорск, шоссе Косиора, 45', N'+7(245)561-70-85
', NULL, 2, NULL, NULL, 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (4, N'Лобанов', N'Георгий', N'Александрович', N'Phericolan
', N'%dV?*4lPO
', N'город Домодедово, бульвар Домодедовский, 90', N'+7(790)374-34-98
', 13, 1, CAST(N'2021-07-27' AS Date), CAST(N'2021-09-02' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (5, N'Петрова', N'Екатерина', N'Дмитриевна', N'Kippor
', N'L76J#I?||
', N'город Видное, ул. Космонавтов, 41', N'+7(465)783-03-88
', 7, 1, CAST(N'2022-07-14' AS Date), CAST(N'2022-08-09' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (6, N'Филиппов', N'Арсений', N'Борисович', N'Ulahellor
', N'jZOQcmNbh
', N'город Красногорск, шоссе Ломоносова, 53', N'+7(495)225-32-64
', 13, 1, CAST(N'2022-01-18' AS Date), CAST(N'2022-03-06' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (7, N'Лебедева', N'Николь', N'Ивановна', N'Ximeonaomi

', N'4hiwW$6Ca
', N'город Орехово-Зуево, пер. Косиора, 15', N'+7(499)970-34-81
', NULL, 2, NULL, NULL, 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (8, N'Васильев', N'Игорь', N'Арсентьевич', N'Jonata
', N'B|We*4wMy
', N'город Подольск, пр. Сталина, 74', N'+7(812)006-50-20
', 1, 1, CAST(N'2021-08-30' AS Date), CAST(N'2023-01-03' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (9, N'Ефремов', N'Ярослав', N'Гордеевич', N'Lyaakov
', N'uYx9K#NR$
', N'город Клин, пер. Космонавтов, 28', N'+7(348)132-52-14
', NULL, 2, NULL, NULL, 2)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (10, N'Колпаков', N'Анатолий', N'Данилович', N'Ssicah
', N'*$brLV34Q
', N'город Луховицы, ул. Ломоносова, 40', N'+7(954)337-65-02
', NULL, 1, NULL, NULL, 2)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (11, N'Соколова', N'Василиса', N'Владиславовна', N'Iquenton
', N'GmW#x$}6~
', N'город Сергиев Посад, ул. Косиора, 30', N'+7(081)110-65-44
', 18, 2, CAST(N'2021-12-25' AS Date), CAST(N'2022-04-04' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (12, N'Новикова', N'Екатерина', N'Захаровна', N'Natinaya
', N'7|n9yKYg%
', N'город Наро-Фоминск, наб. Ленина, 75', N'+7(658)204-62-31', 8, 1, CAST(N'2022-02-11' AS Date), CAST(N'2022-11-11' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (13, N'Журавлева', N'Ксения', N'Дмитриевна', N'Fiora
', N'6c~|z3s~Y
', N'город Ступино, спуск Балканская, 80', N'+7(553)566-65-78
', 14, 2, CAST(N'2022-03-13' AS Date), CAST(N'2022-08-14' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (14, N'Смирнов', N'Матвей', N'Владимирович', N'Klynn
', N'QJpVRKTg4
', N'город Серпухов, проезд Ладыгина, 38', N'+7(882)375-05-82
', 19, 2, CAST(N'2021-08-20' AS Date), CAST(N'2022-01-10' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (15, N'Исаев', N'Юрий', N'Анатольевич', N'Quitoneth
', N'4vSaE0oeq
', N'город Мытищи, пр. Домодедовский, 35', N'+7(399)173-63-66
', 9, 1, CAST(N'2021-10-19' AS Date), CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (16, N'Тимофеев', N'Владимир', N'Робертович', N'Justinana
', N'PdXm1xxP9
', N'город Воскресенск, спуск Сталина, 69', N'+7(258)358-17-35
', NULL, 1, NULL, NULL, 2)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (17, N'Калмыков', N'Леон', N'Михайлович', N'Nyacit
', N'BkKriPI#*
', N'город Раменское, наб. Чехова, 80', N'+7(851)770-77-68
', 4, 1, CAST(N'2022-08-11' AS Date), CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (18, N'Степанов', N'Павел', N'Камильевич', N'Nemel
', N'f02{GoxQ~
', N'город Павловский Посад, пр. Ленина, 53', N'+7(047)160-41-94
', 7, 2, CAST(N'2022-01-29' AS Date), CAST(N'2022-10-01' AS Date), 1)
INSERT [dbo].[User] ([UserID], [Surname], [Name], [MiddleName], [Login], [Password], [Addrees], [Telephone], [Book], [Appeals], [DateExtradition], [DateReturn], [RoleID]) VALUES (19, N'Степанов', N'Алексей', N'Павлович', N'Adynan
', N'ra}LuXpHE
', N'город Лотошино, ул. Чехова, 68', N'+7(436)627-47-81
', 8, 2, CAST(N'2022-08-25' AS Date), CAST(N'2022-12-15' AS Date), 1)
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Annotation] FOREIGN KEY([Annotation])
REFERENCES [dbo].[Annotation] ([AnnotationID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Annotation]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([Author])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Genre] FOREIGN KEY([Genre])
REFERENCES [dbo].[Genre] ([GenreID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Genre]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Language] FOREIGN KEY([Language])
REFERENCES [dbo].[Language] ([LanguageID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Language]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_LanguageTranslation] FOREIGN KEY([LanguageTranstation])
REFERENCES [dbo].[LanguageTranslation] ([LanguageTranslationID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_LanguageTranslation]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_PublicType] FOREIGN KEY([PublicType])
REFERENCES [dbo].[PublicType] ([PublicTypeID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_PublicType]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_PublishHouse] FOREIGN KEY([PublishHouse])
REFERENCES [dbo].[PublishHouse] ([PublishHouseID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_PublishHouse]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_ReadyIssuance] FOREIGN KEY([ReadyFIssuanse])
REFERENCES [dbo].[ReadyIssuance] ([ReadyIssuanceID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_ReadyIssuance]
GO
ALTER TABLE [dbo].[Queue]  WITH CHECK ADD  CONSTRAINT [FK_Queue_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[Queue] CHECK CONSTRAINT [FK_Queue_Book]
GO
ALTER TABLE [dbo].[Queue]  WITH CHECK ADD  CONSTRAINT [FK_Queue_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Queue] CHECK CONSTRAINT [FK_Queue_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Appeals] FOREIGN KEY([Appeals])
REFERENCES [dbo].[Appeals] ([AppealsID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Appeals]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
