IF OBJECT_ID(N'[MyTable]') IS NULL
  BEGIN
      CREATE TABLE [MyTable](
        [Id] nvarchar(max),
        [Value] nvarchar(max)
      );
  END
GO