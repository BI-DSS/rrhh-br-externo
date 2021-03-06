USE [RRHH]
GO
/****** Object:  Schema [Ofe]    Script Date: 2/5/2020 10:42:42 AM ******/
CREATE SCHEMA [Ofe]
GO
/****** Object:  Schema [Sol]    Script Date: 2/5/2020 10:42:42 AM ******/
CREATE SCHEMA [Sol]
GO
/****** Object:  Table [dbo].[auth_group]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_group_permissions]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_permission]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[content_type_id] [int] NOT NULL,
	[codename] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_user]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](128) NOT NULL,
	[last_login] [datetime] NULL,
	[is_superuser] [bit] NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[first_name] [nvarchar](30) NOT NULL,
	[last_name] [nvarchar](30) NOT NULL,
	[email] [nvarchar](254) NOT NULL,
	[is_staff] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[date_joined] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_user_groups]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_user_user_permissions]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_user_user_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_admin_log]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_admin_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action_time] [datetime] NOT NULL,
	[object_id] [nvarchar](max) NULL,
	[object_repr] [nvarchar](200) NOT NULL,
	[action_flag] [smallint] NOT NULL,
	[change_message] [nvarchar](max) NOT NULL,
	[content_type_id] [int] NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_content_type]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_content_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_label] [nvarchar](100) NOT NULL,
	[model] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_migrations]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[applied] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_session]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_session](
	[session_key] [nvarchar](40) NOT NULL,
	[session_data] [nvarchar](max) NOT NULL,
	[expire_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seguros]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seguros](
	[CodSeguros] [int] IDENTITY(1,1) NOT NULL,
	[CompaniaSeguros] [varchar](100) NULL,
 CONSTRAINT [PK_Seguros] PRIMARY KEY CLUSTERED 
(
	[CodSeguros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ofe].[Aplicaciones]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ofe].[Aplicaciones](
	[Cod_aplicacion] [int] IDENTITY(1,1) NOT NULL,
	[Cod_solicitud] [int] NULL,
	[Cod_oferta] [int] NULL,
	[Favorito] [bit] NULL,
	[Tipo_seguimiento] [varchar](150) NULL,
	[Visto] [bit] NULL,
	[Fecha] [date] NULL,
	[Dislike] [bit] NULL,
	[Imprimir] [bit] NULL,
	[CodUserDes] [int] NULL,
 CONSTRAINT [PK_aplicaciones] PRIMARY KEY CLUSTERED 
(
	[Cod_aplicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ofe].[Areas]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ofe].[Areas](
	[Cod_area] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_area] [varchar](200) NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[Cod_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ofe].[Ofertas]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ofe].[Ofertas](
	[Cod_oferta] [int] IDENTITY(1,1) NOT NULL,
	[Puesto_oferta] [varchar](600) NULL,
	[Salario_minimo] [int] NULL,
	[Salario_maximo] [int] NULL,
	[Descripcion_oferta] [varchar](max) NULL,
	[Perfil_candidato] [varchar](max) NULL,
	[Fecha_publicacion] [date] NULL,
	[Fecha_cierre] [date] NULL,
	[Estado] [bit] NULL,
	[Cod_departamento] [int] NULL,
	[Departemento] [varchar](150) NULL,
	[Cod_municipio] [int] NULL,
	[Municipio] [varchar](150) NULL,
	[Tipo_contratacion] [varchar](150) NULL,
	[Edad_minima] [int] NULL,
	[Edad_maxima] [int] NULL,
	[Disponibilidad] [varchar](150) NULL,
	[Experiencia_laboral] [varchar](600) NULL,
	[Trabajo_campo] [bit] NULL,
	[Vehiculo] [bit] NULL,
	[Cod_area] [int] NULL,
	[Descripcion_area] [varchar](200) NULL,
	[Publica] [bit] NULL,
	[Interna] [bit] NULL,
	[Anonima] [bit] NULL,
	[Url] [varchar](250) NULL,
 CONSTRAINT [PK_Ofertas] PRIMARY KEY CLUSTERED 
(
	[Cod_oferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Ofe].[Preguntas]    Script Date: 2/5/2020 10:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ofe].[Preguntas](
	[Cod_pregunta] [int] IDENTITY(1,1) NOT NULL,
	[Cod_oferta] [int] NULL,
	[Descripcion_pregunta] [varchar](600) NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[Cod_pregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ofe].[Respuestas]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ofe].[Respuestas](
	[Cod_respuesta] [int] IDENTITY(1,1) NOT NULL,
	[Cod_pregunta] [int] NULL,
	[Cod_solicitud] [int] NULL,
	[Cod_aplicacion] [int] NULL,
	[Cod_oferta] [int] NULL,
	[Descripcion_respuesta] [varchar](max) NULL,
	[Descripcion_pregunta] [varchar](max) NULL,
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[Cod_respuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Ofe].[SeguimientoXAplicacion]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ofe].[SeguimientoXAplicacion](
	[Cod_seguimiento] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Aplicacion] [int] NULL,
	[Cod_Solicitud] [int] NULL,
	[Cod_Oferta] [int] NULL,
	[Pr_Entrevista] [bit] NOT NULL,
	[Fch_Pr_Entrevista] [date] NULL,
	[Hor_Pr_Entrevista] [datetime] NULL,
	[Pruebas_Psico] [bit] NULL,
	[Email] [varchar](50) NULL,
	[Contrasena] [varchar](50) NULL,
	[Fch_Pruebas_Psico] [date] NULL,
	[Jefe_Inme] [bit] NULL,
	[Fch_Jefe] [date] NULL,
	[Hor_Jefe] [datetime] NULL,
	[Poligrafo] [bit] NULL,
	[Fch_Poligrafo] [date] NULL,
	[Hor_Poligrafo] [datetime] NULL,
	[Dir_Poligrafo] [varchar](max) NULL,
	[Socio_Econ] [bit] NULL,
	[Fch_Socio] [date] NULL,
	[Hor_Socio] [datetime] NULL,
	[Documentacion] [bit] NULL,
	[Fch_Doc] [date] NULL,
	[Medicos] [bit] NULL,
	[Fch_Medicos] [date] NULL,
	[Hor_Medicos] [datetime] NULL,
	[Dir_Medicos] [varchar](max) NULL,
	[CC] [bit] NULL,
	[Fch_Ingreso] [date] NULL,
	[Fch_Salida] [date] NULL,
	[Encargado] [varchar](500) NULL,
 CONSTRAINT [PK_SeguimientoXAplicacion] PRIMARY KEY CLUSTERED 
(
	[Cod_seguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Ofe].[Suscriptores]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ofe].[Suscriptores](
	[Cod_suscripcion] [int] IDENTITY(1,1) NOT NULL,
	[Correo] [varchar](500) NULL,
	[Cod_area] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Suscriptores] PRIMARY KEY CLUSTERED 
(
	[Cod_suscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ofe].[TipoSeguimiento]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ofe].[TipoSeguimiento](
	[Cod_seguimiento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_seguimiento] [varchar](300) NULL,
 CONSTRAINT [PK_TipoSeguimiento] PRIMARY KEY CLUSTERED 
(
	[Cod_seguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Campus]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Campus](
	[Cod_campus] [int] IDENTITY(1,1) NOT NULL,
	[Cod_universidad] [int] NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_Campus] PRIMARY KEY CLUSTERED 
(
	[Cod_campus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Carreras]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Carreras](
	[Cod_carreras] [int] IDENTITY(1,1) NOT NULL,
	[Cod_campus] [int] NULL,
	[Nombre_carrera] [nvarchar](200) NULL,
 CONSTRAINT [PK_Carreras] PRIMARY KEY CLUSTERED 
(
	[Cod_carreras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Carreras_Solicitud]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Carreras_Solicitud](
	[Cod_solicitud] [int] NOT NULL,
	[Cod_universidad] [int] NOT NULL,
	[Cod_campus] [int] NOT NULL,
	[Cod_carrera] [int] NOT NULL,
 CONSTRAINT [PK_Carreras_Solicitud] PRIMARY KEY CLUSTERED 
(
	[Cod_solicitud] ASC,
	[Cod_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Colegios]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Colegios](
	[Cod_Colegios] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](300) NULL,
 CONSTRAINT [PK_Colegios] PRIMARY KEY CLUSTERED 
(
	[Cod_Colegios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Competencias]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Competencias](
	[Cod_compentencias] [int] IDENTITY(1,1) NOT NULL,
	[Cod_solicitud] [int] NULL,
	[Nombre_competencia] [varchar](50) NULL,
	[Posee] [bit] NULL,
 CONSTRAINT [PK_Competencias] PRIMARY KEY CLUSTERED 
(
	[Cod_compentencias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Cuentas]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Cuentas](
	[Cod_cuenta] [int] IDENTITY(1,1) NOT NULL,
	[Cod_solicitud] [int] NULL,
	[Tipo_cuenta] [varchar](1) NULL,
	[Cantidad] [decimal](18, 2) NULL,
	[Institucion] [nvarchar](50) NULL,
	[Numero_cuenta] [varchar](max) NULL,
 CONSTRAINT [PK_Cuentas] PRIMARY KEY CLUSTERED 
(
	[Cod_cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Cursos]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Cursos](
	[CodCurso] [int] IDENTITY(1,1) NOT NULL,
	[CodSolicitud] [int] NULL,
	[TemaCurso] [nvarchar](100) NULL,
	[NombreCentroEstudio] [nvarchar](100) NULL,
	[DireccionCentroEstudio] [varchar](max) NULL,
	[Duracion] [nvarchar](50) NULL,
	[Titulo] [nvarchar](100) NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[CodCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Departamentos]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Departamentos](
	[CodDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[CodPais] [int] NULL,
	[DescripcionDepartamento] [varchar](50) NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[CodDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Dependientes]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Dependientes](
	[CodDependiente] [int] IDENTITY(1,1) NOT NULL,
	[CodSolicitud] [int] NULL,
	[NombreCompleto] [varchar](100) NULL,
	[TipoDependencia] [varchar](1) NULL,
 CONSTRAINT [PK_Dependientes] PRIMARY KEY CLUSTERED 
(
	[CodDependiente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Escuelas]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Escuelas](
	[Cod_escuelas] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](300) NULL,
 CONSTRAINT [PK_Escuelas] PRIMARY KEY CLUSTERED 
(
	[Cod_escuelas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Grupo_organizacion]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Grupo_organizacion](
	[Cod_organizaciones] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_organizacion] [varchar](300) NULL,
 CONSTRAINT [PK_Grupo_organizacion] PRIMARY KEY CLUSTERED 
(
	[Cod_organizaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Habilidades]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Habilidades](
	[Cod_habilidad] [int] IDENTITY(1,1) NOT NULL,
	[Cod_solicitud] [int] NULL,
	[Nombre_habilidad] [varchar](50) NULL,
	[Porcentaje] [int] NULL,
 CONSTRAINT [PK_Habilidades] PRIMARY KEY CLUSTERED 
(
	[Cod_habilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Hermanos]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Hermanos](
	[CodHermano] [int] IDENTITY(1,1) NOT NULL,
	[CodSolicitud] [int] NULL,
	[NombreCompleto] [varchar](100) NULL,
	[Edad] [int] NULL,
	[Domicilio] [varchar](max) NULL,
	[Telefono] [nvarchar](10) NULL,
	[Ocupacion] [varchar](100) NULL,
 CONSTRAINT [PK_Hermanos] PRIMARY KEY CLUSTERED 
(
	[CodHermano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Hijos]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Hijos](
	[CodHijo] [int] IDENTITY(1,1) NOT NULL,
	[CodSolicitud] [int] NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[Edad] [int] NULL,
 CONSTRAINT [PK_Hijos] PRIMARY KEY CLUSTERED 
(
	[CodHijo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[HistorialAcademico]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[HistorialAcademico](
	[CodInstitucion] [int] IDENTITY(1,1) NOT NULL,
	[CodSolicitud] [int] NULL,
	[NombreInstitucion] [nvarchar](100) NULL,
	[NivelEstudios] [nvarchar](100) NULL,
	[LugarEstudio] [nvarchar](100) NULL,
	[TituloObtenido] [nvarchar](100) NULL,
	[Inicio] [int] NULL,
	[Fin] [int] NULL,
 CONSTRAINT [PK_HistorialAcademico] PRIMARY KEY CLUSTERED 
(
	[CodInstitucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[HistorialLaboral]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[HistorialLaboral](
	[CodEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[CodSolicitud] [int] NULL,
	[NombreEmpresa] [varchar](50) NULL,
	[FechaINgreso] [date] NULL,
	[FechaEgreso] [date] NULL,
	[DireccionEmpresa] [varchar](max) NULL,
	[NombreJefeInmediato] [varchar](100) NULL,
	[MotivoRetiro] [varchar](100) NULL,
	[SalarioInicial] [decimal](18, 2) NULL,
	[SalarioFinal] [decimal](18, 2) NULL,
	[Puesto] [nvarchar](100) NULL,
	[FucionesPuesto] [nvarchar](100) NULL,
	[Horario] [nvarchar](100) NULL,
	[HoraInicio] [varchar](50) NULL,
	[HoraSalida] [varchar](50) NULL,
	[HoraInicioSabado] [varchar](50) NULL,
	[HoraSalidaSabado] [varchar](50) NULL,
	[TrabajoActual] [bit] NULL,
	[Sabado] [bit] NULL,
 CONSTRAINT [PK_HistorialLaboral] PRIMARY KEY CLUSTERED 
(
	[CodEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Idiomas]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Idiomas](
	[Cod_idioma] [int] IDENTITY(1,1) NOT NULL,
	[Cod_solicitud] [int] NULL,
	[Nombre] [nvarchar](50) NULL,
	[Habla] [int] NULL,
	[Escritura] [int] NULL,
	[Lectura] [int] NULL,
 CONSTRAINT [PK_Idiomas] PRIMARY KEY CLUSTERED 
(
	[Cod_idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Municipios]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Municipios](
	[CodMunicipio] [int] IDENTITY(1,1) NOT NULL,
	[CodDepartamento] [int] NULL,
	[DescripcionMunicipio] [varchar](100) NULL,
 CONSTRAINT [PK_Municipios] PRIMARY KEY CLUSTERED 
(
	[CodMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Organiacion]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Organiacion](
	[Cod_organizacion] [int] IDENTITY(1,1) NOT NULL,
	[Cod_solicitud] [int] NULL,
	[Nombre] [varchar](300) NULL,
	[CodGrupoOrganizacion] [int] NULL,
 CONSTRAINT [PK_Organiacion] PRIMARY KEY CLUSTERED 
(
	[Cod_organizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Paises]    Script Date: 2/5/2020 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Paises](
	[CodPais] [int] IDENTITY(1,1) NOT NULL,
	[DescripcionPais] [varchar](50) NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[CodPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Referencias]    Script Date: 2/5/2020 10:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Referencias](
	[CodReferencia] [int] IDENTITY(1,1) NOT NULL,
	[CodSolicitud] [int] NULL,
	[NombreCompleto] [varchar](100) NULL,
	[Profesion] [varchar](100) NULL,
	[Direccion] [varchar](max) NULL,
	[Telefono] [nvarchar](10) NULL,
 CONSTRAINT [PK_Referencias] PRIMARY KEY CLUSTERED 
(
	[CodReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Sol].[ReferenciasPersonales]    Script Date: 2/5/2020 10:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[ReferenciasPersonales](
	[CodReferenciaPersonal] [int] IDENTITY(1,1) NOT NULL,
	[CodSolicitud] [int] NULL,
	[Nombre] [nvarchar](100) NULL,
	[Profesion] [nvarchar](100) NULL,
	[Direccion] [varchar](max) NULL,
	[Telefono] [nvarchar](10) NULL,
 CONSTRAINT [PK_ReferenciasPersonales] PRIMARY KEY CLUSTERED 
(
	[CodReferenciaPersonal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Solicitudes]    Script Date: 2/5/2020 10:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Solicitudes](
	[CodSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [int] NULL,
	[Vista] [int] NULL,
	[Nombres] [varchar](100) NULL,
	[PrimerApellido] [varchar](100) NULL,
	[SegundoApellido] [varchar](100) NULL,
	[Sexo] [varchar](10) NULL,
	[Casada] [bit] NULL,
	[ApellidoCasada] [varchar](100) NULL,
	[DireccionDomicilio] [varchar](max) NULL,
	[CodMunicipioDomicilio] [int] NULL,
	[CodDepartamentoDomicilio] [int] NULL,
	[TelefonoFijo] [varchar](10) NULL,
	[Celular] [varchar](10) NULL,
	[LugarNacimiento] [nvarchar](100) NULL,
	[FechaNacimiento] [date] NULL,
	[Edad] [int] NULL,
	[EstadoCivil] [varchar](1) NULL,
	[CodPaisNacimiento] [int] NULL,
	[Profesion] [varchar](100) NULL,
	[Identidad] [varchar](15) NULL,
	[CodMunicipioIdentidad] [int] NULL,
	[Automovil] [bit] NULL,
	[Licencia] [bit] NULL,
	[Motocicleta] [bit] NULL,
	[Pesada] [bit] NULL,
	[Liviana] [bit] NULL,
	[PolizaSeguro] [bit] NULL,
	[CompaniaPoliza] [nvarchar](100) NULL,
	[Deporte] [bit] NULL,
	[TipoDeporte] [nvarchar](100) NULL,
	[FechaDeporte] [date] NULL,
	[NumeroIhss] [nvarchar](50) NULL,
	[RTN] [nvarchar](16) NULL,
	[NumeroPasaporte] [nvarchar](50) NULL,
	[Organizaciones] [nvarchar](250) NULL,
	[NombresPadre] [varchar](100) NULL,
	[ApellidosPadre] [varchar](100) NULL,
	[EdadPadre] [int] NULL,
	[DomicilioPadre] [varchar](max) NULL,
	[TelefonoPadre] [nvarchar](10) NULL,
	[ProfesionPadre] [varchar](100) NULL,
	[DireccionLaboralPadre] [varchar](max) NULL,
	[NombresMadre] [varchar](100) NULL,
	[ApellidosMadre] [varchar](100) NULL,
	[EdadMadre] [int] NULL,
	[DomicilioMadre] [varchar](max) NULL,
	[TelefonoMadre] [nvarchar](10) NULL,
	[ProfesionMadre] [varchar](100) NULL,
	[DireccionLaboralMadre] [varchar](max) NULL,
	[Hermanos] [bit] NULL,
	[CantidadHermanos] [int] NULL,
	[CantidadHijos] [int] NULL,
	[CantidadDependientes] [int] NULL,
	[NombreConyugue] [varchar](100) NULL,
	[EdadConyugue] [int] NULL,
	[DomicilioConyugue] [varchar](max) NULL,
	[TelefonoConyugue] [nchar](10) NULL,
	[ProfesionConyugue] [varchar](100) NULL,
	[DireccionLaboralConyugue] [varchar](max) NULL,
	[TipoVivienda] [varchar](50) NULL,
	[TotalAmortizacion] [decimal](18, 2) NULL,
	[TotalInquilino] [decimal](18, 2) NULL,
	[TotalPensionista] [decimal](18, 2) NULL,
	[Deudas] [bit] NULL,
	[NombreAcreedor] [varchar](100) NULL,
	[MontoDeuda] [decimal](18, 2) NULL,
	[CuotaMensual] [decimal](18, 2) NULL,
	[Embargado] [bit] NULL,
	[NombreQuienEmbargo] [nvarchar](100) NULL,
	[MotivoEmbargo] [nvarchar](200) NULL,
	[MontoEmbargo] [decimal](18, 2) NULL,
	[ValoresEfectivo] [bit] NULL,
	[MontoEfectivo] [decimal](18, 2) NULL,
	[FamiliaresInstitucion] [bit] NULL,
	[NombreFamiliar] [varchar](100) NULL,
	[Parentesco] [varchar](1) NULL,
	[PuestoFamiliar] [nvarchar](50) NULL,
	[TrabajarCualquierLugar] [bit] NULL,
	[NombreQuienRecomienda] [nvarchar](100) NULL,
	[PuestoQueSolicita] [nvarchar](100) NULL,
	[SueldoPretende] [decimal](18, 2) NULL,
	[FechaInicio] [date] NULL,
	[EnfermedadesHaPadecido] [nvarchar](200) NULL,
	[ConsumeMedicamentos] [bit] NULL,
	[ImpedimentosFisicos] [bit] NULL,
	[ObservacionesAdicionales] [varchar](max) NULL,
	[Cod_colegio] [int] NULL,
	[Cod_Escuela] [int] NULL,
	[CodUser] [int] NULL,
	[CodSeguros] [int] NULL,
	[CelularPadre] [nvarchar](10) NULL,
	[CelularMadre] [nvarchar](10) NULL,
	[cv] [varchar](500) NULL,
	[cvNombre] [varchar](200) NULL,
	[Correo] [varchar](200) NULL,
	[Foto_usuario] [varchar](max) NULL,
	[Empleado] [bit] NULL,
	[Anonima] [bit] NULL,
 CONSTRAINT [PK_Solicitud] PRIMARY KEY CLUSTERED 
(
	[CodSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Sol].[Universidades]    Script Date: 2/5/2020 10:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sol].[Universidades](
	[Cod_univesidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_Universidades] PRIMARY KEY CLUSTERED 
(
	[Cod_univesidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fnGetUser]    Script Date: 2/5/2020 10:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnGetUser] (@usuario NVARCHAR(50))
 RETURNS TABLE  
 AS
 RETURN  
		SELECT *
		FROM    CWCORE2.[CWNET_HON].dbo.Users
		WHERE Users.Login = @usuario

--select * from [CCCOB].[fnGetCreditosCliente] ('096007256')
GO
SET IDENTITY_INSERT [dbo].[auth_group] ON 

INSERT [dbo].[auth_group] ([id], [name]) VALUES (1, N'Administrador')
INSERT [dbo].[auth_group] ([id], [name]) VALUES (2, N'Empleado')
INSERT [dbo].[auth_group] ([id], [name]) VALUES (3, N'Externo')
INSERT [dbo].[auth_group] ([id], [name]) VALUES (4, N'Super')
SET IDENTITY_INSERT [dbo].[auth_group] OFF
SET IDENTITY_INSERT [dbo].[auth_group_permissions] ON 

INSERT [dbo].[auth_group_permissions] ([id], [group_id], [permission_id]) VALUES (3, 1, 1)
INSERT [dbo].[auth_group_permissions] ([id], [group_id], [permission_id]) VALUES (4, 1, 2)
INSERT [dbo].[auth_group_permissions] ([id], [group_id], [permission_id]) VALUES (5, 2, 2)
INSERT [dbo].[auth_group_permissions] ([id], [group_id], [permission_id]) VALUES (1, 4, 1)
INSERT [dbo].[auth_group_permissions] ([id], [group_id], [permission_id]) VALUES (6, 4, 2)
INSERT [dbo].[auth_group_permissions] ([id], [group_id], [permission_id]) VALUES (2, 4, 3)
SET IDENTITY_INSERT [dbo].[auth_group_permissions] OFF
SET IDENTITY_INSERT [dbo].[auth_permission] ON 

INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (1, N'Puede ver todo en administrador', 1, N'ver_admin')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (2, N'Puede ver ofertas internas', 3, N'ver_internas')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (3, N'crear nuevos usuarios admin', 5, N'crear_usuarios')
SET IDENTITY_INSERT [dbo].[auth_permission] OFF
SET IDENTITY_INSERT [dbo].[auth_user] ON 

INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5103, N'pbkdf2_sha256$30000$ScIOYsRTk8T6$fEpBXIcKGByLvlPirACoZh436lObE4JBZeiP+OA9xcA=', CAST(N'2018-07-26T09:23:01.000' AS DateTime), 1, N'900007', N'', N'', N'katherine.hernandez@banrural.com.hn', 1, 1, CAST(N'2018-07-23T09:31:27.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5104, N'pbkdf2_sha256$30000$DeeOWukKKzbA$XGSQX7vxWPfkkmJK57nWu1keZAlWQXIXXv4YGGcSAr4=', CAST(N'2018-08-09T11:36:29.000' AS DateTime), 1, N'302112', N'Cinthia Maragrita', N'Valeriano Diaz', N'cinthia.valeriano@banrural.com.hn', 1, 1, CAST(N'2018-07-23T09:33:55.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5105, N'pbkdf2_sha256$30000$bjyRc0lgYUap$+oSDHenqMYSrCnMTFpXiCQcFxa/5mc4+ZCsyUNW1bBg=', CAST(N'2018-07-25T17:23:34.000' AS DateTime), 1, N'302078', N'Fabiola', N'Caballero Rodriguez', N'fabiola.caballero@banrural.com.hn', 1, 1, CAST(N'2018-07-23T10:00:16.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5106, N'pbkdf2_sha256$30000$Izbo1KijW7WO$kbvnxefaTwUu7jXlH7yHj+cH+h7Kc1xtO6eN0m2P5Gk=', CAST(N'2018-07-30T09:46:40.000' AS DateTime), 1, N'900004', N'Isolina Paola', N'Ardon Gonzales', N'isolina.ardon@banrural.com.hn', 1, 1, CAST(N'2018-07-23T10:00:42.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5107, N'pbkdf2_sha256$30000$ZeDQnh0e9qHO$c1goiPHh9tUpJ7rMCzJ3tXgG5DBiabejrswjoc8exzU=', NULL, 0, N'nunez.r', N'', N'', N'rizna.ramirez@banrural.com.hn', 0, 1, CAST(N'2018-07-23T10:01:10.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5108, N'pbkdf2_sha256$30000$jdF23kx8KHXR$dFrdmT4qJ13XpCZVsJAyBmdQroAC1+Nz2a2rEx744xc=', NULL, 1, N'302121', N'', N'', N'maritza.valerio@banrural.com.hn', 1, 1, CAST(N'2018-07-23T10:01:35.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5109, N'pbkdf2_sha256$30000$0pcwAUxGbNoA$jEiwmUvI4W3QkE3qlEDPrcocO/vHL/aOJit9mKRRqb4=', NULL, 0, N'fabiola.caballerrordriguez@gmail.com', N'Casandra', N'Caballero Rodriguez', N'', 0, 0, CAST(N'2018-07-23T13:42:47.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5110, N'pbkdf2_sha256$30000$H1n5WLchOHW4$oZMA4zxseZLx2un8vpdc0UcAZ7YDQhCm7kCUU+IxG+Q=', NULL, 0, N'fabiola.caballerorodriguez@gmail.com', N'Casandra', N'Caballero Rodriguez|', N'', 0, 0, CAST(N'2018-07-23T13:57:51.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5111, N'pbkdf2_sha256$30000$6GxpdBCeuFa5$oh0B5q49NkRTG72rpCt6HQuH2zGcXdhBQQ9dGUWZfpo=', CAST(N'2018-07-25T17:32:57.000' AS DateTime), 0, N'isoardon45@gmail.com', N'Lulu Alfalfa', N'Ardon Gonzales', N'', 0, 1, CAST(N'2018-07-23T15:33:55.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5112, N'pbkdf2_sha256$30000$upD0E2BrKWU1$TjxktwShPo3EuIQWLZv7Wr6GRmp2Re70evh4JCMOIxs=', CAST(N'2018-08-08T11:08:30.000' AS DateTime), 0, N'cinthia.valeriano@banrural.com.hn', N'Cinthia', N'Diaz', N'', 0, 1, CAST(N'2018-07-23T15:38:30.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5113, N'pbkdf2_sha256$30000$KyCcqEQ0CS8q$DtpK8PkGfODuf2wwhwn6Gp0YaaWcc8FLnoiA1Dp4RJY=', CAST(N'2018-07-25T16:58:28.000' AS DateTime), 0, N'juan.hernandez@bi-dss.com', N'Juan Carlos', N'Hernandez', N'', 0, 1, CAST(N'2018-07-25T16:56:55.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5114, N'pbkdf2_sha256$30000$RiZNnqgfWNwM$1enREhBnWUIZE1tAXbAPO7R3VGJGQwtxNPyZW4jZO48=', CAST(N'2018-08-10T16:21:48.000' AS DateTime), 0, N'cinvale_diaz@hotmail.com', N'Cinthia M', N'Valeriano D', N'', 0, 1, CAST(N'2018-08-09T17:01:16.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5115, N'pbkdf2_sha256$30000$aXlOjUmObcHz$Q9HhD7i5OFhhmFxI+2W3nuW3a6Zf0O95pgt9e8csYc8=', CAST(N'2018-08-21T16:43:45.000' AS DateTime), 0, N'302571', N'Yesy Carolina ', N'Cerrato Cáceres', N'', 0, 1, CAST(N'2018-08-21T16:43:44.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5116, N'pbkdf2_sha256$30000$tnf5gbvJEqMn$nrFQNDAwuSq5rWTt+UOPonC06QCvnl35q11fpWEdP8c=', NULL, 0, N'yesycerrato@gmail.com', N'Yesy Carolina ', N'Cerrato Cáceres', N'', 0, 0, CAST(N'2018-08-21T16:56:39.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5117, N'pbkdf2_sha256$30000$2M4QBFITNreY$SpuwQzIAE3BEVRsr2ltQXkcxK90dWe/gyoRJxr/xD2A=', CAST(N'2018-09-20T11:20:27.000' AS DateTime), 0, N'yesy.cerrato@banrural.com.hn', N'Yesy Carolina ', N'Cerrato Cáceres', N'', 0, 1, CAST(N'2018-08-21T17:04:06.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5118, N'pbkdf2_sha256$30000$912gJBePqjSt$hg4KtsOaFNE21D4TboOk3hWwVibeeBkvekEQlMwZbjs=', CAST(N'2018-12-28T11:22:09.000' AS DateTime), 0, N'ana.gomez@banrural.com.hn', N'Ana', N'Gomez', N'', 0, 1, CAST(N'2018-12-28T11:20:58.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5119, N'pbkdf2_sha256$30000$X2EAmyvuR2Il$iRjO2fctpDS5AmqN5Mhm2Xx0qTkgA8GP353S0zyo8AY=', NULL, 0, N'marlygodoyes@gmail.com', N'Marly ', N'godoy', N'', 0, 1, CAST(N'2018-12-28T17:16:15.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5120, N'pbkdf2_sha256$30000$dDXKGKqHXPnc$fIKnf1SomLBn0TDrRFA+FcQZAy/JRmEpXoGbEw27Q9E=', NULL, 0, N'gjmezas@banural.com.hn', N'javier', N'meza', N'', 0, 0, CAST(N'2019-01-28T16:57:15.000' AS DateTime))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5121, N'pbkdf2_sha256$30000$MvGWbUy8a4ia$RwwlYThcH5ZJBNxTbSR5lAon8lvmPPqPOhO3YXFmCT0=', NULL, 0, N'gjmezas@gmail.com', N'javier', N'meza', N'', 0, 0, CAST(N'2019-01-28T16:58:28.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[auth_user] OFF
SET IDENTITY_INSERT [dbo].[auth_user_groups] ON 

INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2052, 5103, 1)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2053, 5103, 4)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2054, 5104, 1)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2055, 5104, 2)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2056, 5104, 4)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2057, 5105, 1)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2058, 5105, 2)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2059, 5106, 1)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2060, 5106, 2)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2065, 5106, 4)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2061, 5107, 1)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2062, 5107, 2)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2063, 5108, 1)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2064, 5108, 2)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (2066, 5108, 4)
INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (3065, 5115, 2)
SET IDENTITY_INSERT [dbo].[auth_user_groups] OFF
SET IDENTITY_INSERT [dbo].[django_admin_log] ON 

INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3026, CAST(N'2018-07-23T09:32:20.000' AS DateTime), N'5103', N'900007', 2, N'[]', 6, 5103)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3027, CAST(N'2018-07-23T09:34:24.000' AS DateTime), N'5104', N'302112', 2, N'[{"changed": {"fields": ["is_superuser"]}}]', 6, 5103)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3028, CAST(N'2018-07-23T10:04:05.000' AS DateTime), N'5104', N'302112', 2, N'[{"changed": {"fields": ["is_staff"]}}]', 6, 5103)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3029, CAST(N'2018-07-23T10:05:17.000' AS DateTime), N'5104', N'302112', 2, N'[{"changed": {"fields": ["email"]}}]', 6, 5104)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3030, CAST(N'2018-07-23T10:05:32.000' AS DateTime), N'5106', N'900004', 2, N'[{"changed": {"fields": ["is_staff", "is_superuser"]}}]', 6, 5104)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3031, CAST(N'2018-07-23T10:05:45.000' AS DateTime), N'5108', N'302121', 2, N'[{"changed": {"fields": ["is_staff", "is_superuser"]}}]', 6, 5104)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (4028, CAST(N'2018-07-25T17:22:25.000' AS DateTime), N'5105', N'302078', 2, N'[{"changed": {"fields": ["email"]}}]', 6, 5103)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (4029, CAST(N'2018-07-25T17:22:51.000' AS DateTime), N'5106', N'900004', 2, N'[{"changed": {"fields": ["email"]}}]', 6, 5106)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (4030, CAST(N'2018-07-25T17:26:52.000' AS DateTime), N'5105', N'302078', 2, N'[{"changed": {"fields": ["is_staff", "is_superuser"]}}]', 6, 5106)
SET IDENTITY_INSERT [dbo].[django_admin_log] OFF
SET IDENTITY_INSERT [dbo].[django_content_type] ON 

INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (1, N'admin', N'ofertas')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (2, N'auth', N'group')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (6, N'auth', N'user')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (3, N'empleado', N'ofertas')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (5, N'super', N'usuarios')
SET IDENTITY_INSERT [dbo].[django_content_type] OFF
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'040xqh5ochijv1fxulqezyglrin7rh71', N'MDY3YmY2NmZhNjAxMDQwY2Y1OTJkOWVhNTA5MjBkM2Q2ZmQwNjA0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMzN2M2ZTA1MzBjYjBkYjEyYjA4N2ZjNjZmNDk5ZDk0OWQ0ZDcyOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTE3In0=', CAST(N'2018-08-22T15:37:02.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'0oadwdhsmq38yjt5ol0uq6mge4vtzsuk', N'Zjg1ZWFjZDcxMjkyNzI0NzJiYjA2MjE4OTFkM2ZiOWJlNzYwZTA4Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjY5NzBmZjVlZTJkMzBmMzRlZTllYmNiYWY3NTk0NTIwOWQzMjE0OGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDMwIn0=', CAST(N'2017-10-17T22:33:33.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'0r0599wfb20wetoaxlo4t6dmfhiyujfj', N'YzlhYTA4YjVmOTBlZjliZjkyNjZlYWJhYzA3YTM0ZDk4NGVhMjhkMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImUzM2Y5YmRiNTE0NzVhZWQ0M2E5NzViMmFlYWZmM2VhMTM1ZTAxNWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2017-12-13T13:26:27.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'135ciyk6yb8d0r3gmdn0qlrrlhbel3c4', N'YTZkZGI3YjcwNzdiMmUyZTI4YjIyNWUzNDUyOTY3OTgwNzMyNzFiNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjljZWZlYTU5ZjQ3NGU3NDZlMmJmZGJhYWVmYTgzNWI4ZmU2YzdmODUiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTA0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-25T12:07:44.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'1bszxvwmivopqgl8adki4rfy3ue7cpxb', N'Mjc4NDY0ZGFiNjhiMzIwM2FlNzcyZjkxM2Y0MDdiMGU0NjcwNjkwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImZhYmY5NDljNjViYzZhMWQxOWQxNDhlMzM0NjIyZTRlNWVhYmMyYWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDM0In0=', CAST(N'2017-11-15T15:31:26.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'1btww36451j46jrkyihn9mof9pj48pxl', N'M2U3NDkyMTJiNGU2Njk4ZDI0ZTJiZGM2M2E3ZmQ0NTQ4ODJkOTcwYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNmE0ZTM2ZjYyYjQ3YTQ5YzY5YWU3M2UwZGJhMzk3YmZhOTY4NTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T15:37:08.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'1e16l6wnf10jj4ij7qgylzsx51c2dsdn', N'YmFiNmNjYzQ2NGQ0MGVjNmI4OTIxYzM5OTU5YWYwNmUwZjA3YzYwNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NjJjOTk4YzNkMDk4ZjRkMmZlMWI2OWVkMDNjZTQzYWU4ZTcyMzMiLCJ2aXN0byI6MTAzMCwiX2F1dGhfdXNlcl9pZCI6IjIwNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-01-26T18:29:28.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'1ggju9l8ples5i0ccbtflitzyr7aokhi', N'OTdmZTJkYTMzMTJmN2M4YTczY2NmY2Y4MDNjY2FhZDIxMWYzYTliZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4MWU5ZDBjMGNmZWJjNDk1ZWI2M2Q4Yjc1ZjQxMDM4YmIwMTc3N2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T11:32:52.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'1rpl8gmat4o2bl4zkg8z2s9e92pgnd6o', N'YTlkMWE5ZDdjYTdmOWI4MjJlNGNjZjc0YjhjY2E4OTY1ZTZkZDEzZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImMxODI1NDFmODk4YzdjMzE5MmE2OWZkOTdlZTIyNDg2MmIyMDUyOWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-18T17:28:28.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'1vprh2zh5j0rk5o0uempucbhefplyd4a', N'MzdkNjUyOTFlMmVlOTdiN2U3YTdjNjk1NjljNWFkMTdmMzg3NmVlYzp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDMwLyIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ4NjUzY2ViYjllNzM1MzdmMzZkZTU3YzBmZDdiOTVmNTcxNTEzYzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA0In0=', CAST(N'2018-01-29T23:59:58.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'247wd9880y7jmhl8y5tmztslufbd4p7l', N'ZDAzNWRiZDVmNDA2YTY5NzdhMGJlYWRhOTFiMjIzN2M5MDU1MGY4Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4YjUwOTk2YzUzOWM5NDE5Y2VlMGNkN2ZhNDNjMjhjN2NlZTU3NjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-01-31T20:36:51.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'25kxjrixbh7am52c84sykj4o38detx6k', N'ZGRkNGE1NTRkZmIwZmZhOTQ5Nzc1NWVkYTUzODIxNjg2ZDc5YjQ2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImM4ZTc2YTY0ODk1NGNhYTdjYmY2MThiNzU5ZWVjOGEyM2U3ZTdlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTA4In0=', CAST(N'2018-01-29T20:44:32.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'2d5mg5ewrjbush8mfhm82fjdhuuqhaos', N'YTkzNjBhOTFlOTlhYzQ1MjkxMjIxYzE5NGM1MjM2ZDA1MDQ0ZTUyMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwZDkyNDg1NmYwYTA3ZGI1OTU2NjUwZWZiYWYzN2ZmOTIzMjk2YjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTA0In0=', CAST(N'2018-08-08T11:43:13.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'2f9gylgi6dvokfk107z68j3a82aguqt5', N'M2IzMTFhZGZlYmM0NDJjMzliMTQ4YzQ0YTdiMjFmMGIwNjk0MzMyMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjFmYTBlZjY5ZmRjNTc3ODNkODgwMDczYThkZjBhNGZiOWUzZTVhZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDY5In0=', CAST(N'2017-12-26T15:01:08.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'2fo40m2i4plbqnk3wrpaa31hdu8abflp', N'NDk1MjczYTljZWFlMGQ5Y2YzOWU5OGY4M2ZiMjFlNjRmODNmMmY2ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRlYWJjNmY5N2ZhNTI2NzYwODZlMjUzMjYwY2JiM2NiZTM3M2RlNDAiLCJ2aXN0byI6MTAxOSwiX2F1dGhfdXNlcl9pZCI6IjIwNjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-01-06T14:56:59.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'2vngu3ysg8e7pxgnx1znejsewmoymfbv', N'MDVlMDBjYmFhNWY0MTFjMzU3ZTNjYjdkZDc1MTM5MTMwZjZhZTU1Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjBkNThhNzU5MTAzZTdkYmYxZGQzYmU0MDdjOWNmNTk4YTg0YzMzMDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MTAxIn0=', CAST(N'2018-04-16T16:52:53.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'30cos1juzf6v28avzce1gb4msj00iehv', N'N2RlM2Y1ZjRjZDRiYTQ1YzE5MzM5ZmIyMzJhMjNiODk0YWE4ZmQ4Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI3MzcwYTgxY2NhNDlmODEwNTQ0NzRiZDhiY2Y1NGNlYWM4Y2RiM2QiLCJ2aXN0byI6MTAyNiwiX2F1dGhfdXNlcl9pZCI6IjIxMDIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-07-09T08:39:20.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'34gwwyehicr15nl0189vtlw8gnve0d7j', N'MGRkM2IyZTg2ZTRmM2Q5NzU3MTZiZmFjZTRjM2NiZGZiMWYwY2YzNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlZGExYmRkODhkZmZmNDY0ZTA1ZjY1ZTVkOGE3MWJlMGVjNTI0N2QiLCJ2aXN0byI6MSwiX2F1dGhfdXNlcl9pZCI6IjUxMDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-07-24T10:23:34.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'3goyykdxea67b5c6w25lit90qgsmmhf3', N'ZTE1Yzg3OGEyZWZmNmYyMDJkOTU4ZWE2YzVmZjBlMzQ5Y2MxZjBlZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjA1MjA1NTdkN2NjZWNhM2IzNzRmZTQ1YWE3MGE0ZjMxNjYzNGI4ODQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDY3In0=', CAST(N'2018-01-06T17:56:51.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'44tsf8f5b7293k3h1er4navlixdeg4f1', N'NjFjZDg0MDk0MDBkZTA3ZDU3NTg4YTY0Y2EwNTJjOGRhMmQ5ZWNlZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJhNGE3ODM0MGNlYzdhZDBhNjZlOGE5Y2YxNGE5MWRjOTI2NzFmODgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDY3In0=', CAST(N'2017-12-26T15:42:31.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'461bkvo36oj2tdof7rooat2gt9ufiww2', N'MzE3ZTRkNTI5Y2ZkNmY1NmE3ODZlODI0ODVkNmY4ZWY0MDc3NTM1ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyMDM4ZDNjYWQ5NjA4ZWNkMTMzYzc2M2Q5OGM3NDIwNjk3ZGI0ZDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDc3In0=', CAST(N'2017-12-29T01:08:23.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'49iig8sdejd1tzn66pknfnn5udyzp8p9', N'NjI2ZTExOWZmNzVlNTM5YmMwMTBjNmYyOWYwOTkyYmE0MWY4OTNlMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjA0MjRmMjg5NTYwYWE5OWE1MGRjOTc3MGZhZTlkZWFhNDQyYjdhMTciLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjUxMDYifQ==', CAST(N'2018-07-23T16:42:21.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'4ldiv116fmlqbb96qxpbb8z1w6lvo9fy', N'NGIyMDMwMGU3ZmU3YzA3YzIwMzA2ZTk2MGYxNDM0ODUxZWFjMjQwYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImMzYTg5ZWQyMDI3ZmQzMWE3ZWY3MmZmNDVhOWU4OWFmY2ZlODg4OGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-10T10:02:44.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'4wrd0lal0y9nnhzpzfdg8dgppldszlcn', N'NmFjYTllODllZmIwZjk5MmFkMGJkMDc5NmI5ZGQ5ZDQxNzFkZjgwMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGM1MDhjZjk2NjIwMWQ0ZTM3MDAwYzcxNzIwNTEyMGJiNTU3NjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-10T20:24:14.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'51f76d40yfjc2o7dxfq8k7d2pfocx4wr', N'ZWNlMTIxOTM0MGU1NWVjMzIyNjFhYjRhZmJjOWQwMzFlYTEwMWYzZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4Y2NjMDk2Y2E2OGIxYTgyNjIxY2RhNTBmNTg5Y2UzZTA1MGIzNmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTAzIn0=', CAST(N'2018-07-24T11:25:32.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'52xvns6ts8axpiyslcvmhqqesi9kuwwj', N'ZWRkODYwNmIxNzZiMTljYTMwOTg4Y2M2ODcyOGQ2NzhjNTc3MmRlMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAxNmJiODk3ZjVmZjBiZGVhNDQzYTI5YjU5NTQzOGNjZWUzYzIyMjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-02T16:32:27.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'558vocx17hd17m71b8n4fqy1u6bk50t5', N'MWM2MzlhMzg2MmM5MTE3Y2YwZGIzODU2YzdkMDUzMzhlODMwZjUyNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjgwOWRjNTA2ZTJhODBhZGJkMmMxOTNjMmM5YTVmNzU3NDJlYjk5YjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTAzIn0=', CAST(N'2018-07-25T14:12:50.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'5c7lpbtpj6iqdvj32i77wsriik42q035', N'NDYxY2Q3ODAwYmUwYTUwOGU0YTVmMzAzNjZmZDZiNmE4OWZiNDJjZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjcwZjgxMTJjMTQ0MzI1YTJhYzExMTQwNzU2NWQzMjliYWE3OTFiOTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-03T22:01:15.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'5f788liwj75tk6u1ocwn4xkl7qfcs73a', N'NGU0NTYyMTVhMDBlYTQxM2JiNDdlMjdlNzU5YmEzYTllNDZhYTViODp7Il9hdXRoX3VzZXJfaGFzaCI6ImY0ODhmNGMyZjBiMGE1ZjM4NzYxMGJlZGZiNDFlNWE2Yjc3NDEyODQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDk3In0=', CAST(N'2018-01-30T23:26:12.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'5jqasqqyebl5f9feynaqvcj4z3xoyu6u', N'YzU2ODY3MTY2MGUwYzZlZjJiYjRhNGE4MTE0YWI0NzM5YTMyMGZjYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyY2U1NzY0YTdkYWIxNDc0NWYxNTViMzI4M2VkMjhiNWQyMGJlYTIiLCJ2aXN0byI6MTAyNiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMjEwNyJ9', CAST(N'2018-01-29T18:39:41.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'5lulsxczjrjhz1r0pbaqjclsk8wd7zp3', N'ODI2NzZkZTgxZDkwM2MwODFlNWQ0MzljNWEyZmNhNmRiNmI3NjZjZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImUxOGUxZTdhMmYyNDk1MTJlMjEwY2MyOGFhOTZiZmQ3ZmZmZDIxNDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-01-31T22:25:08.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'5ndvo99oxvmuiwo67yt4c9655au9c1gb', N'YjFiMDhkZWFhMGYwNDBmMTVlNTg5M2ZkNGU4NTdjMGI1YTU3NmQwNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzMjQzYTgwOWZkMDQxYmJiNjc1MDMyZTdiZjQxZDdmNGM2MGJjMDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T17:23:27.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'5p87o0yip6dqbdp2uohjee2ym7qlythe', N'YWFiYTMwODRkODBlMTcyYzlmYjdjMzc5ZjI5ZjVjNGYwYjY1MWRkNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJkOTk4OTk4OGY5YWU1Y2JmNDdmNjhmNjAyNzMyODNjMWQ0NzA5NTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2017-12-29T21:55:04.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'5qb7c8y5jh7n10i37i83nyuoro8d813v', N'MGU5MmViYWIyZjE1MmZlNWU2ODI4NzlkMTNmODQ3Yjg2YWM2YjkyMzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk0OWE4OWFjZTBkNWQ4ZDg5NWMxOWY2ZTQxMmJkZTQxM2M2ZjU0YjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTA2In0=', CAST(N'2018-07-23T11:23:36.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'5rjimvvfv1ilyfvq93gwq3hjqpg3gxfu', N'YTEwYWE2MzhhMjY0NjA4M2EwMDc3MjkxYTRkZDYzY2ZlMWU5ZTQ4ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ1MzM5OGYxNTY4YzQ2MzIwYzUwZWVjN2EyNzRhM2NlMjRhOWQzZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDgyIn0=', CAST(N'2018-01-09T17:15:36.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'63yro4v0sp4qmrw1v507496tyg9stm29', N'ZmExOWZiYjQ4OTMyYTcwMzFhYjVhZGQ3N2U5MzhjY2UxNzBiZWUwNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE2OWViMGRkNjZiNDcxNjBhMzEzMTVmZDc0MTZhMzg2ZTIzMTJiNjEiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTA1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-25T17:54:40.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'69vr0eqm8p53z8d07bkefx1hej35siot', N'ZGVjOTJlNWRlYTIwOGVjNTk2ODY0MDYyNWM2NDFjNWFjNGMxNTBhYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI5NmFiNTIwNGZiOTlmYzQzYzY0OTMzYTM3YzM0MmM0N2I5OTdiZWYiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMxMDcifQ==', CAST(N'2018-07-17T14:18:36.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'6h59qdsuecvynfthpz9xhidngfiefi82', N'OGEzZjgxYmE4MmZjYzAwYmI5OTNhNGVhMWI5YThiMWNhMTJhNmE1NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ2ODZmYzQwYWI1NGYzMDY5YWY0NGY3MmM5MDkyZjgzMDBmZTIxYmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDM0In0=', CAST(N'2017-11-16T20:58:01.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'6hanyltdzod8kxdxj288bj0ds9znuvq7', N'MTE2YTZkMWVkNzA0OTU3NDc2ZTJhM2U0MDQ4YjA1MmFiNGM4NTYwZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjY0ODJmYTFhNzE0OGQzYmM3NGI5YWYxYzQyNmY3NjZkNDM3ZmJhM2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T17:38:02.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'6p3s5snd2bwa96arpqo9ucwu8w8idgmy', N'MmU3M2I2NmVkMGI0OThjNzgyMzA0ZTZlZmI3YTJhNGZlM2VkY2YzMDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg4YmRiNmFiZGQ3YjFhZDgyNjMwYTQ5OTBiMmVhZTVjN2QxMjg5NDQiLCJ2aXN0byI6MjA2NiwiX2F1dGhfdXNlcl9pZCI6IjIxMDIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-07-06T17:18:34.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'6v0jzzsxrw7hp5wfqbedno0lxb00ynrf', N'MGNjNjk5MTJlYTZjZDY3NDg5MWZmZDc5MDAxYWFlYzk5N2U2NjBmZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjJiYzZiNmVmMzhiMjNmMTI5ZjUyZWFlMzA0MWUzZWQyN2M2OTIzZmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-11T19:19:42.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'7421asv0oam8932w27lyvg9g1lnrhvwp', N'MDZmYTQ3YmI5MjllMTI2ZTFlMmM1NzkzY2M3MGFkMjg0MzVmMmZlNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI5YjdmYmIyMmI1YmQ2NDA4MzY0ZTZhMGZmNGQxYzhmOGM2ZDM1MWIiLCJ2aXN0byI6MTAzMCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMjA5NyJ9', CAST(N'2018-01-26T17:46:07.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'75husv7q53rjvxqkj9um8anmrdvfupqz', N'MWQxOWVlMDQ2MjlmNzQxZTgxODM1YWFmMjViMGM4NmNkNzk2Yjg3NTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk3Y2ViY2I1NWQyNTgyNWM2ODExZDdkODQ3Y2Y3MTViNzliOGIyZTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-05-21T21:03:26.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'75sz5atizhhlqabk8d84tv4y0hl38d55', N'Njc2NmE3ODU4YmJlN2M1NThkNGJlZjk0NDczZWUxNDU0MDc1ODFiZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ0NTFkZWNjZGI3MjNiM2U3YmFmZTVjMTM3ZWJjZDA0MWExYjllZTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T10:30:55.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'7obabzq588ktbnk46boq3whxbfpsnd4c', N'ODdjYjEyNzBhMmQyNGY1YTMzZGMyOGM5MjllNzM0MTU3YThkNDU2YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4YzJhMjY5NTZkZTZjZDQ1MDE0NDljOGRiMTI5ZjM0NDgwNzIzOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-18T10:39:05.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'7v3j0vhv8tdnr0t78xu0itxhvv252dyi', N'MmQwZmY3Y2MyZWJiN2FlM2YyZTc2ZWI4NDRiZjA5OTA1ODhiYWE5Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzNzZhMWI2ODMwYWFiOGZlZDA0YzJiYjQ5OTgzNTBmMmFhY2JiYzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-02-02T16:41:41.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'83wm3tmgeimct25bchxf75ha3m5d2k28', N'MWE2MTVjMmFiMmUwYjIxNDk5MmMwMjc0YjA0Y2YwM2YwOTBhYzMxODp7Il9hdXRoX3VzZXJfaGFzaCI6ImIzYmI3MGQ1MTJiOWUwOTg0ZGFmNDExMDdiYjVhYzUxNWRhZjVkNDgiLCJ2aXN0byI6MTAzMCwiX2F1dGhfdXNlcl9pZCI6IjIwNTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-01-26T19:21:39.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'8gl6lcbppd6ywiprm6ht6m7om8l3ih5a', N'MjQ5OWU2OTdhZDBlNWM4ZGJjYmE0ZWU5MWJiZWY2MzQwNDQ2OTZkYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjU0NDM4NTk0YTRmODEyMGZhMTNjODNlYTMwYTFlODUxODdmMjQwNTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2017-12-29T13:58:01.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'8id3049dgnxmivzdmqmzitbzrmjs4mrj', N'YzVmZTlhZTQ4YmU2N2M2YTc3YTJkOGI0MjhlNDU5YzZkOGE3NDc1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjljZWUzOWI3M2Y0MmRmMjgxN2RjYzliMTk3ZDIyNDYzMmI4YjUwZTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDQ4In0=', CAST(N'2018-01-29T18:20:28.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'8ur2dderdw802sxwzfw0yv9zldbxhggd', N'NTJlOWMwMzI1MTM4NTU5MjUyYzI4MzI2MmUwOWRhZjVhODk1ODc3OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM1MTZjNDUwODhiMzdkMTM4OGJkODcyNTdiYWZjZTlkODRmMmJkMmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-09T11:44:03.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'8vrk7u6l42enc87bnro3thpxllye55sv', N'Zjg0OTc1MGM4OGFiZmJlYzU1NmUyZDdiNzM5YmIyOGIzYWIxZDM0Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwYmU5NGY1NWM2YzBkMTFmYjI4MjA4NWExNjM4ZmE2YjQ2OThlYTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-03T18:34:36.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'9nbop5iapao5inikx56j5p4g21m1q21d', N'ODNmNzBhYTU2YWI4NzYzOWI0NjMwMDA3ODg0ZDhlZTNmYzEwNjU2Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmYTlkYjYxOTMyMmUyNDFiOGFmOTY4OTJkYTVjNDU5MzIxMTIzMWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDM0In0=', CAST(N'2017-10-31T22:00:15.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'9xg53wm6sqcghc2ib1k3gahasfpj12k9', N'OWVmOTc3NjFhMDNjYWM3ZWYyY2UyMWVhOTg5NWZlMTA4M2IwY2U1Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNlNzJhOGJlNWZlMzk5YmZlZmZlNDAzMGMwMjdhYTI4YmZjMDQ2NDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-12T23:01:33.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ajspc337zgscajvgm1giyelb4zrtaz5x', N'OWYzNTJhZmI4N2MyM2MzZTBhODhiMzRiOTcxYzhmODkwNjY5ZDE1Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImY1NWQ0YmQzZmY2MmU2YzE1YjkxYWJmZjZkYTMwYjE1ODQ4NDNmZWQiLCJ2aXN0byI6MSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiNTEwMyJ9', CAST(N'2018-07-26T09:53:09.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ao6ljc4xvlz81t5aqc9350bkhai1nrwo', N'YzYyYzQ2YWE0ZDM3NmQ1ZjBmMTVkNmJjYmI1MGRlYmRjNGZmNDc1Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjBmOWVhMGM0MGI1MjhhMjcyYjQ5YmY2ZDczNTY0N2FlNGQzMGZiNmIiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTA0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-24T12:52:40.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'atictvbzn17veflrtefw0wa77s14itsq', N'NjAxNDRlOTQ5ZDE0ZmY1OWZkM2FkNmE0YzFjOTRlZTU3ZGFiZGI1ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2Y2U1N2E0MzU4Yzk2MDBiN2YxNTdhMzFiZTE5OTU0NGVkNjkyZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T16:17:29.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ayya6swm4r93a5bqjofy7w3st2vb7lg5', N'MGU5ODAxZjgwM2NkYWEwMjY3ZmJhN2NmOWYzNjUwMTI3ZjVhNjNhZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjkwNDgwZmZhNjQwYzk3OTNhYWFjNzI5NDRjYjEzNjljNWYzMWM2NDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-03T16:17:45.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'b51y7mv5bsnc0pnijmrwviaxhlpekbzo', N'YjQwYTJiZWNhMTQ1ZjcwNGY2MzQ0NjQzMjlhMjkyMDE1YjBhY2Y0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU1MmQ4YTJiYWVjZjg3M2I5OTJhYWYyODhhOThlNjJmZjI4ODFhOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-04T20:42:57.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'bedzzrw2t94i40m0f2oa1kr8569fn0yd', N'N2E3YjUyYWNkN2I1MWZlM2M3ODY0ZTEwZTAyODBlODgwY2E5ZWIzNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImE3MTRjN2VjZGJjYzM2NjQzNzk5NTk1ODI1YTRmMDY4YWE5YTJjZjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-16T10:26:52.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'bn9j5oxfrmzrg2fdt75grmr7icvlne1q', N'NzdjZWJiNzk0YjY3MTBlODk0OWFjMjI3Yjc2ZGEzNDhiNmNhNmE0YTp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDMwLyIsIl9hdXRoX3VzZXJfaGFzaCI6ImM4ZGRlN2MzMDUyMGZiNmQ5N2U2MTU4ZjQ0YTgwYWQ4N2M5OGUwNGYiLCJfYXV0aF91c2VyX2lkIjoiMjEwNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', CAST(N'2018-02-06T18:11:33.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'bzkackx6ne0sgxv9yhlenx94u0j9c8kt', N'MTUwNjEwMTM2MmM5YzQxNjU0YzMzZTQ5ZjBhYzhiYTEwYjE0MzlmYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdiNTBhMDdkOTc3YzY2MzM0ZGM3MGZlZDk1YjE4N2QwZWNjZWQ3NjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDk3In0=', CAST(N'2018-03-05T23:36:25.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'chryoyzzkfh361ynjvzgrm6ik119poy2', N'ZjUxMTE4MGQ0MGQ3MWUzNmZmNzY3M2Q3Y2Q1ZGU2ZmE1MzZhYTg2Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImM5NmMwNTc2NDkwZjI1YWY2OWI5OGFlYjM0ZWIyNmUxZTYyYzcxZTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-01-31T21:51:06.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'cvdu36szvhw92xs44u1udxbmvvre8ixa', N'ZDU1YmM5YzVkYTc0NTM0ODQ5YTZhMWYyNjhhZTMxNzdjNTVhMzlkYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjFlMGUxNmI3Y2UyZDkzNTUzNTcyM2UzYWE3YjMzYWFhY2U4NTFiNDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-11T15:34:34.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'dn9gkujs78r4250f51x409w1lhvxfgi8', N'YjM1NDYwZTlhOTIyNzFkZDM2YTgxMGQ4NWE0MzljODQzZGIyZDMxZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZjMjg3MmM3YWQxM2NiMWNjMzVjOTBkNWFmNDBlZjFhYTNhN2VjZTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-01-30T22:50:21.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'e12uh8veuqvlcqbgumxzxff1uyoxsxhh', N'MTEyMjM5NjYzZmRhYWRlMmI3NDc5YTFjZGNhOTQ1MDcwMGQ1OGIyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjZlZjFmZGUwYjFkY2Y5NjE4ZDg3NmFmYzE2YjhiY2EwZDI2YmU3ZDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-11T11:29:41.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'e7kvuzcccxxp4clcd1gvw4av9tyoy9a7', N'NWQ4YmYxZGU2ODJiYTVhYjQ0YzM5YzliMDI3Y2U4YWY4NmNjODA5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRlOTBiMjkyMmRmYWZhNzU1ZmQ2NWM0ZjA2YWQ4MmUxOGIwODNlZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-18T09:56:55.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'e7uemxmgp7lf12ezl8bhf12687r3j3x9', N'MDY3YmY2NmZhNjAxMDQwY2Y1OTJkOWVhNTA5MjBkM2Q2ZmQwNjA0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMzN2M2ZTA1MzBjYjBkYjEyYjA4N2ZjNjZmNDk5ZDk0OWQ0ZDcyOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTE3In0=', CAST(N'2018-08-22T12:59:39.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'eb37msvsipgngi6zeh5153aryr28l9ws', N'N2Y0MzZjOGQ5NGU0NjBjZTQzYjNhMWQyZWM5NDE1YjY2Mjc4YmE2YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFiMmJhMzFlZjQ1YTBkNmQyYWM3Mzc1YzdjNGNiYWEyZDVkZWRkMmEiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiIyMDk2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-20T10:42:57.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'echpl2ymex12rrb0b3prafamm3h0v8e5', N'ZjFiYmFhODNiNmM2ZTBhYWEwZjFlMDI0ZDg1NTRhYWFkMWZhNjJjOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmNTNjY2MzNzc3NDk2MTAzZDg1NTY3ZDNlYTNhNjNmNzgxNzMzOTIiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTA1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-23T16:20:03.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'eecbefm6apfvzkcpdqpucms8uw1uqzia', N'MzIyOTkzYzI4M2M1NDZlM2E0ZDgwYjZiNjE0YTYzODQ3MTkyZGYyMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQxNjk5NWEwMDkwYjQ0ZDkwMzM4NjJjMmE5MmJlMmZlMDZjNDQwNDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-09T10:39:25.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ek1ggm20tg8r65dl2yabnfb48ybohdsu', N'YTgwMWQwOWRkM2RhMTM5YWM1NWYzODlmZDAxNGI0MmY3MzhhMjAwZjp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS80LyJ9', CAST(N'2017-11-15T14:44:44.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'eookebnlange48g19pa4fpliag35vsmw', N'NWExYzRmMWMwYzVmN2EwMzNhZTEwMmVmODM1MmNmNTFmYjQ4ZTg3Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjRiNTY3ZmJlOWJiOGRlMmNhYzBkYjc2NjI1ZDVlNTYwNDlhNTU0N2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-11T21:27:19.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'esjkqumcgd7fc7lfakb35mt7exc81ge2', N'YTYzZDkzZGY2ZmRlZTA3NDI2MThjODNmYWFlZjRiZjM5YmYyNzY5MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3ZjhkZjE5YWFiNjRkMzRkMjNhNTg5Mjk5NjhiYWNiM2NlMzdhMzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-01T17:34:41.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ey1ikfx4pbn2idihl4vh3hudz4vtinae', N'ZjQwMjUzMzA0YTlmZTBkYTM0MDM5OGUyODJhMGM2MGQ5ZjYzZWNlYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyMWQ0YmM1YzBlNDk5MGM3M2I0ZTJmNjY2YzY3OWUzNWUwMWNmNGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTEyIn0=', CAST(N'2018-08-08T10:47:16.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ezd8z2wcce6wzb37djalq5r6aty2689b', N'NmZhYmI1OTA4MDFhZDMyZDBiOTliM2I2ZmExNjJmNjI2YjQxOTExOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzYWQ0OWRhZmNjYjM2NDFhYWFlZWYyMTJhYjk2MDk2ODBjMTE3Y2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDM4In0=', CAST(N'2017-10-31T15:04:08.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'fg2yikmpwriafen2are5whugk4prw0s7', N'Y2YzNjc1NDQ0OGQ0OTc3OTlhN2RmMDkwYmViNjk2ZmVkNzA4MzNlZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjA3NmJkNDdmZDk3N2Y5NTJlYWQzMmNhMzAwMGIxZTdkMmMyNTc0YmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-03T17:35:18.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'fkasyblsgzu2i3o0tq0merg45n421szr', N'NGIxMGQyZWFjNDVhNDA0YzgxYmRhMTJkMDUxMDM4NmI2Y2ZjOTM2YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjczMjJkNmVhOGFjZTVkNzRlMmJhZDRmNGJkMGVmMTUwYjg0NTg3YmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-05T21:39:34.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'foq4k0w92nsheytm1afrgtmkl7v4bf04', N'ZWVkMzE5YWQ0NTQwYzJlNTE0YTBjZmNmYjJhYjk0YjQ5NTViZGNmYzp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDE3LyIsIl9hdXRoX3VzZXJfaGFzaCI6IjBhNTAxMzc1NjJhMmU4OTViZTM5NDBkZTliMTA5ZTNlYzVkYTcxYjgiLCJfYXV0aF91c2VyX2lkIjoiMjA2NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', CAST(N'2017-12-28T15:56:23.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'frufy369854fsasvz83stnbbba3e5xbv', N'ODU0MzYxMTVlOTg1OWUxZGRlYmJlYjcyMzA1MzQ3ZmFiNTlhMzIyYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVjZGRkZjE1NmJhNTcyYzA1NmI0MGVlY2M1M2E0N2JkYzViMWU5NDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T17:29:22.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'fsf5tfi2mf5wdrzngkrhy757urct84ni', N'ZWY1MWI5NDc3YjdlMjU3ZTRiZWRkMDg0OWZjYzM0Zjk2OTczN2M1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImJmM2RjZmZkZTcwNjlhNmViODM2Yzk3Y2UwMWRkNzAwZWNhNGFkZTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2017-12-29T21:04:26.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'fz7ws1fu2go3i4fwacr9zqvsw6oytk23', N'YWJiMTZjZDlhM2MxNTI1OTI2NTkxNmMzMjkyZmY0YmEwZDFmNGUxMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjU3YjhjYjM0ZTc3YzZkNGVhMDBjOWE2YWM2YmRjNTYxY2JmYjUyY2EiLCJ2aXN0byI6MTAzMCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMjA1NCJ9', CAST(N'2018-01-26T18:44:08.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'g4pqijfpsp7qb00pdssk5d5jh8ya1ya5', N'MDY3YmY2NmZhNjAxMDQwY2Y1OTJkOWVhNTA5MjBkM2Q2ZmQwNjA0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMzN2M2ZTA1MzBjYjBkYjEyYjA4N2ZjNjZmNDk5ZDk0OWQ0ZDcyOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTE3In0=', CAST(N'2018-08-22T16:23:49.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'g5hqzdztlgj2y7im11nz2qxj55i40zyw', N'N2E0MjFlOTU0OTIyYjQ1YTVlZmUzYzA1MmRiYmM3MTc2OTlhZWM2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZmE1MDI4ZjA5MzQzZjIyMmQzNzIxOWM2MzBmNDA0ZjdjYTZkYjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-01-26T20:26:05.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'gam2gzh0zkcx85vgaha956hqmppy09bg', N'NzdkNGYxOGQxY2FmYmQ3YTllM2E2ZDIwOTM1ODMzY2Q2MWI2Yjc0NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgzMzRmMzcyYmQ2OGFmODNkZTY5YzM4YmNhMjBlNzk0ZGU5Njg3MjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-02-01T17:15:15.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'gdvpwwot0g7awtiawfmip9w7ku1c8x0z', N'M2VlOTNmNTAzY2E5NmI1NDRlOTcwYjc5MjkxNTc3MjYxYTNmM2EwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImZkNzZlZWI0MjM4MzhhM2E2YjkyNTFiNGU2Yjg2YWM3YjM2NDkwZDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-10T15:37:10.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'gfyzeycy9gxhl247v55s7b6a30c3u9vp', N'ZTU2OThmZWVkMGU1MDI2NmU4YTI2MTNmNTgwYWVlMTYyZTUyODM5Yzp7Il9hdXRoX3VzZXJfaGFzaCI6ImI5Yzk2YWU2NDdiZDg5Y2U5Y2E1NGI4ODE0NGZjMDJmZGJiMDNmMWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-18T09:50:16.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ghzonfzqig73kqsoonhdta4l3dcolkp0', N'MDY3YmY2NmZhNjAxMDQwY2Y1OTJkOWVhNTA5MjBkM2Q2ZmQwNjA0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMzN2M2ZTA1MzBjYjBkYjEyYjA4N2ZjNjZmNDk5ZDk0OWQ0ZDcyOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTE3In0=', CAST(N'2018-08-22T17:08:55.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'gl1gt8xeuup8yiewoh6otrcbzuc6qech', N'YTYxMjk3ZTY4NGRmZjU4ODUyMjMxMGZiZGQzYmNlNTFmNjM3ZDFhMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiZGJjNDZiNGQ0NjQxMzE3OWNiODU2NzM4ZjI3ZWQ0ZGM5ZTQwMTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-10T16:18:56.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'gr977qc7ygun1qhmz1zq88xywdbgbubw', N'MDExMzEzNjgyOWMwNTI2MGQ0ZmRiZjU1MjhiMTJmNjkwNWFiZWFjMDp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS84LyIsIl9hdXRoX3VzZXJfaGFzaCI6IjhiODllYmUyZGQyZDM3YmNhZjAzNDA4NzNmOWJlYWFmNDE5N2M2MjkiLCJfYXV0aF91c2VyX2lkIjoiMTAzNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', CAST(N'2017-11-10T22:39:46.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'gyb4kvdchvgroa68esdwa59zsiqy1dke', N'NTg1Zjg1YWQzYjkzNmUyOWViOTliYmNlYTFmMzZkNjNhZDZiZGVmOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU0N2Q2YmFhNWY5OGY1Y2NiZWQ2Zjg5ZDYyMGNiODRkODc5ZDA1M2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU2In0=', CAST(N'2017-12-29T03:18:00.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'haan0izgvu7vuy2j8bvjpkabjlxs3f6j', N'MjUzZWUyMDlhOTQ2Y2I2YTE0ODhjMTVlNDRlNzljNzIyZDJmNzgxMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxYTA2YTEzOTU3NTJlNzdjOWFkNGZjNDhjNjcyOGM1MWZmZjRjM2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDY2In0=', CAST(N'2017-12-29T21:57:11.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'hft3btxe5nnedv87jlkhi4kyj7czz51j', N'OTE5MDAyNjgyYjA2OWQ0ZTBhNDMxYmY5MWYwYmZmZWYyNWNhMDc4NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRhMDc1YTJiNDllODYzNmE5YTQzOWYwZDlkZjE2ZTZjZjEyM2U3MzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-03T16:20:25.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'hid2bp7rji8kalzvxq0xhiangfphdo08', N'ZWU0ODU5NTIxMDE0M2VmNTdmNDcwZWViYzg1NjVjOWEyNTc2ZjMzNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5NGNiNjkzZmNiZTg5YjA5Y2YyNzBkNWYxNTViOWE1Yjg5NTExOWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2017-12-29T17:08:23.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'hkwgkdqdh33q6o3qcpfjshn9ez7lhoa4', N'ODQ3M2UxM2M5NzUwYmU5Y2Y1ZThlNGU1NTNmMWRlOGM3YTE4NTNmZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiZGM1MWVkYTkyZWZmZDc1MmYyODQ5NzcwOWIxZWExMTc4YWE5MWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-01-30T15:11:48.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'hsfezl1vnhg2nxerp3gkjhbtm6ef8blv', N'OWU5ZDA2NTI4YWI2ODkyNWM2MzVlOTAyZjY2YjQ1ZmI2YWFkNGZkNzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2OTUyYjNkNjdmZWRkZWYxZGVhYTYwYmU0ZWE5NjkzZGUwNDViY2UiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTAzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-25T17:13:43.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'hue4wugkdrc6j9mlpphrn8lkz68kqj16', N'YzVmZTlhZTQ4YmU2N2M2YTc3YTJkOGI0MjhlNDU5YzZkOGE3NDc1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjljZWUzOWI3M2Y0MmRmMjgxN2RjYzliMTk3ZDIyNDYzMmI4YjUwZTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDQ4In0=', CAST(N'2017-12-25T16:18:25.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'i0apdodxvp12hiiuttouno7fz0dn5jlm', N'Y2IxODBjMWU1NTYxYWU5ZDcwYjcxODdhYzQzNjc4MjZmNmFkZjYwMDp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDI2LyIsIl9hdXRoX3VzZXJfaGFzaCI6IjEzODhiNGViNGI4YTc2N2Y1NmFiYTAxMjM0OTUyN2QwZjVhMzE4YWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA1In0=', CAST(N'2018-01-31T15:07:00.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'i3cy6ciaino73sy0x9jp20htbky3y6j5', N'ODRlYTMxM2YxZDhlOGE3Y2Y4Yzc5NDk0ZmJkZDgxY2JhODg5MmNjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2ZDU1NzU4M2QzYjg0MGUwZDViYjVkM2JhN2QwZTNmYTlkMjY5NmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T13:22:58.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'i5t86vwksvhzv4szwk9q5tgxzit0d2sk', N'Y2I4NTNmYTNiZGY0ZDUxMmRjZGFmYzIzMWFhNjRkMzYwM2UzOWIzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiNDdlNGUxNzM2ZTQxN2IzNWY1NDc5MDgyMTM1ZmQ3MDcyZTRjYTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-12T10:27:10.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'icygdavzd9iir3rhmvoyjmw703pzlybv', N'ZGM4NGY3MTI0MGFlN2RiNTRiNDQ1M2Y0OTgwNGE1YjllNTJiMTE1Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNmNWIwOGE1YzQxMmQxMmQ3MGM4MGVlZDE5OThlYzlkZDUyMTM0MzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-11T08:54:58.000' AS DateTime))
GO
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'if2pzb8ah3dgfs6psqjxexoojouww9q9', N'YjA4YzVhYTUwMGRmMGZkMzRkODNjYTI2Y2I3MDYxMjhmN2I0MTBhZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY0ZDNhZDkyYTgxMzIzMzJmMTUwM2NiOWQxZGM4NTdkNGQ1ODkxZjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MTAwIn0=', CAST(N'2018-02-05T21:51:36.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ifxqri3ksupovjeis5wxcoz1vl3n58a6', N'MGMwMWNhZGY1NGQ2MjMyZmY0ODk2ZGJiZTc1NmJmODFmZDVlYTcyNDp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDEzLyJ9', CAST(N'2018-01-02T22:44:47.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ilpr8b3o4p90ac68ouylbtqw3hr06r6m', N'MGFkMTMwYTQzN2M1ODE2ZTAyMmU5YWFmOGE2ZDEyMDdkODMwZmJlNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwOTBkNzhjZDFiYzZmMDc5YzNlNTIzNWIwNmU1MmE0MWI5NjFhZmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDM1In0=', CAST(N'2017-10-27T21:23:16.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'imqzq5belv7pve1ltxokh93bse0fy8rx', N'YzVmZTlhZTQ4YmU2N2M2YTc3YTJkOGI0MjhlNDU5YzZkOGE3NDc1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjljZWUzOWI3M2Y0MmRmMjgxN2RjYzliMTk3ZDIyNDYzMmI4YjUwZTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDQ4In0=', CAST(N'2018-02-02T15:41:12.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'iu9qp7a32wbgpyhvoxjci5ar3kj9u3iz', N'MWQ1YTNkNDM3YzJiNGRmZjZjNjMyZjIwZGFhMTY2MDJjZDA2NjNiNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImIxMGRmZDlmNTZlY2FlNmViYmZjOGVhZWQ3ZGViNjM2N2U3MTUzODUiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjUxMDQifQ==', CAST(N'2018-08-08T09:50:20.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ix4nb0uz7hlln9sjnhqce29wybv0lfg2', N'MWU3YTIwMGYzNzkwNWM2ZDQ2M2IzNmRhYzZmNmI2M2VlMDllNzVlZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNmNmZiOWFlNGJjYjM4MzdiMWE2ODNmMTU2Y2ViYzQwZDdmMmIwYjIiLCJ2aXN0byI6MTAzMCwiX2F1dGhfdXNlcl9pZCI6IjIwOTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-01-26T17:50:04.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'j286fvlq65x4tlnq9ry1fr281oxdtk11', N'ODYwMDg2ODZlNjZlZDczODcyMGYzOGY5NWI5N2ZiYWU3ZWVlMTUyMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5YWRkMTRjNWNiZDBmY2M4MTUwNTE3ODBmZTg3MTNkMDJhZWExYTgiLCJ2aXN0byI6MTAzMCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMjA5NiJ9', CAST(N'2018-01-26T18:25:31.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'j79zctbx28ut9ayk5cb36h0csf68xaap', N'OGQ4NjY4ZWU5YTQyZTMzZTlmMGE0MDJjYzgzYjU4YzBhNTlmMGJkYjp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDAzLyIsIl9hdXRoX3VzZXJfaGFzaCI6IjBkMDQ4ZDllMjM2YmExYjZmZDVhNjYyOTAxMzEyMDcyMDRlODYyZjYiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTA0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-24T11:03:53.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'jc4ml4oye5k1houyei0yj1dhaozncljy', N'NjU0MTFkYTUyY2E4NTkyMjJmNzZmYmUzMjU0YTMwOGE3NTA3MzE4Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjExYzE4MmQ2NTExOWZiYTY1NmNkNDk2M2Q5ODMxYzNhMDFhNWJkNTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-18T17:01:24.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'jl3mba9s63ce01z14je8oi83285nt3hn', N'Zjk1YWY1YTk5YmVkOWZmYTQ5MzgzZjhlZTNlZGFiNzZiZjJlNzQzNjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg4ZTk0OWQ2Y2FlYTVlZmRkYTlmMDM4NzFmMWI4YzIxZWM5NzdkNTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDY3In0=', CAST(N'2018-01-05T22:05:27.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'k0azj9bwhctywrmu3i21yhpae245ytaq', N'MDc0MGZhMjJlNjNlOTgxYjAzMTVhNDg5MmMxODc4YmY4NzZmMjkxYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImZhNGZhYzA0YjIwM2YwNGViMzJiOGUwODVhYjkzYzQ1ZTRhZmNmMWYiLCJ2aXN0byI6MTAzMCwiX2F1dGhfdXNlcl9pZCI6IjIwNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-01-31T14:26:42.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'k0zxtdluehdwnlhlrcge5q1n81ujvckz', N'ZjM4YWYwNTFlNzAxMzkzNzIxZGQwOGNiOWIzNzMwMzVlNzk2Mzk1Njp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDE5LyJ9', CAST(N'2018-01-01T19:35:29.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'k5yfa2vqdm8sbdbuwgzbdac584vtolut', N'NDdlNzQ1MmJkMjg3YTZlMjg1NDgzN2U1MjE3NjcxY2E0NzllMGNiMDp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDE5LyIsIl9hdXRoX3VzZXJfaGFzaCI6IjMyMDJiNzcyYzMzZjgwZmE2ZDM0NDhiY2I0Yjk1ZGUyMjQwNmRhZjAiLCJfYXV0aF91c2VyX2lkIjoiMjA3NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', CAST(N'2018-01-02T22:49:53.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'kbeudp712lt896xvfebky63m9qo3wk6a', N'Yjc5MzllMDBkMjYxZThmNmM4MmYwZTdlNWI3ZTY3YjUyODU1NGMzYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyYzU3MDlhMWEzMDczNWQzMzlkMDIyMWNkNTRkMzQ0M2EyZWEzNDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-14T10:41:16.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'kcswll5hjrjpeif9lx42c2o4ir1x9n5h', N'ZTZmN2NjZDk5NzkzNjBiNWRlMDZiMTg0MmMyZDY2MjA5MTliMzBhNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjM2N2Y2MzEzZjZlMGI4ODZlYTMyZDA4MjZhY2I4Mjk3NmRkMzIwZjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDk3In0=', CAST(N'2018-02-05T17:06:05.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'kn6d0j378zls1p2158yghnbo63nror43', N'YmU2MjkwZjVmYWJhZjAyZWY1NzFjMGVlYzE3NmQ2YzJjNjRkMGFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc5YWI5ODBiOTA3YWFlMzUyMDllNzc4ZDY2ZmExZDcxZTNiYjE2MDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTE0In0=', CAST(N'2018-08-09T18:04:21.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'kpno1aaqvebdy2oz4js8vi9qwuagn6de', N'ZmJmODNjZWQ4Njg4YWYxMjkyMTVhYTUxMTMyZjg5Yjk5NDliMDExYTp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDE5LyIsIl9hdXRoX3VzZXJfaGFzaCI6ImVlNTRhMjIwNmM1YzcyNDQ5NmVjODdkMGUyMjgxY2M0ODIxNDdiNjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDkyIn0=', CAST(N'2018-01-19T16:36:55.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'kvf2b6slwytl0y5af45sr7fo1ohtve45', N'Y2QzNjg2ZmQwYzZiZTY3YzNmYjQxNjg0MWRhMjUxYTZkNzA2MDRiZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTlhMThkZjI5OTljNzBhYzFhNWQ2ZmU4MjZmNzYxZjQxODViZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-01-31T21:59:14.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'kyhxs1izixysun4i7t6itq92nbm73a5y', N'NGI3ZjVmOGY0Y2RmZGE4ZjQzNjUxYzNiMGMxNTBlMTI2MTBhZjVhOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUzZTJmMWYwZGFjOWE4YTM5YzYwOWYxNGM5MzIyOTVmYWMwZTZiMTgiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjUxMDMifQ==', CAST(N'2018-07-24T16:29:14.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'l8nod6ss5ia76hvym6wa4ht4jjjkn96f', N'NWQ4YjI2OWRhMDBiMGEwNTc5ZTRlNmIzYjJiNmNhNGQ0Y2U2YjU0ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3OGRhYmZlZDJhMjBkMjE2M2FlYTc2ZTQxOTEyNGU4Y2E4ODllYTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-11T10:22:46.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'lcjh470wrcq14cilz4roxuvnrq6uejgg', N'NjY4ZjdkMzMzZjk4MWYxYmQyNTIxOWM1MDlhMjZlNzg5ZDAwNDg2ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxY2M0OGUxMjVmZGQ3Mzk1NjQzNzEzNzJiNjY2YjNmYjZlNDc1YTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-19T17:38:38.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'lg1tlozg48t0ikochbanm2usi590wtzy', N'NTAwZjhjMTQ4MmZkNDg1NWY1MmU4ODQxZjYwNTlhNjU0NGZkZGMyNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjI1MzJjNjc5YWM3Y2U3NjJmZDQyOThlZmRiYzhkOTUyMjRmZTJhNDAiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-18T10:49:09.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'lkezlw8662zbobxxm3t9mfrm4rm0bizg', N'ZGFhYTNiZmZkMjdhYWM3OWI1MmI4Mzk2ODgxNzliY2ZlZTg5ZGYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyZjg4NjQzYTU3OTMxN2U4ZjEwNzFkNWM3N2UzMjYwZjA5ZTViNzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-02-06T18:05:57.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'lqnp6hh8b3h6likk2zu7vie08yt5hyma', N'NDgwYzdiZDE2NTAzNWFjZmRhNjZlZTJjZTMwMzk1NGYzY2Q0MTJkZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNlZWU0NDY0YWViOTFiZTU1N2NjMDQ1NzY5OTc2Nzk2MTRkMjI1NDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2017-12-29T20:34:24.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'lvl404z8nk98o3ejyzpsrin3tyicu4un', N'YzVmZTlhZTQ4YmU2N2M2YTc3YTJkOGI0MjhlNDU5YzZkOGE3NDc1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjljZWUzOWI3M2Y0MmRmMjgxN2RjYzliMTk3ZDIyNDYzMmI4YjUwZTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDQ4In0=', CAST(N'2017-12-04T21:56:53.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'm7s0om0d39w1cgm1qwm9pyiv7aqvap41', N'ZGY3OGIzMmJjZDA5MjFlMDczMGZiZmY2ZGRiYTgxMDBlMGI0ZDU4Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0OTEyOTJlZjNjNGFmNjdlYWQxOTUzZTYwYjM3NWFiM2QyY2UyYjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDY3In0=', CAST(N'2017-12-28T20:50:11.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'mavfj8sy8iyh8n8wltlz28ornikxdvyf', N'MThiNDlhNmQzN2Q1YzZjM2M4NTg5ZmUyYzUzODFmYjdkOTY3NmQxZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjZjOTlmMTY4NjdmYmYyZWMwOTdkZGM1YWZmOTlhNjA0MzgxNGJmMjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-05T16:41:56.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'mcn68xl0tyypiek6u4r252lqt67mpwi2', N'ZTlhMzg5OTFmNWMxZjI5ZDk0MWIxNjkyZTg5YTQ1MDEyMDAwN2Q4Yzp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDMwLyIsIl9hdXRoX3VzZXJfaGFzaCI6IjQ1OGYzZjY0ZTQ4NjAwNTQ0MmJjM2I2ODZlNzRhYzdiYzk3NTA3NTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAzIn0=', CAST(N'2018-01-26T15:23:55.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'mkouvv4fz21qxrqwku66xapzpk7ngq6b', N'ZjExZDNhNWFlNzJmYzUxNGYzNzIzZDQ2YzgyZjQwY2Q2MjE5MTAxYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ4MDQ1YjA1NTg1NmNiNTVjNmM1NDZlNGM1NzUwNTc3YjFmZmI3ZTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-05T15:46:44.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ml62zj3u76rdvky0jpdmq8zlzbtb2d1v', N'YmFmYWFmZTUyYWE1ZGQ4MWM3OGIzMTdmOThmNDAyMjhkYWNjMmZiMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhjZWRiMmNjMjBhZmViNDg5NjJlYWRmOWZkMjVjNzNmZjY3MWYyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTAzIn0=', CAST(N'2018-07-24T11:58:24.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'mlfr3q4qw016kw3l3yp8h531wxxznsgs', N'ZmJiMDQ3ZmVjNDI1Yzg3YjAxYjcxNzQ5YTc1OThmZmViZmY4YWY1ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjIzYTc3ZTc1MjFhNDJlYjdhMjAyMTA1MTlkMmYzMmRiYzY0NDRmNTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTE3In0=', CAST(N'2018-09-20T11:50:27.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'mn9rewucxpr8uamd3k5lro72y1ysf2b7', N'N2NmOTZkNDliMWI4NmI3NzNlNWJlMzE3NzJjNjM5MmU4YzUxMWJhZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImVjMDMzODlhNjM0MjFjNWRlMjQ2ZmRlNWE2YzZlYTdjMzRlMTU3NmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-07T10:59:37.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'mt3uoq8480l5tp3nejcgdnr64pz9etzt', N'YzQyY2U2NGU1ZTM3NDZlMjYzM2JhZGUxOGY1NWQ0NWRmZDUwMzZmMTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg4ZDYwMjJjYjU3NTczMjcyNmNlMGIxMjRiNjJhNTc5OTA4MmY4YTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDM0In0=', CAST(N'2017-10-27T21:55:56.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'mw86k0kth2fdq45sh9z88qe3e7ii3ieq', N'YmQyYzZjZDNiYzVmOGY5YWQ4MzQ1ZWRkY2JmNTA0ZWJkNDQ4N2YxZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImMzOTgyMDlmZWI4MzBiN2FlM2JkYzE0NDlkNTMyMGY3NTg0YWQ2NWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTA2In0=', CAST(N'2018-07-30T08:18:22.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'mwqcvpewvyv2rfrgt2jfyuc9rb48h2up', N'YmU2MjkwZjVmYWJhZjAyZWY1NzFjMGVlYzE3NmQ2YzJjNjRkMGFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc5YWI5ODBiOTA3YWFlMzUyMDllNzc4ZDY2ZmExZDcxZTNiYjE2MDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTE0In0=', CAST(N'2018-08-10T16:51:48.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'mxfaplg0wjd5ezd50op18yopho0q3ux9', N'ZGY4OWE2ZmZiOGY1MTM0OWEzZThlNjIzYjVjZDg1ZmU2ZDc5N2Y1Nzp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDA3LyIsIl9hdXRoX3VzZXJfaGFzaCI6IjE0YjBhZmM3N2U3NTFlOWE4YmQ3MDZmOTBkNTUyYTM5NzU3YTI1NjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTEzIn0=', CAST(N'2018-07-25T17:39:10.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'n272qzjtu7fo7z1yf7940agkinfs2zzp', N'YjA4YzVhYTUwMGRmMGZkMzRkODNjYTI2Y2I3MDYxMjhmN2I0MTBhZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY0ZDNhZDkyYTgxMzIzMzJmMTUwM2NiOWQxZGM4NTdkNGQ1ODkxZjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MTAwIn0=', CAST(N'2018-03-02T17:11:32.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ninxds0r9d2dxl7zgskn6i6pgb1c0pms', N'YjYxNTkzNDIwNDdhM2JmNzIwM2Y1MmU1MjJmZjk2Mjk1NWUxMjg2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImMxMjY1NmMzY2VkY2U4M2YzZGE1YTI3OWUwYzY3NDczZWZiMDc4ZTYiLCJ2aXN0byI6MTAyNiwiX2F1dGhfdXNlcl9pZCI6IjMxMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-07-17T13:36:19.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'np4dlnr7ngkpsmecl733v671nh54t8gz', N'ZmFkYThjMmNlOTNiNDUwZjY1MWUzZDNmYWVhNGEyMjNjMDcxNTRhOTp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDMwLyIsIl9hdXRoX3VzZXJfaGFzaCI6ImMyN2QwMTM1MWZlMGUyMTRhMmIyNTdjZmRiOWM0MjYxYjY4YzhmMDkiLCJfYXV0aF91c2VyX2lkIjoiMjEwNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', CAST(N'2018-02-02T17:25:36.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'nxo03wlun8gi8olddwfs18umu2cvku0x', N'MDI4ZjY0Yzc4ZjJhOGE2OTVkZTZkM2I0ZjhkMjZlY2NkYWRlMmQ3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRhY2UzMDEwMTU4ZmE0MDJkMjEwOGVhMDhlYzA0NmJjYzc4M2IzNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MTAxIn0=', CAST(N'2018-04-19T21:44:22.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'o091tuzrgoatwsp7cf0cjt4qmbcx4ift', N'YmY5OTQ2MTIyZTViNDRiMGUxNGRhNGZjNDM4YjcxMDQ3YmY3NTU1ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjlmMTE1MWE0OThlOThkZmQzNTU4NDE3ZjkzN2VhZjk0MDUwOWZiMjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-11T11:23:07.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'o1b35r1kyjlned4o8f3091f1a9ubfwdc', N'ZDA0YzBhZmIxMTgwYmRjMzY1ODc4MjcwOGU1ZWRhNWEyZmY0YmMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjIwMGJhMGU3ZjUxYzIyZjIzMDI1M2M2OWY4YmNjODMwZmIwNWZhODkiLCJ2aXN0byI6MTAxOSwiX2F1dGhfdXNlcl9pZCI6IjIwNjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-01-19T17:24:31.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'o6e8ihubk3x5rzz18ciw0xsbc5vgmi6u', N'NDVkMGZiYjQzZjI5NzQwNjM3Nzk1NzZjZjkzNWE2ZWY1MDNmOGZmMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlNjgzYjU0YzJhMTIwNjYzODc4Zjc1OTBhYTFjMzRjOGI2MzI5MGYiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTA1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-25T15:56:13.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'o94rxuefqe09v5cm4ifi3in0k6v2qy7p', N'YzJiMTM2NTYyM2ZmYWUzYjM3MGM0ZWI5Mzg3NGQ3NDhmOGVhODNiZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM1NmJmYmY3M2JlYzBjZGNiN2VlOWNkNjUyODY4MjI3NmU0MTk3ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MTAyIn0=', CAST(N'2018-04-20T15:49:46.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'og75eos2r6a3xdko81fpjp3ivbd347q1', N'YjcxZTY3NjIwNDhlZjkzN2Q5N2RmMjZhNWIzZWZiMmY0MDcwNGQzMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwNzk0NzgzYTQ3NzViZjE5MjhkNmIzNjQxMGNiMDE5N2M2YzMyYTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDY3In0=', CAST(N'2017-12-28T20:41:39.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'otdmkqj4q5xhtu2k2srbekq97axdvryb', N'ZGZkNzc2ZDQ0OTU5OTQ5NjEzMTk3YzE0ZGU0ZDdiMDRiNTRlMTlhNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMzN2U2NTMyOGYxMWJkMzBmMWU0MTM3NTljMTQ3ZWFlYTcxZDQxZmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-12T23:02:52.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'p1bkt3zn1p1lfsyoci4l0xad9mayhzsm', N'MmNmYmViZjNhNDI1MGU0YjEyYWNmZWE5NjhlNmFlZjI4MWZlNTU1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhZTRmM2JlNTQzMmE1ZDEzOTNhNWM5ZjUzZTM1NDFmYzgyMzk3OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T12:04:55.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'p2qbpfo177gg592cx19sho332ldwro98', N'ZDA4OTdjOTMwZTRkNTliMjM3ZTRlYjg4ZWRhZDU4ZDYyZWQ2NTNlZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFmYTcxMjRiMjc4M2U3ZDE2NzkyOWU0OTFhNzQ0MGFjNTM1YTZkMzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDQ3In0=', CAST(N'2017-11-27T14:14:34.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'p2uihkdznssdg4fc56oaltxcjqsef5x2', N'ZWFjY2JhY2I3MTM0Y2M1NWRmZTg4ZDk4ODk5MzFhMmQ2YzhiMGFjZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjY0MjgzNzFhYWVlMzhjZjRmYzYyOTA3MTJmMDUzYjUwYmI1OTk1YmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-09T19:04:32.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'p48ttlddnb1g00whtscrd8vb05i7u5pp', N'YmIzMDQ4YTE4OGNkZTdiYjRmOGFiYmMwNTQ1MmE4MzE0MmU5MmU1ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjcyYTAwZDA1M2FlMTYyYjVmOTFiNzY1NTk4N2NiODUyN2NjYzBjMjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-12T09:26:59.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'p5t8dhzbphqbdht34olt334k182vf1ze', N'NDY2YjNhYWY4NzdlZGRhNzUyZTYyZmEzOGZjZmIzN2Y4MWFmM2M4ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImUyOGU0ODQyNWNkYTZjYmJkYmI0NTM4MTQ0MTMxZWQ4ODZiOTMzMjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-12T09:57:29.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ppdj0oiomw2j8vkn0569bnwzqzg9tgsp', N'MjhlOWU4ZjY4ZTk5ZTgwMWMwMWMyYzdmNDliNTYyOGM2NzFkZTlmNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImUzMzNiZDAzNDZjMTNkNTAwOWEwZWQ3MjVjMmQ5ZWIzZGE0NmI0ZWYiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTA0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-24T15:39:10.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'pznllcuu9ohnnpez1uhmaxr2xnzj0k85', N'ZWE2ODA2YjhlZjM2OTA1MTdlMTY0MzlmYzgzNzkxZWMxZmE1ZDQ5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjNjNDI1MTkwZTFhNDM0ZWY3NjI2YjZjNGE2OTczM2FiZjNhYTFjZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-04T15:39:53.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'q2m2q0ao8nh9x5x8ahauka4et7b7cfnq', N'ZDYzMmE2N2Y2ODhjYzA4NGY5ODk0MjEyODhhNzdjMjMyN2E5MDNlMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE5OGJlN2NjYjU0NzIyZjA0ZjY3ODBmNzJiOTljMzYwM2NkZjY5NGQiLCJ2aXN0byI6MTAyNiwiX2F1dGhfdXNlcl9pZCI6IjMxMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-07-09T14:58:15.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'q5v0fgmiqbafjduu4wzrpc835dohdvt6', N'Y2U4N2NmNTIxMWM1NjU4ZDM2NGMyNDBiY2YwYjMyMzQ3NDMyMWIzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjFiYmYyOTdlZmM5YThhZTA3MmE2ZDQyYjQxNDc4YmNkMjMzNDUyYzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTA3In0=', CAST(N'2018-01-26T23:48:08.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'q6ov2i4cvly4kwwpdcal352hj46v9j95', N'YjljN2E5NDJhNDU4YTQzNjFjMDIwMGFjN2QwZjZjNDVkMGE3ZWRlODp7Il9hdXRoX3VzZXJfaGFzaCI6IjI5ZTY2YThlOGQyZGJiMzUxOWViNTU0ZTY4ZGIxYTM5NTMyZmM5ZjUiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-18T07:47:32.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'q7uqa52ed3z304r9cttj6uk347pyizz2', N'ODQ3Y2MzNWU5MGU0M2YzMzY2MjE4MWRhZGNiMTY0NTBiYTU2ZWM5ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjA5ZjE0MzIzMWYyMjYxMGE2NGMzZTU0N2FiYWRlNjliY2VmNzYzOGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTA0In0=', CAST(N'2018-07-24T10:23:24.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'q87cpwy6mmoe4o6yohlrltdt87d5iojv', N'MDRhOWVhOTQ3OWQzZDMzNjZiOTQwOTEwMjA3MzUwN2MwZTY5MTJiZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNhNWE3MDFiYWJjY2EwMzVkZTc4YzI5MDlmNTE5MWEzYjBjNmY0NWIiLCJ2aXN0byI6MTAyOCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMjA1NCJ9', CAST(N'2018-01-27T00:31:57.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'qeeebh1wbyj0rpbmv1uetuke1l29go5l', N'MWJiMzkyMzM3Y2QxOGYxNDQ3NTJjYjJjNjlhMTY3YTcxNDRlZDc2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjY2IwZTc5NGM0ZDQwNGVmMTFmYzk2ODFiMTA3NTJjOThjOWQyZGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T16:47:51.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'qeza4jwtf788fw6mwfi3ngxhbd5zvnox', N'MDJhMWYwNzgyMDlmMDM5MjcxODFlY2U3NGUyODQyMDk1MWQ5ZGNkMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM3NDZiN2JmZDBjYjAzNDc5ODliZGY5Y2JkMThlMmMyNDEwYjNlN2MiLCJ2aXN0byI6MTAxMywiX2F1dGhfdXNlcl9pZCI6IjIwNjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-01-03T14:58:46.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'qgr7z9uw6yaj3xrrhgjxfh75n2585g7p', N'ODFjOWFlMWU3ZWJmY2EwY2VkMThlZDAzOWI0OGQzOTE5ZWQ5Y2MwYjp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDE3LyJ9', CAST(N'2017-12-25T15:21:48.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'qgy4o19dtksyycdlj4jx2k264j9ldi4f', N'MjdkYjU2Y2U4ZTEwZmYyNGYyMDQ3NTEyNWEzODEzNDU5MDA1N2RiZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRiZjk3YThhZDU3OTYwNWM5ZDI5Y2FlNzJhZDQ1ZjY5MmQ0OTQxNTAiLCJ2aXN0byI6MTAyNiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMjEwMiJ9', CAST(N'2018-07-16T08:59:25.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'qns1ko06eg0oppc4g2quhj1solx58803', N'ODRlYWM3YjA1ODNkMTE2MTE5NmIwNTIxMTc2NWVmMTM5NDcyYjU2NTp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS83LyJ9', CAST(N'2017-11-11T15:44:55.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'qxn0odomdvb6o151l3p3fxa8k1hgym75', N'ZDBjNmEyNjBlN2M3M2U3MzA0N2FiZDkxN2I0MmY2MGM4NjM1MWQ0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkMDFhNDcyYjQ2MmVjMTg2YzQyMDMxNzlmZmJiYTFjZjZhNzExZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-09T17:02:41.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'rndll61f6tmbg945h7gldigc40lnifuf', N'YmU2MjkwZjVmYWJhZjAyZWY1NzFjMGVlYzE3NmQ2YzJjNjRkMGFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc5YWI5ODBiOTA3YWFlMzUyMDllNzc4ZDY2ZmExZDcxZTNiYjE2MDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTE0In0=', CAST(N'2018-08-10T10:03:51.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'rwyyp0z9ipdkj79lqxeo33v17gq30fq6', N'M2NlNjJmN2EwMzkzNmM5M2U0MDU1OTFhY2U1MWE3MDlhNDI0MDI3MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1YTY4YWEzZGMyOGU5NzJmYTQwOTMxOTMyYzIyZGQwMDRhNmEwN2YiLCJ2aXN0byI6MTAyNiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMjA1NCJ9', CAST(N'2018-01-26T23:52:57.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N's6aad3cb2si6bxj96qyibusyyhj2z3sd', N'NzBiOGM3Mzg1YzkxNDcwZjM2N2Q2YmRhZThiZjY1MTQ4MDczYzRiZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNkYTAxNDYyYjg5ZGVjNWFiNGNjOGQ0ZmQ5Y2Y1ZmFkYWQ2Yjg4ZTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-11T10:31:44.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N's8ahwxpa17zi7h7mm5jdhip6gd4ct6q3', N'YmQwNjUwNTc4NjcwY2EyMjFlOWNmNjM0NmU2Zjg3MWFiOGIwMGViYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiZWQ3N2EyODM1YjZmM2ZjZjI1OTYzODViOGQzODA5YWNjZWVhZWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-17T13:23:00.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'sfucu142xvsrswyi0yzcu6f4x8yh7183', N'MWQ1MjVmZDdlZjY4NWQ5YTgwMmQ3OGRhYjZjYjc4YjA3NWQ2OWE5ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjEyZGU5YTRjMjI2M2YxNjUxMWY3MTFhZjIxOTYzZTQwNDRlYmY4MGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-03T16:55:20.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'sod1rog6s6zd8uyo5z5wr81wqclj9orh', N'OGYzYTcyZWZhMzg1NDFmZTc5ZjVhZmMxNjBjMGViY2ZiZWFkN2YyMzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc2YWEzODZlMTJlNDA2MDQxMjFiMDNiNDVkYTczMTMwZWM2YTRhMjkiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTAzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-24T10:54:11.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'sr2mkdviswc1r8nwupl6xotn6y6p6rbf', N'MmVjNzA0YzRkOTYwMDA0NWE5NTg3YzY4NzU5YTMxZTJkYTI5NGI3Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMzBlZmVjZjMzYzhmNDM1N2UwM2Q1ZmM1OWM1ZDU4NjRiMjIwMmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T09:38:19.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ssfxstrnpsoryejvvqsdfm7gmgnmkonu', N'NTIzNWJmYjJiNTg4MGFhZDZjYjJiMzMzNDczODMzOTM0MzFhNTYzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmNjVhM2U4NTM2MTc1MzQ3MGJhMDA0YTYxOTQ5N2UxNjYyOGExNmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-03T18:17:35.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'stezpgqvua11b02eszhxtui588mr03vh', N'MDJlZDBkMjNiODQzNWYyNmQ5ZDdmNWQ5MzM0MWNlNThmYzllMTY0Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNhNzA3MmJjZWMyY2U2ZWJiMzIzYWY0MmU3Y2YxOWI2NjQwNjY3NWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-03T20:57:00.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N't63hwsj35gpmiy8k5g1t4cop6skanwyc', N'NGE2MmRiNmI1NjI1ZTBlOTFkZmU3MWE0Yjg1MGM1ODkwYWZmNDA3NTp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xLyIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ2NmJhYjc0ZmQ3YzM3OGEwN2E1NDhmOWNiNGEzMjIyOTBhOTIzYTYiLCJfYXV0aF91c2VyX2lkIjoiMTAzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', CAST(N'2017-11-10T16:09:26.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N't74gsjioddx03y9mqbenz500v2xe1lkx', N'MTIwMDAzMzVlMDhhMzZhOGY5ZWQ5MWY3NTk1NGY4NTcxNGFlNjhjNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ1OGYzZjY0ZTQ4NjAwNTQ0MmJjM2I2ODZlNzRhYzdiYzk3NTA3NTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAzIn0=', CAST(N'2018-01-26T22:56:22.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ta1yf9g9vtdw3kpglfgscpasxlcyl2qf', N'Nzk5YmYxOGMzMjQ4ZmRiMjk2NTNiNmVkZTY1NTBlMGU5OWI2MTA5MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM3OGM4ZTQzMWIzN2ViNjMzNTYxNjczYjVhNGUxYjU2YWMyZjlhMGMiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTAzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-24T12:29:07.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'tbzsq79skn4y4dj2l7tkuj8vpsiz2dql', N'YzQzOWI3MTViNTYxYjQxYmQyZDc2OWExYzZjMzdjMTkxNjc1Zjg4Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVjZjVhZDFmNzQ2MDExOTEzYTEwZTE2YzIwNjNkNDU2OWU0ZjRhYzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTAzIn0=', CAST(N'2018-07-23T10:02:41.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'te8ymyropbt1ffkk436qkfdyl26i6osf', N'NTc4N2Y3OWM0MDI1YzQyYTY5ZDFhMThmYzgyNWYzOTk2MTQ4ZDg1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjYxNTAxNTkxYjJlZjE1YWVhOWMzMTdmMzllMDI2NDA0YzMyNjExN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-10T17:59:18.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'tlwncfxyf0e7fn3vgebj9xm9s5sdbq58', N'Y2FkNjI4NWVjMzIxMGYwOTNkYmVmNjA5NWJhYjI4Mjg0ZDBlZWIwZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhjZTY2MmU4NTA1MTYzNjNmYWYzZDk4NDJhNjEyZjVjM2U0ODliNzYiLCJ2aXN0byI6MTAxMywiX2F1dGhfdXNlcl9pZCI6IjIwNjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-01-03T22:15:47.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'tskq48tf7p35ypkg08tw6pvgrzt52hdb', N'YmEwZGMwNGI2NWFlYjA0ZjcwNWU4MDliMTUxYzRmNTg1ZDc2MzY1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjZjNGNlNzQ5YzdmMDUyMjljMDRlNGQyM2I5Y2I1Mzg5NTZkYmEzM2MiLCJ2aXN0byI6MTAyNiwiX2F1dGhfdXNlcl9pZCI6IjIxMDIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', CAST(N'2018-01-29T21:13:34.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'tx54an10jo3xzljv9755e7zkshsk6zjd', N'MGU5NjZhOTlhZTlmNjRiYWNlZjljOWJhMTUzZmVlMzFkZTAxMjU5MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNmNTAyYTM2YmQ1ODEyMzI3MDU1ZmUxMDg0N2Q2NjI3Y2EzMTEzOWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-12T09:14:18.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'u2en49fnhh5vocxfxfuwh9adiq6k03mh', N'Y2E0YjkxY2YyN2MyMTBlZTgwNTk5YjRjYWY0ZmJmMmFlZTUxMDI5OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3ZDg0MmM0MGIxZTFhZmI0ZGJiMGI3YTZkYTYwYjEwNjJlMTJjY2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-01-30T15:09:06.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ub6jpik03j2jncpp596v08pdln1vo35d', N'OTgwZWE4MDFkMTU1M2Y2Y2Y5NWI5ZGEwNmMxZmQ4NGI2NjZmNDc5NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjZiOWVmOGI1YzU5MWY0ZTEyYjI3OGRjNDY5OGQwZTY5YzEzODUyOGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-02-02T17:12:29.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ujmz89g6h9osw2ngu7vviwtzvzc4pdpq', N'OGZjMGM2MThhNWQ2NTYzOGJiYzNiYWQwZjcyNDc4ZmQ2NDM3ZGI1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMzN2M2ZTA1MzBjYjBkYjEyYjA4N2ZjNjZmNDk5ZDk0OWQ0ZDcyOTciLCJfYXV0aF91c2VyX2lkIjoiNTExNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', CAST(N'2018-08-21T17:37:15.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'ukyounsitmilr2rwv8oxtlze671ihl5a', N'ZWIxMmFkMTQ0MDhkYjRlZDA3NjhiYTRhZTFjOThlZTcxMjU5ZWU0Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4Mzg2ZDg3ZmU0NDcyMWM5NWM2YWFiYTNmMzQ5NjFiM2ViNjZkODciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-18T10:38:01.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'urzprln7gjahcx0yrqtiwrtrzykyo35o', N'Y2MzYWFkOWJhODRlYzYzYmJkM2FjYzBlOWY4MmY3ODQ1NWU3YTk2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjdjNjFjOWUwN2MyMTdmZDM1MjU5OThlZWZjMjZlNTA3NzNhMjJlZTgiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-17T15:52:03.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'usnug5ilq6ih5cf8tpusw5jlf1ly466c', N'YzVmZTlhZTQ4YmU2N2M2YTc3YTJkOGI0MjhlNDU5YzZkOGE3NDc1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjljZWUzOWI3M2Y0MmRmMjgxN2RjYzliMTk3ZDIyNDYzMmI4YjUwZTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDQ4In0=', CAST(N'2017-12-05T16:49:32.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'uwnvvwcabr93pkd7gc6l0vxv95yqe1el', N'MWRiOGI3ZmVhNTFhYzJjMzlkNTc3NThhMWY4NGUzYmU0ZTMwZTU1Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjY5MzQwMGZjZmUzMWM2NDI1ODA4ZWIwMzg5MWI4NWRiYTkyN2E2ZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTA1In0=', CAST(N'2018-07-24T16:00:56.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'uwy910tgkbn81x3lks8m02vgva3olf8a', N'ZWJhNTA0YzE5N2NhYzA5MDNmZWQ1MDJkMzc3NmJmMzg3NmFjZWU5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImViYmM0YjYwNTIxYzk2MGU3MWU3MmY5ZTJjYTUzMzE5YmI3OGQ1NzgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDk3In0=', CAST(N'2018-01-31T20:48:20.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'v1vfbbohpljjjgv1rehnbisid3o047xo', N'MjAyNTViNGNlZjA2YTU0ODAzMjg1YjUzNGIxMWVkYjRkZGFhMWY4NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ3NzA4MzdkMDRjZjBhYjY5N2U1Y2Q5OTM3OTBhY2JkMWQ0OTFlM2EiLCJ2aXN0byI6MjA2NiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMjEwMiJ9', CAST(N'2018-07-16T11:53:29.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'v1ya979xqv1lewxpiaj268lowhs64fla', N'MzRhYzg5NWUwMmEwMTFkZjE5OGRhNGQ4NzcwZDFjM2Q1MDlhOTQ3MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjBjMjZhYjBjOTcwNTE4MWMwNzk5M2JkNWFiNmQ0ZjRlYjNiNDFhYmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTEyIn0=', CAST(N'2018-07-23T16:37:50.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'v7cx3v8r297a2m350ym1dblf3xvy4hu7', N'YzExMzY0ZTU3ZmQwOWFkMDY1YWRjYjEyOTEzNzAwNWJkNjZlODc2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImVlNWM3MzY0OTlhZTlmOTM3YmFkNmI5MDhkMmI2YzMzNGUwMTdjMGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-03-21T19:48:57.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'vn1110wfoekex3vxtyza0veivvc7trfy', N'OTY1YjY3Y2RhZGRjYWMwN2RmODg0ZWFhNTc5NTY5YWVjYWNlMjdiNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImE2NjcwYTAyMTI2ZjM2OThjNmE4MzdlYzY5M2RhMzVjOWEzZTM1MTQiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiI1MTAzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-24T17:24:01.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'vq7ss7so39pwp8d1t3de8dxg052qg9qy', N'MDM1NjVjNmY1Y2NlMDZmZGMzYjI5MjM3OTFkZThmYTlhMGQ0NmFjNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ2NmJhYjc0ZmQ3YzM3OGEwN2E1NDhmOWNiNGEzMjIyOTBhOTIzYTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDM5In0=', CAST(N'2017-11-10T17:53:28.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'vs250wpypbxex1a2kvd372ydi1lt6y23', N'ZDFkYTc1ZDg3NThmZjJmM2RlMWM2YjRmYjYwZDc3ZjA4ZDdlODE4Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImU4MTkyYTliYWEwN2U0MDA4YTNiN2Y4N2VhYTdhYmUwYzI4ZjMzNmIiLCJ2aXN0byI6IiIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', CAST(N'2018-07-17T18:28:34.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'wec5eqh6k9qumvf0cpb9bx0stp9vi029', N'YTJhMDM3YTEwNGZmNjNkOGNhYzBkNDI2ZTYyMjAyNTY1YjZmYjQ5Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzMDFjMDhjM2U2NTAzZTUyMjk5MjFjOWEwNDlkMzc3ZjFhNzE2OWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-02-01T20:00:25.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'weorsexnvao1dwkb6r7n84wpaehgnd47', N'OThlZGM2OWVmYjMxNGRkZDhjZDRlYTU4ZDFjNGYxYjBlZjE1MTcyODp7Il9hdXRoX3VzZXJfaGFzaCI6IjYxOGI4NTQ4ODhkMTk3NzlkNGVkOWE5MWM2Yzc1NWY5NGE5YmExYTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU2In0=', CAST(N'2018-01-03T19:44:41.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'wp2xpw0d4xyq2ifg8t4ab9z7131gst17', N'ZWM2MWE3NjU4ZDc3ZTY1YzAyYjkwMTA5MWVmZTMxMmRkZjgxZjk2Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImU0MjM2YmJkOTY0Yjc0OWUxYjZmZWNkYTEzZTZiMDExOTU4M2M2ZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-09T11:02:33.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'wpw8kz40c410yrh2o7cpnxuibl5wkea6', N'NGY5NzU0ODJmMDljYWRiNWUxMGRiNGY3ZjA0NmNjYmEyNmIxMzY4Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmYTU5MTdkYTc4NmUzMmU3MjA3OTU5MzZmYmVlYTkyZDEyOGZhODAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDU0In0=', CAST(N'2018-01-30T15:42:58.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'wts0q6e8oraiblmgpd6iod5a97r1ug5w', N'Y2EwNjI0OGQ0NzVhYjBlMDlmZDVlZGYwMDI4YzVjN2UwMDZiMTZlYjp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS83LyIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmYmY1Mjk5OTJjNmE1NjFiYzQwNWJhNjQxNThkMzE2ZjAwNTdlNjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDM0In0=', CAST(N'2017-11-24T18:06:52.000' AS DateTime))
GO
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'x9rumunki1dg2u9bzpo3930o3fn4bzm1', N'OGFhNWNmYWYyNzUzNWVkOWUxNWM2MzBkMzhjYjgzOTgyZDRmZjRmYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3YTU0YTU3MDczZTFhM2IwMDFiOWM2MmRhNzc2ZmFmMWFjYmQyNmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMTA3In0=', CAST(N'2018-07-14T11:33:19.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'xetxl1224xq87nhksmhlvcq0zbu4vrcu', N'ZjkxNzg1ZDAzM2NkODkyMWNjY2QxZWU3MjcxYjY4ZmJmYzg5OTUzYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAxYTVmYTc2YzI3ZmJiNjk4MzNiYTFlZjYxMmI4MjIwOThiNDg2NWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDYyIn0=', CAST(N'2018-01-05T20:41:53.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'xzhflqjhzapx68yfpiu496wqc8ogmelg', N'YzJiMTM2NTYyM2ZmYWUzYjM3MGM0ZWI5Mzg3NGQ3NDhmOGVhODNiZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM1NmJmYmY3M2JlYzBjZGNiN2VlOWNkNjUyODY4MjI3NmU0MTk3ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0MTAyIn0=', CAST(N'2018-04-20T15:06:57.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'y1qw8al2c4x3uengj3exi3s2mtgx06ja', N'NjU4YzJiODEwNWU0ZTM4MjcxMGIyMWNlNjQzYWIwY2M2ZGNjNDlmOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAxOTE4ZTcyNjQxNTYwNjkyYjI4YzBmNDMzN2VhMmI0OTNiYzk1ZTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTA2In0=', CAST(N'2018-07-30T10:16:40.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'yyd0469augfxso6sahaw6s8eeklp6ccu', N'YmU2MjkwZjVmYWJhZjAyZWY1NzFjMGVlYzE3NmQ2YzJjNjRkMGFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc5YWI5ODBiOTA3YWFlMzUyMDllNzc4ZDY2ZmExZDcxZTNiYjE2MDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1MTE0In0=', CAST(N'2018-08-09T17:33:30.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'z1knqxw5c53ovkwg0tmq8bdmt59dvlrj', N'OWJmMDQ4MjdhYmM4NGI3ODFkNmI2OGZhZWMyYmM3YTVlN2MwY2VlOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY1NjZlZTcxYWQ4MjRhMmIxZTg2NWIxMzZkMDVmZTg5MDZmYTdkNzMiLCJ2b2x2ZXIiOiIvYWRtaW5pc3RyYWRvci9jYW50aWRhdG9zLXBvci1wbGF6YS9PZmVydGFzIG9iamVjdC8iLCJfYXV0aF91c2VyX2lkIjoiMjA2MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', CAST(N'2018-01-02T18:42:35.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'z9kdrdu5zsoru9ecufo6dvqi77j355ae', N'N2MwZDQ0ZjY2MWFiZWZiYzQwMmZiMzdkNzMyNmVmMTFiODBlNzQ1YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE2ZTAyOTYyYTNiMWJjYmUyMGY5MmVkM2UxMjgxMjUyYjEzY2E3MTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-16T09:52:58.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'zeon0dejyl44da026mz6599ouvkj09uu', N'OGVkMjgxYjJjZmFhZDQ5OWE2YTgyZjZmZWE0MzA1ZGQwZmJhYzUzMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0YWZlYmI0NmYxY2ZkZmJmOTI0N2FhMGVkNWQyZDVkN2QwMzUyM2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDM0In0=', CAST(N'2017-11-10T22:08:33.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'zgj0rps2qmbrk02ey5p9p7zrbsak39xn', N'OWZhYTAyYjVlY2Y0ZjE5ZGUyNzk3NmQyNzA3YzhhMmE5ZDU4MmE3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwMGE4NjQ1OTY2ZGEyNzdjNjFiOTQwZTc1MjU1Y2EzZTgzMGM1N2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMTAyIn0=', CAST(N'2018-07-06T15:13:30.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'zijaz60u7bi1z3dxqdhq985fcj6919hq', N'MGMwMWNhZGY1NGQ2MjMyZmY0ODk2ZGJiZTc1NmJmODFmZDVlYTcyNDp7InVybCI6Ii9hcGxpY2FyLW9mZXJ0YS8xMDEzLyJ9', CAST(N'2018-08-07T17:52:37.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'zu0rtd4ectgytwnzq900g4h1ymddq0oc', N'NGI2NjhkNDUyYzU2MzkxYmEyYTUwZjE0NTU4YjNhNWRlNmQxYmQ1MDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4NWJmNDcwNzk3YjI5MjAwMTQ2N2FhNzY1YWJhOWNhOTM0OGM3MzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMDY2In0=', CAST(N'2018-01-19T17:27:17.000' AS DateTime))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'zvjszuuyjqpqkxqf9ujxxg41cz919w9k', N'MGFkMTMwYTQzN2M1ODE2ZTAyMmU5YWFmOGE2ZDEyMDdkODMwZmJlNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwOTBkNzhjZDFiYzZmMDc5YzNlNTIzNWIwNmU1MmE0MWI5NjFhZmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMDM1In0=', CAST(N'2017-10-27T22:32:55.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Seguros] ON 

INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (1, N'Seguros Banrural Honduras, Sociedad Anónima')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (2, N'Seguros Bolívar Honduras, S.A')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (3, N'Pan American Life Insurance Company')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (4, N'MAPFRE | SEGUROS HONDURAS, S.A.')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (5, N'Interamericana de Seguros, S.A.')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (6, N'Seguros Continental, S.A.')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (7, N'Seguros Atlántida, S.A.')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (8, N'Seguros Crefisa, S.A.')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (9, N'Seguros Equidad, S.A.')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (10, N'Seguros del País, S.A.')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (11, N'Seguros Lafise (Honduras), Sociedad Anónima')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (12, N'AIG Seguros Guatemala, S.A. Sucursal Honduras')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (13, N'Ficohsa Seguros')
INSERT [dbo].[Seguros] ([CodSeguros], [CompaniaSeguros]) VALUES (14, N'Seguros Davivienda')
SET IDENTITY_INSERT [dbo].[Seguros] OFF
SET IDENTITY_INSERT [Ofe].[Aplicaciones] ON 

INSERT [Ofe].[Aplicaciones] ([Cod_aplicacion], [Cod_solicitud], [Cod_oferta], [Favorito], [Tipo_seguimiento], [Visto], [Fecha], [Dislike], [Imprimir], [CodUserDes]) VALUES (1, 8, 1, 0, NULL, 1, CAST(N'2018-07-23' AS Date), NULL, 1, NULL)
INSERT [Ofe].[Aplicaciones] ([Cod_aplicacion], [Cod_solicitud], [Cod_oferta], [Favorito], [Tipo_seguimiento], [Visto], [Fecha], [Dislike], [Imprimir], [CodUserDes]) VALUES (2, 9, 1008, 1, NULL, NULL, CAST(N'2018-07-24' AS Date), NULL, NULL, NULL)
INSERT [Ofe].[Aplicaciones] ([Cod_aplicacion], [Cod_solicitud], [Cod_oferta], [Favorito], [Tipo_seguimiento], [Visto], [Fecha], [Dislike], [Imprimir], [CodUserDes]) VALUES (3, 9, 1002, 0, NULL, NULL, CAST(N'2018-07-25' AS Date), 1, NULL, 5104)
INSERT [Ofe].[Aplicaciones] ([Cod_aplicacion], [Cod_solicitud], [Cod_oferta], [Favorito], [Tipo_seguimiento], [Visto], [Fecha], [Dislike], [Imprimir], [CodUserDes]) VALUES (4, 10, 1008, 1, NULL, NULL, CAST(N'2018-07-25' AS Date), NULL, NULL, NULL)
INSERT [Ofe].[Aplicaciones] ([Cod_aplicacion], [Cod_solicitud], [Cod_oferta], [Favorito], [Tipo_seguimiento], [Visto], [Fecha], [Dislike], [Imprimir], [CodUserDes]) VALUES (5, 10, 1007, 1, NULL, NULL, CAST(N'2018-07-25' AS Date), NULL, NULL, NULL)
INSERT [Ofe].[Aplicaciones] ([Cod_aplicacion], [Cod_solicitud], [Cod_oferta], [Favorito], [Tipo_seguimiento], [Visto], [Fecha], [Dislike], [Imprimir], [CodUserDes]) VALUES (6, 8, 1008, NULL, NULL, NULL, CAST(N'2018-07-25' AS Date), NULL, NULL, NULL)
INSERT [Ofe].[Aplicaciones] ([Cod_aplicacion], [Cod_solicitud], [Cod_oferta], [Favorito], [Tipo_seguimiento], [Visto], [Fecha], [Dislike], [Imprimir], [CodUserDes]) VALUES (7, 15, 1002, NULL, NULL, NULL, CAST(N'2018-12-28' AS Date), NULL, NULL, NULL)
SET IDENTITY_INSERT [Ofe].[Aplicaciones] OFF
SET IDENTITY_INSERT [Ofe].[Areas] ON 

INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (1, N'Agencias ')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (2, N' Administración ')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (8, N' Riesgos ')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (10, N' Mercadeo')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (12, N' Contabilidad y Finanzas')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (18, N' Operaciones')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (22, N'Tecnología Informática')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (23, N' Seguros Banrural')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (30, N' Fideicomisos')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (31, N' Créditos')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (32, N' Cumplimiento')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (37, N' Proyectos y Procesos')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (39, N' Recursos Humanos')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (51, N' Compensación')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (54, N' Auditoría')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (61, N' Convenios y Alianzas')
INSERT [Ofe].[Areas] ([Cod_area], [Descripcion_area]) VALUES (66, N'Otros')
SET IDENTITY_INSERT [Ofe].[Areas] OFF
SET IDENTITY_INSERT [Ofe].[Ofertas] ON 

INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1, N'Ejecutivo de Negocios', NULL, NULL, N'Experiencia en Creditos de cooperativas o microfinancieras
Poseer Motocicleta', N'Secundaria Completa
Orientado a Ventas', CAST(N'2018-07-23' AS Date), NULL, 1, 2, N'COLON', 12, N'SABA', N'Permanente', 20, 39, N'Inmediata', N'De 1 a 3 años comprobada', 1, 1, 31, N' Créditos', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1001, N'Ejecutivo de Negocios Nacaome', NULL, NULL, N'Personal en el área de negocios y créditos financieros de banca pyme con alta calidad a nuestros clientes, mediante la promoción y venta de los productos y servicios de la institución. ', N'-Estudiantes universitarios de segundo año de carreras agrónomas, administrativas, financieras y/o contables 
-Experiencia en Micro-financieras, cooperativas o banca, realizando funciones de colocación y recuperación de créditos en trabajo de campo
-Proactivo y dinámico 
-Buenas relaciones interpersonales 
-Orientado al servicio al cliente 
-Orientado a ventas 
-Poseer/conducir motocicleta o vehículo ( indispensable) 
- Residir en la ciudad de Nacaome
', CAST(N'2018-07-23' AS Date), NULL, 1, 17, N'VALLE', 278, N'NACAOME', N'Permanente', 18, 39, N'Inmediata', N'Colocación y Recuperación de creditos', 1, 1, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1001')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1002, N'Prueba QA', NULL, NULL, N'Solo hacer prueba', N'Prueba Prueba', CAST(N'2018-07-23' AS Date), NULL, 1, 8, N'FRANCISCO MORAZÁN', 109, N'DISTRITO CENTRAL', N'Permanente', 25, 26, N'15 Dias', N'Prueba y mas pruebas', 0, 0, 22, N'Tecnología Informática', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1002')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1003, N'Prueba BI', NULL, NULL, N'Prueba BI', N'Prueba BI', CAST(N'2018-07-24' AS Date), NULL, 1, 8, N'FRANCISCO MORAZÁN', 109, N'DISTRITO CENTRAL', N'Permanente', 25, 26, N'Inmediata', N'Prueba BI', 0, 0, 22, N'Tecnología Informática', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1003')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1004, N'prueba BIDSS', NULL, NULL, N'Prueba BiDSS', N'Prueba BiDSS', CAST(N'2018-07-24' AS Date), NULL, 1, 1, N'ATLANTIDA', 1, N'EL PORVENIR', N'Permanente', 23, 45, N'Inmediata', N'Prueba BiDSS', 1, 1, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1004')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1005, N'PRUEBA BIDSS', NULL, NULL, N'PRUEBA BIDSS', N'PRUEBA BIDSS', CAST(N'2018-07-24' AS Date), NULL, 1, 1, N'ATLANTIDA', 1, N'EL PORVENIR', N'Permanente', 45, 66, N'Inmediata', N'PRUEBA BIDSS', 1, 1, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1005')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1006, N'PRUEBA BIDSS', NULL, NULL, N'Prueba BIDSS', N'Prueba BIDSS', CAST(N'2018-07-24' AS Date), NULL, 1, 2, N'COLON', 8, N'TRUJILLO', N'Permanente', 5, 66, N'Inmediata', N'51', 0, 1, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1006')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1007, N'Cajero', NULL, NULL, N'Prueba BiDSS', N'Prueba BiDSS', CAST(N'2018-07-24' AS Date), NULL, 1, 1, N'ATLANTIDA', 1, N'EL PORVENIR', N'Proyecto', 5, 65, N'Inmediata', N'Prueba BiDSS', 1, 1, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1007')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1008, N'PRUEBA BIDSS', NULL, NULL, N'PRUEBA BIDSS', N'PRUEBA BIDSS', CAST(N'2018-07-24' AS Date), NULL, 1, 1, N'ATLANTIDA', 1, N'EL PORVENIR', N'Permanente', 56, 656, N'15 Dias', N'PRUEBA BIDSS', 0, 0, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1008')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1009, N'Ejecutivo de Negocios', NULL, NULL, N'Experiencia en Creditos de cooperativas o microfinancieras
Poseer Motocicleta', N'Secundaria Completa
Orientado a Ventas', CAST(N'2018-07-23' AS Date), NULL, 1, 2, N'COLON', 12, N'SABA', N'Permanente', 20, 39, N'Inmediata', N'De 1 a 3 años comprobada', 1, 1, 31, N' Créditos', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1010, N'Ejecutivo de Negocios Nacaome', NULL, NULL, N'Personal en el área de negocios y créditos financieros de banca pyme con alta calidad a nuestros clientes, mediante la promoción y venta de los productos y servicios de la institución. ', N'-Estudiantes universitarios de segundo año de carreras agrónomas, administrativas, financieras y/o contables 
-Experiencia en Micro-financieras, cooperativas o banca, realizando funciones de colocación y recuperación de créditos en trabajo de campo
-Proactivo y dinámico 
-Buenas relaciones interpersonales 
-Orientado al servicio al cliente 
-Orientado a ventas 
-Poseer/conducir motocicleta o vehículo ( indispensable) 
- Residir en la ciudad de Nacaome
', CAST(N'2018-07-23' AS Date), NULL, 1, 17, N'VALLE', 278, N'NACAOME', N'Permanente', 18, 39, N'Inmediata', N'Colocación y Recuperación de creditos', 1, 1, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1001')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1011, N'Prueba QA', NULL, NULL, N'Solo hacer prueba', N'Prueba Prueba', CAST(N'2018-07-23' AS Date), NULL, 1, 8, N'FRANCISCO MORAZÁN', 109, N'DISTRITO CENTRAL', N'Permanente', 25, 26, N'15 Dias', N'Prueba y mas pruebas', 0, 0, 22, N'Tecnología Informática', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1002')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1012, N'Prueba BI', NULL, NULL, N'Prueba BI', N'Prueba BI', CAST(N'2018-07-24' AS Date), NULL, 1, 8, N'FRANCISCO MORAZÁN', 109, N'DISTRITO CENTRAL', N'Permanente', 25, 26, N'Inmediata', N'Prueba BI', 0, 0, 22, N'Tecnología Informática', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1003')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1013, N'prueba BIDSS', NULL, NULL, N'Prueba BiDSS', N'Prueba BiDSS', CAST(N'2018-07-24' AS Date), NULL, 1, 1, N'ATLANTIDA', 1, N'EL PORVENIR', N'Permanente', 23, 45, N'Inmediata', N'Prueba BiDSS', 1, 1, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1004')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1014, N'PRUEBA BIDSS', NULL, NULL, N'PRUEBA BIDSS', N'PRUEBA BIDSS', CAST(N'2018-07-24' AS Date), NULL, 1, 1, N'ATLANTIDA', 1, N'EL PORVENIR', N'Permanente', 45, 66, N'Inmediata', N'PRUEBA BIDSS', 1, 1, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1005')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1015, N'PRUEBA BIDSS', NULL, NULL, N'Prueba BIDSS', N'Prueba BIDSS', CAST(N'2018-07-24' AS Date), NULL, 1, 2, N'COLON', 8, N'TRUJILLO', N'Permanente', 5, 66, N'Inmediata', N'51', 0, 1, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1006')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1016, N'Cajero', NULL, NULL, N'Prueba BiDSS', N'Prueba BiDSS', CAST(N'2018-07-24' AS Date), NULL, 1, 1, N'ATLANTIDA', 1, N'EL PORVENIR', N'Proyecto', 5, 65, N'Inmediata', N'Prueba BiDSS', 1, 1, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1007')
INSERT [Ofe].[Ofertas] ([Cod_oferta], [Puesto_oferta], [Salario_minimo], [Salario_maximo], [Descripcion_oferta], [Perfil_candidato], [Fecha_publicacion], [Fecha_cierre], [Estado], [Cod_departamento], [Departemento], [Cod_municipio], [Municipio], [Tipo_contratacion], [Edad_minima], [Edad_maxima], [Disponibilidad], [Experiencia_laboral], [Trabajo_campo], [Vehiculo], [Cod_area], [Descripcion_area], [Publica], [Interna], [Anonima], [Url]) VALUES (1017, N'PRUEBA BIDSS', NULL, NULL, N'PRUEBA BIDSS', N'PRUEBA BIDSS', CAST(N'2018-07-24' AS Date), NULL, 1, 1, N'ATLANTIDA', 1, N'EL PORVENIR', N'Permanente', 56, 656, N'15 Dias', N'PRUEBA BIDSS', 0, 0, 1, N'Agencias ', 1, NULL, NULL, N'http://192.168.2.46:8003/vacantes/form_soli_1/1008')
SET IDENTITY_INSERT [Ofe].[Ofertas] OFF
SET IDENTITY_INSERT [Ofe].[Preguntas] ON 

INSERT [Ofe].[Preguntas] ([Cod_pregunta], [Cod_oferta], [Descripcion_pregunta]) VALUES (1, 1, N'')
INSERT [Ofe].[Preguntas] ([Cod_pregunta], [Cod_oferta], [Descripcion_pregunta]) VALUES (1001, 1001, N'')
INSERT [Ofe].[Preguntas] ([Cod_pregunta], [Cod_oferta], [Descripcion_pregunta]) VALUES (1002, 1002, N'')
INSERT [Ofe].[Preguntas] ([Cod_pregunta], [Cod_oferta], [Descripcion_pregunta]) VALUES (1003, 1003, N'')
INSERT [Ofe].[Preguntas] ([Cod_pregunta], [Cod_oferta], [Descripcion_pregunta]) VALUES (1004, 1004, N'')
INSERT [Ofe].[Preguntas] ([Cod_pregunta], [Cod_oferta], [Descripcion_pregunta]) VALUES (1005, 1005, N'')
INSERT [Ofe].[Preguntas] ([Cod_pregunta], [Cod_oferta], [Descripcion_pregunta]) VALUES (1006, 1006, N'')
SET IDENTITY_INSERT [Ofe].[Preguntas] OFF
SET IDENTITY_INSERT [Ofe].[Respuestas] ON 

INSERT [Ofe].[Respuestas] ([Cod_respuesta], [Cod_pregunta], [Cod_solicitud], [Cod_aplicacion], [Cod_oferta], [Descripcion_respuesta], [Descripcion_pregunta]) VALUES (1, 1, 8, 1, 1, N'Hola', N'')
INSERT [Ofe].[Respuestas] ([Cod_respuesta], [Cod_pregunta], [Cod_solicitud], [Cod_aplicacion], [Cod_oferta], [Descripcion_respuesta], [Descripcion_pregunta]) VALUES (2, 1002, 9, 3, 1002, N'Hola', N'')
INSERT [Ofe].[Respuestas] ([Cod_respuesta], [Cod_pregunta], [Cod_solicitud], [Cod_aplicacion], [Cod_oferta], [Descripcion_respuesta], [Descripcion_pregunta]) VALUES (3, 1002, 15, 7, 1002, N'¿Cuáles son las funciones a realizar?', N'')
SET IDENTITY_INSERT [Ofe].[Respuestas] OFF
SET IDENTITY_INSERT [Ofe].[SeguimientoXAplicacion] ON 

INSERT [Ofe].[SeguimientoXAplicacion] ([Cod_seguimiento], [Cod_Aplicacion], [Cod_Solicitud], [Cod_Oferta], [Pr_Entrevista], [Fch_Pr_Entrevista], [Hor_Pr_Entrevista], [Pruebas_Psico], [Email], [Contrasena], [Fch_Pruebas_Psico], [Jefe_Inme], [Fch_Jefe], [Hor_Jefe], [Poligrafo], [Fch_Poligrafo], [Hor_Poligrafo], [Dir_Poligrafo], [Socio_Econ], [Fch_Socio], [Hor_Socio], [Documentacion], [Fch_Doc], [Medicos], [Fch_Medicos], [Hor_Medicos], [Dir_Medicos], [CC], [Fch_Ingreso], [Fch_Salida], [Encargado]) VALUES (1, 1, 8, 1, 1, CAST(N'2018-07-26' AS Date), CAST(N'2018-07-26T13:00:00.000' AS DateTime), 1, N'lulu.alfalfa@mail.com.hn', N'12345678', CAST(N'2018-07-27' AS Date), 1, CAST(N'2018-08-28' AS Date), CAST(N'2018-08-28T01:00:00.000' AS DateTime), 1, CAST(N'2018-07-27' AS Date), CAST(N'2018-07-27T01:00:00.000' AS DateTime), N'3333', 1, CAST(N'2018-07-28' AS Date), CAST(N'2018-07-28T01:00:00.000' AS DateTime), 1, CAST(N'2018-08-03' AS Date), 1, CAST(N'2018-08-05' AS Date), CAST(N'2018-08-05T01:00:00.000' AS DateTime), N'lllll', 1, CAST(N'2018-08-05' AS Date), NULL, NULL)
INSERT [Ofe].[SeguimientoXAplicacion] ([Cod_seguimiento], [Cod_Aplicacion], [Cod_Solicitud], [Cod_Oferta], [Pr_Entrevista], [Fch_Pr_Entrevista], [Hor_Pr_Entrevista], [Pruebas_Psico], [Email], [Contrasena], [Fch_Pruebas_Psico], [Jefe_Inme], [Fch_Jefe], [Hor_Jefe], [Poligrafo], [Fch_Poligrafo], [Hor_Poligrafo], [Dir_Poligrafo], [Socio_Econ], [Fch_Socio], [Hor_Socio], [Documentacion], [Fch_Doc], [Medicos], [Fch_Medicos], [Hor_Medicos], [Dir_Medicos], [CC], [Fch_Ingreso], [Fch_Salida], [Encargado]) VALUES (2, 2, 9, 1008, 1, CAST(N'2018-07-25' AS Date), CAST(N'2018-07-25T13:00:00.000' AS DateTime), 1, N'juan.hernandez@banrural.com.hn', N'46662555', CAST(N'2018-07-29' AS Date), 1, CAST(N'2018-07-29' AS Date), CAST(N'2018-07-29T02:00:00.000' AS DateTime), 1, CAST(N'2018-08-05' AS Date), CAST(N'2018-08-05T16:30:00.000' AS DateTime), N'Hoaaaa CInthia', 1, CAST(N'2018-07-29' AS Date), CAST(N'2018-07-29T13:00:00.000' AS DateTime), 1, CAST(N'2018-07-30' AS Date), 1, CAST(N'2018-07-31' AS Date), CAST(N'2018-07-31T13:00:00.000' AS DateTime), N'Medicasa', 1, CAST(N'2018-07-31' AS Date), NULL, NULL)
INSERT [Ofe].[SeguimientoXAplicacion] ([Cod_seguimiento], [Cod_Aplicacion], [Cod_Solicitud], [Cod_Oferta], [Pr_Entrevista], [Fch_Pr_Entrevista], [Hor_Pr_Entrevista], [Pruebas_Psico], [Email], [Contrasena], [Fch_Pruebas_Psico], [Jefe_Inme], [Fch_Jefe], [Hor_Jefe], [Poligrafo], [Fch_Poligrafo], [Hor_Poligrafo], [Dir_Poligrafo], [Socio_Econ], [Fch_Socio], [Hor_Socio], [Documentacion], [Fch_Doc], [Medicos], [Fch_Medicos], [Hor_Medicos], [Dir_Medicos], [CC], [Fch_Ingreso], [Fch_Salida], [Encargado]) VALUES (3, 3, 9, 1002, 1, CAST(N'2018-07-26' AS Date), CAST(N'2018-07-26T13:00:00.000' AS DateTime), 1, N'pruebas@prubas.com', N'Pruebas123', CAST(N'2018-07-31' AS Date), 1, CAST(N'2018-08-01' AS Date), CAST(N'2018-08-01T13:00:00.000' AS DateTime), 1, CAST(N'2018-08-02' AS Date), CAST(N'2018-08-02T13:00:00.000' AS DateTime), N'Poligrafo', 1, CAST(N'2018-08-03' AS Date), CAST(N'2018-08-03T13:00:00.000' AS DateTime), 1, CAST(N'2018-08-04' AS Date), 1, CAST(N'2018-08-07' AS Date), CAST(N'2018-08-07T13:00:00.000' AS DateTime), N'EPS', 1, CAST(N'2018-08-08' AS Date), NULL, NULL)
INSERT [Ofe].[SeguimientoXAplicacion] ([Cod_seguimiento], [Cod_Aplicacion], [Cod_Solicitud], [Cod_Oferta], [Pr_Entrevista], [Fch_Pr_Entrevista], [Hor_Pr_Entrevista], [Pruebas_Psico], [Email], [Contrasena], [Fch_Pruebas_Psico], [Jefe_Inme], [Fch_Jefe], [Hor_Jefe], [Poligrafo], [Fch_Poligrafo], [Hor_Poligrafo], [Dir_Poligrafo], [Socio_Econ], [Fch_Socio], [Hor_Socio], [Documentacion], [Fch_Doc], [Medicos], [Fch_Medicos], [Hor_Medicos], [Dir_Medicos], [CC], [Fch_Ingreso], [Fch_Salida], [Encargado]) VALUES (4, 4, 10, 1008, 1, CAST(N'2018-07-26' AS Date), CAST(N'2018-07-26T13:00:00.000' AS DateTime), 1, N'prueba@prieba.com', N'bjhgasdhbad', CAST(N'2018-07-27' AS Date), 1, CAST(N'2018-07-28' AS Date), CAST(N'2018-07-28T13:00:00.000' AS DateTime), 1, CAST(N'2018-07-29' AS Date), CAST(N'2018-07-29T13:00:00.000' AS DateTime), N'poligrafo', 1, CAST(N'2018-07-30' AS Date), CAST(N'2018-07-30T13:00:00.000' AS DateTime), 1, CAST(N'2018-08-02' AS Date), 1, CAST(N'2018-08-03' AS Date), CAST(N'2018-08-03T13:00:00.000' AS DateTime), N'JC', 1, CAST(N'2018-08-04' AS Date), NULL, NULL)
INSERT [Ofe].[SeguimientoXAplicacion] ([Cod_seguimiento], [Cod_Aplicacion], [Cod_Solicitud], [Cod_Oferta], [Pr_Entrevista], [Fch_Pr_Entrevista], [Hor_Pr_Entrevista], [Pruebas_Psico], [Email], [Contrasena], [Fch_Pruebas_Psico], [Jefe_Inme], [Fch_Jefe], [Hor_Jefe], [Poligrafo], [Fch_Poligrafo], [Hor_Poligrafo], [Dir_Poligrafo], [Socio_Econ], [Fch_Socio], [Hor_Socio], [Documentacion], [Fch_Doc], [Medicos], [Fch_Medicos], [Hor_Medicos], [Dir_Medicos], [CC], [Fch_Ingreso], [Fch_Salida], [Encargado]) VALUES (5, 5, 10, 1007, 1, CAST(N'2018-07-26' AS Date), CAST(N'2018-07-26T01:00:00.000' AS DateTime), 1, N'fdnm', N'fasvd', CAST(N'2018-07-27' AS Date), 1, CAST(N'2018-07-28' AS Date), CAST(N'2018-07-28T01:00:00.000' AS DateTime), 1, CAST(N'2018-07-29' AS Date), CAST(N'2018-07-29T01:00:00.000' AS DateTime), N'lllll', 1, CAST(N'2018-07-31' AS Date), CAST(N'2018-07-31T01:00:00.000' AS DateTime), 1, CAST(N'2018-08-02' AS Date), 1, CAST(N'2018-08-01' AS Date), CAST(N'2018-08-01T01:00:00.000' AS DateTime), N'sgsds', 1, CAST(N'2018-08-01' AS Date), NULL, NULL)
SET IDENTITY_INSERT [Ofe].[SeguimientoXAplicacion] OFF
SET IDENTITY_INSERT [Ofe].[Suscriptores] ON 

INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (1, N'juancalihernandez@outlook.com', 1, NULL)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (2, N'juancalihernandez@outlook.com', 2, NULL)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (3, N'juancalihernandez@outlook.com', 10, NULL)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (4, N'juancalihernandez@outlook.com', 22, NULL)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (5, N'juancalihernandez@outlook.com', 37, NULL)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (6, N'juan.hernandez@bi-dss.com', 22, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (7, N'juan.hernandez@bi-dss.com', 31, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (8, N'juan.hernandez@bi-dss.com', 32, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (9, N'juan.hernandez@bi-dss.com', 39, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (10, N'Katherine.Hernandez@banrural.com.hn', 1, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (11, N'Katherine.Hernandez@banrural.com.hn', 12, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (12, N'Katherine.Hernandez@banrural.com.hn', 22, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (13, N'Katherine.Hernandez@banrural.com.hn', 37, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (14, N'Katherine.Hernandez@banrural.com.hn', 39, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (15, N'Katherine.Hernandez@banrural.com.hn', 54, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (16, N'juancalihernandez@gmail.com', 1, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (17, N'juancalihernandez@gmail.com', 10, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (18, N'juancalihernandez@gmail.com', 22, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (19, N'juancalihernandez@gmail.com', 23, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (20, N'juancalihernandez@gmail.com', 30, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (21, N'juancalihernandez@gmail.com', 37, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (22, N'juancalihernandez@outlook.com', 61, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (23, N'juancalihernandez@outlook.com', 66, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (24, N'juan.andino@banrural.com.hn', 54, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (25, N'juan.andino@banrural.com.hn', 61, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (26, N'juan.andino@banrural.com.hn', 66, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (27, N'juancalihernandez@gmail.com', 39, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (28, N'juancalihernandez@gmail.com', 51, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (29, N'juan.hernandez@bi-dss.com', 1, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (30, N'juan.hernandez@bi-dss.com', 10, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (31, N'juan.hernandez@bi-dss.com', 23, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (32, N'juan.hernandez@bi-dss.com', 37, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (33, N'juan.hernandez@bi-dss.com', 54, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (34, N'juan.hernandez@bi-dss.com', 2, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (35, N'juan.hernandez@bi-dss.com', 8, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (36, N'juan.hernandez@bi-dss.com', 12, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (37, N'juan.hernandez@bi-dss.com', 18, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (38, N'juan.hernandez@bi-dss.com', 30, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (39, N'juan.hernandez@bi-dss.com', 51, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (40, N'juan.hernandez@bi-dss.com', 61, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (41, N'juan.hernandez@bi-dss.com', 66, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (42, N'yolany.villanueva@banrural.com.hn', 2, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (43, N'yolany.villanueva@banrural.com.hn', 10, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (44, N'yolany.villanueva@banrural.com.hn', 22, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (45, N'yolany.villanueva@banrural.com.hn', 39, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (46, N'yolany.villanueva@banrural.com.hn', 54, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (47, N'yolany.villanueva@banrural.com.hn', 61, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (48, N'yolany.villanueva@banrural.com.hn', 66, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (49, N'ana.gomez@banrural.com.hn', 18, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (50, N'ana.gomez@banrural.com.hn', 22, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (51, N'ana.gomez@banrural.com.hn', 23, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (52, N'ana.gomez@banrural.com.hn', 54, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (53, N'cinvale_diaz@hotmail.com', 1, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (54, N'cinvale_diaz@hotmail.com', 2, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (55, N'cinvale_diaz@hotmail.com', 8, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (56, N'cinvale_diaz@hotmail.com', 10, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (57, N'cinvale_diaz@hotmail.com', 12, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (58, N'cinvale_diaz@hotmail.com', 18, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (59, N'cinvale_diaz@hotmail.com', 22, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (60, N'cinvale_diaz@hotmail.com', 23, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (61, N'cinvale_diaz@hotmail.com', 30, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (62, N'cinvale_diaz@hotmail.com', 31, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (63, N'cinvale_diaz@hotmail.com', 32, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (64, N'cinvale_diaz@hotmail.com', 37, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (65, N'cinvale_diaz@hotmail.com', 39, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (66, N'cinvale_diaz@hotmail.com', 51, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (67, N'cinvale_diaz@hotmail.com', 54, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (68, N'cinvale_diaz@hotmail.com', 61, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (69, N'cinvale_diaz@hotmail.com', 66, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (70, N'cinthia.valeriano@banrural.com.hn', 22, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (71, N'juancalihernandez@gmail.com', 32, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (76, N'juancalihernandez@gmail.com', 2, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (77, N'juancalihernandez@gmail.com', 61, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (78, N'cinthiavaleriano@gmail.com', 66, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (79, N'juancalihernandez@gmail.com', 8, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (80, N'yolany.villanueva@banrural.com.hn', 1, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (81, N'tguevara1@gmail.com', 39, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (82, N'juan.andino@banrural.com.hn', 12, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (83, N'juan.andino@banrural.com.hn', 18, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (84, N'juan.andino@banrural.com.hn', 22, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (85, N'juan.andino@banrural.com.hn', 23, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (86, N'juan.andino@banrural.com.hn', 30, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (87, N'juan.andino@banrural.com.hn', 39, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (88, N'davidrg.9114@gmail.com', 22, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (89, N'suyen123@hotmail.com', 2, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (90, N'suyen123@hotmail.com', 12, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (91, N'suyen123@hotmail.com', 23, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (92, N'suyen123@hotmail.com', 31, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (93, N'suyen123@hotmail.com', 32, 1)
INSERT [Ofe].[Suscriptores] ([Cod_suscripcion], [Correo], [Cod_area], [Estado]) VALUES (1080, N'yesycerrato@gmail.com', 22, 1)
SET IDENTITY_INSERT [Ofe].[Suscriptores] OFF
SET IDENTITY_INSERT [Ofe].[TipoSeguimiento] ON 

INSERT [Ofe].[TipoSeguimiento] ([Cod_seguimiento], [Descripcion_seguimiento]) VALUES (1, N'Primera Entrevista')
INSERT [Ofe].[TipoSeguimiento] ([Cod_seguimiento], [Descripcion_seguimiento]) VALUES (2, N'Pruebas Psicométricas')
INSERT [Ofe].[TipoSeguimiento] ([Cod_seguimiento], [Descripcion_seguimiento]) VALUES (3, N'Jefe Inmediato')
INSERT [Ofe].[TipoSeguimiento] ([Cod_seguimiento], [Descripcion_seguimiento]) VALUES (4, N'Polígrafo')
INSERT [Ofe].[TipoSeguimiento] ([Cod_seguimiento], [Descripcion_seguimiento]) VALUES (5, N'Estudio Socio-Económico')
INSERT [Ofe].[TipoSeguimiento] ([Cod_seguimiento], [Descripcion_seguimiento]) VALUES (6, N'Verificar Documentación')
INSERT [Ofe].[TipoSeguimiento] ([Cod_seguimiento], [Descripcion_seguimiento]) VALUES (7, N'Exámenes Médicos')
INSERT [Ofe].[TipoSeguimiento] ([Cod_seguimiento], [Descripcion_seguimiento]) VALUES (8, N'Ingreso CC')
SET IDENTITY_INSERT [Ofe].[TipoSeguimiento] OFF
SET IDENTITY_INSERT [Sol].[Campus] ON 

INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (1, 1, N'UNAH - CU')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (2, 1, N'UNAH - CURLA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (3, 1, N'UNAH - CURLP')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (4, 1, N'UNAH - CURC')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (5, 1, N'UNAH - CUROC')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (6, 1, N'UNAH - VS')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (7, 1, N'UNAH - CURNO')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (8, 1, N'UNAH-TEC AGUÁN')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (9, 2, N'UNICAH - SAGRADO CORAZÓN DE JESÚS')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (10, 2, N'UNICAH - CORPORATIVO SAN JOSÉ')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (11, 2, N'UNICAH - SAN ISIDRO')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (12, 2, N'UNICAH - DIOS ESPÍRITU SANTO')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (13, 2, N'UNICAH - JESÚS SACRAMENTADO')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (14, 2, N'UNICAH - SANTA ROSA DE LIMA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (15, 2, N'UNICAH - SAN PEDRO Y SAN PABLO')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (16, 2, N'UNICAH - SANTIAGO APÓSTOL')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (17, 2, N'UNICAH - SANTA CLARA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (18, 2, N'UNICAH - SAN JORGE')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (19, 3, N'UNITEC - TEGUCIGALPA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (20, 3, N'UNITEC - SAN PEDRO SULA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (21, 4, N'UJCV - TEGUCIGALPA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (22, 5, N'UNIMETRO - TEGUCIGALPA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (23, 6, N'UPNFM - TEGUCIGALPA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (24, 6, N'UPNFM - SAN PEDRO SULA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (25, 6, N'UPNFM - NACAOME')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (26, 7, N'UTH - TEGUCIGALPA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (27, 7, N'UTH - SAN PEDRO SULA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (28, 7, N'UTH - LA CEIBA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (29, 7, N'UTH - ISLAS DE LA BAHÍA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (30, 7, N'UTH - SANTA BÁRBARA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (31, 7, N'UTH - EL PROGRESO')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (32, 8, N'CEUTEC - TEGUCIGALPA (EL PRADO)')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (33, 8, N'CEUTEC - TEGUCIGALPA (LOS PRÓCERES)')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (34, 8, N'CEUTEC - TEGUCIGALPA (CENTROAMERICA)')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (35, 8, N'CEUTEC - SAN PEDRO SULA (SEDE NORTE)')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (36, 8, N'CEUTEC - SAN PEDRO SULA (SEDE CENTRAL)')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (37, 8, N'CEUTEC - LA CEIBA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (38, 9, N'EL ZAMORANO')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (39, 10, N'UPI - COMAYAGÜELA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (40, 11, N'CEDAC - TEGUCIGALPA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (41, 11, N'CEDAC - SAN PEDRO SULA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (42, 12, N'ESNACIFOR - SIGUATEPEQUE')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (43, 13, N'USAP - SAN PEDRO SULA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (44, 14, N'UJN - SAN PEDRO SULA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (45, 15, N'UNAG - CATACAMAS')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (46, 16, N'UCENM -  SAN PEDRO SULA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (47, 16, N'UCENM -  CATACAMAS')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (48, 16, N'UCENM -  LA ESPERANZA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (49, 16, N'UCENM -  TEGUCIGALPA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (50, 16, N'UCENM -  TOCOA')
INSERT [Sol].[Campus] ([Cod_campus], [Cod_universidad], [Nombre]) VALUES (51, 16, N'UCENM -  PEÑA BLANCA')
SET IDENTITY_INSERT [Sol].[Campus] OFF
SET IDENTITY_INSERT [Sol].[Carreras] ON 

INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (1, 1, N'LICENCIATURA EN DERECHO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (2, 1, N'LICENCIATURA EN ANTROPOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (3, 1, N'LICENCIATURA EN PERIODISMO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (4, 1, N'LICENCIATURA EN PSICOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (5, 1, N'LICENCIATURA EN PEDAGOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (6, 1, N'LICENCIATURA EN TRABAJO SOCIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (7, 1, N'LICENCIATURA EN HISTORIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (8, 1, N'LICENCIATURA EN LETRAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (9, 1, N'LICENCIATURA EN FILOSOFÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (10, 1, N'LICENCIATURA EN SOCIOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (11, 1, N'LICENCIATURA EN EDUCACIÓN FÍSICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (12, 1, N'LICENCIATURA EN LENGUAS EXTRANJERAS CON ORIENTACIÓN EN INGLÉS Y FRANCÉS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (13, 1, N'LICENCIATURA EN MÚSICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (14, 1, N'LICENCIATURA EN DESARROLLO LOCAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (15, 1, N'INGENIERÍA CIVIL ')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (16, 1, N'INGENIERÍA MECÁNICA INDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (17, 1, N'INGENIERÍA ELÉCTRICA INDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (18, 1, N'INGENIERÍA INDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (19, 1, N'INGENIERÍA EN SISTEMAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (20, 1, N'ARQUITECTURA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (21, 1, N'LICENCIATURA EN MATEMÁTICAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (22, 1, N'LICENCIATURA EN FÍSICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (23, 1, N'LICENCIATURA EN ASTRONOMÍA Y ASTROFÍSICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (24, 1, N'LICENCIATURA EN CIENCIA Y TECNOLOGÍAS DE LA INFORMACIÓN GEOGRÁFICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (25, 1, N'MEDICINA Y CIRUGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (26, 1, N'ODONTOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (27, 1, N'LICENCIATURA EN NUTRICIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (28, 1, N'QUÍMICA Y FARMACIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (29, 1, N'ENFERMERÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (30, 1, N'MICROBIOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (31, 1, N'LICENCIATURA EN BIOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (32, 1, N'LICENCIATURA EN FONOAUDIOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (33, 1, N'LICENCIATURA EN ADMINISTRACIÓN DE EMPRESAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (34, 1, N'LICENCIATURA EN ADMINISTRACIÓN PÚBLICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (35, 1, N'LICENCIATURA EN ECONOMÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (36, 1, N'LICENCIATURA EN CONTADURÍA PÚBLICA Y FINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (37, 1, N'LICENCIATURA EN ADMINISTRACIÓN ADUANERA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (38, 1, N'LICENCIATURA EN ADMINISTRACIÓN DE BANCA Y FINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (39, 1, N'LICENCIATURA EN COMERCIO INTERNACIONAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (40, 1, N'LICENCIATURA EN INFORMATICA ADMINISTRATIVA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (41, 1, N'LICENCIATURA EN MERCADOTECNIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (42, 1, N'INGENIERÍA AGRONÓMICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (43, 1, N'INGENIERÍA FORESTAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (44, 1, N'INGENIERÍA AGROINDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (45, 1, N'INGENIERÍA EN CIENCIAS ACUICOLAS Y RECURSOS MARINOS COSTEROS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (46, 1, N'LICENCIATURA EN ECONOMÍA AGRICOLA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (47, 1, N'LICENCIATURA EN ECOTURISMO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (48, 1, N'LICENCIATURA EN COMUNICACIÓN INTERNACIONAL CON ORIENTACIÓN EN AGROINDUSTRIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (49, 1, N'TÉCNICO UNIVERSITARIO EN EDUCACIÓN BÁSICA PARA LA ENSEÑANZA DEL ESPAÑOL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (50, 1, N'TÉCNICO UNIVERSITARIO METALURGIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (51, 1, N'TÉCNICO UNIVERSITARIO EN LENGUA DE SEÑAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (52, 1, N'TÉCNICO EN PRODUCCIÓN AGRÍCOLA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (53, 1, N'TÉCNICO UNIVERSITARIO EN TERAPIA FUNCIONAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (54, 1, N'TÉCNICO UNIVERSITARIO EN RADIOTECNOLOGÍAS (RADIOLOGÍA E IMÁGENES)')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (55, 1, N'TÉCNICO UNIVERSITARIO EN MICROFINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (56, 1, N'TÉCNICO UNIVERSITARIO EN ALIMENTOS Y BEBIDAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (57, 1, N'TÉCNICO UNIVERSITARIO EN CALIDAD DEL CAFÉ')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (58, 1, N'TÉCNICO UNIVERSITARIO EN ADMINISTRACIÓN DE EMPRESAS CAFETALERAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (59, 1, N'TÉCNICO UNIVERSITARIO EN SISTEMAS DE INFORMACIÓN GEOGRAFÍA CON ÉNFASIS EN CATASTRO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (60, 1, N'TÉCNICO UNIVERSITARIO EN DESARROLLO MUNICIPAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (61, 1, N'LICENCIATURA EN ADMINISTRACIÓN DE EMPRESAS AGROPECUARIAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (62, 1, N'TÉCNICO UNIVERSITARIO EN MICROFINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (63, 1, N'LICENCIATURA EN ECOTURISMO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (64, 1, N'MAESTRÍA EN FORESTERÍA COMUNITARIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (65, 1, N'MAESTRÍA EN GESTIÓN DEL RIESGO Y MANEJO DE DESASTRES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (66, 1, N'MAESTRÍA EN MATEMÁTICA CON ORIENTACIÓN EN INGENIERÍA MATEMÁTICA Y ESTADÍSTICA MATEMÁTICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (67, 1, N'MAESTRÍA EN RECURSOS HÍDRICOS CO ORIENTACIÓN EN HIDROGEOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (68, 1, N'MAESTRÍA EN ENFERMEDADES INFECCIOSAS Y ZOONÓTICAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (69, 1, N'MAESTRÍA EN FÍSICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (70, 1, N'MAESTRI´A EN ORDENAMIENTO Y GESTIO´N DEL TERRITORIO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (71, 1, N'MAESTRÍA EN DERECHO MARÍTIMO Y GESTIÓN PORTUARIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (72, 1, N'MAESTRÍA EN DERECHO MERCANTIL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (73, 1, N'MAESTRÍA EN DERECHOS HUMANOS Y DESARROLLO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (74, 1, N'MAESTRÍA EN CIENCIA POLÍTICA Y GESTIÓN ESTATAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (75, 1, N'MAESTRÍA EN DERECHO CONSTITUCIONAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (76, 1, N'MAESTRÍA EN DERECHO PENAL Y PROCESAL PENAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (77, 1, N'MAESTRÍA EN FARMACIA CLÍNICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (78, 1, N'MAESTRÍA EN TECNOLOGÍA Y CONTROL DE MEDICAMENTOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (79, 1, N'MAESTRÍA EN DEMOGRAFÍA Y DESARROLLO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (80, 1, N'MAESTRÍA EN ESTADO Y POLÍTICAS PÚBLICAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (81, 1, N'MAESTRÍA EN PSICOLOGÍA INDUSTRIAL Y ORGANIZACIONAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (82, 1, N'MAESTRÍA EN ADMINISTRACIÓN DE EMPRESAS CON ORIENTACIÓN A FINANZAS Y RRHH')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (83, 1, N'MAESTRÍA EN GESTIÓN INFORMÁTICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (84, 1, N'MAESTRÍA EN GESTIÓN DE TELECOMUNICACIONES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (85, 1, N'MAESTRÍA EN MERCADOTECNIA CON ÉNFASIS EN NEGOCIOS INTERNACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (86, 1, N'MAESTRÍA EN DIRECCIÓN DE NEGOCIOS INTERNACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (87, 1, N'MAESTRI´A EN DIDA´CTICA DE LENGUAS Y CULTURAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (88, 2, N'INGENIERÍA CIVIL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (89, 2, N'INGENIERÍA INDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (90, 2, N'INGENIERÍA AMBIENTAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (91, 2, N'ARQUITECTURA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (92, 2, N'INGENIERÍA EN CIENCIAS DE LA COMPUTACIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (93, 2, N'MAESTRÍA EN GESTIÓN DE PROYECTOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (94, 2, N'MEDICINA Y CIRUGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (95, 2, N'MAESTRÍA EN GERENCIA DE SERVICIOS DE SALUD')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (96, 2, N'CIRUGÍA DENTAL ')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (97, 2, N'CIRUGÍA DENTAL CON ESPECIALIDAD EN ENDODONCIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (98, 2, N'CIRUGÍA DENTAL CON ESPECIALIDAD EN PERIODONCIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (99, 2, N'CIRUGÍA DENTAL CON ESPECIALIDAD EN ORTODONCIA')
GO
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (100, 2, N'PSICOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (101, 2, N'MAESTRÍA EN PSICOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (102, 2, N'ENFERMERÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (103, 2, N'GESTIÓN ESTRATEGICA DE EMPRESAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (104, 2, N'FINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (105, 2, N'MERCADOTECNIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (106, 2, N'MAESTRÍA EN ADMINISTRACIÓN DE EMPRESAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (107, 2, N'MAESTRÍA EN ECONOMÍA Y FINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (108, 2, N'MAESTRÍA EN ORGANIZACIONES MICROFINANCIERAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (109, 2, N'MAESTRÍA EN GESTIÓN DE NEGOCIOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (110, 2, N'MASTERÍA EN GESTIÓN DE LA CALIDAD TOTAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (111, 2, N'DOCTORADO EN CIENCIAS ADMINISTRATIVAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (112, 2, N'DERECHO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (113, 2, N'COMUNICACIONES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (114, 2, N'RELACIONES INTERNACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (115, 2, N'MASTERÍA EN RELACIONES INTERNACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (116, 2, N'TEOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (117, 2, N'MAESTRÍA EN CIENCIAS RELIGIOSAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (118, 2, N'MAESTRÍA EN TEOLOGÍA ESPIRITUAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (119, 2, N'DOCTORADO EN TEOLOGÍA BIBLÍCA PASTORAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (120, 3, N'ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (121, 3, N'ADMINSTRACIÓN INDUSTRIAL Y DE NEGOCIOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (122, 3, N'COMUNICACIÓN AUDIOVISUAL Y PUBLICITARIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (123, 3, N'DERECHO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (124, 3, N'DISEÑO DE MODAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (125, 3, N'DISEÑO GRÁFICO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (126, 3, N'ECONOMÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (127, 3, N'FINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (128, 3, N'GASTRONOMÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (129, 3, N'MERCADOTECNIA Y NEGOCIOS INTERNACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (130, 3, N'PSICOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (131, 3, N'RELACIONES INTERNACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (132, 3, N'ARQUITECTURA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (133, 3, N'BIOMÉDICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (134, 3, N'INGENIERÍA CIVIL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (135, 3, N'INGENIERÍA EN ENERGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (136, 3, N'INGENIERÍA INDUSTRIAL Y DE SISTEMAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (137, 3, N'INGENIERÍA EN MECATRÓNICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (138, 3, N'INGENIERÍA EN SISTEMAS COMPUTACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (139, 3, N'INGENIERÍA EN TELECOMUNICACIONES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (140, 3, N'MEDICINA Y CIRUGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (141, 3, N'NUTRICIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (142, 3, N'ODONTOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (143, 3, N'MAESTRÍA EN ADMINISTRACIÓN DE PROYECTOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (144, 3, N'MAESTRÍA EN CONTADURÍA PÚBLICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (145, 3, N'MAESTRÍA EN DERECHO EMPRESARIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (146, 3, N'MAESTRÍA EN DESARROLLO LOCAL Y TURISMO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (147, 3, N'MAESTRÍA EN DIRECCIÓN DE LA COMUNICACIÓN CORPORATIVA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (148, 3, N'MAESTRÍA EN DIRECCIÓN DE RECURSOS HUMANOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (149, 3, N'MAESTRÍA EN DIRECCIÓN EMPRESARIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (150, 3, N'MAESTRÍA EN FINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (151, 3, N'MAESTRÍA EN GESTIÓN DE ENERGÍAS RENOVABLES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (152, 3, N'MAESTRÍA EN GESTIÓN DE OPERACIONES Y LOGÍSTICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (153, 3, N'MAESTRÍA EN GESTIÓN DE TECNOLOGÍAS DE LA INFORMACIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (154, 3, N'MAESTRÍA EN INGENIERÍA DE ESTRUCTURAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (155, 3, N'MASTER OF BUSSINESS ADMINISTRATION (LOYOLA UNIVERSITY NEW ORLEANS)')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (156, 3, N'MAESTRÍA DE GESTIÓN CALIDAD INTEGRADOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (157, 3, N'DOCTORADO EN ECONOMÍA Y EMPRESA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (158, 4, N'MAESTRÍA EN ALTA GERENCIA DE PROYECTOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (159, 4, N'ARQUITECTURA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (160, 4, N'INGENIERÍA CIVIL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (161, 4, N'INGENIERÍA DE LA CONSTRUCCIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (162, 4, N'INGENIERÍA EN INFOTECNOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (163, 4, N'INGENIERÍA INDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (164, 4, N'INGENIERÍA AGRICOLA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (165, 4, N'INGENIERÍA FORESTAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (166, 4, N'INGENIERÍA EN MERCADOTECNIA Y NEGOCIOS INTERNACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (167, 4, N'LICENCIATURA EN MERCADOTECNIA Y PUBLICIDAD')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (168, 4, N'DISEÑO GRÁFICO Y COMUNICAIÓN CORPORATIVA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (169, 4, N'PERIODISMO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (170, 4, N'DISEÑO DE INTERIORES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (171, 4, N'LICENCIATURA EN AUDITORÍA Y FINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (172, 4, N'LICENCIATURA EN ADMINISTRACIÓN DE EMPRESAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (173, 4, N'LICENCIATURA EN ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (174, 4, N'DERECHO ')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (175, 4, N'TÉCNICO UNIVERSITARIO EN CONSTRUCCIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (176, 4, N'TÉCNICO UNIVERSITARIO EN ADMINISTRACIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (177, 4, N'TÉCNICO EN TURISMO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (178, 5, N'INGENIERÍA DE NEGOCIOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (179, 5, N'ECOTURISMO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (180, 5, N'COMUNICACIÓN SOCIAL Y PÚBLICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (181, 5, N'MARKETING Y NEGOCIOS INTERNACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (182, 5, N'GESTIÓN Y CONTADURÍA EMPRESARIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (183, 5, N'DERECHO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (184, 5, N'MAESTRÍA EN INGENIERÍA ECONOMICA Y FINANCIERA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (185, 5, N'MAESTRÍA EN INGENIERÍA DE NEGOCIOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (186, 5, N'MAESTRÍA EN GESTIÓN Y TURISMO AMBIENTAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (187, 6, N'CIENCIAS NATURALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (188, 6, N'CIENCIAS MATEMÁTICAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (189, 6, N'TURISMO Y HOSTELERÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (190, 6, N'EDUCACIÓN TÉCNICA INDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (191, 6, N'TECNOLOGÍA DE ALIMENTOS Y TEXTILES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (192, 6, N'ADMINISTRACIÓN Y GESTIÓN EDUCATIVA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (193, 6, N'EDUCACIÓN ESPECIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (194, 6, N'EDUCACIÓN PREESCOLAR')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (195, 6, N'ORIENTACIÓN EDUCATIVA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (196, 6, N'CIENCIAS SOCIALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (197, 6, N'ESPAÑOL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (198, 6, N'INGLÉS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (199, 6, N' EDUCACIÓN FÍSICA Y  DEPORTES')
GO
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (200, 6, N' ARTE')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (201, 6, N'MAESTRÍA EN MATEMÁTICA EDUCATIVA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (202, 6, N'MAESTRÍA EN EDUCACIÓN EN CIENCIAS NATURALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (203, 6, N'MAESTRÍA EN EDUCACIÓN TECNOLÓGICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (204, 6, N'MAESTRÍA EN GESTIÓN ADMINISTRATIVA Y FINANCIERA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (205, 6, N'MAESTRÍA EN BIBLIOTECOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (206, 6, N'MAESTRÍA EN GESTIÓN DE LA EDUCACIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (207, 6, N'MAESTRÍA EN ESTUDIOS DE GÉNERO Y EDUCACIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (208, 6, N'MAESTRÍA EN FORMACIÓN DE FORMADORES PARA EDUCACIÓN BÁSICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (209, 6, N'MAESTRÍA EN INVESTIGACIÓN EDUCATIVA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (210, 6, N'MAESTRÍA EN CURRÍCULUM')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (211, 6, N'MAESTRÍA EN LA ENSEÑANZA DE LA GEOGRAFÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (212, 6, N'MAESTRÍA EN EDUCACIÓN FÍSICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (213, 6, N'MAESTRÍA EN LA ENSEÑANZA DE LENGUAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (214, 6, N'MAESTRÍA EN EDUCACIÓN EN DERECHOS HUMANOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (215, 6, N'MAESTRÍA EN CALIDAD Y EQUIDAD DE LA EDUCACIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (216, 6, N'MAESTRÍA EN FORMACIÓN DE FORMADORES PARA EDUCACIÓN BÁSICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (217, 6, N'DOCTORADO EN EDUCACIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (218, 7, N'GERENCIA DE NEGOCIOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (219, 7, N'MARKETING')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (220, 7, N'CONTADURÍA FINANCIERA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (221, 7, N'COMERCIO Y NEGOCIOS INTERNACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (222, 7, N'RELACIONES INDUSTRIALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (223, 7, N'DERECHO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (224, 7, N'TURISMO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (225, 7, N'INGENIERÍA EN PRODUCCIÓN INDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (226, 7, N'INGENIERÍA ELECTRÓNICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (227, 7, N'INGENIERÍA EN COMPUTACIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (228, 7, N'INGENIERÍA FINANCIERA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (229, 7, N'MAESTRÍA EN DIRECCIÓN DE RECURSOS HUMANOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (230, 7, N'MAESTRÍA EN DIRECCIÓN EMPRESARIAL Y COMERCIO INTERNACIONAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (231, 7, N'MAESTRÍA EN DIRECCIÓN FINANCIERA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (232, 7, N'MAESTRÍA EN DIRECCIÓN COMERCIAL Y MERCADEO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (233, 8, N'ADMINISTRACIÓN DE EMPRESAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (234, 8, N'ADMINISTRACIÓN DE EMPRESAS TURÍSTICAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (235, 8, N'CONTADURÍA PÚBLICA Y FINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (236, 8, N'DERECHO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (237, 8, N'DISEÑO GRÁFICO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (238, 8, N'MERCADOTECNIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (239, 8, N'PSICOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (240, 8, N'RECURSOS HUMANOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (241, 8, N'INGENIERÍA ELECTRÓNICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (242, 8, N'INGENIERÍA EN GESTIÓ LOGÍSTICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (243, 8, N'INGENIERÍA INFORMÁTICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (244, 8, N'TÉCNICO UNIVERSITARIÓ BILINGÜE EN CALL CENTER')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (245, 8, N'TÉCNICO UNIVERSITARIO EN DISEÑO Y DESARROLLO WEB')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (246, 8, N'TÉCNICO UNIVERSITARIO EN INSTALACIÓN DE REDES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (247, 9, N'INGENIERÍA AGRONÓMICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (248, 9, N'AMBIENTE Y DESARROLLO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (249, 9, N'ADMINISTRACIÓN DE AGRONEGOCIOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (250, 9, N'AGROINDUSTRIA ALIMENTARIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (251, 9, N'MAESTRÍA EN AGRICULTURA TROPICAL SOSTENIBLE')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (252, 10, N'INGENIERÍA CIVIL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (253, 10, N'INGENIERÍA TIC')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (254, 10, N'INGENIERÍA AMBIENTAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (255, 10, N'INGENIERÍA FINANCIERA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (256, 10, N'INGNIERÍA DE DISEÑO INDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (257, 10, N'INGENIERÍA DE RECURSOS RENOVABLES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (258, 10, N'INGENIERÍA EN CINE Y TELEVISIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (259, 10, N'TÉCNICO EN GEOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (260, 10, N'TÉCNICO EN TOPOGRAFÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (261, 11, N'ARQUITECTURA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (262, 11, N'DISEÑO GRÁFICO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (263, 11, N'ARQUITECTURA DE INTERIORES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (264, 11, N'TECNOLOGO EN DISEÑO GRÁFICO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (265, 11, N'TECNOLOGO EN DISEÑO DE INTERIORES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (266, 12, N'DASONOMÍA ')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (267, 12, N'INGENIERÍA FORESTAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (268, 13, N'ARQUITECTURA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (269, 13, N'INGENIERÍA EN OPERACIONES Y LOGÍSTICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (270, 13, N'INGENIERÍA INDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (271, 13, N'INGENIERÍA AGRONÓMICA ADMINISTRATIVA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (272, 13, N'INGENIERÍA EN TECNOLOGÍAS COMPUTACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (273, 13, N'LICENCIATURA EN DISEÑO GRÁFICO ')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (274, 13, N'TÉCNICO EN DISEÑO GRÁFICO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (275, 13, N'LICENCIATURAS EN NEGOCIOS ELECTRÓNICOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (276, 13, N'LICENCIATURA EN ADMINISTRACIÓN DE EMPRESAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (277, 13, N'LICENCIATURA EN ADMINISTRACIÓN FINANCIERA Y BANCARÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (278, 13, N'TÉCNICO EN ADMINISTRACIÓN DE LA PRODUCCIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (279, 13, N'LICENCIATURA EN MECADOTECNIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (280, 13, N'TÉCNICO EN ADMINISTRACIÓN DE VENTAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (281, 13, N'LICENCIATURA EN DERECHO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (282, 13, N'LICENCIATURA EN CIENCIAS DE LA COMUNICACIÓN Y PUBLICIDAD')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (283, 13, N'LICENCIATURA EN ADMINISTRACIÓN TURÍSTICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (284, 13, N'TÉCNICO DE ADMINISTRACIÓN TURÍSTICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (285, 13, N'LICENCITURA EN INFORMÁTICA ADMINISTRATIVA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (286, 13, N'MAESTRÍA EN ADMINISTRACIÓN DE EMPRESAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (287, 13, N'MAESTRÍA EN ADMINISTRACIÓN INDUSTRIAL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (288, 13, N'MAESTRÍA EN DERECHO PROCESAL CIVIL')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (289, 14, N'GERENCIA DE NEGOCIOS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (290, 14, N'CONTADURÍA PÚBLICA Y FINANZAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (291, 14, N'INGENIERÍA INDUSTRIAL Y DE SISTEMAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (292, 14, N'INGNIERÍA ELECTRÓNICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (293, 14, N'INGENIERÍA EN SISTEMAS COMPUTACIONALES')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (294, 15, N'INGENIERÍA AGRONÓMICA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (295, 15, N'INGENIERÍA EN RECURSOS NATURALES Y AMBIENTE')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (296, 15, N'INGENIERÍA EN TECNOLOGÍA ALIMENTARIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (297, 15, N'INGENIERÍA EN VETERINARIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (298, 15, N'ADMINISTRACIÓN DE EMPRESAS AGROPECUARIAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (299, 16, N'GESTIÓN PORTUARIA Y TRANSPORTE MARÍTIMO')
GO
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (300, 16, N'TÉCNICO EN PRODUCCIÓN AVÍCOLA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (301, 16, N'TÉCNICO EN LABORATORIO CLÍNICO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (302, 16, N'LICENCIATURA EN MERCADOTECNIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (303, 16, N'LICENCIATURA EN NUTRICIÓN')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (304, 16, N'LICENCIATURA EN PSICOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (305, 16, N'LICENCIATURA EN TEOLOGÍA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (306, 16, N'LICENCIATURA EN SALUD COMUNITARIA')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (307, 16, N'INGENIERÍA EN SISTEMAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (308, 16, N'LICENCIATURA EN DERECHO')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (309, 16, N'LICENCIATURA EN ADMINISTRACIÓN DE EMPRESAS')
INSERT [Sol].[Carreras] ([Cod_carreras], [Cod_campus], [Nombre_carrera]) VALUES (310, 16, N'MAESTRÍA EN GERENCIA EMPRESARIAL')
SET IDENTITY_INSERT [Sol].[Carreras] OFF
SET IDENTITY_INSERT [Sol].[Competencias] ON 

INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1, 3, N'TRABAJO EN EQUIPO', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (2, 3, N'PUNTUALIDAD', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (3, 3, N'LIDERAZGO', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (4, 3, N'INICIATIVA', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (5, 3, N'CREATIVIDAD', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (6, 3, N'INNOVACION', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1001, 2, N'PUNTUALIDAD', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1002, 2, N'CREATIVIDAD', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1003, 8, N'TRABAJO EN EQUIPO', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1004, 8, N'PUNTUALIDAD', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1005, 8, N'LIDERAZGO', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1006, 8, N'INNOVACION', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1007, 8, N'CREATIVIDAD', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1008, 8, N'INICIATIVA', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1009, 14, N'TRABAJO EN EQUIPO', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1010, 14, N'INNOVACION', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1011, 14, N'CREATIVIDAD', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1012, 15, N'TRABAJO EN EQUIPO', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1013, 15, N'PUNTUALIDAD', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1014, 15, N'LIDERAZGO', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1015, 15, N'INICIATIVA', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1016, 15, N'CREATIVIDAD', 1)
INSERT [Sol].[Competencias] ([Cod_compentencias], [Cod_solicitud], [Nombre_competencia], [Posee]) VALUES (1017, 15, N'INNOVACION', 1)
SET IDENTITY_INSERT [Sol].[Competencias] OFF
SET IDENTITY_INSERT [Sol].[Cuentas] ON 

INSERT [Sol].[Cuentas] ([Cod_cuenta], [Cod_solicitud], [Tipo_cuenta], [Cantidad], [Institucion], [Numero_cuenta]) VALUES (1, 3, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, N'No ingresada')
INSERT [Sol].[Cuentas] ([Cod_cuenta], [Cod_solicitud], [Tipo_cuenta], [Cantidad], [Institucion], [Numero_cuenta]) VALUES (1001, 2, N'A', CAST(0.00 AS Decimal(18, 2)), NULL, N'No ingresada')
INSERT [Sol].[Cuentas] ([Cod_cuenta], [Cod_solicitud], [Tipo_cuenta], [Cantidad], [Institucion], [Numero_cuenta]) VALUES (1002, 8, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, N'No ingresada')
INSERT [Sol].[Cuentas] ([Cod_cuenta], [Cod_solicitud], [Tipo_cuenta], [Cantidad], [Institucion], [Numero_cuenta]) VALUES (1003, 9, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, N'No ingresada')
INSERT [Sol].[Cuentas] ([Cod_cuenta], [Cod_solicitud], [Tipo_cuenta], [Cantidad], [Institucion], [Numero_cuenta]) VALUES (1004, 1, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, N'No ingresada')
INSERT [Sol].[Cuentas] ([Cod_cuenta], [Cod_solicitud], [Tipo_cuenta], [Cantidad], [Institucion], [Numero_cuenta]) VALUES (1005, 11, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, N'No ingresada')
INSERT [Sol].[Cuentas] ([Cod_cuenta], [Cod_solicitud], [Tipo_cuenta], [Cantidad], [Institucion], [Numero_cuenta]) VALUES (1006, 14, N'A', CAST(2000.00 AS Decimal(18, 2)), N'Bac', N'No ingresada')
INSERT [Sol].[Cuentas] ([Cod_cuenta], [Cod_solicitud], [Tipo_cuenta], [Cantidad], [Institucion], [Numero_cuenta]) VALUES (1007, 15, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, N'No ingresada')
SET IDENTITY_INSERT [Sol].[Cuentas] OFF
SET IDENTITY_INSERT [Sol].[Cursos] ON 

INSERT [Sol].[Cursos] ([CodCurso], [CodSolicitud], [TemaCurso], [NombreCentroEstudio], [DireccionCentroEstudio], [Duracion], [Titulo]) VALUES (1, 15, N'Excel Financiero', N'INFOP', N'en línea', N'2 semanas', N'Excel Financiero')
SET IDENTITY_INSERT [Sol].[Cursos] OFF
SET IDENTITY_INSERT [Sol].[Departamentos] ON 

INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (1, 1, N'ATLANTIDA')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (2, 1, N'COLON')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (3, 1, N'COMAYAGUA')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (4, 1, N'COPAN')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (5, 1, N'CORTES')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (6, 1, N'CHOLUTECA')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (7, 1, N'EL PARAÍSO')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (8, 1, N'FRANCISCO MORAZÁN')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (9, 1, N'GRACIAS A DIOS')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (10, 1, N'INTIBUCA')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (11, 1, N'ISLAS DE LA BAHÍA')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (12, 1, N'LA PAZ')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (13, 1, N'LEMPIRA')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (14, 1, N'OCOTEPEQUE')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (15, 1, N'OLANCHO')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (16, 1, N'SANTA BÁRBARA')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (17, 1, N'VALLE')
INSERT [Sol].[Departamentos] ([CodDepartamento], [CodPais], [DescripcionDepartamento]) VALUES (18, 1, N'YORO')
SET IDENTITY_INSERT [Sol].[Departamentos] OFF
SET IDENTITY_INSERT [Sol].[Dependientes] ON 

INSERT [Sol].[Dependientes] ([CodDependiente], [CodSolicitud], [NombreCompleto], [TipoDependencia]) VALUES (1, 2, N'Kamila Zelaya', N'T')
INSERT [Sol].[Dependientes] ([CodDependiente], [CodSolicitud], [NombreCompleto], [TipoDependencia]) VALUES (2, 9, N'Katherine Diaz', N'P')
INSERT [Sol].[Dependientes] ([CodDependiente], [CodSolicitud], [NombreCompleto], [TipoDependencia]) VALUES (3, 15, N'Zoe Ariana Farach', N'T')
SET IDENTITY_INSERT [Sol].[Dependientes] OFF
SET IDENTITY_INSERT [Sol].[Grupo_organizacion] ON 

INSERT [Sol].[Grupo_organizacion] ([Cod_organizaciones], [Nombre_organizacion]) VALUES (1, N'Club de leones')
INSERT [Sol].[Grupo_organizacion] ([Cod_organizaciones], [Nombre_organizacion]) VALUES (2, N'')
INSERT [Sol].[Grupo_organizacion] ([Cod_organizaciones], [Nombre_organizacion]) VALUES (3, N'')
INSERT [Sol].[Grupo_organizacion] ([Cod_organizaciones], [Nombre_organizacion]) VALUES (4, N'')
INSERT [Sol].[Grupo_organizacion] ([Cod_organizaciones], [Nombre_organizacion]) VALUES (5, N'')
INSERT [Sol].[Grupo_organizacion] ([Cod_organizaciones], [Nombre_organizacion]) VALUES (6, N'Club de leones')
SET IDENTITY_INSERT [Sol].[Grupo_organizacion] OFF
SET IDENTITY_INSERT [Sol].[Habilidades] ON 

INSERT [Sol].[Habilidades] ([Cod_habilidad], [Cod_solicitud], [Nombre_habilidad], [Porcentaje]) VALUES (1, 14, N'Trabajo en grupo', 75)
INSERT [Sol].[Habilidades] ([Cod_habilidad], [Cod_solicitud], [Nombre_habilidad], [Porcentaje]) VALUES (2, 14, N'amabilidad', 100)
INSERT [Sol].[Habilidades] ([Cod_habilidad], [Cod_solicitud], [Nombre_habilidad], [Porcentaje]) VALUES (3, 15, N'paciente, tolerante, dedicada, perseverante', 75)
SET IDENTITY_INSERT [Sol].[Habilidades] OFF
SET IDENTITY_INSERT [Sol].[Hermanos] ON 

INSERT [Sol].[Hermanos] ([CodHermano], [CodSolicitud], [NombreCompleto], [Edad], [Domicilio], [Telefono], [Ocupacion]) VALUES (1, 2, N'Fabia Isabel', NULL, NULL, N'0000-0000', NULL)
INSERT [Sol].[Hermanos] ([CodHermano], [CodSolicitud], [NombreCompleto], [Edad], [Domicilio], [Telefono], [Ocupacion]) VALUES (2, 14, N'Esdras Armando Mendoza ', 14, N'Col 21 de Octubre ', N'9999-9999', N'estudiante')
INSERT [Sol].[Hermanos] ([CodHermano], [CodSolicitud], [NombreCompleto], [Edad], [Domicilio], [Telefono], [Ocupacion]) VALUES (3, 15, N'Nancy Lizeth Gomez', 35, N'Colonia Independencia ', N'9977-8555', N'Economista')
SET IDENTITY_INSERT [Sol].[Hermanos] OFF
SET IDENTITY_INSERT [Sol].[Hijos] ON 

INSERT [Sol].[Hijos] ([CodHijo], [CodSolicitud], [Nombres], [Apellidos], [Edad]) VALUES (1, 2, N'Kamila Sophia', N'Zelaya Caballero', 9)
INSERT [Sol].[Hijos] ([CodHijo], [CodSolicitud], [Nombres], [Apellidos], [Edad]) VALUES (2, 15, N'Zoe Ariana Ariana Zoe', N'Farach Farach Gomez Gomez', 8)
SET IDENTITY_INSERT [Sol].[Hijos] OFF
SET IDENTITY_INSERT [Sol].[HistorialAcademico] ON 

INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1, 3, N'CENTRO UNIVERSITARIO TECNOLÓGICO (CEUTEC) ', N'PREGRADO', N'CEUTEC - TEGUCIGALPA (CENTROAMERICA)', N'PSICOLOGÍA', 2012, 2015)
INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1001, 2, N'UNIVERSIDAD NACIONAL AUTÓNOMA DE HONDURAS (UNAH)', N'PREGRADO', N'UNAH - CU', N'LICENCIATURA EN PSICOLOGÍA', 2010, 2014)
INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1002, 8, N'Alfonso Guillen Zelaya', N'SECUNDARIA', N'DISTRITO CENTRAL', N'Perito Mercantil y Contador Publico', 2004, 2010)
INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1003, 9, N'IAGZ', N'PRIMARIA', N'DISTRITO CENTRAL', N'Ninguno', 1995, 2001)
INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1004, 1, N'IAGZ', N'SECUNDARIA', N'DISTRITO CENTRAL', N'Bach. en ciencias y letras y tecnico en computacion', 2005, 2008)
INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1005, 9, N'IAGZ', N'SECUNDARIA', N'FRANCISCO MORAZÁN', N'Bachillerato en CCLL y Tecnico en computación', 2002, 2008)
INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1006, 11, N'Salem sucot', N'PRIMARIA', N'DISTRITO CENTRAL', N'Ninguno', 1996, 2001)
INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1007, 14, N'21 de Octubre', N'PRIMARIA', N'TELA', N'Ninguno', 1996, 2001)
INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1008, 14, N'ICVC', N'SECUNDARIA', N'FRANCISCO MORAZÁN', N'bachiller Técnico en computación ', 2002, 2007)
INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1009, 14, N'UNIVERSIDAD NACIONAL AUTÓNOMA DE HONDURAS (UNAH)', N'PREGRADO', N'UNAH - CU', N'LICENCIATURA EN INFORMATICA ADMINISTRATIVA', 2008, 2014)
INSERT [Sol].[HistorialAcademico] ([CodInstitucion], [CodSolicitud], [NombreInstitucion], [NivelEstudios], [LugarEstudio], [TituloObtenido], [Inicio], [Fin]) VALUES (1010, 15, N' UNIVERSIDAD TECNOLÓGICA CENTROAMERICANA (UNITEC)', N'PREGRADO', N'UNITEC - TEGUCIGALPA', N'INGENIERÍA EN SISTEMAS COMPUTACIONALES', 2010, 2016)
SET IDENTITY_INSERT [Sol].[HistorialAcademico] OFF
SET IDENTITY_INSERT [Sol].[HistorialLaboral] ON 

INSERT [Sol].[HistorialLaboral] ([CodEmpresa], [CodSolicitud], [NombreEmpresa], [FechaINgreso], [FechaEgreso], [DireccionEmpresa], [NombreJefeInmediato], [MotivoRetiro], [SalarioInicial], [SalarioFinal], [Puesto], [FucionesPuesto], [Horario], [HoraInicio], [HoraSalida], [HoraInicioSabado], [HoraSalidaSabado], [TrabajoActual], [Sabado]) VALUES (1, 3, N'Inversiones Medicas Oftalmologicas', CAST(N'2022-12-08' AS Date), CAST(N'2018-02-02' AS Date), N'Boulevard La Hacienda', N'Blanca Maldonado', N'Renuncia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [Sol].[HistorialLaboral] ([CodEmpresa], [CodSolicitud], [NombreEmpresa], [FechaINgreso], [FechaEgreso], [DireccionEmpresa], [NombreJefeInmediato], [MotivoRetiro], [SalarioInicial], [SalarioFinal], [Puesto], [FucionesPuesto], [Horario], [HoraInicio], [HoraSalida], [HoraInicioSabado], [HoraSalidaSabado], [TrabajoActual], [Sabado]) VALUES (1001, 2, N'Banrural', CAST(N'2004-07-23' AS Date), NULL, N'Mall Novacentro ', N'Maritza Valerio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [Sol].[HistorialLaboral] ([CodEmpresa], [CodSolicitud], [NombreEmpresa], [FechaINgreso], [FechaEgreso], [DireccionEmpresa], [NombreJefeInmediato], [MotivoRetiro], [SalarioInicial], [SalarioFinal], [Puesto], [FucionesPuesto], [Horario], [HoraInicio], [HoraSalida], [HoraInicioSabado], [HoraSalidaSabado], [TrabajoActual], [Sabado]) VALUES (1002, 14, N'Pruebas ', CAST(N'2014-04-16' AS Date), NULL, N'Col los alcaldes', N'Pedro ', N'Renuncia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [Sol].[HistorialLaboral] OFF
SET IDENTITY_INSERT [Sol].[Idiomas] ON 

INSERT [Sol].[Idiomas] ([Cod_idioma], [Cod_solicitud], [Nombre], [Habla], [Escritura], [Lectura]) VALUES (1, 15, N'Alemán', 100, 100, 100)
INSERT [Sol].[Idiomas] ([Cod_idioma], [Cod_solicitud], [Nombre], [Habla], [Escritura], [Lectura]) VALUES (2, 15, N'Ingles', 75, 75, 75)
SET IDENTITY_INSERT [Sol].[Idiomas] OFF
SET IDENTITY_INSERT [Sol].[Municipios] ON 

INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (1, 1, N'EL PORVENIR')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (2, 1, N'ESPARTA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (3, 1, N'JUTIAPA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (4, 1, N'LA MASICA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (5, 1, N'SAN FRANCISCO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (6, 1, N'TELA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (7, 1, N'ARIZONA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (8, 2, N'TRUJILLO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (9, 2, N'BALFATE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (10, 2, N'IRIONA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (11, 2, N'LIMON')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (12, 2, N'SABA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (13, 2, N'SANTA FE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (14, 2, N'SANTA ROSA DE AGUAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (15, 2, N'SONAGUERA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (16, 2, N'TOCOA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (17, 2, N'BONITO ORIENTAL')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (18, 3, N'COMAYAGUA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (19, 3, N'AJUTERIQUE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (20, 3, N'EL ROSARIO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (21, 3, N'ESQUIAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (22, 3, N'HUMUYA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (23, 3, N'LA LIBERTAD')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (24, 3, N'LAMANI')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (25, 3, N'LA TRINIDAD')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (26, 3, N'LEJAMANI')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (27, 3, N'MEAMBAR')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (28, 3, N'MINAS DE ORO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (29, 3, N'OJO DE AGUA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (30, 3, N'SAN JERONIMO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (31, 3, N'SAN JOSE DE COMAYAGUA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (32, 3, N'SAN JOSE DEL POTRERO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (33, 3, N'SAN LUIS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (34, 3, N'SAN SEBASTIAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (35, 3, N'SIGUATEPEQUE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (36, 3, N'VILLA DE SAN ANTONIO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (37, 3, N'LAS LAJAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (38, 3, N'TAULABE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (39, 4, N'SANTA ROSA DE COPÁN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (40, 4, N'CABAÑAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (41, 4, N'CONCEPCIÓN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (42, 4, N'COPÁN RUINAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (43, 4, N'CORQUIN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (44, 4, N'CUCUYAGUA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (45, 4, N'DOLORES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (46, 4, N'DULCE NOMBRE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (47, 4, N'EL PARAISO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (48, 4, N'FLORIDA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (49, 4, N'LA JIGUA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (50, 4, N'LA UNIÓN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (51, 4, N'NUEVA ARCADIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (52, 4, N'SAN AGUSTIN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (53, 4, N'SAN ANTONIO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (54, 4, N'SAN JERÓNIMO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (55, 4, N'SAN JOSÉ')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (56, 4, N'SAN JUAN DE OPOA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (57, 4, N'SAN NICOLÁS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (58, 4, N'SAN PEDRO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (59, 4, N'SANTA RITA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (60, 4, N'TRINIDAD')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (61, 4, N'VERACRUZ')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (62, 5, N'SAN PEDRO SULA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (63, 5, N'CHOLOMA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (64, 5, N'OMOA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (65, 5, N'PIMIENTA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (66, 5, N'POTRERILLOS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (67, 5, N'PUERTO CORTES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (68, 5, N'SAN ANTONIO DE CORTES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (69, 5, N'SAN FCO. DE YOJOA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (70, 5, N'SAN MANUEL')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (71, 5, N'SANTA CRUZ DE YOJOA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (72, 5, N'VILLA NUEVA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (73, 5, N'LA LIMA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (74, 6, N'CHOLUTECA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (75, 6, N'APACILAGUA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (76, 6, N'CONCEPCION DE MARIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (77, 6, N'DUYURE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (78, 6, N'EL CORPUS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (79, 6, N'EL TRIUNFO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (80, 6, N'MARCOVIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (81, 6, N'MOROLICA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (82, 6, N'NAMASIGUE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (83, 6, N'OROCUINA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (84, 6, N'PESPIRE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (85, 6, N'SAN ANTONIO DE FLORES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (86, 6, N'SAN ISIDRO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (87, 6, N'SAN JOSE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (88, 6, N'SAN MARCOS DE COLON')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (89, 6, N'SANTA ANA DE YUSGUARE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (90, 7, N'YUSCARAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (91, 7, N'ALAUCA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (92, 7, N'DANLI')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (93, 7, N'EL PARAISO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (94, 7, N'GUINOPE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (95, 7, N'JACALEAPA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (96, 7, N'LIURE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (97, 7, N'MOROCELI')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (98, 7, N'OROPOLI')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (99, 7, N'POTRERILLOS')
GO
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (100, 7, N'SAN ANTONIO DE FLORES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (101, 7, N'SAN LUCAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (102, 7, N'SAN MATIAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (103, 7, N'SOLEDAD')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (104, 7, N'TEUPASENTI')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (105, 7, N'TEXIGUAT')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (106, 7, N'VADO ANCHO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (107, 7, N'YAUYUPE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (108, 7, N'TROJES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (109, 8, N'DISTRITO CENTRAL')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (110, 8, N'ALUBAREN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (111, 8, N'CEDROS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (112, 8, N'CURAREM')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (113, 8, N'EL PORVENIR')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (114, 8, N'GUAIMACA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (115, 8, N'LA LIBERTAD')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (116, 8, N'LA VENTA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (117, 8, N'LEPATERIQUE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (118, 8, N'MARAITA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (119, 8, N'MARALE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (120, 8, N'NUEVA ARMENIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (121, 8, N'OJOJONA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (122, 8, N'ORICA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (123, 8, N'REITOCA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (124, 8, N'SABANAGRANDE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (125, 8, N'SAN ANTONIO DE ORIENTE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (126, 8, N'SAN BUENAVENTURA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (127, 8, N'SAN IGNACIO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (128, 8, N'SAN JUAN DE FLORES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (129, 8, N'SAN MIGUELITO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (130, 8, N'SANTA ANA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (131, 8, N'SANTA LUCIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (132, 8, N'TALANGA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (133, 8, N'TATUMBLA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (134, 8, N'VALLE DE ANGELES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (135, 8, N'VILLA DE SAN FRANCISCO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (136, 8, N'VALLECILLO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (137, 9, N'PUERTO LEMPIRA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (138, 9, N'BRUS LAGUNA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (139, 9, N'AHUAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (140, 9, N'JUAN FCO. BULNES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (141, 9, N'VILLEDA MORALES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (142, 9, N'WANPUSIRPI')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (143, 10, N'LA ESPERANZA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (144, 10, N'CAMASCA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (145, 10, N'COLOMONCAGUA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (146, 10, N'CONCEPCION')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (147, 10, N'DOLORES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (148, 10, N'INTIBUCA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (149, 10, N'JESUS DE OTORO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (150, 10, N'MAGDALENA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (151, 10, N'MASAGUARA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (152, 10, N'SAN ANTONIO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (153, 10, N'SAN ISIDRO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (154, 10, N'SAN JUAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (155, 10, N'SAN MARCOS DE LA SIERRA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (156, 10, N'SAN MIGUELITO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (157, 10, N'SANTA LUCIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (158, 10, N'YAMARANGUILA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (159, 10, N'SAN FCO. DE OPALACA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (160, 11, N'ROATAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (161, 11, N'GUANAJA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (162, 11, N'JOSE SANTOS GUARDIOLA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (163, 11, N'UTILA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (164, 12, N'LA PAZ')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (165, 12, N'AGUANQUETERIQUE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (166, 12, N'CABAÑAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (167, 12, N'CANE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (168, 12, N'CHINACLA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (169, 12, N'GUAIJIQUIRO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (170, 12, N'LAUTERIQUE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (171, 12, N'MARCALA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (172, 12, N'MERCEDES DE ORIENTE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (173, 12, N'OPATORO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (174, 12, N'SAN ANTONIO DEL NORTE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (175, 12, N'SAN JOSE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (176, 12, N'SAN JUAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (177, 12, N'SAN PEDRO DE TULULE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (178, 12, N'SANTA ANA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (179, 12, N'SANTA ELENA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (180, 12, N'SANTA MARIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (181, 12, N'SANTIAGO PURINGLA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (182, 12, N'YARULA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (183, 13, N'GRACIAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (184, 13, N'BELEN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (185, 13, N'CANDELARIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (186, 13, N'COLOLACA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (187, 13, N'ERANDIQUE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (188, 13, N'GUALCINCE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (189, 13, N'GUARITA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (190, 13, N'LA CAMPA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (191, 13, N'LA IGUALA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (192, 13, N'LAS FLORES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (193, 13, N'LA UNION')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (194, 13, N'LA VIRTUD')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (195, 13, N'LEPAERA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (196, 13, N'MAPULACA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (197, 13, N'PIRAERA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (198, 13, N'SAN ANDRES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (199, 13, N'SAN FRANCISCO')
GO
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (200, 13, N'SAN JUAN GUARITA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (201, 13, N'SAN MANUEL DE COLOHETE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (202, 13, N'SAN RAFAEL')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (203, 13, N'SAN SEBASTIAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (204, 13, N'SANTA CRUZ')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (205, 13, N'TALGUA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (206, 13, N'TAMBLA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (207, 13, N'TOMALA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (208, 13, N'VALLADOLID')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (209, 13, N'VIRGINIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (210, 13, N'SAN MARCOS DE CAIQUIN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (211, 14, N'OCOTEPEQUE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (212, 14, N'BELEN GUALCHO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (213, 14, N'CONCEPCION')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (214, 14, N'DOLORES MERENDON')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (215, 14, N'FRATERNIDAD')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (216, 14, N'LA ENCARNACION')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (217, 14, N'LA LABOR')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (218, 14, N'LUCERNA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (219, 14, N'MERCEDES')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (220, 14, N'SAN FERNANDO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (221, 14, N'SAN FCO. DEL VALLE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (222, 14, N'SAN JORGE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (223, 14, N'SAN MARCOS DE OCOTEPEQUE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (224, 14, N'SANTA FE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (225, 14, N'SENSENTI')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (226, 14, N'SINUAPA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (227, 15, N'JUTICALPA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (228, 15, N'CAMPAMENTO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (229, 15, N'CATACAMAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (230, 15, N'CONCORDIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (231, 15, N'DULCE NOMBRE DE CULMI')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (232, 15, N'EL ROSARIO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (233, 15, N'ESQUIPULAS DEL NORTE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (234, 15, N'GUALACO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (235, 15, N'GUARIZAMA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (236, 15, N'GUATA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (237, 15, N'GUAYAPE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (238, 15, N'JANO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (239, 15, N'LA UNION')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (240, 15, N'MANGULILE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (241, 15, N'MANTO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (242, 15, N'SALAMA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (243, 15, N'SAN ESTEBAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (244, 15, N'SAN FCO. DE BECERRA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (245, 15, N'SAN FCO. DE LA PAZ')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (246, 15, N'SANTA MARIA DEL REAL')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (247, 15, N'SILCA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (248, 15, N'YOCON')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (249, 15, N'PATUCA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (250, 16, N'SANTA BARBARA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (251, 16, N'ARADA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (252, 16, N'ATIMA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (253, 16, N'AZACUALPA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (254, 16, N'CEGUACA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (255, 16, N'CONCEPCION DEL NORTE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (256, 16, N'CONCEPCION DEL SUR')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (257, 16, N'CHINDA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (258, 16, N'EL NISPERO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (259, 16, N'GUALALA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (260, 16, N'ILAMA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (261, 16, N'MACUELIZO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (262, 16, N'NARANJITO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (263, 16, N'NUEVA CELILAC')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (264, 16, N'PETOA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (265, 16, N'PROTECCIÃ“N')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (266, 16, N'QUIMISTAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (267, 16, N'SAN FCO DE OJUERA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (268, 16, N'SAN JOSÃ‰ DE COLINAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (269, 16, N'SAN LUIS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (270, 16, N'SAN MARCOS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (271, 16, N'SAN NICOLAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (272, 16, N'SAN PEDRO ZACAPA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (273, 16, N'SAN VICENTE CENTENARIO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (274, 16, N'SANTA RITA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (275, 16, N'TRINIDAD')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (276, 16, N'LAS VEGAS')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (277, 16, N'NUEVA FRONTERA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (278, 17, N'NACAOME')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (279, 17, N'ALIANZA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (280, 17, N'AMAPALA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (281, 17, N'ARAMECINA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (282, 17, N'CARIDAD')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (283, 17, N'GOASCORAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (284, 17, N'LANGUE')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (285, 17, N'SAN FCO. DE CORAY')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (286, 17, N'SAN LORENZO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (287, 18, N'YORO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (288, 18, N'ARENAL')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (289, 18, N'EL NEGRITO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (290, 18, N'EL PROGRESO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (291, 18, N'JOCON')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (292, 18, N'MORAZAN')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (293, 18, N'OLANCHITO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (294, 18, N'SANTA RITA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (295, 18, N'SULACO')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (296, 18, N'VICTORIA')
INSERT [Sol].[Municipios] ([CodMunicipio], [CodDepartamento], [DescripcionMunicipio]) VALUES (297, 18, N'YORITO')
SET IDENTITY_INSERT [Sol].[Municipios] OFF
SET IDENTITY_INSERT [Sol].[Organiacion] ON 

INSERT [Sol].[Organiacion] ([Cod_organizacion], [Cod_solicitud], [Nombre], [CodGrupoOrganizacion]) VALUES (1, 9, N'Club de leones', 1)
INSERT [Sol].[Organiacion] ([Cod_organizacion], [Cod_solicitud], [Nombre], [CodGrupoOrganizacion]) VALUES (2, 9, N'Club de leones', 6)
SET IDENTITY_INSERT [Sol].[Organiacion] OFF
SET IDENTITY_INSERT [Sol].[Paises] ON 

INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (1, N'HONDURAS')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (2, N'AFGANISTÁN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (3, N'ISLAS ALAND')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (4, N'ALBANIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (5, N'ALEMANIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (6, N'ANDORRA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (7, N'ANGOLA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (8, N'ANGUILA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (9, N'ANTÁRTIDA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (10, N'ANTIGUA Y BARBUDA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (11, N'ARABIA SAUDITA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (12, N'ARGELIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (13, N'ARGENTINA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (14, N'ARMENIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (15, N'ARUBA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (16, N'AUSTRALIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (17, N'AUSTRIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (18, N'AZERBAIYÁN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (19, N'BAHAMAS ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (20, N'BANGLADÉS')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (21, N'BARBADOS')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (22, N'BARÉIN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (23, N'BÉLGICA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (24, N'BELICE')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (25, N'BENÍN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (26, N'BERMUDAS')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (27, N'BIELORRUSIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (28, N'MYANMAR')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (29, N'BOLIVIA, ESTADO PLURINACIONAL DE BOLIVIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (30, N'BOSNIA Y HERZEGOVINA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (31, N'BOTSUANA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (32, N'BRASIL')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (33, N'BRUNÉI DARUSSALAM')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (34, N'BULGARIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (35, N'BURKINA FASO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (36, N'BURUNDI')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (37, N'BUTÁN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (38, N'CABO VERDE')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (39, N'CAMBOYA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (40, N'CAMERÚN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (41, N'CANADÁ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (42, N'CATAR')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (43, N'BONAIRE, SAN EUSTAQUIO Y SABA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (44, N'CHAD')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (45, N'CHILE')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (46, N'CHINA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (47, N'CHIPRE')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (48, N'COLOMBIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (49, N'COMORAS')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (51, N'COREA DEL SUR (REPÚBLICA DE COREA)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (52, N'CÔTE DIVOIRE')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (53, N'COSTA RICA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (54, N'CROACIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (55, N'CUBA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (56, N'CURAÇAO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (57, N'DINAMARCA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (58, N'DOMINICA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (59, N'ECUADOR')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (60, N'EGIPTO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (61, N'EL SALVADOR')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (62, N'EMIRATOS ÁRABES UNIDOS')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (63, N'ERITREA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (64, N'ESLOVAQUIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (65, N'ESLOVENIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (66, N'ESPAÑA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (67, N'ESTADOS UNIDOS ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (68, N'ESTONIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (69, N'ETIOPÍA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (70, N'FILIPINAS ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (71, N'FINLANDIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (72, N'FIYI')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (73, N'FRANCIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (74, N'GABÓN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (75, N'GAMBIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (76, N'GEORGIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (77, N'GHANA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (78, N'GIBRALTAR')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (79, N'GRANADA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (80, N'GRECIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (81, N'GROENLANDIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (82, N'GUADALUPE')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (83, N'GUAM')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (84, N'GUATEMALA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (85, N'GUAYANA FRANCESA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (86, N'GUERNSEY')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (87, N'GUINEA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (88, N'GUINEA-BISÁU')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (89, N'GUINEA ECUATORIAL')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (90, N'GUYANA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (91, N'HAITÍ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (92, N'HONG KONG')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (93, N'HUNGRÍA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (94, N'INDIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (95, N'INDONESIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (96, N'IRAK')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (97, N'IRÁN (LA REPÚBLICA ISLÁMICA DE IRÁN)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (98, N'IRLANDA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (99, N'ISLA BOUVET')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (100, N'ISLA DE MAN')
GO
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (101, N'ISLA DE NAVIDAD')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (102, N'ISLA NORFOLK')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (103, N'ISLANDIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (104, N'ISLAS CAIMÁN ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (105, N'ISLAS COCOS (KEELING)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (106, N'ISLAS COOK ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (107, N'ISLAS FEROE ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (108, N'GEORGIA DEL SUR Y LAS ISLAS SANDWICH DEL SUR')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (109, N'ISLA HEARD E ISLAS MCDONALD')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (110, N'ISLAS MALVINAS [FALKLAND]')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (111, N'ISLAS MARIANAS DEL NORTE ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (112, N'ISLAS MARSHALL ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (113, N'PITCAIRN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (114, N'ISLAS SALOMÓN ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (115, N'ISLAS TURCAS Y CAICOS ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (116, N'ISLAS DE ULTRAMAR MENORES DE ESTADOS UNIDOS ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (117, N'ISLAS VÍRGENES (BRITÁNICAS)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (118, N'ISLAS VÍRGENES (EE.UU.)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (119, N'ISRAEL')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (120, N'ITALIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (121, N'JAMAICA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (122, N'JAPÓN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (123, N'JERSEY')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (124, N'JORDANIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (125, N'KAZAJISTÁN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (126, N'KENIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (127, N'KIRGUISTÁN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (128, N'KIRIBATI')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (129, N'KUWAIT')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (130, N'LAO,  REPÚBLICA DEMOCRÁTICA POPULAR')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (131, N'LESOTO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (132, N'LETONIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (133, N'LÍBANO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (134, N'LIBERIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (135, N'LIBIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (136, N'LIECHTENSTEIN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (137, N'LITUANIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (138, N'LUXEMBURGO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (139, N'MACAO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (140, N'MADAGASCAR')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (141, N'MALASIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (142, N'MALAUI')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (143, N'MALDIVAS')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (144, N'MALÍ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (145, N'MALTA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (146, N'MARRUECOS')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (147, N'MARTINICA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (148, N'MAURICIO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (149, N'MAURITANIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (150, N'MAYOTTE')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (151, N'MÉXICO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (152, N'MICRONESIA (ESTADOS FEDERADOS DE MICRONESIA)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (153, N'MOLDAVIA (REPÚBLICA DE MOLDAVIA)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (154, N'MÓNACO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (155, N'MONGOLIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (156, N'MONTENEGRO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (157, N'MONTSERRAT')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (158, N'MOZAMBIQUE')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (159, N'NAMIBIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (160, N'NAURU')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (161, N'NEPAL')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (162, N'NICARAGUA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (163, N'NÍGER (EL)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (164, N'NIGERIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (165, N'NIUE')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (166, N'NORUEGA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (167, N'NUEVA CALEDONIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (168, N'NUEVA ZELANDA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (169, N'OMÁN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (170, N'PAÍSES BAJOS ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (171, N'PAKISTÁN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (172, N'PALAOS')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (173, N'PALESTINA, ESTADO DE PALESTINA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (174, N'PANAMÁ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (175, N'PAPÚA NUEVA GUINEA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (176, N'PARAGUAY')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (177, N'PERÚ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (178, N'POLINESIA FRANCESA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (179, N'POLONIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (180, N'PORTUGAL')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (181, N'PUERTO RICO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (182, N'REINO UNIDO (EL)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (183, N'REPÚBLICA CENTROAFRICANA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (184, N'REPÚBLICA CHECA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (185, N'MACEDONIA (ANTIGUA REPÚBLICA YUGOSLAVA)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (186, N'CONGO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (187, N'CONGO (REPÚBLICA DEMOCRÁTICA DEL CONGO)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (188, N'REPÚBLICA DOMINICANA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (189, N'REUNIÓN')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (190, N'RUANDA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (191, N'RUMANIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (192, N'RUSIA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (193, N'SAHARA OCCIDENTAL')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (194, N'SAMOA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (195, N'SAMOA AMERICANA')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (196, N'SAN BARTOLOMÉ')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (197, N'SAN CRISTÓBAL Y NIEVES')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (198, N'SAN MARINO')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (199, N'SAN MARTÍN (PARTE FRANCESA)')
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (200, N'SAN PEDRO Y MIQUELÓN')
GO
INSERT [Sol].[Paises] ([CodPais], [DescripcionPais]) VALUES (201, N'NULL')
SET IDENTITY_INSERT [Sol].[Paises] OFF
SET IDENTITY_INSERT [Sol].[Referencias] ON 

INSERT [Sol].[Referencias] ([CodReferencia], [CodSolicitud], [NombreCompleto], [Profesion], [Direccion], [Telefono]) VALUES (1, 3, N'Blanca Sarai Maldonado', N'Psicologa', N'Los Robles', N'5458-7157')
INSERT [Sol].[Referencias] ([CodReferencia], [CodSolicitud], [NombreCompleto], [Profesion], [Direccion], [Telefono]) VALUES (1001, 2, N'Poala Ardon', N'Lic. Psicologia', N'Loarque sur ', N'9999-9999')
INSERT [Sol].[Referencias] ([CodReferencia], [CodSolicitud], [NombreCompleto], [Profesion], [Direccion], [Telefono]) VALUES (1002, 15, N'Mariel', N'informatica', N'residencial villa oriente', N'8978-7479')
SET IDENTITY_INSERT [Sol].[Referencias] OFF
SET IDENTITY_INSERT [Sol].[ReferenciasPersonales] ON 

INSERT [Sol].[ReferenciasPersonales] ([CodReferenciaPersonal], [CodSolicitud], [Nombre], [Profesion], [Direccion], [Telefono]) VALUES (1, 3, N'Fabiola Caballero Rodriguez', N'Psicologa', N'Lomas de Toncontin', N'2356-7891')
INSERT [Sol].[ReferenciasPersonales] ([CodReferenciaPersonal], [CodSolicitud], [Nombre], [Profesion], [Direccion], [Telefono]) VALUES (1001, 2, N'Rizna Ramirez', N'Estudiante', N'Laureles', N'8888-8888')
INSERT [Sol].[ReferenciasPersonales] ([CodReferenciaPersonal], [CodSolicitud], [Nombre], [Profesion], [Direccion], [Telefono]) VALUES (1002, 8, N'Fabiola Caballero', N'Psiocologa', N'La Vegas', N'2546-4385')
INSERT [Sol].[ReferenciasPersonales] ([CodReferenciaPersonal], [CodSolicitud], [Nombre], [Profesion], [Direccion], [Telefono]) VALUES (1003, 9, N'Ana Gomez', N'Ingeniera en Informatica', N'Colonia villa olimpica', N'2222-2222')
INSERT [Sol].[ReferenciasPersonales] ([CodReferenciaPersonal], [CodSolicitud], [Nombre], [Profesion], [Direccion], [Telefono]) VALUES (1004, 1, N'Ana Gomez', N'Ingeniera en sistemas', N'Colonia Villa olimpica', N'2222-2222')
INSERT [Sol].[ReferenciasPersonales] ([CodReferenciaPersonal], [CodSolicitud], [Nombre], [Profesion], [Direccion], [Telefono]) VALUES (1005, 14, N'Melida ', N'estudiante', N'col vista hermosa', N'0000-0000')
INSERT [Sol].[ReferenciasPersonales] ([CodReferenciaPersonal], [CodSolicitud], [Nombre], [Profesion], [Direccion], [Telefono]) VALUES (1006, 14, N'Maria Godoy', N'Administradora', N'col el hogar', N'9999-9999')
INSERT [Sol].[ReferenciasPersonales] ([CodReferenciaPersonal], [CodSolicitud], [Nombre], [Profesion], [Direccion], [Telefono]) VALUES (1007, 15, N'Norma Acosta', N'Informatica', N'Colonia Policarpo paz ', N'9758-4682')
SET IDENTITY_INSERT [Sol].[ReferenciasPersonales] OFF
SET IDENTITY_INSERT [Sol].[Solicitudes] ON 

INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (1, 1, 7, N'Cinthia Maragrita', N'Valeriano Diaz', NULL, N'femenino', NULL, NULL, N'Residencial Aleman casa 1712', 109, 8, N'0000-0000', N'3177-0031', N'HONDURAS', CAST(N'1990-12-17' AS Date), 27, N'S', 1, N'Licenciada en informatica administrativa', N'0801-1991-01737', 109, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, CAST(N'2017-01-01' AS Date), NULL, N'0000-0000-000000', NULL, NULL, NULL, NULL, NULL, NULL, N'0000-0000', NULL, NULL, NULL, NULL, NULL, NULL, N'0000-0000', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, N' ', NULL, 0, N'Ninguna', NULL, CAST(14000.00 AS Decimal(18, 2)), CAST(N'2018-07-03' AS Date), NULL, NULL, NULL, N'', NULL, NULL, 5104, NULL, N'0000-0000', N'0000-0000', N'uploads/302112/Cinthia_Margarita_Valeriano_Diaz_1.pdf', N'Cinthia Margarita Valeriano Diaz (1).pdf', N'', N'foto_perfil_5104.jpg', 1, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (2, 1, 7, N'Fabiola', N'Caballero Rodriguez', NULL, N'femenino', NULL, NULL, N'Col. lomas de Toncontin ', 109, 8, N'0000-0000', N'9866-0776', N'HONDURAS', CAST(N'1992-01-25' AS Date), 26, N'S', 1, N'Lic. Psicologia', N'0801-1992-02484', 109, 1, 1, NULL, NULL, 1, 1, N'Seguros Banrural Honduras, Sociedad Anónima', 0, NULL, CAST(N'2017-01-01' AS Date), NULL, N'0000-0000-000000', NULL, NULL, N'Fabio', N'Caballero Reyes', NULL, NULL, N'0000-0000', NULL, NULL, N'Olga Doris', N'Rodriguez Avila', 56, NULL, N'0000-0000', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, N' ', NULL, 0, N'Ninguna', NULL, CAST(14000.00 AS Decimal(18, 2)), CAST(N'2018-07-25' AS Date), NULL, NULL, NULL, N'', NULL, NULL, 5105, 1, N'0000-0000', N'0000-0000', N'uploads/302078/CURRICULUM_VITAE_ayary-3.docx', N'CURRICULUM VITAE ayary-3.docx', N'', N'foto_perfil_5105.jpg', 1, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (3, 1, 7, N'Isolina Paola', N'Ardon Gonzales', NULL, N'femenino', NULL, NULL, N'Colonia Altos de Loarque', 109, 8, N'2222-2222', N'3333-3333', N'HONDURAS', CAST(N'1993-01-24' AS Date), 25, N'S', 1, N'Psicologa', N'0801-1993-09910', 109, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, N'0801-1993-099102', NULL, NULL, N'Marco Antonio', N'Ardon Castellanos', 54, N'Colonia Altos de Loarque', N'8545-6157', N'Maestro de Obra', N'Agua Fria', N'Estela Marina', N'Gonzales', 55, N'Colonia Altos de Loarque', N'6666-6666', N'Ama de Casa', N'Casa de Habitacion', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, N' ', NULL, 1, N'Ninguna', NULL, CAST(14000.00 AS Decimal(18, 2)), CAST(N'2018-07-31' AS Date), NULL, NULL, NULL, N'', NULL, NULL, 5106, NULL, N'2525-2525', N'7777-7777', N'uploads/900004/IsolinaPaolaArdon_Hojadevida_1.docx', N'IsolinaPaolaArdon_Hojadevida (1).docx', N'', N'foto_perfil_5106.jpg', 1, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (4, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5107, NULL, NULL, NULL, N'', NULL, N'rizna.ramirez@banrural.com.hn', N'', 1, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5108, NULL, NULL, NULL, N'', NULL, N'maritza.valerio@banrural.com.hn', N'', 1, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (6, 0, 1, N'Casandra', N'Caballero Rodriguez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5109, NULL, NULL, NULL, N'', NULL, N'fabiola.caballerrordriguez@gmail.com', N'', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (7, 0, 1, N'Casandra', N'Caballero Rodriguez|', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5110, NULL, NULL, NULL, N'', NULL, N'fabiola.caballerorodriguez@gmail.com', N'', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (8, 1, 7, N'Lulu Alfalfa', N'Ardon Gonzales', NULL, N'femenino', NULL, NULL, N'Colonia Altos de Loarque', 109, 8, N'2144-4874', N'2445-5454', N'HONDURAS', CAST(N'1993-01-24' AS Date), 25, N'S', 1, N'Ama de Casa', N'2448-5414-45758', 109, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, CAST(N'2017-01-01' AS Date), NULL, N'2185-9645-616461', NULL, NULL, N'Pedofilo Alfredo', N'Ardon', 50, N'Colonia Altos de Loarque', N'4544-1264', NULL, NULL, N'Petrona', N'De la Asuncion', 50, N'Colonia Altos de Loarque', N'1156-1484', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, N' ', NULL, 0, N'Ninguna', NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(N'2018-07-31' AS Date), NULL, NULL, NULL, N'', NULL, NULL, 5111, NULL, N'1215-6460', N'1123-4516', N'uploads/isoardon45@gmail.com/IsolinaPaolaArdon_Hojadevida_1.docx', N'IsolinaPaolaArdon_Hojadevida (1).docx', N'isoardon45@gmail.com', N'foto_perfil_5111.jpg', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (9, 1, 7, N'Cinthia', N'Diaz', NULL, N'femenino', NULL, N'Sauceda jaja', N'Res Aleman Casa 1712 Bloque C', 109, 8, N'0000-0000', N'3177-0031', N'HONDURAS', CAST(N'1990-12-17' AS Date), 27, N'C', 1, N'Licenciada en Informatica Administrativa', N'0801-1991-01737', 109, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, CAST(N'2017-01-01' AS Date), NULL, N'0801-1991-017379', NULL, NULL, N'Nelson', N'Valeriano', 64, NULL, N'0000-0000', N'Ingeniero Civil', NULL, N'Aida', N'Diaz', 48, NULL, N'0000-0000', NULL, NULL, 0, 0, NULL, NULL, N'Dennis Sauceda', 29, N'Residencial Aleman Casa 1710 bloque C', N'2222-2222 ', N'Licenciado en informatica Administrativa', N'Tigo Honduras ', N'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, N' ', NULL, 0, N'Ninguna', NULL, CAST(18000.00 AS Decimal(18, 2)), CAST(N'2018-08-31' AS Date), NULL, NULL, NULL, N'', NULL, NULL, 5112, NULL, N'0000-0000', N'0000-0000', N'uploads/cinthia.valeriano@banrural.com.hn/Cinthia_Margarita_Valeriano_Diaz_1.pdf', N'Cinthia Margarita Valeriano Diaz (1).pdf', N'cinthia.valeriano@banrural.com.hn', N'foto_perfil_5112.jpg', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (10, 1, 1, N'Juan Carlos', N'Hernandez', NULL, N'femenino', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pulvinar, augue ut pharetra euismod, mi dui sollicitudin risus, sit amet pulvinar purus odio vitae turpis.', 283, 17, N'0000-0000', N'3160-3102', N'HONDURAS', CAST(N'1994-09-14' AS Date), 24, N'S', 1, N'Desarrollador', N'0801-1994-17010', 283, 0, NULL, NULL, NULL, NULL, 0, N'', 0, N'None', CAST(N'1900-01-01' AS Date), N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5113, NULL, NULL, NULL, N'', NULL, N'juan.hernandez@bi-dss.com', N'foto_perfil_5113.jpg', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (11, 1, 6, N'Cinthia M', N'Valeriano D', NULL, N'femenino', NULL, NULL, N'Residencial aleman casa 1710', 109, 8, N'0000-0000', N'3177-0031', N'HONDURAS', CAST(N'1990-12-17' AS Date), 27, N'S', 1, N'Licenciatura en informatica', N'0801-1991-01737', 109, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, N'0000-0000-000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, N' ', NULL, 0, N'Ninguna', NULL, CAST(20000.00 AS Decimal(18, 2)), CAST(N'2018-09-01' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, 5114, NULL, NULL, NULL, N'', NULL, N'cinvale_diaz@hotmail.com', N'foto_perfil_5114.jpg', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (12, 1, 1, N'Yesy Carolina ', N'Cerrato Cáceres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5115, NULL, NULL, NULL, N'', NULL, N'302571', N'', 1, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (13, 0, 1, N'Yesy Carolina ', N'Cerrato Cáceres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5116, NULL, NULL, NULL, N'', NULL, N'yesycerrato@gmail.com', N'', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (14, 1, 7, N'Yesy Carolina ', N'Cerrato Cáceres', NULL, N'femenino', NULL, NULL, N'Col 21 de Octubre ', 109, 8, N'2222-2222', N'9999-9999', N'HONDURAS', CAST(N'1985-06-13' AS Date), 33, N'S', 1, N'Lic en administración de empresas ', N'2031-2369-26980', 202, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, CAST(N'2017-01-01' AS Date), NULL, N'0000-0000-000000', NULL, NULL, N'Juan Carlos ', N'Mendoza ', 48, N'col 21 de Octubre ', N'3333-3333', N'conductor ', NULL, N'Isabella ', N'Avila ', 49, N'Col 21 de Octubre', N'3333-3333', N'Repostera ', N'Col21 de octubre ', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, N' ', NULL, 0, N'Ninguna', NULL, CAST(18000.00 AS Decimal(18, 2)), CAST(N'2018-09-03' AS Date), NULL, NULL, NULL, N'una buena persona. dedicada con mucha pasión en todo lo que hace.', NULL, NULL, 5117, NULL, N'9999-9999', N'9999-9999', N'uploads/yesy.cerrato@banrural.com.hn/Observaciones_SRR.docx', N'Observaciones SRR.docx', N'yesy.cerrato@banrural.com.hn', N'foto_perfil_5117.jpg', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (15, 1, 7, N'Ana', N'Gomez', NULL, N'femenino', NULL, N'Farach', N'Villa Olímpica ', 109, 8, N'2245-6978', N'9545-5309', N'HONDURAS', CAST(N'1989-11-22' AS Date), 29, N'C', 1, N'Informatica', N'0801-1988-10524', 109, 0, 0, NULL, NULL, NULL, 0, NULL, 1, N'natación', CAST(N'2018-12-01' AS Date), NULL, N'0801-1988-105242', NULL, NULL, N'Paulino', N'Gomez', 62, NULL, N'0000-0000', NULL, NULL, N'Ana', N'Raudales', 61, N'Colonia Independencia ', N'2262-3690', N'Enfermera ', N'Hospital escuela', 1, 1, NULL, NULL, N'Abel Farach', 39, N'Colonia Villa Olímpica ', N'2245-3636 ', N'Dr.quimica y farmacia', N'colonia noroeste', N'I', NULL, CAST(8500.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, N' ', NULL, 0, N'ninguna', NULL, CAST(30000.00 AS Decimal(18, 2)), CAST(N'2019-01-05' AS Date), NULL, NULL, NULL, N'capaz, perseverante, paciente, tolerante, dedicada', NULL, NULL, 5118, NULL, N'0000-0000', N'9977-8855', N'uploads/ana.gomez@banrural.com.hn/Acta_de_Certificacin_SQA-AC001.pdf', N'Acta de Certificación SQA-AC001.pdf', N'ana.gomez@banrural.com.hn', N'foto_perfil_5118.jpg', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (16, 0, 1, N'Marly ', N'godoy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5119, NULL, NULL, NULL, N'', NULL, N'marlygodoyes@gmail.com', N'', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (17, 0, 1, N'javier', N'meza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5120, NULL, NULL, NULL, N'', NULL, N'gjmezas@banural.com.hn', N'', NULL, NULL)
INSERT [Sol].[Solicitudes] ([CodSolicitud], [Estado], [Vista], [Nombres], [PrimerApellido], [SegundoApellido], [Sexo], [Casada], [ApellidoCasada], [DireccionDomicilio], [CodMunicipioDomicilio], [CodDepartamentoDomicilio], [TelefonoFijo], [Celular], [LugarNacimiento], [FechaNacimiento], [Edad], [EstadoCivil], [CodPaisNacimiento], [Profesion], [Identidad], [CodMunicipioIdentidad], [Automovil], [Licencia], [Motocicleta], [Pesada], [Liviana], [PolizaSeguro], [CompaniaPoliza], [Deporte], [TipoDeporte], [FechaDeporte], [NumeroIhss], [RTN], [NumeroPasaporte], [Organizaciones], [NombresPadre], [ApellidosPadre], [EdadPadre], [DomicilioPadre], [TelefonoPadre], [ProfesionPadre], [DireccionLaboralPadre], [NombresMadre], [ApellidosMadre], [EdadMadre], [DomicilioMadre], [TelefonoMadre], [ProfesionMadre], [DireccionLaboralMadre], [Hermanos], [CantidadHermanos], [CantidadHijos], [CantidadDependientes], [NombreConyugue], [EdadConyugue], [DomicilioConyugue], [TelefonoConyugue], [ProfesionConyugue], [DireccionLaboralConyugue], [TipoVivienda], [TotalAmortizacion], [TotalInquilino], [TotalPensionista], [Deudas], [NombreAcreedor], [MontoDeuda], [CuotaMensual], [Embargado], [NombreQuienEmbargo], [MotivoEmbargo], [MontoEmbargo], [ValoresEfectivo], [MontoEfectivo], [FamiliaresInstitucion], [NombreFamiliar], [Parentesco], [PuestoFamiliar], [TrabajarCualquierLugar], [NombreQuienRecomienda], [PuestoQueSolicita], [SueldoPretende], [FechaInicio], [EnfermedadesHaPadecido], [ConsumeMedicamentos], [ImpedimentosFisicos], [ObservacionesAdicionales], [Cod_colegio], [Cod_Escuela], [CodUser], [CodSeguros], [CelularPadre], [CelularMadre], [cv], [cvNombre], [Correo], [Foto_usuario], [Empleado], [Anonima]) VALUES (18, 0, 1, N'javier', N'meza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5121, NULL, NULL, NULL, N'', NULL, N'gjmezas@gmail.com', N'', NULL, NULL)
SET IDENTITY_INSERT [Sol].[Solicitudes] OFF
SET IDENTITY_INSERT [Sol].[Universidades] ON 

INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (1, N'UNIVERSIDAD NACIONAL AUTÓNOMA DE HONDURAS (UNAH)')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (2, N' UNIVERSIDAD CATÓLICA DE HONDURAS (UNICAH)')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (3, N' UNIVERSIDAD TECNOLÓGICA CENTROAMERICANA (UNITEC)')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (4, N'UNIVERSIDAD JOSÉ CECILIO DEL VALLE (UJCV)')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (5, N'UNIVERSIDAD METROPOLITANA DE HONDURAS (UNIMETRO)')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (6, N'UNIVERSIDAD PEDAGÓGICA NACIONAL FRANCISCO MORAZÁN (UPNFM) ')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (7, N'UNIVERSIDAD TECNOLÓGICA DE HONDURAS (UTH)')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (8, N'CENTRO UNIVERSITARIO TECNOLÓGICO (CEUTEC) ')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (9, N'ESCUELA AGRÍCOLA PANAMERICANA ZAMORANO')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (10, N'UNIVERSIDAD POLITÉCNICA DE INGENIERÍA DE HONDURAS (UPI)')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (11, N'CENTRO DE DISEÑO ARQUITECTURA Y CONSTRUCCIÓN (CEDAC)')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (12, N'ESCUELA NACIONAL DE CIENCIAS FORESTALES (ESNACIFOR) ')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (13, N'UNIVERSIDAD DE SAN PEDRO SULA (USAP)')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (14, N'UNIVERSIDAD JESÚS DE NAZARETH ')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (15, N'UNIVERSIDAD NACIONAL DE AGRICULTURA (UNAG) ')
INSERT [Sol].[Universidades] ([Cod_univesidad], [Nombre]) VALUES (16, N'UNIVERSIDAD CRISTIANA EVANGÉLICA NUEVO MILENIO (UCENM) ')
SET IDENTITY_INSERT [Sol].[Universidades] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__auth_gro__72E12F1B7029A0DB]    Script Date: 2/5/2020 10:42:45 AM ******/
ALTER TABLE [dbo].[auth_group] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_0cd325b0_uniq]    Script Date: 2/5/2020 10:42:45 AM ******/
ALTER TABLE [dbo].[auth_group_permissions] ADD  CONSTRAINT [auth_group_permissions_group_id_0cd325b0_uniq] UNIQUE NONCLUSTERED 
(
	[group_id] ASC,
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_permission_content_type_id_01ab375a_uniq]    Script Date: 2/5/2020 10:42:45 AM ******/
ALTER TABLE [dbo].[auth_permission] ADD  CONSTRAINT [auth_permission_content_type_id_01ab375a_uniq] UNIQUE NONCLUSTERED 
(
	[content_type_id] ASC,
	[codename] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_user_username_6821ab7c_uniq]    Script Date: 2/5/2020 10:42:45 AM ******/
ALTER TABLE [dbo].[auth_user] ADD  CONSTRAINT [auth_user_username_6821ab7c_uniq] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_user_id_94350c0c_uniq]    Script Date: 2/5/2020 10:42:45 AM ******/
ALTER TABLE [dbo].[auth_user_groups] ADD  CONSTRAINT [auth_user_groups_user_id_94350c0c_uniq] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_user_id_14a6b632_uniq]    Script Date: 2/5/2020 10:42:45 AM ******/
ALTER TABLE [dbo].[auth_user_user_permissions] ADD  CONSTRAINT [auth_user_user_permissions_user_id_14a6b632_uniq] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [django_content_type_app_label_76bd3d3b_uniq]    Script Date: 2/5/2020 10:42:45 AM ******/
ALTER TABLE [dbo].[django_content_type] ADD  CONSTRAINT [django_content_type_app_label_76bd3d3b_uniq] UNIQUE NONCLUSTERED 
(
	[app_label] ASC,
	[model] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_permission]  WITH CHECK ADD  CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[auth_permission] CHECK CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[auth_user_groups]  WITH CHECK ADD  CONSTRAINT [auth_user_groups_group_id_97559544_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_user_groups] CHECK CONSTRAINT [auth_user_groups_group_id_97559544_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_user_groups]  WITH CHECK ADD  CONSTRAINT [auth_user_groups_user_id_6a12ed8b_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[auth_user_groups] CHECK CONSTRAINT [auth_user_groups_user_id_6a12ed8b_fk_auth_user_id]
GO
ALTER TABLE [dbo].[auth_user_user_permissions]  WITH CHECK ADD  CONSTRAINT [auth_user_user_permissions_permission_id_1fbb5f2c_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_user_user_permissions] CHECK CONSTRAINT [auth_user_user_permissions_permission_id_1fbb5f2c_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_user_user_permissions]  WITH CHECK ADD  CONSTRAINT [auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[auth_user_user_permissions] CHECK CONSTRAINT [auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_user_id_c564eba6_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_user_id_c564eba6_fk_auth_user_id]
GO
ALTER TABLE [Ofe].[Aplicaciones]  WITH CHECK ADD  CONSTRAINT [FK_Aplicaciones_auth_user] FOREIGN KEY([CodUserDes])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [Ofe].[Aplicaciones] CHECK CONSTRAINT [FK_Aplicaciones_auth_user]
GO
ALTER TABLE [Ofe].[Aplicaciones]  WITH CHECK ADD  CONSTRAINT [FK_aplicaciones_Ofertas] FOREIGN KEY([Cod_oferta])
REFERENCES [Ofe].[Ofertas] ([Cod_oferta])
GO
ALTER TABLE [Ofe].[Aplicaciones] CHECK CONSTRAINT [FK_aplicaciones_Ofertas]
GO
ALTER TABLE [Ofe].[Aplicaciones]  WITH CHECK ADD  CONSTRAINT [FK_aplicaciones_Solicitudes] FOREIGN KEY([Cod_solicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Ofe].[Aplicaciones] CHECK CONSTRAINT [FK_aplicaciones_Solicitudes]
GO
ALTER TABLE [Ofe].[Ofertas]  WITH CHECK ADD  CONSTRAINT [FK_Ofertas_Areas] FOREIGN KEY([Cod_area])
REFERENCES [Ofe].[Areas] ([Cod_area])
GO
ALTER TABLE [Ofe].[Ofertas] CHECK CONSTRAINT [FK_Ofertas_Areas]
GO
ALTER TABLE [Ofe].[Ofertas]  WITH CHECK ADD  CONSTRAINT [FK_Ofertas_Departamentos] FOREIGN KEY([Cod_departamento])
REFERENCES [Sol].[Departamentos] ([CodDepartamento])
GO
ALTER TABLE [Ofe].[Ofertas] CHECK CONSTRAINT [FK_Ofertas_Departamentos]
GO
ALTER TABLE [Ofe].[Ofertas]  WITH CHECK ADD  CONSTRAINT [FK_Ofertas_Municipios] FOREIGN KEY([Cod_municipio])
REFERENCES [Sol].[Municipios] ([CodMunicipio])
GO
ALTER TABLE [Ofe].[Ofertas] CHECK CONSTRAINT [FK_Ofertas_Municipios]
GO
ALTER TABLE [Ofe].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Ofertas] FOREIGN KEY([Cod_oferta])
REFERENCES [Ofe].[Ofertas] ([Cod_oferta])
GO
ALTER TABLE [Ofe].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Ofertas]
GO
ALTER TABLE [Ofe].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Aplicacion] FOREIGN KEY([Cod_aplicacion])
REFERENCES [Ofe].[Aplicaciones] ([Cod_aplicacion])
GO
ALTER TABLE [Ofe].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Aplicacion]
GO
ALTER TABLE [Ofe].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Ofertas] FOREIGN KEY([Cod_oferta])
REFERENCES [Ofe].[Ofertas] ([Cod_oferta])
GO
ALTER TABLE [Ofe].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Ofertas]
GO
ALTER TABLE [Ofe].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Respuestas] FOREIGN KEY([Cod_pregunta])
REFERENCES [Ofe].[Preguntas] ([Cod_pregunta])
GO
ALTER TABLE [Ofe].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Respuestas]
GO
ALTER TABLE [Ofe].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Respuestas1] FOREIGN KEY([Cod_respuesta])
REFERENCES [Ofe].[Respuestas] ([Cod_respuesta])
GO
ALTER TABLE [Ofe].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Respuestas1]
GO
ALTER TABLE [Ofe].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Solicitudes] FOREIGN KEY([Cod_solicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Ofe].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Solicitudes]
GO
ALTER TABLE [Ofe].[SeguimientoXAplicacion]  WITH CHECK ADD  CONSTRAINT [FK_SeguimientoXAplicacion_Ofertas] FOREIGN KEY([Cod_Oferta])
REFERENCES [Ofe].[Ofertas] ([Cod_oferta])
GO
ALTER TABLE [Ofe].[SeguimientoXAplicacion] CHECK CONSTRAINT [FK_SeguimientoXAplicacion_Ofertas]
GO
ALTER TABLE [Ofe].[SeguimientoXAplicacion]  WITH CHECK ADD  CONSTRAINT [FK_SeguimientoXAplicacion_Solicitudes] FOREIGN KEY([Cod_Solicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Ofe].[SeguimientoXAplicacion] CHECK CONSTRAINT [FK_SeguimientoXAplicacion_Solicitudes]
GO
ALTER TABLE [Ofe].[Suscriptores]  WITH CHECK ADD  CONSTRAINT [FK_Suscriptores_Areas] FOREIGN KEY([Cod_area])
REFERENCES [Ofe].[Areas] ([Cod_area])
GO
ALTER TABLE [Ofe].[Suscriptores] CHECK CONSTRAINT [FK_Suscriptores_Areas]
GO
ALTER TABLE [Sol].[Campus]  WITH CHECK ADD  CONSTRAINT [FK_Campus_Universidades] FOREIGN KEY([Cod_universidad])
REFERENCES [Sol].[Universidades] ([Cod_univesidad])
GO
ALTER TABLE [Sol].[Campus] CHECK CONSTRAINT [FK_Campus_Universidades]
GO
ALTER TABLE [Sol].[Carreras]  WITH CHECK ADD  CONSTRAINT [FK_Carreras_Universidad] FOREIGN KEY([Cod_campus])
REFERENCES [Sol].[Universidades] ([Cod_univesidad])
GO
ALTER TABLE [Sol].[Carreras] CHECK CONSTRAINT [FK_Carreras_Universidad]
GO
ALTER TABLE [Sol].[Carreras_Solicitud]  WITH CHECK ADD  CONSTRAINT [FK_Carreras_Solicitud_Carreras] FOREIGN KEY([Cod_carrera])
REFERENCES [Sol].[Carreras] ([Cod_carreras])
GO
ALTER TABLE [Sol].[Carreras_Solicitud] CHECK CONSTRAINT [FK_Carreras_Solicitud_Carreras]
GO
ALTER TABLE [Sol].[Carreras_Solicitud]  WITH CHECK ADD  CONSTRAINT [FK_Carreras_Solicitud_Solicitudes] FOREIGN KEY([Cod_solicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[Carreras_Solicitud] CHECK CONSTRAINT [FK_Carreras_Solicitud_Solicitudes]
GO
ALTER TABLE [Sol].[Competencias]  WITH CHECK ADD  CONSTRAINT [FK_Competencias_Solicitudes] FOREIGN KEY([Cod_solicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[Competencias] CHECK CONSTRAINT [FK_Competencias_Solicitudes]
GO
ALTER TABLE [Sol].[Cuentas]  WITH CHECK ADD  CONSTRAINT [FK_Cuentas_Solicitudes] FOREIGN KEY([Cod_solicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[Cuentas] CHECK CONSTRAINT [FK_Cuentas_Solicitudes]
GO
ALTER TABLE [Sol].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_Solicitudes] FOREIGN KEY([CodSolicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[Cursos] CHECK CONSTRAINT [FK_Cursos_Solicitudes]
GO
ALTER TABLE [Sol].[Departamentos]  WITH CHECK ADD  CONSTRAINT [FK_Departamentos_Paises] FOREIGN KEY([CodPais])
REFERENCES [Sol].[Paises] ([CodPais])
GO
ALTER TABLE [Sol].[Departamentos] CHECK CONSTRAINT [FK_Departamentos_Paises]
GO
ALTER TABLE [Sol].[Dependientes]  WITH CHECK ADD  CONSTRAINT [FK_Dependientes_Solicitudes] FOREIGN KEY([CodSolicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[Dependientes] CHECK CONSTRAINT [FK_Dependientes_Solicitudes]
GO
ALTER TABLE [Sol].[Habilidades]  WITH CHECK ADD  CONSTRAINT [FK_Habilidades_Solicitudes] FOREIGN KEY([Cod_solicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[Habilidades] CHECK CONSTRAINT [FK_Habilidades_Solicitudes]
GO
ALTER TABLE [Sol].[Hermanos]  WITH CHECK ADD  CONSTRAINT [FK_Hermanos_Solicitudes] FOREIGN KEY([CodSolicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[Hermanos] CHECK CONSTRAINT [FK_Hermanos_Solicitudes]
GO
ALTER TABLE [Sol].[Hijos]  WITH CHECK ADD  CONSTRAINT [FK_Hijos_Solicitudes] FOREIGN KEY([CodSolicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[Hijos] CHECK CONSTRAINT [FK_Hijos_Solicitudes]
GO
ALTER TABLE [Sol].[HistorialAcademico]  WITH CHECK ADD  CONSTRAINT [FK_HistorialAcademico_Solicitudes] FOREIGN KEY([CodSolicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[HistorialAcademico] CHECK CONSTRAINT [FK_HistorialAcademico_Solicitudes]
GO
ALTER TABLE [Sol].[HistorialLaboral]  WITH CHECK ADD  CONSTRAINT [FK_HistorialLaboral_Solicitudes] FOREIGN KEY([CodSolicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[HistorialLaboral] CHECK CONSTRAINT [FK_HistorialLaboral_Solicitudes]
GO
ALTER TABLE [Sol].[Idiomas]  WITH CHECK ADD  CONSTRAINT [FK_Idiomas_Solicitudes] FOREIGN KEY([Cod_solicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[Idiomas] CHECK CONSTRAINT [FK_Idiomas_Solicitudes]
GO
ALTER TABLE [Sol].[Municipios]  WITH CHECK ADD  CONSTRAINT [FK_Municipios_Departamentos] FOREIGN KEY([CodDepartamento])
REFERENCES [Sol].[Departamentos] ([CodDepartamento])
GO
ALTER TABLE [Sol].[Municipios] CHECK CONSTRAINT [FK_Municipios_Departamentos]
GO
ALTER TABLE [Sol].[Referencias]  WITH CHECK ADD  CONSTRAINT [FK_Referencias_Solicitudes] FOREIGN KEY([CodSolicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[Referencias] CHECK CONSTRAINT [FK_Referencias_Solicitudes]
GO
ALTER TABLE [Sol].[ReferenciasPersonales]  WITH CHECK ADD  CONSTRAINT [FK_ReferenciasPersonales_Solicitudes] FOREIGN KEY([CodSolicitud])
REFERENCES [Sol].[Solicitudes] ([CodSolicitud])
GO
ALTER TABLE [Sol].[ReferenciasPersonales] CHECK CONSTRAINT [FK_ReferenciasPersonales_Solicitudes]
GO
ALTER TABLE [Sol].[Solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_Solicitudes_Colegios] FOREIGN KEY([Cod_colegio])
REFERENCES [Sol].[Colegios] ([Cod_Colegios])
GO
ALTER TABLE [Sol].[Solicitudes] CHECK CONSTRAINT [FK_Solicitudes_Colegios]
GO
ALTER TABLE [Sol].[Solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_Solicitudes_Departamentos] FOREIGN KEY([CodDepartamentoDomicilio])
REFERENCES [Sol].[Departamentos] ([CodDepartamento])
GO
ALTER TABLE [Sol].[Solicitudes] CHECK CONSTRAINT [FK_Solicitudes_Departamentos]
GO
ALTER TABLE [Sol].[Solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_Solicitudes_Escuelas] FOREIGN KEY([Cod_Escuela])
REFERENCES [Sol].[Escuelas] ([Cod_escuelas])
GO
ALTER TABLE [Sol].[Solicitudes] CHECK CONSTRAINT [FK_Solicitudes_Escuelas]
GO
ALTER TABLE [Sol].[Solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_Solicitudes_Municipios] FOREIGN KEY([CodMunicipioDomicilio])
REFERENCES [Sol].[Municipios] ([CodMunicipio])
GO
ALTER TABLE [Sol].[Solicitudes] CHECK CONSTRAINT [FK_Solicitudes_Municipios]
GO
ALTER TABLE [Sol].[Solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_Solicitudes_Municipios1] FOREIGN KEY([CodMunicipioIdentidad])
REFERENCES [Sol].[Municipios] ([CodMunicipio])
GO
ALTER TABLE [Sol].[Solicitudes] CHECK CONSTRAINT [FK_Solicitudes_Municipios1]
GO
ALTER TABLE [Sol].[Solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_Solicitudes_Organiacion] FOREIGN KEY([Cod_colegio])
REFERENCES [Sol].[Organiacion] ([Cod_organizacion])
GO
ALTER TABLE [Sol].[Solicitudes] CHECK CONSTRAINT [FK_Solicitudes_Organiacion]
GO
ALTER TABLE [Sol].[Solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_Solicitudes_Paises] FOREIGN KEY([CodPaisNacimiento])
REFERENCES [Sol].[Paises] ([CodPais])
GO
ALTER TABLE [Sol].[Solicitudes] CHECK CONSTRAINT [FK_Solicitudes_Paises]
GO
ALTER TABLE [Sol].[Solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_Solicitudes_Seguros] FOREIGN KEY([CodSeguros])
REFERENCES [dbo].[Seguros] ([CodSeguros])
GO
ALTER TABLE [Sol].[Solicitudes] CHECK CONSTRAINT [FK_Solicitudes_Seguros]
GO
ALTER TABLE [Sol].[Solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_Solicitudes_User] FOREIGN KEY([CodUser])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [Sol].[Solicitudes] CHECK CONSTRAINT [FK_Solicitudes_User]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_action_flag_a8637d59_check] CHECK  (([action_flag]>=(0)))
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_action_flag_a8637d59_check]
GO
