create database pokedex_db;
use pokedex_db;

drop tables if exist dex_kanto;
create table dex_kanto
    (
        dex_num auto_increment primary key not null
        poke_name varchar(20) not null
        poke_type1 enum(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18) not null
        poke_type2 enum(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18) 
        poke_move_name varchar(30) not null
        poke_move_type enum(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18) not null
        poke_move_dmg int not null
        FOREIGN KEY (poke_type1) REFERENCES types(type_num);
        FOREIGN KEY (poke_type2) REFERENCES types(type_num);
        FOREIGN KEY (poke_move_type) REFERENCES types(type_num);
    );

create table types
    (
        type_num auto_increment primary key not null
        type_move enum("normal", "fire", "water", "electric", "grass", "ice", "fighting", "poison", "ground", "flying", "psychic", "bug", "rock", "ghost", "dark", "dragon", "steel", "fairy") not null
    );

insert into dex_kanto (poke_name, poke_type1, poke_type2, poke_move_name, poke_move_type, poke_move_dmg) values
("Bulbasaur", 5, 8, "Bullet Seed", 4, 25),
("Ivysaur", 5, 8, "Seed Bomb", 4, 80),
("Venusaur", 5, 8, "Solar Beam", 4, 120),
("Charmander", 2, null, "Ember", 2, 40),
("Charmeleon", 2, null, "Fire Fang", 2, 65),
("Charizard", 2, 10, "Fire Blitz", 2, 120),
("Squirtle", 3, null, "Water Gun", 3, 40),
("Wartortle", 3, null, "Water Pulse", 3, 60),
("Blastoise", 3, null, "Hydro Pump", 3, 110),
("Caterpie", 12, null, "Bug Bite", 12, 60),
("Metapod", 12, null, "Electro Web", 4, 55),
("Butterfree", 12, 10, "Bug Buzz", 3, 90),
("Weedle", 12, 8, "Posion String", 8, 15),
("Kakuna", 12, 8, "Takle", 1, 40),
("Beedrill", 12, 8, "Fell Stinger", 12, 50),
("Pidgey", 1, 10, "Gust", 10, 40),
("Pidgeotto", 1, 10, "Wing Attack", 10, 60),
("Pidgeot", 1, 10, "Hurricane", 10, 110),
("Rattata", 1, null, "Tackle", 1, 40),
("Raticate", 1, null, "Double Edge", 1, 120),
("Spearow", 1, 10, "Peck", 10, 35),
("Fearow", 1, 10, "Drill Peck", 10, 80),
("Ekans", 8, null, "Acid", 8, 40),
("Arbok", 8, null, "Belch", 8, 120),
("Pikachu", 4, null, "Nuzzle", 4, 20),
("Raichu", 4, null, "Thunder", 4, 110),
("Sandshrew", 9, null, "Rollout", 13, 30),
("Sandslash", 9, null, "Earthquake", 9, 100),
("NidoranF", 8, null, "Poison Sting", 8, 15),
("Nidorina", 8, null, "Poison Fang", 8, 50),
("Nidoqueen", 8, 9, "Sludge Wave", 8, 95),
("NidoranM", 8, null, "Poison Sting", 8, 15),
("Nidorino", 8, null, "Poison Jab", 8, 80),
("Nidoking", 8, 9, "Earth Power", 9, 90),
("Clefairy", 18, null, "Disarming Voice", 18, 40),
("Clefable", 18, null, "Moonblast", 18, 95),
("Vulpix", 2, null, "Incinerate", 2, 60),
("Ninetales", 2, null, "Inferno", 2, 100),
("Jigglypuff", 1, 18, "Charm", 18, 20),
("Wigglytuff", 1, 18, "Dazzling Gleam", 18, 80),
("Zubat", 8, 10, "Astonish", 14, 30),
("Golbat", 8, 10, "Venoshock", 8, 65),
("Oddish", 5, 8, "Absorb", 5, 20),
("Gloom", 5, 8, "Mega Drain", 5, 40),
("Vileplume", 5, 8, "Petal Dance", 5, 120),
("Paras", 12, 5, "Absorb", 5, 20),
("Parasect", 12, 5, "X-Scissor", 12, 80),
("Venonat", 12, 8, "Struggle Bug", 12, 50),
("Venomoth", 12, 8, "Bug Buzz", 12, 90),
("Diglett", 9, null, "Mud-Slap", 9, 20),
("Dugtrio", 9, null, "Earthquake", 9, 100),
("Meowth", 1, null, "Fake Out", 1, 40),
("Persian", 1, null, "Slash", 1, 70),
("Psyduck", 3, null, "Water Gun", 3, 40),
("Golduck", 3, null, "Psychic", 11, 90),
("Mankey", 7, null, "Low Kick", 7, 20),
("Primeape", 7, null, "Close Combat", 7, 120),
("Growlithe", 2, null, "Ember", 2, 40),
("Arcanine", 2, null, "Flare Blitz", 2, 120),
("Poliwag", 3, null, "Bubble Beam", 3, 65),
("Poliwhirl", 3, null, "Scald", 3, 80),
("Poliwrath", 3, 7, "Submission", 7, 80),
("Abra", 11, null, "Confusion", 11, 50),
("Kadabra", 11, null, "Psychic", 11, 90),
("Alakazam", 11, null, "Dream Eater", 11, 100),
("Machop", 7, null, "Revenge", 7, 60),
("Machoke", 7, null, "Vital Throw", 7, 70),
("Machamp", 7, null, "Cross Chop", 7, 100),
("Bellsprout", 5, 8, "Vine Whip", 5, 45),
("Weepinbell", 5, 8, "Knock Off", 16, 65),
("Victreebel", 5, 8, "Victreebel", 5, 130),
("Tentacool", 3, 8, "Acid", 8, 40),
("Tentacruel", 3, 8, "Poison Jab", 8, 80),
("Geodude", 9, 13, "Rollout", 9, 30),
("Graveler", 9, 13, "Rock Throw", 9, 50),
("Golem" , 9 , 13, "Earthquake", 9 , 100),
("Ponyta" , 2 , null , "Flame Wheel", 2 , 60),
("Rapidash" , 2 , null , "Inferno", 2 , 100),
("Slowpoke" , 3 , 11 , "Water Gun", 3 , 40),
("Slowbro" , 3 , 11 , "Surf", 3 , 90),
("Magnemite" , 4 , 17 , "Thunder Shock", 4 , 40),
("Magneton" , 4 , 17 , "Flash Cannon", 17 , 80),
("Farfetch'd" , 1 , 10 , "Air Cutter", 10 , 60),
("Doduo" , 1 , 10 , "Fury Attack", 1 , 15),
("Dodrio" , 1 , 10 , "Wing Attack", 10 , 60),
("Seel" , 3 , null , "Water Gun", 3 , 40),
("Dewgong" , 3 , 11 , "Aqua Tail", 3 , 90),
("Grimer" , 8 , null , "Sludge", 8 , 65),
("Muk" , 8 , null , "Gunk Shot", 8 , 120),
("Shellder" , 3 , null , "Water Gun", 3 , 40),
("Cloyster" , 3 , 6 , "Hydro Pump", 3 , 110),
("Gastly" , 14 , 8 , "Lick", 14 , 30),
("Haunter" , 14 , 8 , "	Hex", 14 , 65),
("Gengar" , 14 , 8 , "Shadow Ball", 14 , 80),
("Onix" , 9 , 13 , "Stone Edge", 13 , 100),
("Drowzee" , 11 , null , "Psybeam", 11 , 65),
("Hypno" , 11 , null , "Confusion", 11 , 50),
("Krabby" , 3 , null , "Water Gun", 3 , 40),
("Kingler" , 3 , null , "Crabhammer", 3 , 100),
("Voltorb" , 4 , null , "Self-Destruct", 1 , 200),
("Electrode" , 4 , null , "Explosion", 1 , 250),
("Exeggcute" , 5 , 11 , "Mega Drain", 5 , 40),
("Exeggutor" , 5 , 11 , "Solar Beam", 5 , 120),
("Cubone" , 9 , null , "Bonemerang", 9 , 50),
("Marowak" , 9 , null , "Stomping Tantrum", 9 , 75),
("Hitmonlee" , 7 , null , "Low Sweep", 7 , 65),
("Hitmonchan" , 7 , null , "Drain Punch", 7 , 75),
("Lickitung" , 1 , null , "Slam", 1 , 80),
("Koffing" , 8 , null , "Clear Smog", 8 , 50),
("Weezing" , 8 , null , "Belch", 8 , 120),
("Rhyhorn" , 9 , 13 , "Bulldoze", 9 , 60),
("Rhydon" , 9 , 13 , "Stone Edge", 13 , 100),
("Chansey" , 1 , null , "Double-Edge", 1 , 120),
("Tangela" , 5 , null , "Mega Drain", 5 , 40),
("Kangaskhan" , 1 , null , "Last Resort", 1 , 140),
("Horsea" , 3 , null , "Water Gun", 3 , 40),
("Seadra" , 3 , null , "Bubble Beam", 3 , 65),
("Goldeen" , 3 , null , "Water Pulse", 3 , 60),
("Seaking" , 3 , null , "Waterfall", 3 , 80),
("Staryu" , 3 , null , "Water Gun", 3 , 40),
("Starmie" , 3 , 11 , "Hydro Pump", 3 , 110),
("Mr. Mime" , 11 , 18 , "Confusion", 11 , 50),
("Scyther" , 12 , 10 , "X-Scissor", 12 , 80),
("Jynx" , 6 , 11 , "Blizzard", 6 , 110),
("Electabuzz" , 4 , null , "Thunder Punch", 4 , 100),
("Magmar" , 2 , null , "Fire Blast", 2 , 110),
("Pinsir" , 12 , null , "X-Scissor", 12 , 80),
("Tauros" , 1 , null , "Thrash", 1 , 120),
("Magikarp" , 3 , null , "Splash", 1 , 40),
("Gyarados" , 3 , 10 , "Hurricane", 10 , 110),
("Lapras" , 3 , 6 , "Ice Beam", 6 , 90),
("Ditto" , 1 , null , "Transform", 1 , 40),
("Eevee" , 1 , null , "Quick Attack", 1 , 40),
("Vaporeon" , 3 , null , "Muddy Water", 3 , 90),
("Flareon" , 2 , null , "Fire Fang", 2 , 65),
("Porygon" , 1 , null , "Thunder Shock", 4 , 40),
("Omanyte" , 13 , 3 , "Brine", 3 , 65),
("Omastar" , 13 , 3 , "Ancient Power", 3 , 65),
("Kabuto" , 13 , 3 , "Aqua Jet", 3 , 40),
("Kabutops" , 13 , 3 , "Liquidation", 3 , 85),
("Aerodactyl" , 13 , 10 , "Stone Edge", 13 , 100),
("Snorlax" , 1 , null , "Giga Impact", 1 , 150),
("Articuno" , 6 , 10 , "Blizzard", 6 , 110),
("Zapdos" , 4 , 10 , "Zap Cannon", 4 , 120),
("Moltress" , 2 , 10 , "Sky Attack", 10 , 140),
("Dratini" , 15 , null , "Dragon Tail", 15 , 60),
("Dragonair" , 15 , null , "Outrage", 15 , 120),
("Dragonite" , 15 , 10 , "Hyper Beam", 1 , 150),
("Mewtwo" , 11 , null , "Future Sight", 11 , 120),
("Mew" , 11 , null , "Psychic", 11 , 90);



insert into types (type_move) values 
("normal"),
("fire"),
("water"),
("grass"),
("electric"),
("ice"),
("fighting"),
("poison"),
("ground"),
("flying"),
("psychic"),
("bug"),
("rock"),
("ghost"),
("dark"),
("dragon"),
("steel"),
("fairy");
