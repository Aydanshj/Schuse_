USE [master]
GO
/****** Object:  Database [SchuseOnlineShopDB]    Script Date: 13/09/2023 21:43:24 ******/
CREATE DATABASE [SchuseOnlineShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SchuseOnlineShopDB_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SchuseOnlineShopDB.mdf' , SIZE = 9216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SchuseOnlineShopDB_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SchuseOnlineShopDB.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SchuseOnlineShopDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchuseOnlineShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SchuseOnlineShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SchuseOnlineShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SchuseOnlineShopDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SchuseOnlineShopDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [SchuseOnlineShopDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SchuseOnlineShopDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adverts]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adverts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ShortDesc] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Adverts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[IsRemember] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
	[AuthorId] [int] NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrandLogos]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandLogos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_BrandLogos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartProducts]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[CartId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_CartProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategorySubCategories]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategorySubCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK_CategorySubCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeCategories]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_HomeCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductColors]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_ProductColors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductComments]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_ProductComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImgName] [nvarchar](max) NULL,
	[IsMain] [bit] NOT NULL,
	[IsHover] [bit] NOT NULL,
	[ProductId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[SKU] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Rating] [int] NOT NULL,
	[SaleCount] [int] NOT NULL,
	[StockCount] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[DiscountPrice] [decimal](18, 2) NOT NULL,
	[Video] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSizes]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_ProductSizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SectionHeaders]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_SectionHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippings]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IconImage] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Shippings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Heading] [nvarchar](max) NULL,
	[Desc] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[SocialAccount] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistProducts]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishlistProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[WishlistId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_WishlistProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlists]    Script Date: 13/09/2023 21:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[SoftDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Wishlists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230616110005_NewTableS', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230618143003_newTablesTeams', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230619071242_NewHomeCategory', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230620060638_test', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230620062620_CreateCartColumn', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230620123354_RemoveProductId', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230620123623_DeleteIsSlecetd', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230620123809_SddedIsSElected', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230620124200_adddedisexist', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230620124434_addedisselected', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230620124820_deletedIsSelected', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230623064438_CreateProductColumnS', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230623210703_AddNewColunDisCountPrice', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230628154527_NewAdvertsTable', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230628155305_NewTablesss', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230702114841_AddUser', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230702114951_NewAppUser', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230703093907_NewTablesWishlist', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230706125410_delete', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230706125753_AddVideoColums', N'6.0.18')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2c26222a-e5af-4fc7-a591-19ad86d7e88b', N'Admin', N'ADMIN', N'f6cc720e-22ee-4adc-8fc6-82370ef5246a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'55abbc43-5819-4943-a96a-e0fe2f6d463e', N'SuperAdmin', N'SUPERADMIN', N'e24dda1a-665c-45c8-8a99-40fa13beb416')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ed9fab79-513e-4247-8baa-b27b9c9ddef5', N'Member', N'MEMBER', N'50b7e343-0a1b-4287-9872-6704e3a837ec')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6400df41-4267-40fd-8517-da6377bd3db8', N'55abbc43-5819-4943-a96a-e0fe2f6d463e')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [IsRemember], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6400df41-4267-40fd-8517-da6377bd3db8', N'Aydan', N'Jabili', 0, N'Aydan49', N'AYDAN49', N'aydanshj@code.edu.az', N'AYDANSHJ@CODE.EDU.AZ', 1, N'AQAAAAEAACcQAAAAENWwYlFGfJNtF/dG/NG+5aIyWdDHOmzwhEqe6RtKUJeaiBTmL5tmhMnTgqxAiZ3S8w==', N'OXJ2CV7WBWEZ5X35QQALCPLFGW4T64YI', N'3c0e19fe-664b-47e0-8e38-31ad0994a84e', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Title], [Description], [Image], [CreatedDate], [UpdatedDate], [SoftDelete], [AuthorId]) VALUES (1, N'Our reputation shines as brightly as our...', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore etl dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquiex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eukip fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deseruntk mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantiumy doloremque laudantium, totam rem aperiam,', N'5a4e4f04-0dae-44e3-a34d-fd20f360a88eblog-2_1170x.webp', CAST(N'2023-06-18T17:28:59.7376473' AS DateTime2), CAST(N'2023-06-18T17:28:59.7376488' AS DateTime2), 0, NULL)
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [Image], [CreatedDate], [UpdatedDate], [SoftDelete], [AuthorId]) VALUES (2, N'Our reputation shines as brightly as our...', N'Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget..', N'616c54ab-fe31-40e1-823b-39a208198c5dblog-5_1170x.webp', CAST(N'2023-06-18T17:29:42.9620176' AS DateTime2), CAST(N'2023-06-18T17:29:42.9620202' AS DateTime2), 0, NULL)
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [Image], [CreatedDate], [UpdatedDate], [SoftDelete], [AuthorId]) VALUES (7, N'dasadsadsdas', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore etl dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquiex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eukip fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deseruntk mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantiumy doloremque laudantium, totam rem aperiam', N'5fa0b1c3-a102-406c-8e31-148539001c19blog-6_1170x.webp', CAST(N'2023-06-19T11:51:39.4797287' AS DateTime2), CAST(N'2023-06-19T11:51:39.4797296' AS DateTime2), 0, NULL)
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [Image], [CreatedDate], [UpdatedDate], [SoftDelete], [AuthorId]) VALUES (8, N'adsasdasdas', N'adjkaskdjhas;hdioqwjiojdasdashjdhaisudhaskjhdjkashdkjsa', N'0d4ab7d1-0651-4dcc-b925-26564169c4d9blog-3_1170x.webp', CAST(N'2023-06-28T13:43:36.9827789' AS DateTime2), CAST(N'2023-06-28T13:43:36.9827821' AS DateTime2), 0, NULL)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[BrandLogos] ON 

INSERT [dbo].[BrandLogos] ([Id], [Image], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (7, N'ef9a0a7f-e896-44f5-be49-55a435d6add5brand2.png', CAST(N'2023-06-18T14:29:34.1209092' AS DateTime2), CAST(N'2023-06-18T14:29:34.1209114' AS DateTime2), 0)
INSERT [dbo].[BrandLogos] ([Id], [Image], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (8, N'b17a004d-8f31-4595-94bb-ff2a8e1c0aacbrand3.png', CAST(N'2023-06-18T14:29:40.1832800' AS DateTime2), CAST(N'2023-06-18T14:29:40.1832863' AS DateTime2), 0)
INSERT [dbo].[BrandLogos] ([Id], [Image], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (9, N'0204b887-8d30-4318-9842-62bc3649e389db16be44-399a-44f5-979d-25fbfbfe1275brand1.png', CAST(N'2023-06-18T14:29:47.3763313' AS DateTime2), CAST(N'2023-06-18T14:29:47.3763327' AS DateTime2), 0)
INSERT [dbo].[BrandLogos] ([Id], [Image], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (10, N'79b5f740-b566-428f-a750-cf02faf0d99abrand5.png', CAST(N'2023-06-18T14:29:55.0169574' AS DateTime2), CAST(N'2023-06-18T14:29:55.0169587' AS DateTime2), 0)
INSERT [dbo].[BrandLogos] ([Id], [Image], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (11, N'63cb6f35-fe07-4e47-8294-44f5674761e6brand5.png', CAST(N'2023-06-18T14:57:48.0401264' AS DateTime2), CAST(N'2023-06-18T14:57:48.0401273' AS DateTime2), 0)
INSERT [dbo].[BrandLogos] ([Id], [Image], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (12, N'6ff67cbe-afce-4d3b-a789-98d5aac08702brand4.png', CAST(N'2023-06-18T14:57:54.8760088' AS DateTime2), CAST(N'2023-06-18T14:57:54.8760096' AS DateTime2), 0)
INSERT [dbo].[BrandLogos] ([Id], [Image], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (13, N'60400dfa-6bd4-460c-a6d5-8202eda628aabrand4.png', CAST(N'2023-06-21T15:10:32.5591372' AS DateTime2), CAST(N'2023-06-21T15:10:32.5591395' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[BrandLogos] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1, N'Adidass', CAST(N'2023-06-21T14:01:39.7232940' AS DateTime2), CAST(N'2023-06-21T14:01:39.7232963' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (2, N'Puma', CAST(N'2023-06-21T13:30:16.2250577' AS DateTime2), CAST(N'2023-06-21T13:30:16.2250622' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (3, N'Jordan', CAST(N'2023-06-21T13:30:44.8580911' AS DateTime2), CAST(N'2023-06-21T13:30:44.8580928' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (4, N'EA7', CAST(N'2023-06-21T14:04:15.0669163' AS DateTime2), CAST(N'2023-06-21T14:04:15.0669186' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (5, N'Polo Ralph Lauren', CAST(N'2023-06-21T14:04:50.0685122' AS DateTime2), CAST(N'2023-06-21T14:04:50.0685173' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (6, N'Buffalo', CAST(N'2023-06-21T14:06:12.7652087' AS DateTime2), CAST(N'2023-06-21T14:06:12.7652096' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (7, N'Teva', CAST(N'2023-06-21T14:07:12.3343152' AS DateTime2), CAST(N'2023-06-21T14:07:12.3343159' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (8, N'Gaimo', CAST(N'2023-06-21T14:07:34.4048025' AS DateTime2), CAST(N'2023-06-21T14:07:34.4048045' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (9, N'Reebok', CAST(N'2023-06-21T14:08:05.8170729' AS DateTime2), CAST(N'2023-06-21T14:08:05.8170741' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (10, N'Nike', CAST(N'2023-06-21T14:08:44.0851672' AS DateTime2), CAST(N'2023-06-21T14:08:44.0851680' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (11, N'New Balance', CAST(N'2023-06-21T14:13:22.0738310' AS DateTime2), CAST(N'2023-06-21T14:13:22.0738320' AS DateTime2), 0)
INSERT [dbo].[Brands] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (13, N'OFFICE', CAST(N'2023-07-11T15:29:36.8156412' AS DateTime2), CAST(N'2023-07-11T15:29:36.8156420' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (8, N'Men Shoes', CAST(N'2023-07-05T20:23:54.8497841' AS DateTime2), CAST(N'2023-07-05T20:23:54.8497860' AS DateTime2), 0)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (9, N'Women Shoes', CAST(N'2023-07-05T20:23:58.3632620' AS DateTime2), CAST(N'2023-07-05T20:23:58.3632621' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CategorySubCategories] ON 

INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1018, 8, 1030, CAST(N'2023-06-23T23:48:47.4102890' AS DateTime2), CAST(N'2023-06-23T23:48:47.4102910' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1019, 9, 1030, CAST(N'2023-06-23T23:48:47.4473784' AS DateTime2), CAST(N'2023-06-23T23:48:47.4473797' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1020, 8, 1031, CAST(N'2023-06-23T23:49:36.6525373' AS DateTime2), CAST(N'2023-06-23T23:49:36.6525388' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1021, 8, 1032, CAST(N'2023-06-23T23:50:23.0074680' AS DateTime2), CAST(N'2023-06-23T23:50:23.0074699' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1022, 9, 1032, CAST(N'2023-06-23T23:50:23.0192406' AS DateTime2), CAST(N'2023-06-23T23:50:23.0192425' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1023, 9, 1033, CAST(N'2023-06-23T23:52:55.3853203' AS DateTime2), CAST(N'2023-06-23T23:52:55.3853246' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1024, 8, 1034, CAST(N'2023-06-23T23:53:48.6960804' AS DateTime2), CAST(N'2023-06-23T23:53:48.6960821' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1025, 9, 1034, CAST(N'2023-06-23T23:53:48.7078712' AS DateTime2), CAST(N'2023-06-23T23:53:48.7078731' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1026, 8, 1035, CAST(N'2023-06-23T23:54:59.7230375' AS DateTime2), CAST(N'2023-06-23T23:54:59.7230401' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1027, 9, 1035, CAST(N'2023-06-23T23:54:59.7358653' AS DateTime2), CAST(N'2023-06-23T23:54:59.7358673' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1028, 8, 1036, CAST(N'2023-06-23T23:56:08.5065396' AS DateTime2), CAST(N'2023-06-23T23:56:08.5065421' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1029, 9, 1037, CAST(N'2023-06-23T23:56:48.5345474' AS DateTime2), CAST(N'2023-06-23T23:56:48.5345498' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1032, 8, 1040, CAST(N'2023-07-08T13:48:48.7824158' AS DateTime2), CAST(N'2023-07-08T13:48:48.7824168' AS DateTime2), 0, NULL)
INSERT [dbo].[CategorySubCategories] ([Id], [CategoryId], [SubCategoryId], [CreatedDate], [UpdatedDate], [SoftDelete], [ProductId]) VALUES (1033, 9, 1040, CAST(N'2023-07-08T13:48:48.8274521' AS DateTime2), CAST(N'2023-07-08T13:48:48.8274531' AS DateTime2), 0, NULL)
SET IDENTITY_INSERT [dbo].[CategorySubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1, N'White', CAST(N'2023-06-21T15:55:49.4261144' AS DateTime2), CAST(N'2023-06-21T15:55:49.4261154' AS DateTime2), 0)
INSERT [dbo].[Colors] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (2, N'Black', CAST(N'2023-06-21T15:55:56.9531927' AS DateTime2), CAST(N'2023-06-21T15:55:56.9531937' AS DateTime2), 0)
INSERT [dbo].[Colors] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (3, N'Blue', CAST(N'2023-06-21T15:56:04.7576589' AS DateTime2), CAST(N'2023-06-21T15:56:04.7576599' AS DateTime2), 0)
INSERT [dbo].[Colors] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (4, N'Green', CAST(N'2023-06-21T15:56:11.4905081' AS DateTime2), CAST(N'2023-06-21T15:56:11.4905099' AS DateTime2), 0)
INSERT [dbo].[Colors] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (5, N'Red', CAST(N'2023-06-21T16:05:17.0855127' AS DateTime2), CAST(N'2023-06-21T16:05:17.0855128' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Phone], [Email], [Message], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1, NULL, NULL, N'4545456', NULL, N'dsadewqewq', CAST(N'2023-07-05T12:52:57.8305222' AS DateTime2), CAST(N'2023-07-05T12:52:57.8305235' AS DateTime2), 0)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Phone], [Email], [Message], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (2, NULL, NULL, N'4545456', NULL, N'dsaasdqwewqweq', CAST(N'2023-07-05T12:57:09.0187739' AS DateTime2), CAST(N'2023-07-05T12:57:09.0187749' AS DateTime2), 0)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Phone], [Email], [Message], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (3, NULL, NULL, N'321', NULL, N'dsadsa', CAST(N'2023-07-05T13:00:15.6166152' AS DateTime2), CAST(N'2023-07-05T13:00:15.6166165' AS DateTime2), 0)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Phone], [Email], [Message], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (4, N'Cahandar', NULL, N'321343', N'cvelibeyli@gmail.com', N'dssadsadsa', CAST(N'2023-07-05T13:04:17.5075018' AS DateTime2), CAST(N'2023-07-05T13:04:17.5075028' AS DateTime2), 0)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [Phone], [Email], [Message], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (5, N'Caho', NULL, N'4545456', N'cvelibeyli@gmail.com', N'dsgfsdfsfds', CAST(N'2023-07-05T13:14:04.5397304' AS DateTime2), CAST(N'2023-07-05T13:14:04.5397315' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[HomeCategories] ON 

INSERT [dbo].[HomeCategories] ([Id], [Name], [Image], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1, N'Men’s Collection', N'fd8078c1-d1f4-4c09-b17e-726ea47160e5sub-banner-1.webp', CAST(N'2023-06-20T11:06:24.6504615' AS DateTime2), CAST(N'2023-06-20T11:06:24.6504625' AS DateTime2), 0)
INSERT [dbo].[HomeCategories] ([Id], [Name], [Image], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (2, N'Women Collection', N'e05f7d11-5270-4ccd-9abb-2d1fa81b7bf23925b553-1a80-41a5-9e5c-a96eccf28850sub-banner-2.webp', CAST(N'2023-06-20T11:06:39.4765365' AS DateTime2), CAST(N'2023-06-20T11:06:39.4765378' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[HomeCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductColors] ON 

INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1077, 1064, 3, CAST(N'2023-07-08T12:48:19.0369890' AS DateTime2), CAST(N'2023-07-08T12:48:19.0369908' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1079, 1066, 2, CAST(N'2023-07-08T12:53:09.6980984' AS DateTime2), CAST(N'2023-07-08T12:53:09.6981000' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1080, 1067, 2, CAST(N'2023-07-08T12:56:46.6301908' AS DateTime2), CAST(N'2023-07-08T12:56:46.6301929' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1081, 1068, 3, CAST(N'2023-07-08T12:58:43.3356451' AS DateTime2), CAST(N'2023-07-08T12:58:43.3356466' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1083, 1069, 2, CAST(N'2023-07-08T13:00:57.4519224' AS DateTime2), CAST(N'2023-07-08T13:00:57.4519226' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1086, 1070, 2, CAST(N'2023-07-08T13:49:02.2070010' AS DateTime2), CAST(N'2023-07-08T13:49:02.2070048' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1087, 1071, 1, CAST(N'2023-07-08T13:49:15.3504154' AS DateTime2), CAST(N'2023-07-08T13:49:15.3504157' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1088, 1072, 4, CAST(N'2023-07-08T13:51:59.8958505' AS DateTime2), CAST(N'2023-07-08T13:51:59.8958540' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1095, 1079, 5, CAST(N'2023-07-08T14:02:44.9675344' AS DateTime2), CAST(N'2023-07-08T14:02:44.9675360' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1099, 1083, 3, CAST(N'2023-07-11T14:42:27.6724442' AS DateTime2), CAST(N'2023-07-11T14:42:27.6724452' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1101, 1085, 1, CAST(N'2023-07-11T14:58:44.9121342' AS DateTime2), CAST(N'2023-07-11T14:58:44.9121356' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1103, 1087, 2, CAST(N'2023-07-11T15:07:41.0864138' AS DateTime2), CAST(N'2023-07-11T15:07:41.0864152' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1104, 1088, 1, CAST(N'2023-07-11T15:10:54.6010178' AS DateTime2), CAST(N'2023-07-11T15:10:54.6010193' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1112, 1093, 4, CAST(N'2023-07-11T18:06:36.3049069' AS DateTime2), CAST(N'2023-07-11T18:06:36.3049095' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1114, 1074, 3, CAST(N'2023-07-11T18:10:11.8665320' AS DateTime2), CAST(N'2023-07-11T18:10:11.8665398' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1115, 1075, 1, CAST(N'2023-07-11T18:11:23.9927386' AS DateTime2), CAST(N'2023-07-11T18:11:23.9927400' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1116, 1078, 5, CAST(N'2023-07-11T18:11:47.3056177' AS DateTime2), CAST(N'2023-07-11T18:11:47.3056200' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1117, 1084, 1, CAST(N'2023-07-11T18:12:15.2855856' AS DateTime2), CAST(N'2023-07-11T18:12:15.2855873' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1118, 1073, 2, CAST(N'2023-07-11T18:12:38.7471004' AS DateTime2), CAST(N'2023-07-11T18:12:38.7471034' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1120, 1086, 3, CAST(N'2023-07-11T18:14:50.2728201' AS DateTime2), CAST(N'2023-07-11T18:14:50.2728221' AS DateTime2), 0)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1121, 1094, 2, CAST(N'2023-07-11T18:20:30.0138130' AS DateTime2), CAST(N'2023-07-11T18:20:30.0138188' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[ProductColors] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1144, N'cd0ef91f-68ed-42b8-aa57-e7c5bf2c85122.1.webp', 1, 0, 1064, CAST(N'2023-07-08T12:48:19.0224134' AS DateTime2), CAST(N'2023-07-08T12:48:19.0224139' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1145, N'b6e881bb-951f-4a6b-a451-d12de11924502.2.webp', 0, 1, 1064, CAST(N'2023-07-08T12:48:19.0279318' AS DateTime2), CAST(N'2023-07-08T12:48:19.0279344' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1146, N'799c9291-b4da-4a03-89d7-1851ccfc6a122.3.webp', 0, 0, 1064, CAST(N'2023-07-08T12:48:19.0298843' AS DateTime2), CAST(N'2023-07-08T12:48:19.0298856' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1147, N'8fcb6945-3843-4726-85eb-899a081915832.4.webp', 0, 0, 1064, CAST(N'2023-07-08T12:48:19.0314930' AS DateTime2), CAST(N'2023-07-08T12:48:19.0314959' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1148, N'b7802290-325b-42a3-a99e-5e67100782e02.5.webp', 0, 0, 1064, CAST(N'2023-07-08T12:48:19.0329921' AS DateTime2), CAST(N'2023-07-08T12:48:19.0329942' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1149, N'f22615cb-85d3-47e5-96d1-18a5304e8c182.6.webp', 0, 0, 1064, CAST(N'2023-07-08T12:48:19.0346455' AS DateTime2), CAST(N'2023-07-08T12:48:19.0346470' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1155, N'bfd1348e-0300-46b9-ad5c-3baab90a788bC3.1.webp', 1, 0, 1066, CAST(N'2023-07-08T12:53:09.6837882' AS DateTime2), CAST(N'2023-07-08T12:53:09.6837883' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1156, N'a64cd9ca-49e8-4a00-88ad-2b5d787c8e67C3.2.webp', 0, 1, 1066, CAST(N'2023-07-08T12:53:09.6854076' AS DateTime2), CAST(N'2023-07-08T12:53:09.6854094' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1157, N'bf01a209-455d-4903-8633-abb891657e69C3.3.webp', 0, 0, 1066, CAST(N'2023-07-08T12:53:09.6869361' AS DateTime2), CAST(N'2023-07-08T12:53:09.6869388' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1158, N'e389f5f6-06eb-4fec-af52-9b33f6ac540fc3.4.webp', 0, 0, 1066, CAST(N'2023-07-08T12:53:09.6887396' AS DateTime2), CAST(N'2023-07-08T12:53:09.6887409' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1159, N'630ca9f1-5e3f-434c-ae84-c569de1dd291c3.5.webp', 0, 0, 1066, CAST(N'2023-07-08T12:53:09.6914160' AS DateTime2), CAST(N'2023-07-08T12:53:09.6914186' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1160, N'a0a74ad8-2000-4a1b-af1f-dc9e17bfd2a4c3.6.webp', 0, 0, 1066, CAST(N'2023-07-08T12:53:09.6957764' AS DateTime2), CAST(N'2023-07-08T12:53:09.6957786' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1161, N'7fece849-2843-45da-b156-59de57e8c213c4.1.webp', 1, 0, 1067, CAST(N'2023-07-08T12:56:46.6180532' AS DateTime2), CAST(N'2023-07-08T12:56:46.6180533' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1162, N'7cef61ff-b902-44fd-82bf-3ba2f20fafe0c4.2.webp', 0, 1, 1067, CAST(N'2023-07-08T12:56:46.6202615' AS DateTime2), CAST(N'2023-07-08T12:56:46.6202639' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1163, N'1e9e0304-1ce4-4742-844b-ac8e4008d940c4.3.webp', 0, 0, 1067, CAST(N'2023-07-08T12:56:46.6220988' AS DateTime2), CAST(N'2023-07-08T12:56:46.6221010' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1164, N'd8fd7d83-16e4-4469-ba4a-934693893c0dc4.4.webp', 0, 0, 1067, CAST(N'2023-07-08T12:56:46.6230560' AS DateTime2), CAST(N'2023-07-08T12:56:46.6230580' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1165, N'2f33a236-2952-46ec-a5ad-9a476a55051ec4.5.webp', 0, 0, 1067, CAST(N'2023-07-08T12:56:46.6243895' AS DateTime2), CAST(N'2023-07-08T12:56:46.6243915' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1166, N'e8a7683b-0bad-4d6f-b0b1-ea408ef4b781c4.6.webp', 0, 0, 1067, CAST(N'2023-07-08T12:56:46.6260434' AS DateTime2), CAST(N'2023-07-08T12:56:46.6260450' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1167, N'47dd2853-91ab-4e77-9a72-da047847fd2em5.1.webp', 1, 0, 1068, CAST(N'2023-07-08T12:58:43.3253644' AS DateTime2), CAST(N'2023-07-08T12:58:43.3253644' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1168, N'16342381-f969-4343-9131-8a017c44bfd7m5.2.webp', 0, 1, 1068, CAST(N'2023-07-08T12:58:43.3278905' AS DateTime2), CAST(N'2023-07-08T12:58:43.3278922' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1169, N'31af6728-d118-4aa3-9879-d6da61862ff6m5.3.webp', 0, 0, 1068, CAST(N'2023-07-08T12:58:43.3290369' AS DateTime2), CAST(N'2023-07-08T12:58:43.3290386' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1170, N'c77f1dd2-0859-495c-8938-0f85840942f8m5.4.webp', 0, 0, 1068, CAST(N'2023-07-08T12:58:43.3304455' AS DateTime2), CAST(N'2023-07-08T12:58:43.3304468' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1171, N'a4569a17-de87-4c9b-bed0-2d62a1c17b81m5.5.webp', 0, 0, 1068, CAST(N'2023-07-08T12:58:43.3319551' AS DateTime2), CAST(N'2023-07-08T12:58:43.3319566' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1172, N'f56c3994-501e-4177-b7d6-ad16f7fe1847m5.6.webp', 0, 0, 1068, CAST(N'2023-07-08T12:58:43.3337676' AS DateTime2), CAST(N'2023-07-08T12:58:43.3337697' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1174, N'75527460-0394-4f2c-a076-261027d92797m6.1.webp', 1, 1, 1069, CAST(N'2023-07-08T13:00:09.5375417' AS DateTime2), CAST(N'2023-07-08T13:00:09.5375432' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1175, N'1db64c3e-d73e-4f93-85ba-6b3155d11483m6.2.webp', 0, 0, 1069, CAST(N'2023-07-08T13:00:09.5391725' AS DateTime2), CAST(N'2023-07-08T13:00:09.5391746' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1176, N'834fc8da-ba16-4205-a4bf-672b97fca214m6.3.webp', 0, 0, 1069, CAST(N'2023-07-08T13:00:09.5407182' AS DateTime2), CAST(N'2023-07-08T13:00:09.5407203' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1177, N'61fc53bf-cf62-4ced-b003-dea5475cebcdm6.4.webp', 0, 0, 1069, CAST(N'2023-07-08T13:00:09.5423535' AS DateTime2), CAST(N'2023-07-08T13:00:09.5423555' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1178, N'4a0058b6-51cc-4692-87f8-63f50f35d1f0m6.5.webp', 0, 0, 1069, CAST(N'2023-07-08T13:00:09.5449541' AS DateTime2), CAST(N'2023-07-08T13:00:09.5449558' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1179, N'1e034453-0bd0-4b40-b7c3-770e463bef8fw1.1.webp', 1, 0, 1070, CAST(N'2023-07-08T13:04:48.1023561' AS DateTime2), CAST(N'2023-07-08T13:04:48.1023561' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1180, N'ae2b7da8-0b95-47e5-a9b3-1c47a659b3eaw1.2.webp', 0, 1, 1070, CAST(N'2023-07-08T13:04:48.1045954' AS DateTime2), CAST(N'2023-07-08T13:04:48.1045978' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1181, N'6d5ea888-8e0b-498c-bd79-8c4b7e626df2w1.3.webp', 0, 0, 1070, CAST(N'2023-07-08T13:04:48.1065893' AS DateTime2), CAST(N'2023-07-08T13:04:48.1065921' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1182, N'671608a4-93b7-4fc5-a504-f9db67ad0f2dw1.4.webp', 0, 0, 1070, CAST(N'2023-07-08T13:04:48.1091827' AS DateTime2), CAST(N'2023-07-08T13:04:48.1091847' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1183, N'09311ca8-b7bd-468c-a7e1-013e74a5bf03w1.5.webp', 0, 0, 1070, CAST(N'2023-07-08T13:04:48.1113674' AS DateTime2), CAST(N'2023-07-08T13:04:48.1113686' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1184, N'601c5d07-bf7f-40f3-a608-2bd6d6a5d01ew1.6.webp', 0, 0, 1070, CAST(N'2023-07-08T13:04:48.1132584' AS DateTime2), CAST(N'2023-07-08T13:04:48.1132599' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1185, N'6ffbbe47-6b99-44f4-a1c7-9f3bf186546aw2.1.jpg', 1, 0, 1071, CAST(N'2023-07-08T13:12:24.1989567' AS DateTime2), CAST(N'2023-07-08T13:12:24.1989568' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1186, N'a85d70a8-acbb-4a83-a2fb-c44bb05ba52bw2.2.webp', 0, 1, 1071, CAST(N'2023-07-08T13:12:24.2016418' AS DateTime2), CAST(N'2023-07-08T13:12:24.2016432' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1187, N'299e6ac0-7ab4-4a38-9d56-632a13387aa6w2.3.webp', 0, 0, 1071, CAST(N'2023-07-08T13:12:24.2036091' AS DateTime2), CAST(N'2023-07-08T13:12:24.2036153' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1188, N'27cc7a52-3a17-409a-9b7b-ea90ce7cd199w2.4.webp', 0, 0, 1071, CAST(N'2023-07-08T13:12:24.2061784' AS DateTime2), CAST(N'2023-07-08T13:12:24.2061799' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1189, N'89bb5823-b8a4-45e0-ab0a-46be592a8b13w2.5.webp', 0, 0, 1071, CAST(N'2023-07-08T13:12:24.2072215' AS DateTime2), CAST(N'2023-07-08T13:12:24.2072238' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1190, N'302c63fc-6f02-41bc-975c-6f7ca4ca1054w3.1.webp', 1, 0, 1072, CAST(N'2023-07-08T13:51:59.8798473' AS DateTime2), CAST(N'2023-07-08T13:51:59.8798490' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1191, N'd55759df-e8c1-4587-81f3-ae58a8010a53w3.2.webp', 0, 1, 1072, CAST(N'2023-07-08T13:51:59.8850954' AS DateTime2), CAST(N'2023-07-08T13:51:59.8850975' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1192, N'c1abedb0-5e18-42d3-9f4c-9b479fca9358w3.3.webp', 0, 0, 1072, CAST(N'2023-07-08T13:51:59.8872613' AS DateTime2), CAST(N'2023-07-08T13:51:59.8872644' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1193, N'381175f1-b887-463d-b5db-0814ac4a6ac8w3.4.webp', 0, 0, 1072, CAST(N'2023-07-08T13:51:59.8893369' AS DateTime2), CAST(N'2023-07-08T13:51:59.8893388' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1194, N'f7cb0e76-0a26-461b-8089-89c4dfcb1372w3.5.webp', 0, 0, 1072, CAST(N'2023-07-08T13:51:59.8907771' AS DateTime2), CAST(N'2023-07-08T13:51:59.8907793' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1195, N'ca58d8db-3514-4500-95b7-de695c385ceaw3.6.webp', 0, 0, 1072, CAST(N'2023-07-08T13:51:59.8924413' AS DateTime2), CAST(N'2023-07-08T13:51:59.8924427' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1227, N'3d0b42a3-9300-4b7a-baa3-ba09f45f1f2cw5.1.webp', 1, 0, 1079, CAST(N'2023-07-08T14:02:44.9551904' AS DateTime2), CAST(N'2023-07-08T14:02:44.9551904' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1228, N'd367220f-d624-4957-b6b3-e235b35c350ew5.2.webp', 0, 1, 1079, CAST(N'2023-07-08T14:02:44.9613631' AS DateTime2), CAST(N'2023-07-08T14:02:44.9613648' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1229, N'e4820335-663f-4210-bcb8-339cb3a7d505w5.3.webp', 0, 0, 1079, CAST(N'2023-07-08T14:02:44.9635724' AS DateTime2), CAST(N'2023-07-08T14:02:44.9635746' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1230, N'c7c06c4c-cdc9-4484-9f7c-b54658ee3750w5.4.webp', 0, 0, 1079, CAST(N'2023-07-08T14:02:44.9650219' AS DateTime2), CAST(N'2023-07-08T14:02:44.9650236' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1231, N'c5e61dab-3732-4406-bb31-13b5e3419624w5.5.webp', 0, 0, 1079, CAST(N'2023-07-08T14:02:44.9662856' AS DateTime2), CAST(N'2023-07-08T14:02:44.9662869' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1240, N'4128e826-3dbb-46f8-86bb-1e35a5d191d41.1.webp', 1, 0, 1083, CAST(N'2023-07-11T14:42:27.6592563' AS DateTime2), CAST(N'2023-07-11T14:42:27.6592568' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1241, N'5a12efc6-c3d9-44b9-84e4-7b9dbb6b973d1.2.webp', 0, 1, 1083, CAST(N'2023-07-11T14:42:27.6624312' AS DateTime2), CAST(N'2023-07-11T14:42:27.6624330' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1242, N'56f6fe2c-049a-4f06-b8f7-bfc4c885dacd1.3.webp', 0, 0, 1083, CAST(N'2023-07-11T14:42:27.6644333' AS DateTime2), CAST(N'2023-07-11T14:42:27.6644355' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1243, N'64146b6a-310c-4e57-8b60-d7d1faa6f86a1.4.webp', 0, 0, 1083, CAST(N'2023-07-11T14:42:27.6668238' AS DateTime2), CAST(N'2023-07-11T14:42:27.6668259' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1244, N'1d92ac43-2670-4d97-85b7-d9f570b872d01.5.webp', 0, 0, 1083, CAST(N'2023-07-11T14:42:27.6683738' AS DateTime2), CAST(N'2023-07-11T14:42:27.6683750' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1245, N'14cc2ec5-0b73-4963-a5eb-ab271aba6eb01.6.webp', 0, 0, 1083, CAST(N'2023-07-11T14:42:27.6701161' AS DateTime2), CAST(N'2023-07-11T14:42:27.6701175' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1251, N'56ed3b65-0472-4018-8211-bcd624ce69d01.1.webp', 1, 0, 1085, CAST(N'2023-07-11T14:58:44.9025091' AS DateTime2), CAST(N'2023-07-11T14:58:44.9025092' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1252, N'c390a5b7-7a00-4191-9195-d85b92c3910f1.2.webp', 0, 1, 1085, CAST(N'2023-07-11T14:58:44.9053180' AS DateTime2), CAST(N'2023-07-11T14:58:44.9053204' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1253, N'8cedfcd9-6d94-4706-9ae2-e2455aa571e31.3.webp', 0, 0, 1085, CAST(N'2023-07-11T14:58:44.9073296' AS DateTime2), CAST(N'2023-07-11T14:58:44.9073315' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1254, N'77ede677-ba24-44a0-a65d-677c4495b80e1.4.webp', 0, 0, 1085, CAST(N'2023-07-11T14:58:44.9090278' AS DateTime2), CAST(N'2023-07-11T14:58:44.9090298' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1255, N'467ac939-4184-460e-aab2-556543d7290e1.5.webp', 0, 0, 1085, CAST(N'2023-07-11T14:58:44.9105624' AS DateTime2), CAST(N'2023-07-11T14:58:44.9105661' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1261, N'637b7399-2eac-4808-bcdf-36f6946285832.1.webp', 1, 0, 1087, CAST(N'2023-07-11T15:07:41.0782360' AS DateTime2), CAST(N'2023-07-11T15:07:41.0782360' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1262, N'79bbbb44-02a7-4291-8017-ef2b8ff874572.2.webp', 0, 1, 1087, CAST(N'2023-07-11T15:07:41.0798315' AS DateTime2), CAST(N'2023-07-11T15:07:41.0798331' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1263, N'039d694c-e9e3-4a36-84d8-ba08f41715b52.3.webp', 0, 0, 1087, CAST(N'2023-07-11T15:07:41.0812402' AS DateTime2), CAST(N'2023-07-11T15:07:41.0812420' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1264, N'953a6c2b-1ffc-430e-ab37-a74a3a8c5c112.4.webp', 0, 0, 1087, CAST(N'2023-07-11T15:07:41.0826234' AS DateTime2), CAST(N'2023-07-11T15:07:41.0826243' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1265, N'7dc9fd11-3c22-4aad-8411-79dcd3d7faae2.5.webp', 0, 0, 1087, CAST(N'2023-07-11T15:07:41.0838499' AS DateTime2), CAST(N'2023-07-11T15:07:41.0838512' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1266, N'48fd17eb-c91b-4bb3-9425-7b225b90e1fd2.6.webp', 0, 0, 1087, CAST(N'2023-07-11T15:07:41.0850228' AS DateTime2), CAST(N'2023-07-11T15:07:41.0850271' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1267, N'4a94dff5-d4b2-4013-b968-d13e46976c7e3.1.webp', 1, 0, 1088, CAST(N'2023-07-11T15:10:54.5915899' AS DateTime2), CAST(N'2023-07-11T15:10:54.5915899' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1268, N'6e686357-55b7-4567-ae32-515828eff70f3.2.webp', 0, 1, 1088, CAST(N'2023-07-11T15:10:54.5937125' AS DateTime2), CAST(N'2023-07-11T15:10:54.5937147' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1269, N'f30dc42e-27ec-43c3-90be-f9638f8cddcb3.3.webp', 0, 0, 1088, CAST(N'2023-07-11T15:10:54.5959703' AS DateTime2), CAST(N'2023-07-11T15:10:54.5959725' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1270, N'27e90414-3ae3-41e5-bf22-d35f45caa3743.4.webp', 0, 0, 1088, CAST(N'2023-07-11T15:10:54.5978040' AS DateTime2), CAST(N'2023-07-11T15:10:54.5978055' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1271, N'058ed6e8-a28a-4d2f-9614-3d4dc28463f63.5.webp', 0, 0, 1088, CAST(N'2023-07-11T15:10:54.5992160' AS DateTime2), CAST(N'2023-07-11T15:10:54.5992178' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1300, N'ce5d2996-7958-4987-9c90-0ade83638c9dw1.1.webp', 1, 0, 1093, CAST(N'2023-07-11T18:06:36.2825007' AS DateTime2), CAST(N'2023-07-11T18:06:36.2825029' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1301, N'e787f877-960a-4229-a171-30c8eff733ddw1.2.webp', 0, 1, 1093, CAST(N'2023-07-11T18:06:36.2869358' AS DateTime2), CAST(N'2023-07-11T18:06:36.2869385' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1302, N'5c75bfd3-b9c9-4248-984c-c4f12f4b230dw1.3.webp', 0, 0, 1093, CAST(N'2023-07-11T18:06:36.2887981' AS DateTime2), CAST(N'2023-07-11T18:06:36.2888014' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1303, N'6b4e9582-e677-41a5-9972-f66f601e71bbw1.4.webp', 0, 0, 1093, CAST(N'2023-07-11T18:06:36.2966057' AS DateTime2), CAST(N'2023-07-11T18:06:36.2966086' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1304, N'7f2f4607-c8c2-4ecc-95f4-e22a21aecb64w1.5.webp', 0, 0, 1093, CAST(N'2023-07-11T18:06:36.3010744' AS DateTime2), CAST(N'2023-07-11T18:06:36.3010770' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1309, N'f7ee49aa-b948-4368-811e-8469e750f979m1.1.jpg', 1, 0, 1074, CAST(N'2023-07-11T18:10:11.8536161' AS DateTime2), CAST(N'2023-07-11T18:10:11.8536162' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1310, N'30a0b928-d8ca-4239-a9e7-c673e3a14b9em1.2.webp', 0, 1, 1074, CAST(N'2023-07-11T18:10:11.8561948' AS DateTime2), CAST(N'2023-07-11T18:10:11.8561978' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1311, N'738fae74-db68-4709-9390-13db112d6352m1.3.webp', 0, 0, 1074, CAST(N'2023-07-11T18:10:11.8579758' AS DateTime2), CAST(N'2023-07-11T18:10:11.8579786' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1312, N'3798644e-d373-4c6d-97a8-32bb8d9e483am1.4.webp', 0, 0, 1074, CAST(N'2023-07-11T18:10:11.8599485' AS DateTime2), CAST(N'2023-07-11T18:10:11.8599513' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1313, N'c8fbd973-6afa-4455-8b59-6501fd2b1967m1.5.webp', 0, 0, 1074, CAST(N'2023-07-11T18:10:11.8626927' AS DateTime2), CAST(N'2023-07-11T18:10:11.8626953' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1314, N'cd0b2c12-57b2-47e4-af5c-67f66280626cc2.1.webp', 1, 0, 1075, CAST(N'2023-07-11T18:11:23.9834903' AS DateTime2), CAST(N'2023-07-11T18:11:23.9834904' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1315, N'82f29c80-2ab9-4f2a-bf0a-ab9abb1a4db0c2.2.webp', 0, 1, 1075, CAST(N'2023-07-11T18:11:23.9852563' AS DateTime2), CAST(N'2023-07-11T18:11:23.9852578' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1316, N'79d4ef7e-ee3a-420d-b302-f35feca80feac2.3.webp', 0, 0, 1075, CAST(N'2023-07-11T18:11:23.9870830' AS DateTime2), CAST(N'2023-07-11T18:11:23.9870856' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1317, N'ee134a2b-c4ff-4fde-92d8-7d990a815186c2.4.webp', 0, 0, 1075, CAST(N'2023-07-11T18:11:23.9895705' AS DateTime2), CAST(N'2023-07-11T18:11:23.9895722' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1318, N'67aeccf9-200a-469b-872a-5a4d4a2dec49c2.5.webp', 0, 0, 1075, CAST(N'2023-07-11T18:11:23.9915460' AS DateTime2), CAST(N'2023-07-11T18:11:23.9915476' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1319, N'4fa6a7b2-54bb-4c10-8428-101472001ff1w4.1.jpg', 1, 0, 1078, CAST(N'2023-07-11T18:11:47.2967842' AS DateTime2), CAST(N'2023-07-11T18:11:47.2967843' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1320, N'5b2d60dc-e548-4bea-a015-127cd03ede0ew4.2.webp', 0, 1, 1078, CAST(N'2023-07-11T18:11:47.2985369' AS DateTime2), CAST(N'2023-07-11T18:11:47.2985384' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1321, N'735b2a4c-0c6a-4ed1-994b-b3060d7e345aw4.3.webp', 0, 0, 1078, CAST(N'2023-07-11T18:11:47.3003473' AS DateTime2), CAST(N'2023-07-11T18:11:47.3003486' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1322, N'ee0b25d0-49bc-473f-b74a-01bdeb685a4bw4.4.webp', 0, 0, 1078, CAST(N'2023-07-11T18:11:47.3020288' AS DateTime2), CAST(N'2023-07-11T18:11:47.3020301' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1323, N'061a21e0-c3b6-4d83-8901-132e0572cfffw4.5.webp', 0, 0, 1078, CAST(N'2023-07-11T18:11:47.3038406' AS DateTime2), CAST(N'2023-07-11T18:11:47.3038423' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1324, N'2d21e9ea-ed43-4328-8f57-8a57c8c631522.1.webp', 1, 0, 1084, CAST(N'2023-07-11T18:12:15.2754369' AS DateTime2), CAST(N'2023-07-11T18:12:15.2754388' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1325, N'582d6b6b-e8e1-49ff-8feb-15dcddc5a43c2.2.webp', 0, 1, 1084, CAST(N'2023-07-11T18:12:15.2780916' AS DateTime2), CAST(N'2023-07-11T18:12:15.2780951' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1326, N'90c18867-8e4c-409a-8108-3317a75561282.3.webp', 0, 0, 1084, CAST(N'2023-07-11T18:12:15.2799176' AS DateTime2), CAST(N'2023-07-11T18:12:15.2799191' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1327, N'ced1e60d-c1a6-4acd-b020-36be97f78c692.4.webp', 0, 0, 1084, CAST(N'2023-07-11T18:12:15.2819263' AS DateTime2), CAST(N'2023-07-11T18:12:15.2819277' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1328, N'73416c82-8ebd-454e-8b26-c9f83be853322.5.webp', 0, 0, 1084, CAST(N'2023-07-11T18:12:15.2830917' AS DateTime2), CAST(N'2023-07-11T18:12:15.2830930' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1329, N'dbabe49c-1bdc-459e-8b48-c2cc16944e0cw4.1.webp', 1, 0, 1073, CAST(N'2023-07-11T18:12:38.7310931' AS DateTime2), CAST(N'2023-07-11T18:12:38.7310932' AS DateTime2), 0)
GO
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1330, N'4128ab64-a492-42f3-ae0d-af77f1fe0de2w4.2.webp', 0, 1, 1073, CAST(N'2023-07-11T18:12:38.7340937' AS DateTime2), CAST(N'2023-07-11T18:12:38.7340972' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1331, N'13e9e9df-d17b-4bed-9178-b5a10eee4d7fw4.3.webp', 0, 0, 1073, CAST(N'2023-07-11T18:12:38.7365703' AS DateTime2), CAST(N'2023-07-11T18:12:38.7365733' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1332, N'7108b05b-5ea2-4d54-9e6e-79fd22bbca3aw4.4.webp', 0, 0, 1073, CAST(N'2023-07-11T18:12:38.7393354' AS DateTime2), CAST(N'2023-07-11T18:12:38.7393381' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1333, N'a7812db2-97bd-44af-9397-1e21addb2f22w4.5.webp', 0, 0, 1073, CAST(N'2023-07-11T18:12:38.7431474' AS DateTime2), CAST(N'2023-07-11T18:12:38.7431507' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1339, N'34efb95d-9db8-41a4-8244-754786c2e9a61.3.webp', 1, 0, 1086, CAST(N'2023-07-11T18:14:50.2585657' AS DateTime2), CAST(N'2023-07-11T18:14:50.2585660' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1340, N'8bc6d34e-da32-4f7c-b79e-ee64b8086fe51.4.webp', 0, 1, 1086, CAST(N'2023-07-11T18:14:50.2611181' AS DateTime2), CAST(N'2023-07-11T18:14:50.2611205' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1341, N'bf630cd5-ad7d-4990-afbf-b2b2d8dbf21c1.5.webp', 0, 0, 1086, CAST(N'2023-07-11T18:14:50.2631052' AS DateTime2), CAST(N'2023-07-11T18:14:50.2631074' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1342, N'29a77e72-7e9e-4574-8fd1-778a4a385493e1.1.jpg', 0, 0, 1086, CAST(N'2023-07-11T18:14:50.2666800' AS DateTime2), CAST(N'2023-07-11T18:14:50.2666832' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1343, N'02865e8a-1b2e-42f6-b2e0-40e21677d47be1.2.webp', 0, 0, 1086, CAST(N'2023-07-11T18:14:50.2704519' AS DateTime2), CAST(N'2023-07-11T18:14:50.2704548' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1344, N'e6a9e80b-b609-4a8c-b9f4-44139ea36c323.1.webp', 1, 0, 1094, CAST(N'2023-07-11T18:20:29.9965730' AS DateTime2), CAST(N'2023-07-11T18:20:29.9965766' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1345, N'855f63ae-6709-4b8b-a393-0dcf1a367c023.2.webp', 0, 1, 1094, CAST(N'2023-07-11T18:20:30.0016497' AS DateTime2), CAST(N'2023-07-11T18:20:30.0016549' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1346, N'ba6e8108-bbaf-4cb1-b9ac-b5a26989733e3.3.webp', 0, 0, 1094, CAST(N'2023-07-11T18:20:30.0040470' AS DateTime2), CAST(N'2023-07-11T18:20:30.0040511' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1347, N'0ee1ccd8-2a86-49b3-8e60-fbeedcd8dffc3.4.webp', 0, 0, 1094, CAST(N'2023-07-11T18:20:30.0064770' AS DateTime2), CAST(N'2023-07-11T18:20:30.0064832' AS DateTime2), 0)
INSERT [dbo].[ProductImages] ([Id], [ImgName], [IsMain], [IsHover], [ProductId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1348, N'88942e4b-99df-4c41-bf7a-2718d130d5643.5.webp', 0, 0, 1094, CAST(N'2023-07-11T18:20:30.0090454' AS DateTime2), CAST(N'2023-07-11T18:20:30.0090507' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1064, N'Pulse Mint', CAST(200.55 AS Decimal(18, 2)), N'Pul-1992078216', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 5, 0, 35, 1, CAST(N'2023-07-08T12:48:19.0217438' AS DateTime2), CAST(N'2023-07-08T12:48:19.0217440' AS DateTime2), 0, 9, 1030, CAST(175.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/2101767795_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1066, N'Nizza Trainers', CAST(140.00 AS Decimal(18, 2)), N'Niz-98421597', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 2, 0, 35, 1, CAST(N'2023-07-08T12:53:09.6837703' AS DateTime2), CAST(N'2023-07-08T12:53:09.6837704' AS DateTime2), 0, 8, 1030, CAST(115.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/2835667793_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1067, N'Gazelle Trainers', CAST(155.55 AS Decimal(18, 2)), N'Gaz-150206569', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 1, 0, 30, 1, CAST(N'2023-07-08T12:56:46.6180390' AS DateTime2), CAST(N'2023-07-08T12:56:46.6180391' AS DateTime2), 0, 8, 1030, CAST(85.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/2101706371_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1068, N'MKII Trainers', CAST(155.55 AS Decimal(18, 2)), N'MKI-82342815', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 3, 0, 35, 1, CAST(N'2023-07-08T12:58:43.3253207' AS DateTime2), CAST(N'2023-07-08T12:58:43.3253208' AS DateTime2), 0, 8, 1030, CAST(110.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/4871633035_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1069, N'Earth Strata Olive Alumina', CAST(155.55 AS Decimal(18, 2)), N'Ear-1224337194', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 0, 0, 45, 1, CAST(N'2023-07-08T13:00:09.5350863' AS DateTime2), CAST(N'2023-07-08T13:00:09.5350865' AS DateTime2), 0, 8, 1030, CAST(95.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/2101725165_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1070, N'Raven Hi Sneaker Boots', CAST(195.00 AS Decimal(18, 2)), N'Rav-225004088', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 0, 0, 25, 1, CAST(N'2023-07-08T13:04:48.1023102' AS DateTime2), CAST(N'2023-07-08T13:04:48.1023103' AS DateTime2), 0, 9, 1040, CAST(135.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/4889601158_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1071, N'Jojo Sandals', CAST(175.00 AS Decimal(18, 2)), N'Joj-1655440516', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 0, 0, 35, 6, CAST(N'2023-07-08T13:12:24.1989303' AS DateTime2), CAST(N'2023-07-08T13:12:24.1989303' AS DateTime2), 0, 9, 1040, CAST(120.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1072, N'Cld Corin Low', CAST(95.00 AS Decimal(18, 2)), N'Cld-412490016', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 4, 0, 45, 6, CAST(N'2023-07-08T13:51:59.8785847' AS DateTime2), CAST(N'2023-07-08T13:51:59.8785848' AS DateTime2), 0, 9, 1040, CAST(75.50 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/4499285477_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1073, N'Feral One', CAST(85.00 AS Decimal(18, 2)), N'Fer-1959387889', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 0, 0, 50, 6, CAST(N'2023-07-08T13:53:49.6500011' AS DateTime2), CAST(N'2023-07-08T13:53:49.6500013' AS DateTime2), 0, 9, 1040, CAST(70.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1074, N'Air Jordan 1 Mid Trainers', CAST(50.00 AS Decimal(18, 2)), N'Air-1869404234', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 0, 0, 25, 3, CAST(N'2023-07-08T13:55:08.3485263' AS DateTime2), CAST(N'2023-07-08T13:55:08.3485264' AS DateTime2), 0, 8, 1035, CAST(45.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1075, N'Air Jordan 1 Low Trainers', CAST(95.00 AS Decimal(18, 2)), N'Air-1231437362', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 0, 0, 30, 3, CAST(N'2023-07-08T13:56:39.7857313' AS DateTime2), CAST(N'2023-07-08T13:56:39.7857314' AS DateTime2), 0, 8, 1035, CAST(75.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/2360116900_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1078, N'Air Jordan 1 Elevate Low', CAST(150.00 AS Decimal(18, 2)), N'Air-1992191748', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 0, 0, 25, 3, CAST(N'2023-07-08T14:00:30.3186561' AS DateTime2), CAST(N'2023-07-08T14:00:30.3186562' AS DateTime2), 0, 9, 1035, CAST(89.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/4459925188_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1079, N'Air Jordan 1 Mid Trainers', CAST(99.00 AS Decimal(18, 2)), N'Air-199544191', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 2, 0, 45, 3, CAST(N'2023-07-08T14:02:44.9551407' AS DateTime2), CAST(N'2023-07-08T14:02:44.9551408' AS DateTime2), 0, 9, 1035, CAST(79.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/2251217438_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1083, N'Air Max Plus Trainers', CAST(350.00 AS Decimal(18, 2)), N'Air-1001395487', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 3, 0, 35, 10, CAST(N'2023-07-11T14:42:27.6583411' AS DateTime2), CAST(N'2023-07-11T14:42:27.6583412' AS DateTime2), 0, 8, 1035, CAST(245.45 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/4521809919_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1084, N'Air Force 1 07 Trainers', CAST(150.00 AS Decimal(18, 2)), N'Air-892532142', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 0, 0, 23, 10, CAST(N'2023-07-11T14:55:03.6088778' AS DateTime2), CAST(N'2023-07-11T14:55:03.6088779' AS DateTime2), 0, 8, 1035, CAST(95.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/2704617199_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1085, N'Mayze Wedge Puma', CAST(95.00 AS Decimal(18, 2)), N'May-1072365852', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 5, 0, 35, 2, CAST(N'2023-07-11T14:58:44.9024923' AS DateTime2), CAST(N'2023-07-11T14:58:44.9024924' AS DateTime2), 0, 9, 1035, CAST(85.79 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/4584016960_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1086, N'Emporio Armani EA7 Seaworld Slide', CAST(170.00 AS Decimal(18, 2)), N'Emp-734699723', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 0, 0, 35, 4, CAST(N'2023-07-11T15:03:19.3227663' AS DateTime2), CAST(N'2023-07-11T15:03:19.3227664' AS DateTime2), 0, 8, 1030, CAST(125.55 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/4988011770_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1087, N'Simon Quilted Fabric Slippers Grey', CAST(45.00 AS Decimal(18, 2)), N'Sim-901080438', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 3, 0, 25, 7, CAST(N'2023-07-11T15:07:41.0782212' AS DateTime2), CAST(N'2023-07-11T15:07:41.0782213' AS DateTime2), 0, 9, 1034, CAST(35.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/4879820000_vd1/mp4_720p')
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1088, N'Jolin Strap Ballet Flats', CAST(75.00 AS Decimal(18, 2)), N'Jol-1402632191', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 4, 0, 25, 8, CAST(N'2023-07-11T15:10:54.5915682' AS DateTime2), CAST(N'2023-07-11T15:10:54.5915683' AS DateTime2), 0, 9, 1037, CAST(62.32 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1093, N'Summer', CAST(95.00 AS Decimal(18, 2)), N'Sum-46554124', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 3, 0, 23, 1, CAST(N'2023-07-11T18:06:36.2807460' AS DateTime2), CAST(N'2023-07-11T18:06:36.2807467' AS DateTime2), 0, 8, 1035, CAST(89.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [SKU], [Description], [Rating], [SaleCount], [StockCount], [BrandId], [CreatedDate], [UpdatedDate], [SoftDelete], [CategoryId], [SubCategoryId], [DiscountPrice], [Video]) VALUES (1094, N'Marsden 3 Eye Patent Derby Shoes', CAST(140.00 AS Decimal(18, 2)), N'Mar-1541764458', N'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the..', 4, 0, 45, 13, CAST(N'2023-07-11T18:20:29.9946517' AS DateTime2), CAST(N'2023-07-11T18:20:29.9946561' AS DateTime2), 0, 8, 1031, CAST(115.00 AS Decimal(18, 2)), N'https://cdn.media.amplience.net/v/office/4852800371_vd1/mp4_720p')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSizes] ON 

INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1126, 1064, 1, CAST(N'2023-07-08T12:48:19.0371641' AS DateTime2), CAST(N'2023-07-08T12:48:19.0371643' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1127, 1064, 3, CAST(N'2023-07-08T12:48:19.0372081' AS DateTime2), CAST(N'2023-07-08T12:48:19.0372082' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1128, 1064, 4, CAST(N'2023-07-08T12:48:19.0372083' AS DateTime2), CAST(N'2023-07-08T12:48:19.0372084' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1129, 1064, 5, CAST(N'2023-07-08T12:48:19.0372085' AS DateTime2), CAST(N'2023-07-08T12:48:19.0372086' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1130, 1064, 6, CAST(N'2023-07-08T12:48:19.0372087' AS DateTime2), CAST(N'2023-07-08T12:48:19.0372088' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1137, 1066, 5, CAST(N'2023-07-08T12:53:09.6981026' AS DateTime2), CAST(N'2023-07-08T12:53:09.6981027' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1138, 1066, 6, CAST(N'2023-07-08T12:53:09.6981035' AS DateTime2), CAST(N'2023-07-08T12:53:09.6981036' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1139, 1066, 7, CAST(N'2023-07-08T12:53:09.6981038' AS DateTime2), CAST(N'2023-07-08T12:53:09.6981039' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1140, 1066, 12, CAST(N'2023-07-08T12:53:09.6981041' AS DateTime2), CAST(N'2023-07-08T12:53:09.6981041' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1141, 1066, 13, CAST(N'2023-07-08T12:53:09.6981042' AS DateTime2), CAST(N'2023-07-08T12:53:09.6981043' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1142, 1067, 5, CAST(N'2023-07-08T12:56:46.6301961' AS DateTime2), CAST(N'2023-07-08T12:56:46.6301962' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1143, 1067, 6, CAST(N'2023-07-08T12:56:46.6301973' AS DateTime2), CAST(N'2023-07-08T12:56:46.6301974' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1144, 1067, 7, CAST(N'2023-07-08T12:56:46.6301977' AS DateTime2), CAST(N'2023-07-08T12:56:46.6301978' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1145, 1067, 12, CAST(N'2023-07-08T12:56:46.6301980' AS DateTime2), CAST(N'2023-07-08T12:56:46.6301981' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1146, 1067, 13, CAST(N'2023-07-08T12:56:46.6301982' AS DateTime2), CAST(N'2023-07-08T12:56:46.6301987' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1147, 1068, 5, CAST(N'2023-07-08T12:58:43.3356509' AS DateTime2), CAST(N'2023-07-08T12:58:43.3356510' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1148, 1068, 6, CAST(N'2023-07-08T12:58:43.3356519' AS DateTime2), CAST(N'2023-07-08T12:58:43.3356519' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1149, 1068, 7, CAST(N'2023-07-08T12:58:43.3356521' AS DateTime2), CAST(N'2023-07-08T12:58:43.3356522' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1150, 1068, 12, CAST(N'2023-07-08T12:58:43.3356524' AS DateTime2), CAST(N'2023-07-08T12:58:43.3356525' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1151, 1068, 13, CAST(N'2023-07-08T12:58:43.3356527' AS DateTime2), CAST(N'2023-07-08T12:58:43.3356528' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1157, 1069, 5, CAST(N'2023-07-08T13:00:57.4519246' AS DateTime2), CAST(N'2023-07-08T13:00:57.4519247' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1158, 1069, 6, CAST(N'2023-07-08T13:00:57.4519253' AS DateTime2), CAST(N'2023-07-08T13:00:57.4519254' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1159, 1069, 7, CAST(N'2023-07-08T13:00:57.4519257' AS DateTime2), CAST(N'2023-07-08T13:00:57.4519258' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1160, 1069, 12, CAST(N'2023-07-08T13:00:57.4519260' AS DateTime2), CAST(N'2023-07-08T13:00:57.4519261' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1161, 1069, 13, CAST(N'2023-07-08T13:00:57.4519263' AS DateTime2), CAST(N'2023-07-08T13:00:57.4519264' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1172, 1070, 1, CAST(N'2023-07-08T13:49:02.2074259' AS DateTime2), CAST(N'2023-07-08T13:49:02.2074267' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1173, 1070, 3, CAST(N'2023-07-08T13:49:02.2074915' AS DateTime2), CAST(N'2023-07-08T13:49:02.2074917' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1174, 1070, 4, CAST(N'2023-07-08T13:49:02.2074921' AS DateTime2), CAST(N'2023-07-08T13:49:02.2074921' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1175, 1070, 5, CAST(N'2023-07-08T13:49:02.2074924' AS DateTime2), CAST(N'2023-07-08T13:49:02.2074924' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1176, 1070, 6, CAST(N'2023-07-08T13:49:02.2074928' AS DateTime2), CAST(N'2023-07-08T13:49:02.2074931' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1177, 1071, 1, CAST(N'2023-07-08T13:49:15.3504189' AS DateTime2), CAST(N'2023-07-08T13:49:15.3504190' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1178, 1071, 3, CAST(N'2023-07-08T13:49:15.3504197' AS DateTime2), CAST(N'2023-07-08T13:49:15.3504198' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1179, 1071, 4, CAST(N'2023-07-08T13:49:15.3504199' AS DateTime2), CAST(N'2023-07-08T13:49:15.3504200' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1180, 1071, 5, CAST(N'2023-07-08T13:49:15.3504201' AS DateTime2), CAST(N'2023-07-08T13:49:15.3504202' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1181, 1071, 6, CAST(N'2023-07-08T13:49:15.3504203' AS DateTime2), CAST(N'2023-07-08T13:49:15.3504203' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1182, 1072, 1, CAST(N'2023-07-08T13:51:59.8958612' AS DateTime2), CAST(N'2023-07-08T13:51:59.8958615' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1183, 1072, 3, CAST(N'2023-07-08T13:51:59.8958631' AS DateTime2), CAST(N'2023-07-08T13:51:59.8958631' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1184, 1072, 4, CAST(N'2023-07-08T13:51:59.8958634' AS DateTime2), CAST(N'2023-07-08T13:51:59.8958635' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1185, 1072, 5, CAST(N'2023-07-08T13:51:59.8958637' AS DateTime2), CAST(N'2023-07-08T13:51:59.8958638' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1186, 1072, 6, CAST(N'2023-07-08T13:51:59.8958639' AS DateTime2), CAST(N'2023-07-08T13:51:59.8958640' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1218, 1079, 1, CAST(N'2023-07-08T14:02:44.9675402' AS DateTime2), CAST(N'2023-07-08T14:02:44.9675403' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1219, 1079, 3, CAST(N'2023-07-08T14:02:44.9675420' AS DateTime2), CAST(N'2023-07-08T14:02:44.9675421' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1220, 1079, 4, CAST(N'2023-07-08T14:02:44.9675422' AS DateTime2), CAST(N'2023-07-08T14:02:44.9675423' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1221, 1079, 5, CAST(N'2023-07-08T14:02:44.9675424' AS DateTime2), CAST(N'2023-07-08T14:02:44.9675425' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1222, 1079, 6, CAST(N'2023-07-08T14:02:44.9675426' AS DateTime2), CAST(N'2023-07-08T14:02:44.9675427' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1228, 1083, 5, CAST(N'2023-07-11T14:42:27.6725781' AS DateTime2), CAST(N'2023-07-11T14:42:27.6725786' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1229, 1083, 6, CAST(N'2023-07-11T14:42:27.6726365' AS DateTime2), CAST(N'2023-07-11T14:42:27.6726366' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1230, 1083, 7, CAST(N'2023-07-11T14:42:27.6726369' AS DateTime2), CAST(N'2023-07-11T14:42:27.6726369' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1231, 1083, 12, CAST(N'2023-07-11T14:42:27.6726371' AS DateTime2), CAST(N'2023-07-11T14:42:27.6726372' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1232, 1083, 13, CAST(N'2023-07-11T14:42:27.6726374' AS DateTime2), CAST(N'2023-07-11T14:42:27.6726375' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1238, 1085, 1, CAST(N'2023-07-11T14:58:44.9121380' AS DateTime2), CAST(N'2023-07-11T14:58:44.9121381' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1239, 1085, 3, CAST(N'2023-07-11T14:58:44.9121389' AS DateTime2), CAST(N'2023-07-11T14:58:44.9121390' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1240, 1085, 4, CAST(N'2023-07-11T14:58:44.9121392' AS DateTime2), CAST(N'2023-07-11T14:58:44.9121394' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1241, 1085, 5, CAST(N'2023-07-11T14:58:44.9121396' AS DateTime2), CAST(N'2023-07-11T14:58:44.9121396' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1247, 1087, 1, CAST(N'2023-07-11T15:07:41.0864204' AS DateTime2), CAST(N'2023-07-11T15:07:41.0864205' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1248, 1087, 3, CAST(N'2023-07-11T15:07:41.0864217' AS DateTime2), CAST(N'2023-07-11T15:07:41.0864220' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1249, 1087, 4, CAST(N'2023-07-11T15:07:41.0864223' AS DateTime2), CAST(N'2023-07-11T15:07:41.0864224' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1250, 1087, 5, CAST(N'2023-07-11T15:07:41.0864225' AS DateTime2), CAST(N'2023-07-11T15:07:41.0864227' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1251, 1088, 1, CAST(N'2023-07-11T15:10:54.6010244' AS DateTime2), CAST(N'2023-07-11T15:10:54.6010245' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1252, 1088, 3, CAST(N'2023-07-11T15:10:54.6010252' AS DateTime2), CAST(N'2023-07-11T15:10:54.6010253' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1253, 1088, 4, CAST(N'2023-07-11T15:10:54.6010255' AS DateTime2), CAST(N'2023-07-11T15:10:54.6010256' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1254, 1088, 5, CAST(N'2023-07-11T15:10:54.6010257' AS DateTime2), CAST(N'2023-07-11T15:10:54.6010258' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1289, 1093, 5, CAST(N'2023-07-11T18:06:36.3052207' AS DateTime2), CAST(N'2023-07-11T18:06:36.3052226' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1290, 1093, 6, CAST(N'2023-07-11T18:06:36.3053274' AS DateTime2), CAST(N'2023-07-11T18:06:36.3053276' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1291, 1093, 7, CAST(N'2023-07-11T18:06:36.3053278' AS DateTime2), CAST(N'2023-07-11T18:06:36.3053278' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1292, 1093, 12, CAST(N'2023-07-11T18:06:36.3053282' AS DateTime2), CAST(N'2023-07-11T18:06:36.3053283' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1293, 1093, 13, CAST(N'2023-07-11T18:06:36.3053287' AS DateTime2), CAST(N'2023-07-11T18:06:36.3053288' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1299, 1074, 5, CAST(N'2023-07-11T18:10:11.8665491' AS DateTime2), CAST(N'2023-07-11T18:10:11.8665492' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1300, 1074, 6, CAST(N'2023-07-11T18:10:11.8665498' AS DateTime2), CAST(N'2023-07-11T18:10:11.8665499' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1301, 1074, 7, CAST(N'2023-07-11T18:10:11.8665502' AS DateTime2), CAST(N'2023-07-11T18:10:11.8665503' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1302, 1074, 12, CAST(N'2023-07-11T18:10:11.8665507' AS DateTime2), CAST(N'2023-07-11T18:10:11.8665507' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1303, 1074, 13, CAST(N'2023-07-11T18:10:11.8665509' AS DateTime2), CAST(N'2023-07-11T18:10:11.8665510' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1304, 1075, 5, CAST(N'2023-07-11T18:11:23.9927441' AS DateTime2), CAST(N'2023-07-11T18:11:23.9927442' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1305, 1075, 6, CAST(N'2023-07-11T18:11:23.9927446' AS DateTime2), CAST(N'2023-07-11T18:11:23.9927447' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1306, 1075, 7, CAST(N'2023-07-11T18:11:23.9927450' AS DateTime2), CAST(N'2023-07-11T18:11:23.9927451' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1307, 1075, 12, CAST(N'2023-07-11T18:11:23.9927454' AS DateTime2), CAST(N'2023-07-11T18:11:23.9927455' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1308, 1075, 13, CAST(N'2023-07-11T18:11:23.9927457' AS DateTime2), CAST(N'2023-07-11T18:11:23.9927458' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1309, 1078, 1, CAST(N'2023-07-11T18:11:47.3056239' AS DateTime2), CAST(N'2023-07-11T18:11:47.3056239' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1310, 1078, 3, CAST(N'2023-07-11T18:11:47.3056243' AS DateTime2), CAST(N'2023-07-11T18:11:47.3056244' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1311, 1078, 4, CAST(N'2023-07-11T18:11:47.3056246' AS DateTime2), CAST(N'2023-07-11T18:11:47.3056247' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1312, 1078, 5, CAST(N'2023-07-11T18:11:47.3056249' AS DateTime2), CAST(N'2023-07-11T18:11:47.3056250' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1313, 1078, 6, CAST(N'2023-07-11T18:11:47.3056252' AS DateTime2), CAST(N'2023-07-11T18:11:47.3056253' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1314, 1084, 5, CAST(N'2023-07-11T18:12:15.2855913' AS DateTime2), CAST(N'2023-07-11T18:12:15.2855914' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1315, 1084, 6, CAST(N'2023-07-11T18:12:15.2855920' AS DateTime2), CAST(N'2023-07-11T18:12:15.2855921' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1316, 1084, 7, CAST(N'2023-07-11T18:12:15.2855924' AS DateTime2), CAST(N'2023-07-11T18:12:15.2855924' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1317, 1084, 12, CAST(N'2023-07-11T18:12:15.2855927' AS DateTime2), CAST(N'2023-07-11T18:12:15.2855928' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1318, 1084, 13, CAST(N'2023-07-11T18:12:15.2855930' AS DateTime2), CAST(N'2023-07-11T18:12:15.2855931' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1319, 1073, 1, CAST(N'2023-07-11T18:12:38.7471096' AS DateTime2), CAST(N'2023-07-11T18:12:38.7471097' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1320, 1073, 3, CAST(N'2023-07-11T18:12:38.7471103' AS DateTime2), CAST(N'2023-07-11T18:12:38.7471104' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1321, 1073, 4, CAST(N'2023-07-11T18:12:38.7471106' AS DateTime2), CAST(N'2023-07-11T18:12:38.7471107' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1322, 1073, 5, CAST(N'2023-07-11T18:12:38.7471108' AS DateTime2), CAST(N'2023-07-11T18:12:38.7471109' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1323, 1073, 6, CAST(N'2023-07-11T18:12:38.7471111' AS DateTime2), CAST(N'2023-07-11T18:12:38.7471112' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1324, 1073, 7, CAST(N'2023-07-11T18:12:38.7471115' AS DateTime2), CAST(N'2023-07-11T18:12:38.7471115' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1330, 1086, 5, CAST(N'2023-07-11T18:14:50.2728262' AS DateTime2), CAST(N'2023-07-11T18:14:50.2728264' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1331, 1086, 6, CAST(N'2023-07-11T18:14:50.2728271' AS DateTime2), CAST(N'2023-07-11T18:14:50.2728272' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1332, 1086, 7, CAST(N'2023-07-11T18:14:50.2728275' AS DateTime2), CAST(N'2023-07-11T18:14:50.2728276' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1333, 1086, 12, CAST(N'2023-07-11T18:14:50.2728280' AS DateTime2), CAST(N'2023-07-11T18:14:50.2728281' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1334, 1086, 13, CAST(N'2023-07-11T18:14:50.2728285' AS DateTime2), CAST(N'2023-07-11T18:14:50.2728286' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1335, 1094, 5, CAST(N'2023-07-11T18:20:30.0140696' AS DateTime2), CAST(N'2023-07-11T18:20:30.0140699' AS DateTime2), 0)
GO
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1336, 1094, 6, CAST(N'2023-07-11T18:20:30.0141416' AS DateTime2), CAST(N'2023-07-11T18:20:30.0141420' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1337, 1094, 7, CAST(N'2023-07-11T18:20:30.0141424' AS DateTime2), CAST(N'2023-07-11T18:20:30.0141425' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1338, 1094, 12, CAST(N'2023-07-11T18:20:30.0141429' AS DateTime2), CAST(N'2023-07-11T18:20:30.0141430' AS DateTime2), 0)
INSERT [dbo].[ProductSizes] ([Id], [ProductId], [SizeId], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1339, 1094, 13, CAST(N'2023-07-11T18:20:30.0141432' AS DateTime2), CAST(N'2023-07-11T18:20:30.0141433' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[ProductSizes] OFF
GO
SET IDENTITY_INSERT [dbo].[SectionHeaders] ON 

INSERT [dbo].[SectionHeaders] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1, N'RecentProductTitle', N'Recent Arrivals', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[SectionHeaders] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (2, N'RecentProductDesc', N'A good pair of shoes can take you to the best places', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[SectionHeaders] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (3, N'TrendingProductTitle', N'Trending Product
', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[SectionHeaders] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (4, N'BlogTitle', N'From The Blog', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[SectionHeaders] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (5, N'BlogDesc', N'A good pair of shoes can take you to the best places', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[SectionHeaders] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (7, N'TeamTitle', N'Our Team
', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[SectionHeaders] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (8, N'TeamDesv', N'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[SectionHeaders] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (9, N'AboutTitle', N'Our Story', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[SectionHeaders] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (10, N'AboutDesc', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[SectionHeaders] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1, N'Logo', N'logo_200x.webp', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[Settings] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (2, N'HeaderText', N'Free shipping on domestic orders over $150', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[Settings] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (3, N'Mobil', N'(+994) 055-433-05-07', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[Settings] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (4, N'gmail', N'aydanshj@code.edu.az', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[Settings] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (5, N'addres', N'33 New Montgomery St. Ste 750 San Francisco, CA, USA 94105', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[Settings] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (7, N'BackgroundImage', N'background.webp', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[Settings] ([Id], [Key], [Value], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (8, N'AboutDesc', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis', CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), CAST(N'2008-11-11T13:23:44.0000000' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Number], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1, 36, CAST(N'2023-06-21T11:42:58.0463878' AS DateTime2), CAST(N'2023-06-21T11:42:58.0463896' AS DateTime2), 0)
INSERT [dbo].[Sizes] ([Id], [Number], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (3, 37, CAST(N'2023-06-21T11:43:06.6286923' AS DateTime2), CAST(N'2023-06-21T11:43:06.6286945' AS DateTime2), 0)
INSERT [dbo].[Sizes] ([Id], [Number], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (4, 38, CAST(N'2023-06-21T11:43:13.4533937' AS DateTime2), CAST(N'2023-06-21T11:43:13.4533957' AS DateTime2), 0)
INSERT [dbo].[Sizes] ([Id], [Number], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (5, 39, CAST(N'2023-06-21T11:43:20.4614181' AS DateTime2), CAST(N'2023-06-21T11:43:20.4614215' AS DateTime2), 0)
INSERT [dbo].[Sizes] ([Id], [Number], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (6, 40, CAST(N'2023-06-21T11:43:25.6067016' AS DateTime2), CAST(N'2023-06-21T11:43:25.6067024' AS DateTime2), 0)
INSERT [dbo].[Sizes] ([Id], [Number], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (7, 41, CAST(N'2023-06-21T11:43:35.2870497' AS DateTime2), CAST(N'2023-06-21T11:43:35.2870507' AS DateTime2), 0)
INSERT [dbo].[Sizes] ([Id], [Number], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (12, 42, CAST(N'2023-06-24T16:05:21.6528720' AS DateTime2), CAST(N'2023-06-24T16:05:21.6528735' AS DateTime2), 0)
INSERT [dbo].[Sizes] ([Id], [Number], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (13, 43, CAST(N'2023-06-24T16:05:25.5190848' AS DateTime2), CAST(N'2023-06-24T16:05:25.5190868' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Image], [Title], [Heading], [Desc], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1, N'28e765d6-9ad1-46fd-abcb-e4589ed24d4bmain-banner-1_2048x.webp', N'THE SALE WILL TAKE PLACE THIS WEEK.', N'Up To 50% Off', N'First Order', CAST(N'2023-06-19T11:00:08.6903995' AS DateTime2), CAST(N'2023-06-19T11:00:08.6904006' AS DateTime2), 0)
INSERT [dbo].[Sliders] ([Id], [Image], [Title], [Heading], [Desc], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (3, N'8be146b2-4757-448e-8ba3-df307f3fdc2fmain-banner-2_2048x.webp', N'THE SALE WILL TAKE PLACE THIS WEEK..', N'Up To 50% Off', N'First Order', CAST(N'2023-07-08T17:53:52.0569233' AS DateTime2), CAST(N'2023-07-08T17:53:52.0569245' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1030, N'Casual Shoes', CAST(N'2023-06-23T23:48:47.2981845' AS DateTime2), CAST(N'2023-06-23T23:48:47.2981848' AS DateTime2), 0)
INSERT [dbo].[SubCategories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1031, N'Smart Shoes', CAST(N'2023-06-23T23:49:36.6437885' AS DateTime2), CAST(N'2023-06-23T23:49:36.6437887' AS DateTime2), 0)
INSERT [dbo].[SubCategories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1032, N'Loafers Shoes', CAST(N'2023-06-23T23:50:22.9995529' AS DateTime2), CAST(N'2023-06-23T23:50:22.9995532' AS DateTime2), 0)
INSERT [dbo].[SubCategories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1033, N'Clogs Shoes', CAST(N'2023-06-23T23:52:55.3776485' AS DateTime2), CAST(N'2023-06-23T23:52:55.3776486' AS DateTime2), 0)
INSERT [dbo].[SubCategories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1034, N'Slippers Shoes', CAST(N'2023-06-23T23:53:48.6870406' AS DateTime2), CAST(N'2023-06-23T23:53:48.6870407' AS DateTime2), 0)
INSERT [dbo].[SubCategories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1035, N'Trainers Shoes', CAST(N'2023-06-23T23:54:59.7156881' AS DateTime2), CAST(N'2023-06-23T23:54:59.7156882' AS DateTime2), 0)
INSERT [dbo].[SubCategories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1036, N'Football Shoes', CAST(N'2023-06-23T23:56:08.5000099' AS DateTime2), CAST(N'2023-06-23T23:56:08.5000100' AS DateTime2), 0)
INSERT [dbo].[SubCategories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1037, N'Ballet Shoes', CAST(N'2023-06-23T23:56:48.5257639' AS DateTime2), CAST(N'2023-06-23T23:56:48.5257640' AS DateTime2), 0)
INSERT [dbo].[SubCategories] ([Id], [Name], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1040, N'Boots Shoes', CAST(N'2023-07-08T13:48:48.5679618' AS DateTime2), CAST(N'2023-07-08T13:48:48.5679619' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([Id], [FullName], [Position], [Image], [SocialAccount], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (1, N'Britney Cooper', N'PROJECT MANAGER', N'e17c904a-ae60-40f2-8bf6-0307f2fcaac3team1.jpg', NULL, CAST(N'2023-06-28T18:37:39.8441294' AS DateTime2), CAST(N'2023-06-28T18:37:39.8441333' AS DateTime2), 0)
INSERT [dbo].[Teams] ([Id], [FullName], [Position], [Image], [SocialAccount], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (2, N'Micheal Murphy', N'SALES MAN', N'53480bac-4d89-4d45-bf23-d1e05891e357team33.webp', NULL, CAST(N'2023-06-28T18:38:48.6921933' AS DateTime2), CAST(N'2023-06-28T18:38:48.6921957' AS DateTime2), 0)
INSERT [dbo].[Teams] ([Id], [FullName], [Position], [Image], [SocialAccount], [CreatedDate], [UpdatedDate], [SoftDelete]) VALUES (3, N'Marissa Swan', N'WEB DESIGNER', N'89e9bc36-c9a4-4684-a5ee-5903cbc04f4aemp-2.jpg', NULL, CAST(N'2023-06-28T18:39:51.6258611' AS DateTime2), CAST(N'2023-06-28T18:39:51.6258640' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 13/09/2023 21:43:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 13/09/2023 21:43:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Blogs_AuthorId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_AuthorId] ON [dbo].[Blogs]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartProducts_CartId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_CartProducts_CartId] ON [dbo].[CartProducts]
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartProducts_ProductId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_CartProducts_ProductId] ON [dbo].[CartProducts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Carts_AppUserId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_Carts_AppUserId] ON [dbo].[Carts]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategorySubCategories_CategoryId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_CategorySubCategories_CategoryId] ON [dbo].[CategorySubCategories]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategorySubCategories_ProductId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_CategorySubCategories_ProductId] ON [dbo].[CategorySubCategories]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategorySubCategories_SubCategoryId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_CategorySubCategories_SubCategoryId] ON [dbo].[CategorySubCategories]
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductColors_ColorId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_ProductColors_ColorId] ON [dbo].[ProductColors]
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductColors_ProductId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_ProductColors_ProductId] ON [dbo].[ProductColors]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductComments_AppUserId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_ProductComments_AppUserId] ON [dbo].[ProductComments]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductComments_ProductId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_ProductComments_ProductId] ON [dbo].[ProductComments]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_SubCategoryId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_Products_SubCategoryId] ON [dbo].[Products]
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductSizes_ProductId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_ProductSizes_ProductId] ON [dbo].[ProductSizes]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductSizes_SizeId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_ProductSizes_SizeId] ON [dbo].[ProductSizes]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_WishlistProducts_ProductId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_WishlistProducts_ProductId] ON [dbo].[WishlistProducts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_WishlistProducts_WishlistId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_WishlistProducts_WishlistId] ON [dbo].[WishlistProducts]
(
	[WishlistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Wishlists_AppUserId]    Script Date: 13/09/2023 21:43:25 ******/
CREATE NONCLUSTERED INDEX [IX_Wishlists_AppUserId] ON [dbo].[Wishlists]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [SubCategoryId]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0.0)) FOR [DiscountPrice]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Authors_AuthorId]
GO
ALTER TABLE [dbo].[CartProducts]  WITH CHECK ADD  CONSTRAINT [FK_CartProducts_Carts_CartId] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartProducts] CHECK CONSTRAINT [FK_CartProducts_Carts_CartId]
GO
ALTER TABLE [dbo].[CartProducts]  WITH CHECK ADD  CONSTRAINT [FK_CartProducts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartProducts] CHECK CONSTRAINT [FK_CartProducts_Products_ProductId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[CategorySubCategories]  WITH CHECK ADD  CONSTRAINT [FK_CategorySubCategories_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategorySubCategories] CHECK CONSTRAINT [FK_CategorySubCategories_Categories_CategoryId]
GO
ALTER TABLE [dbo].[CategorySubCategories]  WITH CHECK ADD  CONSTRAINT [FK_CategorySubCategories_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[CategorySubCategories] CHECK CONSTRAINT [FK_CategorySubCategories_Products_ProductId]
GO
ALTER TABLE [dbo].[CategorySubCategories]  WITH CHECK ADD  CONSTRAINT [FK_CategorySubCategories_SubCategories_SubCategoryId] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategorySubCategories] CHECK CONSTRAINT [FK_CategorySubCategories_SubCategories_SubCategoryId]
GO
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Colors_ColorId]
GO
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductComments]  WITH CHECK ADD  CONSTRAINT [FK_ProductComments_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProductComments] CHECK CONSTRAINT [FK_ProductComments_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[ProductComments]  WITH CHECK ADD  CONSTRAINT [FK_ProductComments_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductComments] CHECK CONSTRAINT [FK_ProductComments_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_SubCategories_SubCategoryId] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_SubCategories_SubCategoryId]
GO
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductSizes]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizes_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSizes] CHECK CONSTRAINT [FK_ProductSizes_Sizes_SizeId]
GO
ALTER TABLE [dbo].[WishlistProducts]  WITH CHECK ADD  CONSTRAINT [FK_WishlistProducts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WishlistProducts] CHECK CONSTRAINT [FK_WishlistProducts_Products_ProductId]
GO
ALTER TABLE [dbo].[WishlistProducts]  WITH CHECK ADD  CONSTRAINT [FK_WishlistProducts_Wishlists_WishlistId] FOREIGN KEY([WishlistId])
REFERENCES [dbo].[Wishlists] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WishlistProducts] CHECK CONSTRAINT [FK_WishlistProducts_Wishlists_WishlistId]
GO
ALTER TABLE [dbo].[Wishlists]  WITH CHECK ADD  CONSTRAINT [FK_Wishlists_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Wishlists] CHECK CONSTRAINT [FK_Wishlists_AspNetUsers_AppUserId]
GO
USE [master]
GO
ALTER DATABASE [SchuseOnlineShopDB] SET  READ_WRITE 
GO
