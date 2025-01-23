-- England (Premier League)
INSERT INTO clubs (name, country, stadium) VALUES
('Arsenal', 'England', 'Emirates Stadium'),
('Aston Villa', 'England', 'Villa Park'),
('Bournemouth', 'England', 'Vitality Stadium'),
('Brentford', 'England', 'Gtech Community Stadium'),
('Brighton & Hove Albion', 'England', 'American Express Community Stadium'),
('Burnley', 'England', 'Turf Moor'),
('Chelsea', 'England', 'Stamford Bridge'),
('Crystal Palace', 'England', 'Selhurst Park'),
('Everton', 'England', 'Goodison Park'),
('Fulham', 'England', 'Craven Cottage'),
('Liverpool', 'England', 'Anfield'),
('Luton Town', 'England', 'Kenilworth Road'),
('Manchester City', 'England', 'Etihad Stadium'),
('Manchester United', 'England', 'Old Trafford'),
('Newcastle United', 'England', 'St. James'' Park'),
('Nottingham Forest', 'England', 'City Ground'),
('Sheffield United', 'England', 'Bramall Lane'),
('Tottenham Hotspur', 'England', 'Tottenham Hotspur Stadium'),
('West Ham United', 'England', 'London Stadium'),
('Wolverhampton Wanderers', 'England', 'Molineux Stadium');

-- Spain (La Liga)
INSERT INTO clubs (name, country, stadium) VALUES
('Athletic Bilbao', 'Spain', 'San Mamés'),
('Atlético Madrid', 'Spain', 'Cívitas Metropolitano'),
('Barcelona', 'Spain', 'Spotify Camp Nou'),
('Cádiz', 'Spain', 'Nuevo Mirandilla'),
('Celta Vigo', 'Spain', 'Abanca-Balaídos'),
('Getafe', 'Spain', 'Coliseum Alfonso Pérez'),
('Girona', 'Spain', 'Estadi Montilivi'),
('Granada', 'Spain', 'Nuevo Los Cármenes'),
('Las Palmas', 'Spain', 'Estadio Gran Canaria'),
('Mallorca', 'Spain', 'Visit Mallorca Estadi'),
('Osasuna', 'Spain', 'Estadio El Sadar'),
('Rayo Vallecano', 'Spain', 'Estadio de Vallecas'),
('Real Betis', 'Spain', 'Estadio Benito Villamarín'),
('Real Madrid', 'Spain', 'Santiago Bernabéu Stadium'),
('Real Sociedad', 'Spain', 'Reale Arena'),
('Sevilla', 'Spain', 'Estadio Ramón Sánchez Pizjuán'),
('Valencia', 'Spain', 'Estadio de Mestalla'),
('Villarreal', 'Spain', 'Estadio de la Cerámica');

-- Italy (Serie A)
INSERT INTO clubs (name, country, stadium) VALUES
('Atalanta', 'Italy', 'Gewiss Stadium'),
('Bologna', 'Italy', 'Stadio Renato Dall''Ara'),
('Cagliari', 'Italy', 'Unipol Domus'),
('Empoli', 'Italy', 'Stadio Carlo Castellani'),
('Fiorentina', 'Italy', 'Stadio Artemio Franchi'),
('Frosinone', 'Italy', 'Stadio Benito Stirpe'),
('Genoa', 'Italy', 'Stadio Luigi Ferraris'),
('Inter Milan', 'Italy', 'San Siro'),
('Juventus', 'Italy', 'Allianz Stadium'),
('Lazio', 'Italy', 'Stadio Olimpico'),
('Lecce', 'Italy', 'Stadio Via del Mare'),
('Milan', 'Italy', 'San Siro'),
('Monza', 'Italy', 'U-Power Stadium'),
('Napoli', 'Italy', 'Stadio Diego Armando Maradona'),
('Roma', 'Italy', 'Stadio Olimpico'),
('Salernitana', 'Italy', 'Stadio Arechi'),
('Sassuolo', 'Italy', 'Mapei Stadium - Città del Tricolore'),
('Torino', 'Italy', 'Stadio Olimpico Grande Torino'),
('Udinese', 'Italy', 'Dacia Arena'),
('Verona', 'Italy', 'Stadio Marcantonio Bentegodi');

-- Championships
INSERT INTO championships (name) VALUES
('Premier League'),        -- England
('FA Cup'),              -- England
('EFL Cup'),             -- England
('Community Shield'),    -- England
('La Liga'),              -- Spain
('Copa del Rey'),         -- Spain
('Supercopa de España'), -- Spain
('Serie A'),              -- Italy
('Coppa Italia'),         -- Italy
('Supercoppa Italiana'), -- Italy
('UEFA Champions League'),-- Europe
('UEFA Europa League'),   -- Europe
('UEFA Europa Conference League'); -- Europe

-- Arsenal Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Bukayo Saka', 22, 'England', 1),
('Martin Ødegaard', 25, 'Norway', 1),
('Gabriel Jesus', 27, 'Brazil', 1),
('William Saliba', 23, 'France', 1);

-- Aston Villa Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Ollie Watkins', 28, 'England', 2),
('Emiliano Martínez', 32, 'Argentina', 2),
('Leon Bailey', 26, 'Jamaica', 2),
('Douglas Luiz', 26, 'Brazil', 2);

-- Bournemouth Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Dominic Solanke', 27, 'England', 3),
('Philip Billing', 28, 'Denmark', 3),
('Marcus Tavernier', 25, 'England', 3),
('Lloyd Kelly', 26, 'England', 3);

-- Brentford Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Ivan Toney', 28, 'England', 4),
('Bryan Mbeumo', 25, 'Cameroon', 4),
('Christian Nørgaard', 30, 'Denmark', 4),
('Rico Henry', 26, 'England', 4);

-- Brighton & Hove Albion Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Kaoru Mitoma', 27, 'Japan', 5),
('Evan Ferguson', 19, 'Ireland', 5),
('Lewis Dunk', 32, 'England', 5),
('Pascal Groß', 33, 'Germany', 5);

-- Burnley Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Josh Brownhill', 28, 'England', 6),
('Lyle Foster', 24, 'South Africa', 6),
('Zeki Amdouni', 23, 'Switzerland', 6),
('James Trafford', 22, 'England', 6);

-- Chelsea Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Enzo Fernández', 23, 'Argentina', 7),
('Raheem Sterling', 29, 'England', 7),
('Reece James', 24, 'England', 7),
('Christopher Nkunku', 26, 'France', 7);

-- Crystal Palace Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Wilfried Zaha', 31, 'Ivory Coast', 8),
('Eberechi Eze', 26, 'England', 8),
('Marc Guéhi', 24, 'England', 8),
('Cheick Doucouré', 24, 'Mali', 8);

-- Everton Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Dominic Calvert-Lewin', 27, 'England', 9),
('Amadou Onana', 23, 'Belgium', 9),
('James Tarkowski', 31, 'England', 9),
('Dwight McNeil', 25, 'England', 9);

-- Fulham Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Aleksandar Mitrović', 30, 'Serbia', 10),
('João Palhinha', 29, 'Portugal', 10),
('Andreas Pereira', 28, 'Brazil', 10),
('Tim Ream', 36, 'USA', 10);

-- Liverpool Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Mohamed Salah', 32, 'Egypt', 11),
('Trent Alexander-Arnold', 25, 'England', 11),
('Darwin Núñez', 25, 'Uruguay', 11),
('Virgil van Dijk', 33, 'Netherlands', 11);

-- Luton Town Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Tom Lockyer', 29, 'Wales', 12),
('Carlton Morris', 28, 'England', 12),
('Elijah Adebayo', 26, 'England', 12),
('Marvelous Nakamba', 30, 'Zimbabwe', 12);

-- Manchester City Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Erling Haaland', 24, 'Norway', 13),
('Kevin De Bruyne', 33, 'Belgium', 13),
('Phil Foden', 24, 'England', 13),
('Ruben Dias', 27, 'Portugal', 13);

-- Manchester United Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Marcus Rashford', 27, 'England', 14),
('Bruno Fernandes', 29, 'Portugal', 14),
('Casemiro', 32, 'Brazil', 14),
('Raphaël Varane', 31, 'France', 14);

-- Newcastle United Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Alexander Isak', 25, 'Sweden', 15),
('Bruno Guimarães', 26, 'Brazil', 15),
('Kieran Trippier', 34, 'England', 15),
('Nick Pope', 32, 'England', 15);

-- Nottingham Forest Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Morgan Gibbs-White', 24, 'England', 16),
('Brennan Johnson', 23, 'Wales', 16),
('Taiwo Awoniyi', 27, 'Nigeria', 16),
('Steve Cook', 33, 'England', 16);

-- Sheffield United Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Oliver McBurnie', 28, 'Scotland', 17),
('John Fleck', 33, 'Scotland', 17),
('Sander Berge', 26, 'Norway', 17),
('Anel Ahmedhodžić', 25, 'Bosnia', 17);

-- Tottenham Hotspur Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Harry Kane', 31, 'England', 18),
('Son Heung-min', 32, 'South Korea', 18),
('James Maddison', 27, 'England', 18),
('Cristian Romero', 26, 'Argentina', 18);

-- West Ham United Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Jarrod Bowen', 27, 'England', 19),
('Lucas Paquetá', 26, 'Brazil', 19),
('Declan Rice', 25, 'England', 19),
('Kurt Zouma', 30, 'France', 19);

-- Wolverhampton Wanderers Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Pedro Neto', 24, 'Portugal', 20),
('Rúben Neves', 27, 'Portugal', 20),
('Raúl Jiménez', 33, 'Mexico', 20),
('Matheus Nunes', 26, 'Portugal', 20);

-- Athletic Bilbao Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Iñaki Williams', 30, 'Spain', 21),
('Nico Williams', 22, 'Spain', 21),
('Iker Muniain', 31, 'Spain', 21),
('Unai Simón', 27, 'Spain', 21);

-- Atlético Madrid Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Antoine Griezmann', 33, 'France', 22),
('João Félix', 25, 'Portugal', 22),
('Jan Oblak', 31, 'Slovenia', 22),
('Marcos Llorente', 29, 'Spain', 22);

-- Barcelona Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Robert Lewandowski', 36, 'Poland', 23),
('Pedri', 21, 'Spain', 23),
('Gavi', 20, 'Spain', 23),
('Marc-André ter Stegen', 32, 'Germany', 23);

-- Cádiz Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Álvaro Negredo', 38, 'Spain', 24),
('Rubén Alcaraz', 33, 'Spain', 24),
('Brian Ocampo', 25, 'Uruguay', 24),
('Fali', 30, 'Spain', 24);

-- Celta Vigo Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Iago Aspas', 36, 'Spain', 25),
('Gabri Veiga', 22, 'Spain', 25),
('Renato Tapia', 29, 'Peru', 25),
('Joseph Aidoo', 28, 'Ghana', 25);

-- Getafe Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Enes Ünal', 27, 'Turkey', 26),
('Mason Greenwood', 23, 'England', 26),
('Luis Milla', 29, 'Spain', 26),
('Djené Dakonam', 32, 'Togo', 26);

-- Girona Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Cristhian Stuani', 37, 'Uruguay', 27),
('Viktor Tsygankov', 26, 'Ukraine', 27),
('Aleix García', 26, 'Spain', 27),
('Juanpe', 33, 'Spain', 27);

-- Granada Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('José Callejón', 37, 'Spain', 28),
('Myrto Uzuni', 29, 'Albania', 28),
('Raúl Torrente', 23, 'Spain', 28),
('Bryan Zaragoza', 22, 'Spain', 28);

-- Las Palmas Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Jonathan Viera', 34, 'Spain', 29),
('Marc Cardona', 28, 'Spain', 29),
('Álvaro Lemos', 30, 'Spain', 29),
('Kirian Rodríguez', 27, 'Spain', 29);

-- Mallorca Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Vedat Muriqi', 30, 'Kosovo', 30),
('Kang-in Lee', 23, 'South Korea', 30),
('Antonio Raíllo', 32, 'Spain', 30),
('Pablo Maffeo', 27, 'Spain', 30);

-- Osasuna Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Chimy Ávila', 30, 'Argentina', 31),
('David García', 30, 'Spain', 31),
('Moi Gómez', 29, 'Spain', 31),
('Sergio Herrera', 31, 'Spain', 31);

-- Rayo Vallecano Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Álvaro García', 31, 'Spain', 32),
('Radamel Falcao', 38, 'Colombia', 32),
('Isi Palazón', 29, 'Spain', 32),
('Stole Dimitrievski', 30, 'North Macedonia', 32);

-- Real Betis Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Nabil Fekir', 30, 'France', 33),
('Borja Iglesias', 31, 'Spain', 33),
('William Carvalho', 32, 'Portugal', 33),
('Luiz Felipe', 27, 'Italy', 33);

-- Real Madrid Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Vinícius Júnior', 23, 'Brazil', 34),
('Jude Bellingham', 21, 'England', 34),
('Luka Modrić', 38, 'Croatia', 34),
('Thibaut Courtois', 32, 'Belgium', 34);

-- Real Sociedad Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Mikel Oyarzabal', 27, 'Spain', 35),
('Alexander Sørloth', 28, 'Norway', 35),
('David Silva', 38, 'Spain', 35),
('Takefusa Kubo', 23, 'Japan', 35);

-- Sevilla Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Youssef En-Nesyri', 27, 'Morocco', 36),
('Ivan Rakitić', 36, 'Croatia', 36),
('Jesús Navas', 38, 'Spain', 36),
('Marcos Acuña', 32, 'Argentina', 36);

-- Valencia Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('José Gayà', 29, 'Spain', 37),
('Hugo Guillamón', 24, 'Spain', 37),
('Justin Kluivert', 25, 'Netherlands', 37),
('André Almeida', 24, 'Portugal', 37);

-- Villarreal Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Gerard Moreno', 32, 'Spain', 38),
('Yeremy Pino', 21, 'Spain', 38),
('Pau Torres', 27, 'Spain', 38),
('Giovani Lo Celso', 28, 'Argentina', 38);

-- Atalanta Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Duván Zapata', 33, 'Colombia', 39),
('Teun Koopmeiners', 26, 'Netherlands', 39),
('Giorgio Scalvini', 20, 'Italy', 39),
('Luis Muriel', 33, 'Colombia', 39);

-- Bologna Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Marko Arnautović', 35, 'Austria', 40),
('Riccardo Orsolini', 27, 'Italy', 40),
('Stefan Posch', 27, 'Austria', 40),
('Jerdy Schouten', 27, 'Netherlands', 40);

-- Cagliari Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Leonardo Pavoletti', 35, 'Italy', 41),
('Nahitan Nández', 29, 'Uruguay', 41),
('Zito Luvumbo', 22, 'Angola', 41),
('Boris Radunović', 28, 'Serbia', 41);

-- Empoli Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Tommaso Baldanzi', 20, 'Italy', 42),
('Sam Lammers', 27, 'Netherlands', 42),
('Sebastiano Luperto', 27, 'Italy', 42),
('Guglielmo Vicario', 27, 'Italy', 42);

-- Fiorentina Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Nicolás González', 26, 'Argentina', 43),
('Arthur Cabral', 25, 'Brazil', 43),
('Sofyan Amrabat', 28, 'Morocco', 43),
('Cristiano Biraghi', 31, 'Italy', 43);

-- Frosinone Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Luca Mazzitelli', 28, 'Italy', 44),
('Gianluca Frabotta', 25, 'Italy', 44),
('Jaime Báez', 28, 'Uruguay', 44),
('Francesco Gelli', 27, 'Italy', 44);

-- Genoa Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Mattia Bani', 30, 'Italy', 45),
('Albert Gudmundsson', 26, 'Iceland', 45),
('Stefano Sturaro', 31, 'Italy', 45),
('Kevin Strootman', 34, 'Netherlands', 45);

-- Inter Milan Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Lautaro Martínez', 26, 'Argentina', 46),
('Nicolò Barella', 27, 'Italy', 46),
('André Onana', 28, 'Cameroon', 46),
('Hakan Çalhanoğlu', 30, 'Turkey', 46);

-- Juventus Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Dušan Vlahović', 24, 'Serbia', 47),
('Federico Chiesa', 27, 'Italy', 47),
('Manuel Locatelli', 26, 'Italy', 47),
('Wojciech Szczęsny', 34, 'Poland', 47);

-- Lazio Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Ciro Immobile', 34, 'Italy', 48),
('Sergej Milinković-Savić', 29, 'Serbia', 48),
('Luis Alberto', 31, 'Spain', 48),
('Ivan Provedel', 30, 'Italy', 48);

-- Lecce Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Gabriel Strefezza', 26, 'Brazil', 49),
('Assan Ceesay', 30, 'Gambia', 49),
('Morten Hjulmand', 24, 'Denmark', 49),
('Federico Baschirotto', 27, 'Italy', 49);

-- Milan Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Rafael Leão', 25, 'Portugal', 50),
('Theo Hernández', 26, 'France', 50),
('Mike Maignan', 29, 'France', 50),
('Olivier Giroud', 38, 'France', 50);

-- Monza Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Patrick Ciurria', 28, 'Italy', 51),
('Matteo Pessina', 26, 'Italy', 51),
('Gianluca Caprari', 30, 'Italy', 51),
('Carlos Augusto', 25, 'Brazil', 51);

-- Napoli Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Victor Osimhen', 25, 'Nigeria', 52),
('Khvicha Kvaratskhelia', 23, 'Georgia', 52),
('Giovanni Di Lorenzo', 31, 'Italy', 52),
('Stanislav Lobotka', 29, 'Slovakia', 52);

-- Roma Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Paulo Dybala', 30, 'Argentina', 53),
('Lorenzo Pellegrini', 28, 'Italy', 53),
('Tammy Abraham', 27, 'England', 53),
('Chris Smalling', 35, 'England', 53);

-- Salernitana Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Boulaye Dia', 28, 'Senegal', 54),
('Antonio Candreva', 37, 'Italy', 54),
('Grigoris Kastanos', 26, 'Cyprus', 54),
('Norbert Gyömbér', 31, 'Slovakia', 54);

-- Sassuolo Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Domenico Berardi', 30, 'Italy', 55),
('Davide Frattesi', 25, 'Italy', 55),
('Maxime López', 26, 'France', 55),
('Andrea Consigli', 37, 'Italy', 55);

-- Torino Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Antonio Sanabria', 28, 'Paraguay', 56),
('Perr Schuurs', 24, 'Netherlands', 56),
('Nemanja Radonjić', 28, 'Serbia', 56),
('Vanja Milinković-Savić', 27, 'Serbia', 56);

-- Udinese Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Gerard Deulofeu', 30, 'Spain', 57),
('Beto', 26, 'Portugal', 57),
('Walace', 29, 'Brazil', 57),
('Jaka Bijol', 25, 'Slovenia', 57);

-- Verona Players
INSERT INTO players (name, age, nationality, club_id) VALUES
('Darko Lazović', 33, 'Serbia', 58),
('Kevin Lasagna', 31, 'Italy', 58),
('Adrien Tameze', 29, 'Cameroon', 58),
('Pawel Dawidowicz', 29, 'Poland', 58);