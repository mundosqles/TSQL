/* CREACION DE BASE DE DATOS */
﻿/* Creación tipica de una BBDD*/
/* http://www.mundosql.es/ */
CREATE DATABASE AGENDA
ON
/* DONDE GUARDAMOS DATOS*/
( NAME = AGENDA,
    FILENAME = 'M:\Proyectos\SQL Server - Agenda\Agenda.MDF',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5 )
/* DONDE GUARDAMOS LOS LOGS*/
LOG ON
( NAME = AGENDA_LOG,
    FILENAME = 'M:\Proyectos\SQL Server - Agenda\Agenda.LDF',
    SIZE = 5MB,
    MAXSIZE = 25MB,
    FILEGROWTH = 5MB ) ;
/*
FILENAME = ombre fichero
SIZE = TamañO del archivo
MAXSIZE = Tamaño máximo que puede alcanzar el archivo
FILEGROWTH = Incremento de crecimiento automático del archivo
*/
