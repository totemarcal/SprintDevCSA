USE [cursomvc]
GO
/****** Object:  Table [dbo].[Aluno]    Script Date: 24/07/2016 19:51:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aluno](
	[AlunoID] [int] IDENTITY(1,1) NOT NULL,
	[AlunoNome] [varchar](100) NOT NULL,
	[AssuntoID] [int] NOT NULL,
	[DepartamentoID] [int] NOT NULL,
	[EnderecoID] [int] NULL,
 CONSTRAINT [PK_Aluno] PRIMARY KEY CLUSTERED 
(
	[AlunoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aluno_Materia]    Script Date: 24/07/2016 19:51:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aluno_Materia](
	[AlunoMateriaID] [int] IDENTITY(1,1) NOT NULL,
	[AlunoID] [int] NOT NULL,
	[MateriaID] [int] NOT NULL,
 CONSTRAINT [PK_Aluno_Materia] PRIMARY KEY CLUSTERED 
(
	[AlunoMateriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[assunto]    Script Date: 24/07/2016 19:51:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[assunto](
	[AssuntoID] [int] IDENTITY(1,1) NOT NULL,
	[DescAssunto] [varchar](100) NOT NULL,
 CONSTRAINT [PK_assunto] PRIMARY KEY CLUSTERED 
(
	[AssuntoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 24/07/2016 19:51:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Autor](
	[AutorID] [int] IDENTITY(1,1) NOT NULL,
	[AutorNome] [varchar](100) NOT NULL,
	[AutorEspecialidade] [int] NOT NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[AutorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 24/07/2016 19:51:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departamento](
	[DepartamentoID] [int] IDENTITY(1,1) NOT NULL,
	[DepartamentoNome] [varchar](100) NOT NULL,
	[DepartamentoSigla] [nchar](10) NULL,
 CONSTRAINT [PK_departamento] PRIMARY KEY CLUSTERED 
(
	[DepartamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Endereco]    Script Date: 24/07/2016 19:51:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Endereco](
	[Enderecoid] [int] IDENTITY(1,1) NOT NULL,
	[EnderecoRua] [varchar](10) NULL,
	[EnderecoNumero] [int] NULL,
	[EnderecoBairro] [varchar](10) NULL,
	[EnderecoComplemento] [varchar](100) NULL,
 CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED 
(
	[Enderecoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[materia]    Script Date: 24/07/2016 19:51:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[materia](
	[MateriaID] [int] IDENTITY(1,1) NOT NULL,
	[MateriaNome] [varchar](100) NOT NULL,
 CONSTRAINT [PK_materia] PRIMARY KEY CLUSTERED 
(
	[MateriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Referencia]    Script Date: 24/07/2016 19:51:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Referencia](
	[ReferenciaID] [int] IDENTITY(1,1) NOT NULL,
	[ReferenciaTitulo] [varchar](100) NOT NULL,
	[ReferenciaEditora] [varchar](100) NOT NULL,
	[AssuntoID] [int] NULL,
 CONSTRAINT [PK_Referencia] PRIMARY KEY CLUSTERED 
(
	[ReferenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReferenciaAutor]    Script Date: 24/07/2016 19:51:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenciaAutor](
	[ReferenciaAutorID] [int] IDENTITY(1,1) NOT NULL,
	[ReferenciaID] [int] NOT NULL,
	[AutorID] [int] NOT NULL,
 CONSTRAINT [PK_ReferenciaAutor] PRIMARY KEY CLUSTERED 
(
	[ReferenciaAutorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Telefone]    Script Date: 24/07/2016 19:51:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefone](
	[TelefoneID] [int] IDENTITY(1,1) NOT NULL,
	[TelefoneDDD] [int] NOT NULL,
	[TelefoneNumero] [int] NOT NULL,
	[AlunoID] [int] NOT NULL,
 CONSTRAINT [PK_Telefone] PRIMARY KEY CLUSTERED 
(
	[TelefoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Aluno]  WITH CHECK ADD  CONSTRAINT [FK_aluno_assunto] FOREIGN KEY([AssuntoID])
REFERENCES [dbo].[assunto] ([AssuntoID])
GO
ALTER TABLE [dbo].[Aluno] CHECK CONSTRAINT [FK_aluno_assunto]
GO
ALTER TABLE [dbo].[Aluno]  WITH CHECK ADD  CONSTRAINT [FK_Aluno_departamento] FOREIGN KEY([DepartamentoID])
REFERENCES [dbo].[departamento] ([DepartamentoID])
GO
ALTER TABLE [dbo].[Aluno] CHECK CONSTRAINT [FK_Aluno_departamento]
GO
ALTER TABLE [dbo].[Aluno]  WITH CHECK ADD  CONSTRAINT [FK_Aluno_Endereco] FOREIGN KEY([EnderecoID])
REFERENCES [dbo].[Endereco] ([Enderecoid])
GO
ALTER TABLE [dbo].[Aluno] CHECK CONSTRAINT [FK_Aluno_Endereco]
GO
ALTER TABLE [dbo].[Aluno_Materia]  WITH CHECK ADD  CONSTRAINT [FK_Aluno_Materia_Aluno] FOREIGN KEY([AlunoID])
REFERENCES [dbo].[Aluno] ([AlunoID])
GO
ALTER TABLE [dbo].[Aluno_Materia] CHECK CONSTRAINT [FK_Aluno_Materia_Aluno]
GO
ALTER TABLE [dbo].[Aluno_Materia]  WITH CHECK ADD  CONSTRAINT [FK_Aluno_Materia_materia] FOREIGN KEY([MateriaID])
REFERENCES [dbo].[materia] ([MateriaID])
GO
ALTER TABLE [dbo].[Aluno_Materia] CHECK CONSTRAINT [FK_Aluno_Materia_materia]
GO
ALTER TABLE [dbo].[Referencia]  WITH CHECK ADD  CONSTRAINT [FK_Referencia_assunto] FOREIGN KEY([AssuntoID])
REFERENCES [dbo].[assunto] ([AssuntoID])
GO
ALTER TABLE [dbo].[Referencia] CHECK CONSTRAINT [FK_Referencia_assunto]
GO
ALTER TABLE [dbo].[ReferenciaAutor]  WITH CHECK ADD  CONSTRAINT [FK_ReferenciaAutor_Autor] FOREIGN KEY([AutorID])
REFERENCES [dbo].[Autor] ([AutorID])
GO
ALTER TABLE [dbo].[ReferenciaAutor] CHECK CONSTRAINT [FK_ReferenciaAutor_Autor]
GO
ALTER TABLE [dbo].[ReferenciaAutor]  WITH CHECK ADD  CONSTRAINT [FK_ReferenciaAutor_Referencia] FOREIGN KEY([ReferenciaID])
REFERENCES [dbo].[Referencia] ([ReferenciaID])
GO
ALTER TABLE [dbo].[ReferenciaAutor] CHECK CONSTRAINT [FK_ReferenciaAutor_Referencia]
GO
ALTER TABLE [dbo].[Telefone]  WITH CHECK ADD  CONSTRAINT [FK_Telefone_Aluno] FOREIGN KEY([AlunoID])
REFERENCES [dbo].[Aluno] ([AlunoID])
GO
ALTER TABLE [dbo].[Telefone] CHECK CONSTRAINT [FK_Telefone_Aluno]
GO
