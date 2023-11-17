CREATE TABLE [dbo].[Role] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [name] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Meat] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



CREATE TABLE [dbo].[Ramen] (
    [Id]     INT          IDENTITY (1, 1) NOT NULL,
    [Name]   VARCHAR (50) NOT NULL,
    [Broth]  VARCHAR (50) NOT NULL,
    [Price]  VARCHAR (50) NOT NULL,
    [MeatId] INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Ramen_Meat] FOREIGN KEY ([MeatId]) REFERENCES [dbo].[Meat] ([Id])
);




CREATE TABLE [dbo].[User] (
    [Id]       INT          IDENTITY (1, 1) NOT NULL,
    [Username] VARCHAR (50) NOT NULL,
    [Email]    VARCHAR (50) NOT NULL,
    [Gender]   VARCHAR (50) NOT NULL,
    [Password] VARCHAR (50) NOT NULL,
    [Role_Id]  INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_User_Role] FOREIGN KEY ([Role_Id]) REFERENCES [dbo].[Role] ([Id])
);



CREATE TABLE [dbo].[Header_Table] (
    [Id]         INT      IDENTITY (1, 1) NOT NULL,
    [StaffId]    INT      NOT NULL,
    [Date]       DATETIME NOT NULL,
    [CustomerId] INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Header_User] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[User] ([Id])
);




CREATE TABLE [dbo].[Detail] (
    [HeaderId] INT NOT NULL,
    [RamenId]  INT NOT NULL,
    [Quantity] INT NOT NULL,
    CONSTRAINT [FK_Detail_Ramen] FOREIGN KEY ([RamenId]) REFERENCES [dbo].[Ramen] ([Id]),
    CONSTRAINT [FK_Detail_Header_Table] FOREIGN KEY ([HeaderId]) REFERENCES [dbo].[Header_Table] ([Id])
);




