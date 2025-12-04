CREATE TABLE Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados (
    Temporada INT, Clave_Entidad NVARCHAR(255), Entidad NVARCHAR(255), Clave_Municipio NVARCHAR(255), Municipio NVARCHAR(255), Bien_juridico_afectado NVARCHAR(255),
    Tipo_de_delito NVARCHAR(MAX), Subtipo_de_delito NVARCHAR(MAX), Modalidad NVARCHAR(MAX), 
	Enero FLOAT, Febrero FLOAT, Marzo FLOAT, Abril FLOAT, Mayo FLOAT, Junio FLOAT, Julio FLOAT, Agosto FLOAT, Septiembre FLOAT, Octubre FLOAT, Noviembre FLOAT, Diciembre FLOAT
);
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2015];
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2016];
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2017];
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2018];
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2019];
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2020];
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2021];
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2022];
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2023];
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2024];
INSERT INTO Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados SELECT * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2025];

SELECT COUNT(*) FROM Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados;
SELECT TOP 1000 * FROM Datos_abiertos_de_incidencia_delictiva.dbo.Delitos_Conglomerados;

/* Consulta total por año y tipo de delito */
SELECT 
    Temporada, Tipo_de_delito, SUM(Enero + Febrero + Marzo + Abril + Mayo + Junio + Julio + Agosto + Septiembre + Octubre + Noviembre + Diciembre) AS Total_Anual
FROM Delitos.dbo.Delitos_Nacionales
GROUP BY Temporada, Tipo_de_delito
ORDER BY Temporada, Total_Anual DESC;

/*Verificar NULLS o incosistencias*/
SELECT * 
FROM Delitos.dbo.Delitos_Nacionales
WHERE Tipo_de_delito IS NULL OR Municipio IS NULL;

SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2015] WHERE Clave_Ent=1; SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2016] WHERE Clave_Ent=1;
SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2017] WHERE Clave_Ent=1; SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2018] WHERE Clave_Ent=1;
SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2019] WHERE Clave_Ent=1; SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2020] WHERE Clave_Ent=1;
SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2021] WHERE Clave_Ent=1; SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2022] WHERE Clave_Ent=1;
SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2022] WHERE Clave_Ent=1; SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2024] WHERE Clave_Ent=1;
SELECT TOP 2 * FROM [Datos_abiertos_de_incidencia_delictiva].[dbo].[Delitos_2025] WHERE Clave_Ent=1;

