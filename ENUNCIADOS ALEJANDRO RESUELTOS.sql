{\rtf1\ansi\ansicpg1252\cocoartf2636
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /*  Encunciados Alejandro resueltos */\
\
/*1. Muestra el g\'e9nero de los jugadores y el id de su deporte*/\
\
SELECT *\
FROM olym.olym_athletes; /* aqui esta el genero y el id del atleta*/\
\
SELECT *\
FROM olym.olym_athlete_games;/* aqui esta el id del atleta y el id del deporte*/\
\
SELECT DISTINCT athlete_gender, game_id\
FROM olym.olym_athlete_games\
INNER JOIN olym.olym_athletes ON olym.olym_athletes.id = olym.olym_athlete_games.athlete_id;\
\
\
/*2. Muestra el nombre, la nacionalidad y el g\'e9nero de los participantes. */\
SELECT *\
FROM olym.olym_athletes;/* aqui esta el genero y el id del atleta*/\
\
SELECT *\
FROM olym.olym_athlete_games;/* aqui esta el id del atleta, el id del deporte y el id de la nacion*/\
\
SELECT *\
FROM olym.olym_nations; /* aqui esta el id de la nacion y el nombre de la nacion*/\
\
SELECT DISTINCT athlete_name, nation, athlete_gender\
FROM olym.olym_athlete_games\
INNER JOIN olym.olym_athletes ON olym.olym_athletes.id = olym.olym_athlete_games.athlete_id\
INNER JOIN olym.olym_nations ON olym.olym_nations.id = olym.olym_athlete_games.nation_id;\
\
\
/*3. Muestra el id de los participantes, la medalla obtenida y su nacion*/\
\
SELECT *\
FROM olym.olym_nations; /* aqui esta el nombre de la nacion*/\
\
SELECT *\
FROM olym.olym_athlete_games; /* aqui esta el id del atleta, el id de la nacion y el id del juego*/\
\
SELECT *\
FROM olym.olym_medals; /* aqui esta el id del atleta, el id de la nacion y el id del juego*/\
\
SELECT *\
FROM olym.olym_athletes;/* aqui esta el id del atleta*/\
\
SELECT athlete_id, medal, nation\
FROM olym.olym_medals\
INNER JOIN olym.olym_athlete_games ON olym.olym_athlete_games.id = olym.olym_medals.athlete_game_id\
INNER JOIN olym.olym_nations ON olym.olym_nations.id = olym.olym_athlete_games.nation_id\
INNER JOIN olym.olym_athletes ON olym.olym_athletes.id = olym.olym_athlete_games.athlete_id;\
\
}