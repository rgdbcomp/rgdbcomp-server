toc.dat                                                                                             0000600 0004000 0002000 00000044362 13774640454 0014466 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           6                 y            dbms_project    11.8    11.8 !    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         C           1262    25346    dbms_project    DATABASE     �   CREATE DATABASE dbms_project WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE dbms_project;
             postgres    false         �            1259    25806     referees_team    TABLE     �   CREATE TABLE public." referees_team" (
    id integer NOT NULL,
    first_referee character varying(255),
    second_referee character varying(255),
    match_id integer,
    third_referee character varying,
    fourth_referee character varying
);
 $   DROP TABLE public." referees_team";
       public         postgres    false         �            1259    25814    cards_in_match_to_player    TABLE     �   CREATE TABLE public.cards_in_match_to_player (
    player_id integer NOT NULL,
    match_id integer NOT NULL,
    color character varying(255),
    type_of_foul character varying(255),
    time_of_foul integer
);
 ,   DROP TABLE public.cards_in_match_to_player;
       public         postgres    false         �            1259    25820    goal_match_player    TABLE     �   CREATE TABLE public.goal_match_player (
    match_id integer NOT NULL,
    player_id integer NOT NULL,
    time_of_goal integer
);
 %   DROP TABLE public.goal_match_player;
       public         postgres    false         �            1259    25823    league    TABLE     =  CREATE TABLE public.league (
    id integer NOT NULL,
    "Name" character varying(255),
    "Season" character varying(255),
    "Status" character varying(255),
    number_of_clubs integer,
    total_matches character varying(255),
    average_goals_per_match real,
    average_scored_home_team real,
    average_scored_away_team real,
    average_corners_per_match real,
    total_corners_for_season smallint,
    average_cards_per_match real,
    average_cards_per_match_home_team real,
    average_cards_per_match_away_team real,
    total_cards_for_season integer
);
    DROP TABLE public.league;
       public         postgres    false         �            1259    25831    matches    TABLE     �  CREATE TABLE public.matches (
    id integer NOT NULL,
    "timestamp" bigint,
    date_gmt text,
    status text,
    attendance bigint,
    home_team_name text,
    away_team_name text,
    referee text,
    game_week bigint,
    pre_match_ppg_home numeric,
    pre_match_ppg_away numeric,
    home_ppg numeric,
    away_ppg numeric,
    home_team_goal_count bigint,
    away_team_goal_count bigint,
    total_goal_count bigint,
    total_goals_at_half_time bigint,
    home_team_goal_count_half_time bigint,
    away_team_goal_count_half_time bigint,
    home_team_goal_timings text,
    away_team_goal_timings text,
    home_team_corner_count bigint,
    away_team_corner_count bigint,
    home_team_yellow_cards bigint,
    home_team_red_cards bigint,
    away_team_yellow_cards bigint,
    away_team_red_cards bigint,
    home_team_first_half_cards bigint,
    home_team_second_half_cards bigint,
    away_team_first_half_cards bigint,
    away_team_second_half_cards bigint,
    home_team_shots bigint,
    away_team_shots bigint,
    home_team_shots_on_target bigint,
    away_team_shots_on_target bigint,
    home_team_shots_off_target bigint,
    away_team_shots_off_target bigint,
    home_team_fouls bigint,
    away_team_fouls bigint,
    home_team_possession bigint,
    away_team_possession bigint,
    team_a_xg numeric,
    team_b_xg numeric,
    average_goals_per_match_pre_match numeric,
    btts_percentage_pre_match bigint,
    over15_percentage_pre_match bigint,
    over25_percentage_pre_match bigint,
    over35_percentage_pre_match bigint,
    over45_percentage_pre_match bigint,
    over15_htfhg_percentage_pre_match bigint,
    over05_htfhg_percentage_pre_match bigint,
    over152_hg_percentage_pre_match bigint,
    over052_hg_percentage_pre_match bigint,
    average_corners_per_match_pre_match numeric,
    average_cards_per_match_pre_match numeric,
    odds_ft_home_team_win numeric,
    odds_ft_draw numeric,
    odds_ft_away_team_win numeric,
    odds_ft_over15 numeric,
    odds_ft_over25 numeric,
    odds_ft_over35 numeric,
    odds_ft_over45 numeric,
    odds_btts_yes numeric,
    odds_btts_no numeric,
    stadium_name text,
    league_id integer
);
    DROP TABLE public.matches;
       public         postgres    false         �            1259    25839    none_player_contract    TABLE     �   CREATE TABLE public.none_player_contract (
    member_id integer NOT NULL,
    id integer NOT NULL,
    name character varying(255),
    "from" date,
    "to" character varying(255),
    amount integer
);
 (   DROP TABLE public.none_player_contract;
       public         postgres    false         �            1259    25847    none_player_team_member    TABLE     �   CREATE TABLE public.none_player_team_member (
    full_name character varying(255) NOT NULL,
    id integer NOT NULL,
    team_id integer NOT NULL,
    role character varying
);
 +   DROP TABLE public.none_player_team_member;
       public         postgres    false         �            1259    25852    player_contract    TABLE     �   CREATE TABLE public.player_contract (
    player_id integer NOT NULL,
    team_id integer NOT NULL,
    from_time date NOT NULL,
    to_time date NOT NULL,
    amount bigint NOT NULL,
    avg_score smallint,
    last_team_name character varying
);
 #   DROP TABLE public.player_contract;
       public         postgres    false         �            1259    25855    player_exchange    TABLE     �   CREATE TABLE public.player_exchange (
    team_id integer NOT NULL,
    player_in_id integer NOT NULL,
    player_out_id integer NOT NULL,
    time_of_exchange integer,
    match_id integer
);
 #   DROP TABLE public.player_exchange;
       public         postgres    false         �            1259    25860    players    TABLE     �  CREATE TABLE public.players (
    id integer NOT NULL,
    team_id integer NOT NULL,
    full_name text,
    age bigint,
    birthday bigint,
    league text,
    season text,
    "position" text,
    current_club text,
    minutes_played_overall bigint,
    minutes_played_home bigint,
    minutes_played_away bigint,
    nationality text,
    appearances_overall bigint,
    appearances_home bigint,
    appearances_away bigint,
    goals_overall bigint,
    goals_home bigint,
    goals_away bigint,
    assists_overall bigint,
    assists_home bigint,
    assists_away bigint,
    penalty_goals bigint,
    penalty_misses bigint,
    clean_sheets_overall bigint,
    clean_sheets_home bigint,
    clean_sheets_away bigint,
    conceded_overall bigint,
    conceded_home bigint,
    conceded_away bigint,
    yellow_cards_overall bigint,
    red_cards_overall bigint,
    goals_involved_per90_overall numeric,
    assists_per90_overall numeric,
    goals_per90_overall numeric,
    goals_per90_home numeric,
    goals_per90_away numeric,
    min_per_goal_overall bigint,
    conceded_per90_overall numeric,
    min_per_conceded_overall bigint,
    min_per_match bigint,
    min_per_card_overall bigint,
    min_per_assist_overall bigint,
    cards_per90_overall numeric,
    rank_in_league_top_attackers bigint,
    rank_in_league_top_midfielders bigint,
    rank_in_league_top_defenders bigint,
    rank_in_club_top_scorer bigint
);
    DROP TABLE public.players;
       public         postgres    false         �            1259    25868    teams    TABLE     @  CREATE TABLE public.teams (
    id bigint NOT NULL,
    team_name text,
    league_id bigint,
    common_name text NOT NULL,
    season text NOT NULL,
    country text,
    matches_played bigint,
    matches_played_home bigint,
    matches_played_away bigint,
    suspended_matches bigint,
    wins bigint,
    wins_home bigint,
    wins_away bigint,
    draws bigint,
    draws_home bigint,
    draws_away bigint,
    losses bigint,
    losses_home bigint,
    losses_away bigint,
    points_per_game numeric,
    points_per_game_home numeric,
    points_per_game_away numeric,
    league_position bigint,
    league_position_home bigint,
    league_position_away bigint,
    performance_rank bigint,
    goals_scored bigint,
    goals_conceded bigint,
    goals_scored_home bigint,
    goals_scored_away bigint,
    goals_conceded_home bigint,
    goals_conceded_away bigint,
    goal_difference_home bigint,
    goal_difference_away bigint,
    minutes_per_goal_scored bigint,
    minutes_per_goal_scored_home bigint,
    minutes_per_goal_scored_away bigint,
    minutes_per_goal_conceded bigint,
    minutes_per_goal_conceded_home bigint,
    minutes_per_goal_conceded_away bigint,
    clean_sheets bigint,
    clean_sheets_home bigint,
    clean_sheets_away bigint,
    first_team_to_score_count bigint,
    first_team_to_score_count_home bigint,
    first_team_to_score_count_away bigint,
    corners_total bigint,
    corners_total_home bigint,
    corners_total_away bigint,
    cards_total bigint,
    cards_total_home bigint,
    cards_total_away bigint,
    average_possession bigint,
    average_possession_home bigint,
    average_possession_away bigint,
    shots bigint,
    shots_home bigint,
    shots_away bigint,
    shots_on_target bigint,
    shots_on_target_home bigint,
    shots_on_target_away bigint,
    shots_off_target bigint,
    shots_off_target_home bigint,
    shots_off_target_away bigint,
    fouls bigint,
    fouls_home bigint,
    fouls_away bigint,
    updated_at timestamp with time zone,
    created_at timestamp with time zone,
    deleted_at timestamp with time zone
);
    DROP TABLE public.teams;
       public         postgres    false         3          0    25806     referees_team 
   TABLE DATA               v   COPY public." referees_team" (id, first_referee, second_referee, match_id, third_referee, fourth_referee) FROM stdin;
    public       postgres    false    196       2867.dat 4          0    25814    cards_in_match_to_player 
   TABLE DATA               j   COPY public.cards_in_match_to_player (player_id, match_id, color, type_of_foul, time_of_foul) FROM stdin;
    public       postgres    false    197       2868.dat 5          0    25820    goal_match_player 
   TABLE DATA               N   COPY public.goal_match_player (match_id, player_id, time_of_goal) FROM stdin;
    public       postgres    false    198       2869.dat 6          0    25823    league 
   TABLE DATA               Y  COPY public.league (id, "Name", "Season", "Status", number_of_clubs, total_matches, average_goals_per_match, average_scored_home_team, average_scored_away_team, average_corners_per_match, total_corners_for_season, average_cards_per_match, average_cards_per_match_home_team, average_cards_per_match_away_team, total_cards_for_season) FROM stdin;
    public       postgres    false    199       2870.dat 7          0    25831    matches 
   TABLE DATA               �  COPY public.matches (id, "timestamp", date_gmt, status, attendance, home_team_name, away_team_name, referee, game_week, pre_match_ppg_home, pre_match_ppg_away, home_ppg, away_ppg, home_team_goal_count, away_team_goal_count, total_goal_count, total_goals_at_half_time, home_team_goal_count_half_time, away_team_goal_count_half_time, home_team_goal_timings, away_team_goal_timings, home_team_corner_count, away_team_corner_count, home_team_yellow_cards, home_team_red_cards, away_team_yellow_cards, away_team_red_cards, home_team_first_half_cards, home_team_second_half_cards, away_team_first_half_cards, away_team_second_half_cards, home_team_shots, away_team_shots, home_team_shots_on_target, away_team_shots_on_target, home_team_shots_off_target, away_team_shots_off_target, home_team_fouls, away_team_fouls, home_team_possession, away_team_possession, team_a_xg, team_b_xg, average_goals_per_match_pre_match, btts_percentage_pre_match, over15_percentage_pre_match, over25_percentage_pre_match, over35_percentage_pre_match, over45_percentage_pre_match, over15_htfhg_percentage_pre_match, over05_htfhg_percentage_pre_match, over152_hg_percentage_pre_match, over052_hg_percentage_pre_match, average_corners_per_match_pre_match, average_cards_per_match_pre_match, odds_ft_home_team_win, odds_ft_draw, odds_ft_away_team_win, odds_ft_over15, odds_ft_over25, odds_ft_over35, odds_ft_over45, odds_btts_yes, odds_btts_no, stadium_name, league_id) FROM stdin;
    public       postgres    false    200       2871.dat 8          0    25839    none_player_contract 
   TABLE DATA               Y   COPY public.none_player_contract (member_id, id, name, "from", "to", amount) FROM stdin;
    public       postgres    false    201       2872.dat 9          0    25847    none_player_team_member 
   TABLE DATA               O   COPY public.none_player_team_member (full_name, id, team_id, role) FROM stdin;
    public       postgres    false    202       2873.dat :          0    25852    player_contract 
   TABLE DATA               t   COPY public.player_contract (player_id, team_id, from_time, to_time, amount, avg_score, last_team_name) FROM stdin;
    public       postgres    false    203       2874.dat ;          0    25855    player_exchange 
   TABLE DATA               k   COPY public.player_exchange (team_id, player_in_id, player_out_id, time_of_exchange, match_id) FROM stdin;
    public       postgres    false    204       2875.dat <          0    25860    players 
   TABLE DATA                 COPY public.players (id, team_id, full_name, age, birthday, league, season, "position", current_club, minutes_played_overall, minutes_played_home, minutes_played_away, nationality, appearances_overall, appearances_home, appearances_away, goals_overall, goals_home, goals_away, assists_overall, assists_home, assists_away, penalty_goals, penalty_misses, clean_sheets_overall, clean_sheets_home, clean_sheets_away, conceded_overall, conceded_home, conceded_away, yellow_cards_overall, red_cards_overall, goals_involved_per90_overall, assists_per90_overall, goals_per90_overall, goals_per90_home, goals_per90_away, min_per_goal_overall, conceded_per90_overall, min_per_conceded_overall, min_per_match, min_per_card_overall, min_per_assist_overall, cards_per90_overall, rank_in_league_top_attackers, rank_in_league_top_midfielders, rank_in_league_top_defenders, rank_in_club_top_scorer) FROM stdin;
    public       postgres    false    205       2876.dat =          0    25868    teams 
   TABLE DATA               �  COPY public.teams (id, team_name, league_id, common_name, season, country, matches_played, matches_played_home, matches_played_away, suspended_matches, wins, wins_home, wins_away, draws, draws_home, draws_away, losses, losses_home, losses_away, points_per_game, points_per_game_home, points_per_game_away, league_position, league_position_home, league_position_away, performance_rank, goals_scored, goals_conceded, goals_scored_home, goals_scored_away, goals_conceded_home, goals_conceded_away, goal_difference_home, goal_difference_away, minutes_per_goal_scored, minutes_per_goal_scored_home, minutes_per_goal_scored_away, minutes_per_goal_conceded, minutes_per_goal_conceded_home, minutes_per_goal_conceded_away, clean_sheets, clean_sheets_home, clean_sheets_away, first_team_to_score_count, first_team_to_score_count_home, first_team_to_score_count_away, corners_total, corners_total_home, corners_total_away, cards_total, cards_total_home, cards_total_away, average_possession, average_possession_home, average_possession_away, shots, shots_home, shots_away, shots_on_target, shots_on_target_home, shots_on_target_away, shots_off_target, shots_off_target_home, shots_off_target_away, fouls, fouls_home, fouls_away, updated_at, created_at, deleted_at) FROM stdin;
    public       postgres    false    206       2877.dat �
           2606    25830    league _copy_10 
   CONSTRAINT     M   ALTER TABLE ONLY public.league
    ADD CONSTRAINT _copy_10 PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.league DROP CONSTRAINT _copy_10;
       public         postgres    false    199         �
           2606    25846    none_player_contract _copy_6 
   CONSTRAINT     e   ALTER TABLE ONLY public.none_player_contract
    ADD CONSTRAINT _copy_6 PRIMARY KEY (id, member_id);
 F   ALTER TABLE ONLY public.none_player_contract DROP CONSTRAINT _copy_6;
       public         postgres    false    201    201         �
           2606    25851    none_player_team_member _copy_7 
   CONSTRAINT     ]   ALTER TABLE ONLY public.none_player_team_member
    ADD CONSTRAINT _copy_7 PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.none_player_team_member DROP CONSTRAINT _copy_7;
       public         postgres    false    202         �
           2606    25813     referees_team _copy_8 
   CONSTRAINT     V   ALTER TABLE ONLY public." referees_team"
    ADD CONSTRAINT _copy_8 PRIMARY KEY (id);
 B   ALTER TABLE ONLY public." referees_team" DROP CONSTRAINT _copy_8;
       public         postgres    false    196         �
           2606    25838    matches matches_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.matches DROP CONSTRAINT matches_pkey;
       public         postgres    false    200         �
           2606    25867    players players_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.players DROP CONSTRAINT players_pkey;
       public         postgres    false    205         �
           2606    25875    teams teams_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_pkey;
       public         postgres    false    206                                                                                                                                                                                                                                                                                      2867.dat                                                                                            0000600 0004000 0002000 00000057716 13774640454 0014316 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Jason Moore	Johnny Collier	1	Mathew Goodman	Sharon Green
2	Nicholas Vasquez	David Conner DDS	2	Karen Steele	Philip Johnson
3	Kyle Powers	Stanley Hernandez	3	John Charles	Derrick Wilson
4	Alice Williams	Tina Reyes	4	Lori Avery	Marie Young
5	Randall James	Audrey Hardy	5	Teresa Haynes	Tony Wood
6	Christopher Jimenez	John Hughes	6	Joshua West	Mary Campbell
7	James Brown	Mark Fox	7	Nicole Anderson	Tammie Smith
8	Christopher Snow	Kimberly Keith	8	Christine Flores	Terri Chavez
296	Charles Lee	Keith Costa	296	Dennis Cole	Nancy Leonard
18	Karla Atkinson	Jessica Hansen	18	Tamara Harris	Melinda Miller
19	Lisa Padilla	Jeremy Gonzalez	19	Richard Hickman	Kelsey Hamilton
20	Laura Hudson	Grace Smith	20	Jasmine Edwards PhD	Heather Dyer
21	Theresa Wilson	Anthony Fitzgerald	21	Keith Wheeler	Trevor Allison
22	Carla Franklin	Jordan Ramos	22	Caitlyn Robinson	Jose Hughes
23	Alyssa Jackson	Philip Gonzalez	23	Mr. Joseph Benson	Jade Colon
24	Melanie Hernandez	Daniel Perez	24	John Kennedy	Jacob Miller
103	Kayla Lowe	Joseph Nolan	103	Michele Howard	Katherine Mitchell
25	Randy Reed	Karla Campbell	25	Jason Booker	Maria Johnson
26	Caroline Hernandez	Tammy Hanson	26	Gary Howell	William Jackson
27	Richard Stewart DVM	Stacie Cabrera	27	Mrs. Angela Parker MD	Deborah Green
28	Jennifer Kennedy	Maria Byrd	28	Wendy Miller MD	John Sparks
29	Dylan Conway	Michele Jennings	29	Garrett Smith	Steven Villegas
30	Carlos Perez	Mr. David Gates	30	Michael Harrington	Jonathan Larsen
31	Vicki Garza	Nicholas Smith	31	Alan Mcdonald	Wendy Hernandez
32	Bethany Nelson	Kathleen Roberts	32	Thomas Sanchez	Gina Schneider
33	Natasha Harris	Mr. Andre Porter PhD	33	Lisa Whitaker	Kristine Lee
34	Sherry Smith	Joseph Moon	34	Wendy Martinez	Tiffany Payne
35	Billy Gutierrez	Brooke Hicks	35	Kevin Cochran	Ashlee Branch
36	Mary Cardenas	Cynthia Mathews	36	Caitlin Olsen DVM	Jessica Hurst
37	George Ferguson	Carlos Mccarty	37	Scott Marshall	Morgan Hunt
38	Jeffrey Carroll	Robert Smith	38	Sharon Stanley	Jessica Harris
39	David Thomas PhD	Katherine Brooks	39	Melissa Duran	Thomas Sparks
40	Grace Bauer	Daniel Jackson	40	Kristin Dixon	Debra Merritt
41	Amy Davis	Kimberly Padilla	41	Brian Johnson	Clinton Reyes
42	Richard Martin	Amanda Barnes MD	42	Allison Simpson	Mary Hinton
44	Amy Burns	Randy Jordan	44	Veronica Vance	Jessica Haynes
45	Stephen Gonzales	Nathaniel Martin	45	Heather Peterson	David Chang
46	Amanda Fuller	Mr. Adrian Nelson	46	Cathy Oconnor	Melinda Bruce
47	Marcus Jackson	Adrian Carroll	47	Kathleen Michael	Ryan Ford
48	John Pope	Heather Hogan	48	Denise Rojas	Autumn Marquez
49	Steven Smith	Jeffrey Gomez	49	Ms. Brenda Gonzalez MD	Elizabeth Clark
50	Joshua Parker	Lori Taylor	50	Laura Lawrence	Steve Campbell
51	Cathy Flowers	Angelica Cooper	51	Kimberly Carlson	Laura Miller
52	John Hobbs	Sean Mckay	52	Billy Hamilton	Luke Cortez
53	Dustin Fields	Darrell Valencia	53	Erica Mcclure	Gerald King
54	Peter Jones	Justin Brooks	54	Brandon Castro	Michael Perry
55	Michele Young	Paul Stephens	55	Stephanie Jackson	Lindsay Jacobson
56	Keith Whitaker	Haley Jenkins	56	Troy Berry	Andrea Chambers
57	Kimberly Hall	Kevin Holt	57	Shelly Holder	Amber Wright
58	Jordan Miller	Kayla Trevino	58	Ryan Hall	Patrick Marshall DVM
59	Kristy Williams DDS	Kayla Gonzales	59	Connie Schroeder	James Woodward
60	Michele Roberts	Miss Jennifer Johnson	60	Samantha Robinson	Linda Espinoza
61	Thomas Morales Jr.	Sarah Mcfarland	61	Anthony Soto	Joe Reyes
62	Nathan Brock	Michelle Harrell	62	Mr. Andrew Hart	Christopher Walker
66	Sharon Miller	Shelby Davis	66	Kevin Austin	Thomas Olson
67	Kristina Coleman	Kelly Garcia	67	Meagan Taylor	Gregory Gonzalez
68	Kevin Cooke	Monica Mckinney	68	Bobby Sosa	Sharon Johnson
69	William Tran	Lisa Johnson	69	Mrs. Mary Mcmahon DVM	Jesse Hudson
70	Mark Wilkerson	Amy Rodriguez	70	Emily Reed	Malik Hamilton
71	Kristin Gonzalez	Donald Morris	71	Robert Gentry	Dave Dominguez
72	Casey Nelson	Amanda Taylor	72	Julie Jones	Jon Yates
73	David Williams	Lisa Lee	73	Christopher Bennett	Andres Sharp
105	Brian Henderson	Jennifer Giles	105	Laura Walker	Gregory Collins
106	Daniel Cole	Jesse Smith	106	Samuel Johnson	Donna Carter
107	Beverly Price	Christopher Lynn	107	Marc Cervantes	Jack Brown
108	Maurice Garza	Kelly Hill	108	Timothy Wood	David Hudson
109	Scott Morrison	Amanda Lane	109	Danielle Vasquez	Veronica Estes
110	Mark Simmons	Courtney Reed	110	Tristan Merritt	Michelle Robbins
111	Walter Boyd	Arthur Anderson	111	Joseph Booth	Linda Nash PhD
112	Kristin Rubio	Thomas Hays	112	Kathleen Torres	Kathleen Walker
11	Austin Jackson	Jill Richardson	11	Joshua Banks	Colleen Davis
12	Brett Martinez	Aaron Morris	12	Kathleen Mcgrath	Stephanie Price
13	Abigail White	Richard Quinn	13	Shelby Mann	Henry Powell
14	Lori Reese	Mark Robinson DVM	14	Marcus Ortega	Lori Mcgrath
15	Jon Moss	Donna Taylor	15	Patricia Stone	Mrs. Chloe Graham MD
16	Teresa Martinez	Alexander Gomez	16	Margaret Sanchez	Trevor Gray
17	John Morales	Vincent Benjamin	17	Leslie Phillips	Tracy Wilson
43	Sarah Gray	Mary Norman	43	Bradley Brown	Brittany Benson
155	Sean Zavala	Danielle Day	155	Ariana Burton	Kevin Gomez
156	John Barnes	Jessica Gray	156	Andrea Hammond	Tiffany Schaefer
157	Richard Anderson	Kenneth Becker	157	David Ferrell	Yesenia Estrada
158	Billy Smith	Bradley Little	158	Anthony Gray	David Johnson
159	Patrick Jackson	James Byrd	159	Lynn Chandler	Hunter Turner
160	Patrick Parrish	Abigail Alvarez	160	John Hernandez	Zachary Juarez
161	Meghan Crane	John Wheeler	161	Paul Campbell	Raymond Taylor
162	Angela Sheppard	Debra Peterson	162	Alexander Sanchez	Danielle Martin
63	Steven Ruiz	Donna Booker	63	Joshua Castillo	Catherine Hill
64	Casey Chapman	Lucas Dickson	64	Daniel Camacho	Brian Freeman
65	Chad Burke	Adrian Green	65	Joseph Keith	Thomas Lowe
190	Leslie Willis	Stephen Burnett	190	Christopher Hampton	Jessica Schultz
191	Douglas Coleman	Brenda Turner	191	Michele Thomas	Timothy Young
192	Jennifer Mitchell	Jennifer Wheeler	192	Jade Shaw	Jennifer Miller
193	Dr. Kim Jones DVM	Tammy Reed	193	Lisa Floyd	Jill Neal
194	Andrew Gardner	Wanda Cervantes	194	Kimberly Gonzalez	Diane Williams
123	Wayne Robinson	Candice Ross MD	123	Tiffany Jacobson	Charles Ford
124	Christina Marquez	Larry Williamson	124	Monica Vazquez	Brenda Rogers
125	James Lewis	Jessica Lopez	125	Megan Green	Rachel Hodges
205	Danielle Burke	Omar Stone	205	Dakota Barrett	Thomas Rodriguez
206	Jasmine Knox	Eric Colon	206	Dennis Park	Laura Lyons
207	Kenneth Smith	Stephen Green	207	Bradley Carson	Joel White
208	Matthew Cooper	Christian Allen	208	Mr. Robert Bentley	Rebecca Suarez
209	Christina Hendricks	Sean Jordan	209	George Smith	Charles Gray
210	Susan Garcia	Gregory Sanders	210	Renee Jordan	Kenneth Wilson
165	James Hancock DDS	Brandon Romero	165	Emily Woods	Maria Hodge
166	Edward Olson	Robert Perez	166	Luke Romero	Karen Goodman
167	Shawn Peck	Casey Gomez	167	Rebekah Scott	Alexandria Chang
168	Miguel Wu	Jennifer Gallagher	168	Valerie Hall	Douglas Bradley
169	Eric Sanchez	Joseph Martin	169	Shannon Boyd	Joseph Eaton
170	Eric Dawson	Nicholas Byrd	170	Ryan Cannon	Mariah Sheppard MD
171	Michael Dalton	Logan Evans	171	Willie Moore	Katie Taylor
172	Joshua Patterson	Dustin Smith	172	Jeffrey Gilbert MD	Brandon Price
216	Dennis Bradley DDS	Amanda Bennett	216	Rebekah Anderson	Mary Fisher
217	Clayton Morris	Laura Arroyo	217	Anthony Thomas	Kelly Gonzalez
218	Patrick Matthews	Jesse Yang	218	Andrew Dyer	David Warner
219	Mark Cole	Tammy Miller	219	Melissa Elliott	Brett Hansen
220	Travis Williams	David Carter	220	John Levy	Michael Stanton
221	Samantha Lopez	Brandon Flores	221	Brandon Kelley	Kathleen Horton
222	Gloria Washington	Thomas Carter	222	Nicole Stafford	Kathryn Mason
223	Kendra Hughes	Jonathan Woodard	223	Tina Martinez	Brian Brown
224	Ray Gordon	Lori Brown	224	Dustin Davis	Alexander Fernandez
225	Monica West	Mary Richardson	225	Haley Washington	Christopher Anderson
226	Lisa Whitaker	Kimberly Pham	226	Derrick Maldonado	Emily Smith
227	David Walters	Kristy Duarte	227	John Higgins	Melissa Higgins
228	Christopher Wright	Natasha Green MD	228	Reginald Moore	Thomas Floyd
229	David Cook	Mark Young	229	Theresa Goodwin	Andrea Mcdonald
230	Daniel Watkins	Barry Williams	230	Joseph Schneider	Christopher Rodriguez
231	Wanda Lawson	Jason Butler	231	Roger Pearson	Roberto Haas
232	Tammy Harris	Mason White	232	Laura Daniels	Felicia Marshall
233	Sarah Adams	Shannon Fowler	233	Steven Smith	James Terry
234	Dr. Julie Johnson	Kimberly Aguilar	234	Amanda Nguyen	Brian Horton
235	Vanessa Richards	Amber Smith	235	Mitchell Cline PhD	Amber Evans
237	Christopher Castillo	Pamela Sherman	237	Lauren Walsh	Cindy Green
238	Andrew Delacruz	Mrs. Alicia Holland	238	Mary Turner	Amy Lewis
239	Richard Porter	Shannon Johnson	239	Brittany Carter	Ashley Olson
240	Lawrence Wolfe	Laura Tucker	240	David Cross	George Scott
241	Shari Gray	Matthew Thompson	241	Terrance Harvey	Vanessa Wong
242	Jessica Tran	Alison Black	242	Courtney Johnson	Kyle Stewart
243	James Harris	Annette Johnson	243	Bridget Valencia	Logan Simmons
244	Ryan Kramer	Sarah Davidson	244	Alan Mccoy	Stephanie Garner
245	Mark Shaw	Ryan Patel	245	Cheryl Fletcher	Stephen Parsons
246	John Eaton	Suzanne Smith	246	Danielle Werner	Wesley Ayala
247	Frank Bauer	Nicole Johnson	247	Paula Cline	Christy Coleman
248	Robert Jones	Victoria Garcia	248	Vincent Vance PhD	Cheryl Marks
249	Wendy Ryan	Benjamin Thompson	249	John Reyes	Angel Meyer
114	Dawn Peterson	Martha Coleman	114	Carla Perez	Lindsey Taylor
115	Alexandra West	Gerald Anderson	115	Charles Mcdonald	Matthew Hernandez
116	Terry Stark	Angela Hernandez	116	Regina Clark	James Taylor
117	Shane Morrison	Valerie Costa	117	Amber Richardson	Jacob Pratt
119	John Spencer	Emily Robinson	119	Daniel Cook	Jeanette Reed
120	Eric Hale	Keith Webster	120	Blake Jackson	Ariana Cox
121	Tyler Mccoy	Rachel Thomas	121	Denise Griffin	Sharon Taylor
122	Brian Kirk	Kyle Edwards	122	Melissa Woods	Samantha Turner
267	Ricardo Shepard	Robert Beard	267	Veronica Singleton	Joseph Jones
268	Deborah White	Scott Fuentes	268	Carolyn Carlson	Emily Baker
269	Allison Campbell	Kimberly Sweeney	269	Gregory Barajas	Ronald Russell
270	Nicole Anderson	Mr. Steven Esparza	270	April Peterson	Sylvia Ryan
271	Michael Underwood	Sheila Davis	271	Jeanne Stephens	Robert Anderson
272	Brittany Robinson	Mary Bradley	272	Chase Watkins	Gary Meyer
273	Derek Mullins	Brian Bauer	273	Deborah Wood	Holly Skinner
274	Christopher Wells	Lauren Le	274	Stephen Dominguez	Eric Williams
275	Craig Ho	Steven Patel	275	Walter Schultz	Manuel Allen
276	Anthony Smith	Christopher Rubio	276	Cheryl Glover	George Hurley
277	Matthew Wilson	Mr. Charles Warren	277	Cameron Cline	Mrs. Cynthia Hampton
278	Ricky Warren	Stephen Little	278	Brandon Morrison	Steven Cochran
279	Ryan Sanchez	Jennifer Wilcox	279	David Benitez	Emily Ramirez
280	David Hawkins	Dustin Morgan	280	Lauren Rogers	Jason Weiss
281	Michael Lawson	Deborah Mitchell	281	Lacey Sanchez MD	Amy Lozano
282	Patricia Reyes	Stephen Beck	282	Kenneth Collins	Karina Jones
285	Cindy Weiss	Devin Johnson	285	Lisa Lucas	John Hicks
286	Jeremy Kim	Scott Logan	286	Michele Leon	Jill Ritter
287	Kimberly Horton	Melissa Gordon	287	Heather Johnston	Eric Rose
288	Richard Mendoza	Amy Freeman	288	Kaitlyn Harvey	Erica Ashley
289	Tasha Fernandez	Christine Kim	289	Stephen Church	Ashley Campbell
290	Adam Smith	Justin Rodgers	290	Curtis Cook	Matthew Vasquez
291	Tyler Dodson	Mr. Victor Gonzales	291	Daniel Ortiz	Connor Stein
292	Rachel Thomas	Bobby Garza	292	Alicia Serrano	Tiffany Frost
293	Jacqueline Smith	Mark Walker	293	Vincent Guerrero	Michael Ortega
294	Jerome Montoya	Lisa Wiggins	294	Ashley Lopez	Angela Leach
295	Craig Thompson	Matthew Ward	295	Jessica Flores	Brandon Santiago
297	Jacob Wall	Michelle Berger	297	Lisa Werner	Melanie Burns
298	Joel Stewart	Bryan White	298	Andrew Ortega	Michael Wallace Jr.
299	Carrie Thomas	Bruce Hogan	299	Steven Thomas	Jill Fletcher
300	Mark Garcia	Richard Gilbert	300	Tyler Thomas	Christopher Cummings
301	Stephen Moore	Laura Johnson	301	Christina Heath	Paula Marks
302	Stacy Hill	Richard Wood	302	Joseph Hayes DVM	Kelly Parker
303	Frederick Arias	William Johnson	303	Joy Mcdonald	William Dyer
304	Jason Lozano	Robert Davis	304	Mrs. Heather Tran MD	Joshua Roberts
305	Leah Brown	Jessica Flores	305	Joshua Jackson	Karen Wood
308	Stephanie Martinez	Laura Bishop	308	Juan Davis	Alexander Ward
309	Melissa Edwards	Marcus Sanders	309	Austin Rogers	Michael Silva
310	Paul Gonzalez	Katherine Smith	310	Jennifer Rivers	Allison Yoder
311	Angela Rogers	Emily Cardenas	311	Jackson Burke	Emily Kerr
312	Katie Powers	Travis Huffman	312	Chelsea Moses	Juan Rodriguez
313	Paul Lopez	Antonio Phillips	313	David Rocha	Michelle Miller
314	Margaret Mann	Jeremy Jefferson	314	Valerie Cisneros	Glenn Ware
315	Daniel Powell	Emily Watson	315	Michael Jimenez	Maria Peterson
316	Daniel Vargas	Anne Brown	316	Russell Johnson	Kevin Torres
317	Michele Pham	Tammy Walters	317	Antonio Hill	Lisa Carlson
318	Amy Phillips	Wanda Romero	318	Lisa Mason	Catherine White
211	John Powell	Robert Lee	211	Tracy Wood	Michael Delgado
212	Samantha Williams	Michael Hall	212	Matthew Navarro	Jamie Nelson
213	Erin Lawson	Mr. Nicholas Contreras	213	Megan Allen	Lisa Kerr
214	Jennifer Knight	Theresa Mitchell	214	Kim Brown	Sandra Ramos
215	John Wade	Wesley Johnston	215	Mr. Albert Watson	Phyllis Washington
283	Travis Maxwell	Douglas Guerrero	283	Dana Carroll	Shawn Lewis
284	William Bartlett	Glen Harris	284	Craig Joyce	Mario Dudley
319	Christopher Gonzales	Lindsey Wilson	319	Lucas Nichols	Mark Wilson
306	Stephanie Patel	Susan King	306	Jason Pope	Andrew Fry
307	Colin Robinson	Kendra Sawyer	307	Glen Perez	Andres Hurst
329	Paul Townsend	Keith Cherry	329	Leah Hughes	Brian Smith
330	Charles Schmidt	Christopher Brown	330	Terry Walker	Amanda Martinez
331	Jennifer Ruiz	Lisa Flores	331	Daniel Brown	Michael Wilson
332	Adam Harrington	Jennifer Ellis	332	Tanner Elliott	Leslie Morton
333	Amber Murphy	Timothy Rojas	333	James Harris	Brandon Sherman
334	Nicholas Rasmussen	Sean Burnett	334	Christopher Smith	Jamie Barton
127	Joseph Nelson	Tony Roberts	127	Christine Harrison	Ronald Jenkins
128	Judith Gallagher	Daniel Martinez	128	Tara Taylor	Kristina Castro
129	Mr. Mark Espinoza DVM	Lindsey Arellano	129	Jonathan Escobar	Jessica Gates
130	John King	Stephen Cordova	130	Carrie Schultz	Bradley Johnson
131	James Harris	Joshua Williams	131	Sandra Patterson	Rebecca Jones
132	Heather Cole	Gina Bennett	132	Dana Martin	Steven Nielsen
133	Eric Rivera	Robert Moreno	133	Colleen Valdez	Elizabeth Jensen
134	Jason Thomas	Michael Spears	134	Chelsea Mcgrath	Matthew Smith
135	Nancy Jennings	Ernest Guzman	135	Norman Lara	Marissa Sweeney
136	Sabrina Rogers	Mr. Eric Pierce	136	Tammy Brown	Jessica Shaw
137	James Barnes	Wanda Flowers	137	Derek Wilkerson	Keith Mejia
138	Dennis Morrow	Lindsay Johnson	138	Regina Avery	Cory Perez
139	Robert Washington	Stacy Graves	139	Ariana Williams	Eric Thompson
140	Victor Frye	Angela Barnes	140	Kristi Hobbs	Cameron Johnson
141	Diana Walker	Jason Burke	141	Haley Flores	Michelle Anderson
142	Sarah Woods	Eric Simpson	142	Austin Barker	Kevin French
143	Kelly Thompson	Diane Gibson	143	Cheryl Everett	Connor Hampton
144	Robert Bailey	Jeffrey Smith	144	Rose Parrish	Joshua Jones
145	Eileen Byrd	Brittany Parker	145	Anita Stark	Stacy Lewis
146	Lisa Lyons	Gabrielle Thompson	146	Teresa Smith	Alan Hughes
147	Matthew Bradley	Mrs. Laura Allen	147	Jaime Rodriguez	Eric Camacho
148	Jamie Taylor	Joshua Boyd	148	Ann Cruz	Amy Walker
149	Shane Miller	Shannon Holmes	149	Susan Rivas	Sharon Morgan
324	Thomas Lynch	Amy Hartman	324	Morgan Ortega	Michael Peterson
325	Jessica Murphy	Linda Garrett	325	Lisa Long	Amy Bates
326	Kyle Day	Jessica Small	326	Jessica Navarro	Tanner Delacruz
327	Charles Hall	Carlos Peterson	327	Christina Davis	Vanessa Thomas
328	David Craig	Christopher Walsh II	328	Caitlin Phillips	Brian Dougherty
339	Timothy Conner	Paul Thompson	339	Kelly Garcia	Kim Khan
340	Tyler Burke	Jodi Johns	340	Stephanie Clark	Taylor Allen
341	Jose Caldwell	Angela Ortiz	341	Devin Meadows	Richard Howard
342	Bobby Butler	Sheila Murray	342	David Berger	Christina Powell
343	Jessica Thomas	Eric Greene	343	Joseph Cuevas	Matthew Coleman
356	Lisa Jordan	David Brown	356	Richard Crane	Joe Daniels
357	Emily Galloway	Mr. Tyler Jackson	357	Bradley Ferguson	Carla Boyer
360	Emily Nunez	Jennifer Long	360	Christopher Branch	Scott Patterson
10	Kevin Sutton	Anne Rose	10	Charles Jimenez	Kevin Gilbert
358	Molly Mann	Mark Hall	358	Tracy Wilkerson	Amanda Howard
359	Kimberly Williams	Chelsea Boyer	359	Roger Murphy	Melissa Perez
362	Janice Hubbard	Katie Graham	362	Patricia Morris	Mrs. Ashley Martin MD
363	Rebecca Villa	Sherry Garcia	363	Preston Wu	Crystal Mitchell
364	Johnny Abbott	Yvette Walter	364	April Griffin	James Collins
365	Kyle Thompson	Melissa Francis	365	Michael Simpson	Jeremy Hernandez
366	Ruben Harris	Melanie Nunez	366	Renee Carter	Briana Johnston
367	Katie Jones	Margaret Baker	367	Rebecca Riley	Mary Wilson
368	Sarah Anderson	Sharon Caldwell	368	James Richard	Dr. Robert Robinson
369	Lisa Byrd	Anthony Jackson	369	Patricia Harrison	Gerald Miles
370	Alicia Hodges	Mary Miller	370	Jacob Mcconnell	John Farrell
371	Mary Casey	Daniel Kennedy	371	Anthony Strickland	William Underwood
372	Tom Santos	Dylan Escobar	372	Ian Arroyo	Victoria Morrison
373	Christopher Kennedy	Heather Spencer	373	Veronica Barr	Adam Hamilton
374	Rebecca Campbell	Donna Johnson	374	Vanessa Garcia	Paul Freeman
375	Paul Perry	Carolyn Gamble	375	Cameron Sanchez	Tyler Richard
376	Lucas Moore	John Crosby	376	Michaela Steele	Lisa Brock
377	Linda Gutierrez	Patrick Chapman MD	377	Randy Rodgers	Eric Allen
378	Julie Flores	Nathaniel Wright	378	Jose Tyler	Melanie Johnson
75	Lisa Chase	Benjamin Long	75	Gregory Perez	Kevin Martin
76	Alexander Roman	Brandon Johnson	76	Bonnie Cain	Danielle Brown
77	Shari Medina	Mark Roberts	77	Robert Adams	Amy Rivera
78	Hunter Cunningham	Christopher Wade	78	Sean Brown	Katherine Cardenas
79	Sarah Walsh	Isaiah Wise	79	Sonya Aguilar	Tabitha Garcia
80	William Jones	Joseph Smith	80	Michael Brown	Seth Walker
81	Erica Woods	Amanda Davis	81	John Elliott	Carlos Vazquez
82	Tanya Park	Tara Russell	82	Travis Garza	Evelyn Mueller
74	Ruben Hill	Donna Wheeler	74	Tyler Contreras	Misty Wilson
236	Steven Robles	Hannah Liu	236	Peter Osborne	Richard Fernandez
320	Keith Carney	Katherine White	320	Michelle Grant	Alexis Richardson
321	Amber Mills	David Compton	321	Nathan Warren	Billy Rodriguez
322	Matthew Jimenez	Autumn Riggs	322	Melissa Cline	Wendy Williams
323	Alicia Delacruz	Barbara Logan	323	Samantha Young	Kristi Page
338	Morgan Bishop	John Rodriguez	338	Todd Stewart	Heather Davis
379	Joseph Phillips	Yvonne Little	379	Stephanie Coleman	Sandra Riley
380	Debra Lopez	Christopher Benton	380	Amanda Trevino	Keith Parker
84	Kristen Walker	Carla Johnson	84	Ronald Hodge	Sherri Hoover
85	John Russell MD	Holly Knapp	85	Christian Mason	Ronald Garcia
86	Amanda Phillips	Kelly Craig	86	Lance Green	Ashley White
87	Charles Johnson	Dr. Scott Velasquez	87	Phillip Haas	Jasmine Holt
88	Molly Brown	Marie Roberts	88	Levi Choi	Kimberly West
89	Heather Wood	Erica Stewart	89	Daniel Baker	John Johnson
90	Megan Thompson	Yesenia Pruitt	90	Sandra Fowler	Mrs. Andrea Osborne
164	Monica Walker	Louis Walker	164	Jose Gonzalez	Natasha Hernandez
195	Tammy James	Sarah Hunt	195	Debbie Reyes	Ryan Lawrence
337	David Combs	Lisa Crawford	337	Stephanie Hurley	Andrew Barnes
97	Bryan Saunders	Tracy Schmidt	97	Linda Garcia	Michael Malone
98	Patrick Osborne	Lisa Foster	98	Julie Franklin	Curtis Huffman
99	Michael Foster	Kerry Little	99	Carol Walsh	Anita Grant
100	Samantha Bush	Dylan Jackson	100	Michael Mendoza	Vickie Anderson
101	Dr. John Johnson	Brandon Salazar	101	Caitlin Bailey	Denise Williams
102	Patrick Moore	Benjamin Smith	102	Jason Lynch	Dr. Jimmy Daniel
104	Zachary Chandler	Jose Brooks	104	Shannon Bradley	Robert Rodriguez
163	Kristen Jones	Katrina Willis	163	Amanda Sanchez	Austin Smith
196	Dean Brown	Maria Tucker	196	Stephanie Morse	Shannon Taylor
173	Toni Taylor	Kathy Moore	173	Maria Yang	Teresa Suarez
174	Alexandra Erickson	Joanna Howell	174	Jonathan Hunter	Denise Brown
175	Joanne Jensen	Chloe Wilkinson	175	Andrea Vega	Catherine Hayes
176	Michael Silva	Patricia Watson	176	Ryan Williams	Michael Smith
177	Emily Koch	Dr. Mary White	177	Cody Bailey	Jennifer Wood MD
178	Richard Martinez	Rhonda Mcguire	178	Charlene Scott	Michael Smith
179	Chad Andrews	Sabrina Flores MD	179	Jeremy Knox	Brandon Gonzales
180	Katherine Reyes	Terri Hart	180	Donald Kemp	Ivan Sanchez
182	Elizabeth Thomas	Ryan Owens	182	Francisco Glenn	Frank Obrien
184	Andrew Morris	Adam Martinez	184	John Poole	Scott Pitts
185	Christopher Roth	Jacob Hansen	185	Christine Davis	Joseph Simmons
186	Emily Gardner	Jill Cooper	186	Becky Hanson	Christopher Riley
187	Laurie Thompson	Kevin Smith	187	James Conrad	Monica Wheeler DVM
188	Victoria Phillips	Carlos Bright	188	Mark Beard	Michael Johnson
189	Christine Reynolds	Joshua Rowland	189	Andrew Pena	Jennifer Jones
250	Amy Simpson	Dwayne Montgomery	250	Charles Jones	Janice Watkins
251	Peggy Wilson	Nicole Lucero	251	Kelly Andrade	Roberto Ibarra
252	Donna Moore	Jennifer Murray	252	Mary Watson	Eric Harrison
253	Shannon Stout	Pamela Ellis	253	Amanda Nguyen	Brandy Davis
254	Kenneth Leon	Michelle Lopez	254	Yolanda Taylor	David Ellis
255	Karen Elliott	Courtney Velez	255	Marissa Knapp	Anna Murray
256	Eric Jones	Daniel Mcdaniel	256	Cesar Blevins	Jeremy Roberts
257	Heather Roberts	Janet Dawson	257	Rachel Forbes	Megan Barnes
258	Natalie Harris	Devin Walsh	258	Lisa Hicks	Amber Meyers
259	Sarah Mcpherson	William White	259	Denise Shah	Gina Garrison
260	Ian Mcdowell	Ashley Hartman	260	Mr. James Romero	Roger Phelps
261	Hunter Taylor	Kenneth Dennis	261	Dustin James	Dr. Valerie Lee
262	Pamela Fox	Brittany Carr	262	Douglas Fisher MD	Barry Clarke
263	Elizabeth Rodriguez	Angela Johnson	263	Elizabeth Wade	Steven Murillo
9	Colin Palmer	Tiffany Phillips	9	Christopher Juarez	Tyler Love
113	Jason Bishop	Julie Brown	113	Christina Summers	Mark Freeman
118	Tracy Meyer	Andrea Green	118	Kevin Lawson	Gina Myers
126	Jon Baker	Melissa Allen	126	Amy Cook	Zachary Wells
203	Jessica Taylor	Adam Alvarez	203	Olivia Vaughn	Drew Smith
264	James Carroll	Thomas Simmons	264	Andrew Bennett	Brian Ferguson
265	Kenneth Green	Kara Rodriguez	265	Jamie Conway	Brian Hill
266	Christopher Morris	Rebecca Holder	266	Craig Alvarez	Albert Crane
336	John Nelson	James Hall	336	Daniel Ramos	Debra Brown
83	Candace Wright	Thomas Curtis	83	Laura Smith	Bryan Mason
96	Charles Adams	Cassandra Wilson	96	Jasmine Edwards	Gregory Reed
183	Marc Bishop	Rose Taylor	183	Heather Pierce	Tammy Williams
197	James Downs	Stephanie Li	197	Rodney Ward	Bruce Simmons
198	Nina Graves	Charles Arnold	198	Courtney Leblanc	Robert Potter
199	Christian Harrington	Tabitha Carroll	199	Luis Lewis	Matthew Jarvis
200	Douglas Sims	Michelle Dawson	200	Wendy Schaefer	Angela Mullins
355	James Giles	Savannah Smith	355	Gregory Hall	Rebecca Williams
361	Adam Bates	Elizabeth Henderson	361	Ann Garrett	Donna Adkins
91	Lance Love	Shawn Mills	91	Heather Johnson	Dr. Ashley Ramirez
92	Alicia Bell	Chelsea Warren	92	Ronald Lopez	Caitlin Green
93	Lori Monroe	Jacob Garcia	93	Tina Cox	Matthew Walker
94	Cindy Harper	Lisa Turner	94	Robert Jackson	Cindy Boyd
95	Justin Brown	Thomas Mcclure	95	Brooke Lewis	Daniel Wagner
150	John Ellison	Rebecca Rivera	150	Samantha Barnett	Walter Wilson
151	Larry Dean	Michael Pacheco	151	Larry Delgado	Michael Chung
152	Matthew Little	Curtis Edwards	152	Mr. Jonathan Ware MD	Amy Barnett
153	Shannon Noble	Rachael Hall	153	Michael Allen	David Crawford
154	Sean Smith	John Davis	154	Julie Miller	Tonya Jensen
181	Sheri Byrd	April Powers	181	Tony White	Ashley Jones
201	Larry Russell	Angela Anderson	201	Erin Osborn	Samantha Sparks
202	Elizabeth Woodard	Jeffrey Wilson	202	Jacob Smith	Willie Hoffman
204	Barbara Martinez	Robert Martinez	204	Adam Andrews	Robert Contreras
335	Dr. Wendy Coleman MD	Crystal Hill	335	Kevin Brown	Michael Lewis
344	Elizabeth Miller	Ashley Gross	344	Ann Mayo	Blake Perez
345	Cindy Campbell	Michael Boyer	345	Samantha Parker	Gregory Anderson
346	Carly Harding	Nicole Simpson	346	Elizabeth Lee	James Miller
347	Lori Weber	Derek Smith	347	Luke Lewis	Robert Johnson
348	Jeffrey Horton	Allen Garrison	348	Jason Bradley	John Gutierrez
349	Brian Blanchard	Bethany Ball	349	Stephen Mason	Charles Curry
350	Jennifer Nelson	Jesus Mcbride	350	Ashley Smith	Connor Hall
351	Heather Gillespie	Amanda Craig	351	Fred Hendricks	Gregory Thompson
352	Susan Mccoy	Thomas Brown	352	Larry Phillips	Suzanne Thompson
353	Bobby Gates	Austin Powell	353	Krystal Mccarthy	Stephanie Buchanan
354	Charles Martinez	Andre Myers	354	Mrs. Victoria Simon	Aimee Flores
\.


                                                  2868.dat                                                                                            0000600 0004000 0002000 00000625035 13774640454 0014312 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        51	1	yellow	foal3	12
66	1	yellow	foal3	77
215	1	yellow	foal3	62
420	1	none	foal1	55
117	1	none	foal1	44
556	1	none	foal1	37
365	1	none	foal1	6
315	1	none	foal3	16
546	1	none	foal2	16
436	1	none	foal2	29
556	1	none	foal2	46
420	1	none	foal4	7
158	1	none	foal2	66
546	1	none	foal2	70
546	1	none	foal1	38
140	1	none	foal1	78
556	1	none	foal2	88
215	1	none	foal2	15
141	1	none	foal3	69
72	1	none	foal3	54
315	1	none	foal1	2
365	1	none	foal2	61
318	1	none	foal1	65
133	1	none	foal1	59
218	1	none	foal4	73
117	1	none	foal4	54
133	1	none	foal4	40
510	1	none	foal2	72
318	1	none	foal4	48
72	1	none	foal1	73
215	1	none	foal1	40
420	1	none	foal3	76
133	1	none	foal2	65
556	1	none	foal2	23
556	1	none	foal1	73
501	2	yellow	foal4	33
120	2	yellow	foal4	52
152	2	yellow	foal1	15
327	2	yellow	foal4	66
73	2	none	foal2	28
219	2	none	foal4	25
333	2	none	foal2	90
179	2	none	foal4	21
255	2	none	foal3	16
255	2	none	foal4	4
217	2	none	foal3	90
445	2	none	foal4	27
405	2	none	foal1	34
416	2	none	foal4	82
152	2	none	foal1	89
179	2	none	foal1	62
217	2	none	foal1	29
327	2	none	foal3	17
157	2	none	foal4	41
255	2	none	foal2	41
107	3	yellow	foal1	41
88	3	yellow	foal1	14
90	3	none	foal2	11
464	3	none	foal2	64
438	3	none	foal3	76
148	3	none	foal2	11
213	3	none	foal3	69
348	3	none	foal2	1
148	3	none	foal2	80
27	3	none	foal3	31
338	3	none	foal1	28
502	3	none	foal3	53
61	3	none	foal2	4
502	3	none	foal1	21
204	3	none	foal3	53
502	3	none	foal2	58
340	3	none	foal3	47
340	3	none	foal3	65
393	3	none	foal2	81
216	3	none	foal4	75
276	3	none	foal2	63
271	4	yellow	foal3	33
379	4	yellow	foal1	74
272	4	yellow	foal3	72
559	4	none	foal4	68
250	4	none	foal1	25
123	4	none	foal4	6
49	4	none	foal4	63
291	4	none	foal4	57
494	4	none	foal1	80
431	4	none	foal4	41
109	4	none	foal1	57
362	4	none	foal2	37
308	4	none	foal3	48
398	4	none	foal3	83
49	4	none	foal2	31
406	4	none	foal4	31
440	4	none	foal3	2
559	4	none	foal2	27
494	4	none	foal1	20
356	4	none	foal3	43
266	4	none	foal3	40
497	4	none	foal4	22
242	4	none	foal4	0
172	5	yellow	foal1	54
172	5	yellow	foal3	1
149	5	yellow	foal2	42
295	5	none	foal3	51
174	5	none	foal3	76
447	5	none	foal3	4
151	5	none	foal3	43
138	5	none	foal2	73
93	5	none	foal1	66
180	5	none	foal1	30
562	5	none	foal1	20
369	5	none	foal2	9
203	5	none	foal1	75
210	5	none	foal1	24
548	5	none	foal1	3
38	5	none	foal3	1
203	5	none	foal3	87
548	5	none	foal3	43
174	5	none	foal2	77
169	5	none	foal1	86
174	5	none	foal4	55
104	5	none	foal1	71
149	5	none	foal3	42
104	5	none	foal3	79
203	5	none	foal4	2
447	5	none	foal2	47
38	5	none	foal3	65
295	5	none	foal2	36
295	5	none	foal2	87
384	5	none	foal1	30
149	5	none	foal1	31
210	5	none	foal3	40
38	5	none	foal1	71
210	5	none	foal1	38
105	5	none	foal4	79
320	6	yellow	foal3	69
367	6	yellow	foal2	73
129	6	yellow	foal1	3
36	6	yellow	foal2	83
55	6	none	foal3	10
515	6	none	foal2	57
551	6	none	foal2	17
385	6	none	foal3	64
537	7	yellow	foal4	57
402	7	red	foal4	27
16	7	none	foal4	40
326	7	none	foal3	43
326	7	none	foal2	18
451	7	none	foal1	66
466	7	none	foal2	26
214	7	none	foal3	20
166	7	none	foal3	66
566	7	none	foal3	2
288	7	none	foal1	74
40	7	none	foal2	68
40	7	none	foal3	50
103	7	none	foal4	82
40	7	none	foal3	81
247	7	none	foal1	67
25	8	yellow	foal1	87
352	8	yellow	foal1	81
364	8	yellow	foal3	77
485	8	none	foal4	86
485	8	none	foal4	67
235	8	none	foal4	25
373	8	none	foal4	56
48	8	none	foal2	50
30	8	none	foal3	22
125	8	none	foal3	5
50	8	none	foal4	19
235	8	none	foal3	6
485	8	none	foal3	83
50	8	none	foal1	67
364	8	none	foal3	11
448	9	yellow	foal4	57
394	9	none	foal4	2
493	9	none	foal2	1
77	9	none	foal1	3
394	9	none	foal3	42
264	9	none	foal1	32
469	9	none	foal2	9
520	9	none	foal2	74
280	9	none	foal1	75
286	9	none	foal2	78
469	9	none	foal3	18
538	9	none	foal2	89
64	9	none	foal3	17
64	9	none	foal3	90
2	9	none	foal4	76
264	9	none	foal4	74
113	9	none	foal1	55
77	9	none	foal1	5
108	9	none	foal3	37
538	9	none	foal1	10
65	9	none	foal1	54
450	9	none	foal1	22
520	9	none	foal3	14
301	9	none	foal4	6
168	9	none	foal1	27
524	9	none	foal4	65
354	10	yellow	foal3	35
143	10	yellow	foal4	55
344	10	yellow	foal1	45
282	10	yellow	foal3	75
60	10	none	foal1	76
183	10	none	foal3	5
553	10	none	foal3	53
323	10	none	foal2	13
183	10	none	foal1	50
201	10	none	foal4	68
505	10	none	foal1	74
433	10	none	foal3	7
460	10	none	foal2	47
344	10	none	foal3	55
344	10	none	foal4	79
553	10	none	foal4	84
85	10	none	foal1	12
85	10	none	foal3	40
68	10	none	foal1	57
231	10	none	foal4	66
60	10	none	foal1	70
81	10	none	foal4	58
231	10	none	foal2	79
137	10	none	foal2	84
553	10	none	foal1	49
460	10	none	foal3	9
454	10	none	foal3	45
438	11	yellow	foal2	59
502	11	yellow	foal4	53
501	11	yellow	foal4	24
409	11	yellow	foal2	35
260	11	red	foal1	2
345	11	none	foal1	27
199	11	none	foal3	33
69	11	none	foal4	85
389	11	none	foal3	44
233	11	none	foal1	40
57	11	none	foal1	39
470	11	none	foal2	12
95	11	none	foal2	53
443	11	none	foal1	22
193	11	none	foal4	90
319	11	none	foal3	19
260	11	none	foal1	22
299	11	none	foal3	62
407	11	none	foal3	47
567	11	none	foal1	72
476	11	none	foal3	14
69	11	none	foal3	43
390	12	yellow	foal4	80
256	12	yellow	foal1	29
457	12	yellow	foal3	80
525	12	yellow	foal2	84
102	12	yellow	foal2	28
457	12	none	foal3	8
198	12	none	foal2	3
423	12	none	foal1	79
24	12	none	foal2	76
254	12	none	foal1	9
483	12	none	foal2	44
96	12	none	foal4	39
525	12	none	foal3	88
256	12	none	foal1	11
400	12	none	foal4	70
372	12	none	foal4	63
32	12	none	foal3	88
251	12	none	foal2	79
372	12	none	foal2	51
251	12	none	foal2	35
543	12	none	foal4	65
32	12	none	foal2	85
491	12	none	foal3	51
96	12	none	foal1	38
565	12	none	foal1	2
315	13	yellow	foal2	77
133	13	yellow	foal4	81
465	13	red	foal1	41
224	13	yellow	foal4	65
337	13	none	foal4	87
397	13	none	foal2	43
413	13	none	foal4	31
486	13	none	foal1	72
478	13	none	foal3	16
337	13	none	foal1	32
289	13	none	foal3	62
486	13	none	foal3	7
397	13	none	foal2	19
271	14	none	foal1	58
222	14	none	foal1	56
427	14	none	foal1	0
220	14	none	foal1	63
571	14	none	foal1	19
507	14	none	foal1	16
350	14	none	foal4	30
43	14	none	foal1	25
229	14	none	foal2	23
370	14	none	foal3	83
350	14	none	foal1	65
128	14	none	foal2	59
271	14	none	foal3	33
535	14	none	foal2	71
263	14	none	foal3	57
533	14	none	foal1	5
98	14	none	foal4	72
43	14	none	foal1	76
370	14	none	foal4	73
128	14	none	foal2	6
571	14	none	foal3	62
160	14	none	foal4	25
370	14	none	foal2	72
128	14	none	foal2	86
271	14	none	foal1	72
182	15	yellow	foal3	42
235	15	yellow	foal2	29
211	15	yellow	foal1	19
30	15	yellow	foal2	16
101	15	yellow	foal4	68
485	15	yellow	foal1	16
512	15	yellow	foal2	36
238	15	yellow	foal4	43
360	15	none	foal1	38
294	15	none	foal4	52
294	15	none	foal1	52
310	15	none	foal1	27
132	15	none	foal2	4
368	15	none	foal1	47
167	15	none	foal4	90
432	15	none	foal2	82
484	15	none	foal4	87
63	15	none	foal4	2
107	15	none	foal3	41
421	15	none	foal2	41
145	15	none	foal1	63
544	15	none	foal3	50
368	15	none	foal2	35
512	15	none	foal4	24
111	15	none	foal2	13
432	15	none	foal1	46
223	16	yellow	foal1	51
130	16	yellow	foal1	14
175	16	none	foal2	73
143	16	none	foal4	63
130	16	none	foal1	88
100	16	none	foal2	39
29	16	none	foal1	64
514	16	none	foal1	60
143	16	none	foal4	45
300	16	none	foal4	85
511	16	none	foal1	12
392	16	none	foal4	9
300	16	none	foal2	8
86	16	none	foal1	2
499	16	none	foal2	23
468	16	none	foal3	57
300	16	none	foal3	26
300	16	none	foal2	6
29	16	none	foal4	74
29	16	none	foal1	30
570	16	none	foal1	4
499	16	none	foal4	37
335	16	none	foal2	22
75	17	yellow	foal3	83
408	17	yellow	foal1	47
297	17	yellow	foal3	34
181	17	none	foal3	59
367	17	none	foal4	33
144	17	none	foal4	23
536	17	none	foal4	64
8	17	none	foal4	6
8	17	none	foal4	85
126	17	none	foal3	12
165	17	none	foal3	75
118	17	none	foal1	2
424	17	none	foal3	64
518	17	none	foal2	53
79	17	none	foal3	48
181	17	none	foal4	86
395	18	yellow	foal2	43
395	18	yellow	foal3	38
257	18	none	foal2	78
178	18	none	foal1	1
529	18	none	foal4	6
192	18	none	foal1	49
529	18	none	foal1	87
5	18	none	foal3	36
110	18	none	foal4	28
395	18	none	foal3	23
136	18	none	foal3	1
119	18	none	foal3	28
283	18	none	foal3	15
257	18	none	foal3	68
178	18	none	foal3	7
277	18	none	foal1	61
234	18	none	foal3	80
3	18	none	foal3	90
522	18	none	foal3	49
461	18	none	foal1	90
136	18	none	foal4	55
522	18	none	foal4	41
257	18	none	foal3	0
172	18	none	foal2	74
119	18	none	foal4	52
334	18	none	foal4	48
311	19	yellow	foal3	29
244	19	yellow	foal2	18
268	19	none	foal3	45
176	19	none	foal2	40
475	19	none	foal4	39
51	19	none	foal3	65
381	19	none	foal4	19
506	19	none	foal1	10
187	19	none	foal4	83
244	19	none	foal2	13
112	19	none	foal4	73
429	19	none	foal2	57
45	19	none	foal3	74
187	19	none	foal3	8
549	19	none	foal3	87
391	19	none	foal4	76
475	19	none	foal4	13
31	19	none	foal3	58
268	19	none	foal4	9
429	19	none	foal3	75
528	19	none	foal4	89
268	19	none	foal1	33
176	19	none	foal4	53
381	19	none	foal3	39
506	19	none	foal2	66
381	19	none	foal4	39
506	19	none	foal4	6
549	19	none	foal2	8
51	19	none	foal1	77
279	20	yellow	foal2	82
356	20	red	foal2	38
185	20	yellow	foal3	0
21	20	none	foal3	36
185	20	none	foal4	72
11	20	none	foal2	19
248	20	none	foal2	33
134	20	none	foal2	64
513	20	none	foal3	33
134	20	none	foal2	76
459	20	none	foal3	54
472	20	none	foal3	85
11	20	none	foal3	53
46	20	none	foal2	58
164	20	none	foal4	6
46	20	none	foal2	77
46	20	none	foal2	75
185	20	none	foal4	9
248	20	none	foal2	15
472	20	none	foal4	57
554	20	none	foal3	80
21	20	none	foal1	20
21	20	none	foal4	65
207	20	none	foal2	64
289	21	yellow	foal3	85
332	21	yellow	foal4	10
467	21	yellow	foal3	24
183	21	none	foal4	73
81	21	none	foal2	40
553	21	none	foal4	27
455	21	none	foal2	57
121	21	none	foal1	81
81	21	none	foal2	59
455	21	none	foal2	51
454	21	none	foal4	56
60	21	none	foal3	79
332	21	none	foal4	32
121	21	none	foal4	4
323	21	none	foal4	45
201	21	none	foal4	73
282	21	none	foal2	24
170	21	none	foal3	23
85	21	none	foal4	28
81	21	none	foal4	17
231	21	none	foal3	79
331	22	red	foal3	73
414	22	yellow	foal1	47
326	22	yellow	foal3	44
496	22	yellow	foal3	53
402	22	red	foal1	67
414	22	none	foal2	35
16	22	none	foal4	78
451	22	none	foal2	38
16	22	none	foal1	62
214	22	none	foal3	28
451	22	none	foal3	55
382	22	none	foal1	14
16	22	none	foal2	45
288	22	none	foal3	0
293	22	none	foal3	55
351	22	none	foal4	65
293	22	none	foal1	35
530	22	none	foal1	54
414	22	none	foal2	57
354	23	yellow	foal3	10
572	23	yellow	foal4	69
422	23	yellow	foal3	21
375	23	yellow	foal3	32
439	23	none	foal3	45
80	23	none	foal3	88
439	23	none	foal2	77
48	23	none	foal1	8
275	23	none	foal1	28
485	23	none	foal3	79
62	23	none	foal4	51
182	23	none	foal4	53
439	23	none	foal1	66
375	23	none	foal1	43
240	23	none	foal3	87
275	23	none	foal2	37
125	23	none	foal2	38
446	23	none	foal2	52
52	23	none	foal4	79
373	23	none	foal2	2
275	23	none	foal1	26
375	23	none	foal4	2
155	23	none	foal4	58
235	23	none	foal1	28
240	23	none	foal3	21
48	23	none	foal2	49
62	23	none	foal2	1
471	23	none	foal4	44
373	23	none	foal3	41
182	23	none	foal3	44
240	23	none	foal2	85
52	23	none	foal1	29
50	23	none	foal4	35
80	23	none	foal3	70
446	23	none	foal1	28
572	23	none	foal1	75
211	23	none	foal1	28
52	23	none	foal4	30
211	23	none	foal3	73
189	23	none	foal2	78
1	23	none	foal2	8
439	23	none	foal4	44
159	24	red	foal1	18
90	24	yellow	foal4	57
428	24	none	foal4	82
338	24	none	foal1	18
502	24	none	foal3	28
502	24	none	foal4	67
27	24	none	foal1	26
27	24	none	foal3	69
88	24	none	foal4	9
502	24	none	foal4	1
426	24	none	foal4	48
338	24	none	foal1	61
428	24	none	foal1	53
213	24	none	foal2	54
88	24	none	foal3	57
547	24	none	foal1	72
27	24	none	foal3	8
94	24	none	foal1	70
94	24	none	foal3	77
87	24	none	foal3	45
340	24	none	foal4	83
270	24	none	foal4	73
102	25	yellow	foal2	24
525	25	yellow	foal3	13
106	25	red	foal4	24
218	25	yellow	foal1	1
133	25	none	foal3	82
568	25	none	foal3	83
420	25	none	foal3	70
568	25	none	foal2	40
302	25	none	foal2	80
556	25	none	foal4	87
117	25	none	foal4	76
436	25	none	foal4	35
458	25	none	foal3	58
92	25	none	foal4	64
92	25	none	foal1	77
458	25	none	foal1	55
140	25	none	foal1	66
158	25	none	foal4	47
556	25	none	foal1	57
290	25	none	foal3	12
253	25	none	foal1	66
318	25	none	foal2	40
290	25	none	foal1	26
19	25	none	foal4	90
117	25	none	foal3	77
436	25	none	foal1	68
158	25	none	foal3	37
140	25	none	foal3	34
133	25	none	foal3	29
546	25	none	foal3	79
302	25	none	foal2	77
245	25	none	foal3	53
117	25	none	foal1	50
25	26	yellow	foal3	60
347	26	yellow	foal4	11
569	26	none	foal2	38
82	26	none	foal1	34
36	26	none	foal2	1
551	26	none	foal2	12
376	26	none	foal1	82
55	26	none	foal4	56
342	26	none	foal1	71
55	26	none	foal4	26
261	26	none	foal2	23
342	26	none	foal1	87
36	26	none	foal2	68
91	26	none	foal4	15
131	26	none	foal3	20
515	26	none	foal4	79
311	26	none	foal4	44
153	26	none	foal1	81
36	26	none	foal3	85
78	26	none	foal1	65
36	26	none	foal1	0
385	26	none	foal4	14
551	26	none	foal3	90
515	26	none	foal4	46
408	27	yellow	foal1	35
473	27	yellow	foal1	80
74	27	yellow	foal3	32
408	27	yellow	foal1	44
358	27	yellow	foal1	56
308	27	yellow	foal1	36
70	27	none	foal3	35
49	27	none	foal1	44
28	27	none	foal4	82
398	27	none	foal1	13
49	27	none	foal2	50
246	27	none	foal2	77
49	27	none	foal3	66
362	27	none	foal1	82
109	27	none	foal2	41
291	27	none	foal3	43
308	27	none	foal3	40
115	27	none	foal4	32
442	27	none	foal3	15
362	27	none	foal1	68
123	27	none	foal4	51
266	27	none	foal1	83
291	27	none	foal4	17
250	27	none	foal4	14
246	27	none	foal1	60
362	27	none	foal1	61
362	27	none	foal3	83
440	27	none	foal2	35
70	27	none	foal2	73
559	27	none	foal1	90
497	27	none	foal2	7
291	27	none	foal4	50
440	27	none	foal1	43
242	27	none	foal1	61
123	27	none	foal2	89
123	27	none	foal2	80
356	27	none	foal2	10
545	27	none	foal3	89
398	27	none	foal2	2
555	27	none	foal2	26
229	28	yellow	foal4	12
533	28	yellow	foal4	36
524	28	yellow	foal1	90
237	28	none	foal1	90
2	28	none	foal4	44
65	28	none	foal3	8
493	28	none	foal4	3
394	28	none	foal4	82
75	28	none	foal4	67
493	28	none	foal4	27
113	28	none	foal2	22
2	28	none	foal1	48
493	28	none	foal3	81
274	28	none	foal2	12
450	28	none	foal4	13
54	28	none	foal4	34
77	28	none	foal2	62
249	28	none	foal4	87
168	28	none	foal3	71
274	28	none	foal4	34
64	28	none	foal1	75
538	28	none	foal4	0
237	28	none	foal3	56
54	28	none	foal3	19
113	28	none	foal3	27
57	29	yellow	foal3	34
443	29	yellow	foal3	53
57	29	yellow	foal4	81
58	29	yellow	foal1	72
417	29	none	foal3	71
210	29	none	foal2	32
93	29	none	foal2	74
295	29	none	foal4	11
149	29	none	foal2	48
417	29	none	foal3	40
366	29	none	foal4	26
366	29	none	foal3	56
210	29	none	foal3	34
322	29	none	foal1	66
435	29	none	foal3	20
384	29	none	foal2	34
562	29	none	foal4	63
44	29	none	foal3	6
138	29	none	foal3	16
548	29	none	foal3	22
366	29	none	foal4	3
384	29	none	foal2	19
174	29	none	foal3	61
58	29	none	foal1	9
480	29	none	foal4	7
44	29	none	foal2	14
295	29	none	foal4	2
480	29	none	foal4	66
180	29	none	foal2	90
435	29	none	foal3	70
149	29	none	foal2	11
480	29	none	foal3	44
105	29	none	foal3	63
558	29	none	foal1	58
391	30	yellow	foal1	89
296	30	yellow	foal3	83
205	30	yellow	foal4	43
116	30	yellow	foal1	44
534	30	yellow	foal1	51
445	30	none	foal1	64
552	30	none	foal1	32
327	30	none	foal3	32
226	30	none	foal1	75
179	30	none	foal2	60
550	30	none	foal1	29
228	30	none	foal1	62
306	30	none	foal1	34
190	30	none	foal1	21
434	30	none	foal4	25
306	30	none	foal1	22
219	30	none	foal2	77
255	30	none	foal2	44
177	30	none	foal1	28
333	30	none	foal4	15
532	30	none	foal4	35
228	30	none	foal3	50
434	30	none	foal1	27
190	30	none	foal2	22
415	30	none	foal4	90
217	30	none	foal3	67
550	30	none	foal4	21
190	30	none	foal2	69
152	30	none	foal2	41
255	30	none	foal3	33
532	30	none	foal4	17
534	30	none	foal1	57
550	30	none	foal4	78
353	30	none	foal1	85
445	30	none	foal3	34
206	30	none	foal2	7
420	31	yellow	foal2	16
365	31	yellow	foal4	14
196	31	yellow	foal4	30
554	31	yellow	foal3	0
513	31	yellow	foal1	43
127	31	none	foal3	22
207	31	none	foal1	53
273	31	none	foal3	27
554	31	none	foal2	48
127	31	none	foal1	43
564	31	none	foal1	39
540	31	none	foal1	42
490	31	none	foal4	66
513	31	none	foal4	47
21	31	none	foal2	35
25	31	none	foal1	47
21	31	none	foal2	60
11	31	none	foal2	46
513	31	none	foal2	48
207	31	none	foal4	17
554	31	none	foal1	57
46	31	none	foal2	6
459	31	none	foal3	14
412	31	none	foal4	79
248	31	none	foal1	28
164	31	none	foal3	45
540	31	none	foal2	34
273	31	none	foal3	23
513	31	none	foal4	23
25	31	none	foal2	41
164	31	none	foal4	28
207	31	none	foal3	39
248	31	none	foal1	82
11	31	none	foal2	75
459	31	none	foal3	0
418	31	none	foal3	75
459	31	none	foal2	20
127	31	none	foal1	73
441	32	yellow	foal1	19
376	32	yellow	foal2	4
515	32	yellow	foal2	49
487	32	yellow	foal3	44
489	32	yellow	foal4	28
571	32	yellow	foal3	61
350	32	none	foal4	62
399	32	none	foal2	59
517	32	none	foal2	59
325	32	none	foal1	32
355	32	none	foal1	10
533	32	none	foal1	47
535	32	none	foal3	48
42	32	none	foal1	46
535	32	none	foal1	67
33	32	none	foal4	8
507	32	none	foal3	73
447	33	yellow	foal1	56
366	33	yellow	foal4	5
492	33	yellow	foal2	44
267	33	yellow	foal3	57
346	33	none	foal2	80
67	33	none	foal3	57
492	33	none	foal3	20
331	33	none	foal2	76
132	33	none	foal3	23
387	33	none	foal2	3
331	33	none	foal1	48
111	33	none	foal2	70
107	33	none	foal2	44
360	33	none	foal4	68
310	33	none	foal4	70
47	33	none	foal3	22
267	33	none	foal3	31
304	33	none	foal3	47
544	33	none	foal1	66
111	33	none	foal2	25
304	33	none	foal3	75
374	33	none	foal2	81
432	33	none	foal2	35
294	33	none	foal3	90
294	33	none	foal1	25
265	33	none	foal1	89
387	33	none	foal3	40
294	33	none	foal1	39
304	33	none	foal3	5
63	33	none	foal1	49
145	33	none	foal1	31
368	33	none	foal1	15
484	33	none	foal4	80
67	33	none	foal2	35
67	33	none	foal1	74
97	33	none	foal3	55
432	33	none	foal2	1
346	33	none	foal2	47
115	34	yellow	foal4	6
543	34	yellow	foal4	53
198	34	none	foal1	23
256	34	none	foal1	15
254	34	none	foal4	12
251	34	none	foal1	33
390	34	none	foal4	3
557	34	none	foal3	3
423	34	none	foal2	1
525	34	none	foal3	82
400	34	none	foal4	41
565	34	none	foal4	88
523	34	none	foal2	59
102	34	none	foal3	28
361	35	yellow	foal1	32
214	35	yellow	foal1	50
451	35	yellow	foal1	47
234	35	yellow	foal2	48
461	35	yellow	foal1	9
136	35	yellow	foal2	83
110	35	none	foal3	38
257	35	none	foal4	29
462	35	none	foal4	55
277	35	none	foal1	10
488	35	none	foal4	17
314	35	none	foal3	83
453	35	none	foal4	52
462	35	none	foal2	4
257	35	none	foal4	90
7	35	none	foal4	17
539	35	none	foal3	2
395	35	none	foal2	53
277	35	none	foal2	73
285	35	none	foal4	51
189	36	yellow	foal2	70
125	36	yellow	foal2	41
463	36	yellow	foal4	24
236	36	none	foal1	77
479	36	none	foal2	11
124	36	none	foal4	6
561	36	none	foal1	37
486	36	none	foal3	46
478	36	none	foal3	2
337	36	none	foal1	48
89	36	none	foal2	4
269	36	none	foal4	89
124	36	none	foal3	69
343	36	none	foal2	70
337	36	none	foal2	52
463	36	none	foal3	8
474	36	none	foal4	36
413	36	none	foal3	13
478	36	none	foal4	7
486	36	none	foal4	40
388	36	none	foal3	44
561	36	none	foal2	39
474	36	none	foal3	82
407	37	none	foal2	59
345	37	none	foal1	25
114	37	none	foal3	69
476	37	none	foal4	67
188	37	none	foal1	59
319	37	none	foal4	83
69	37	none	foal3	40
389	37	none	foal2	2
345	37	none	foal4	90
567	37	none	foal4	30
567	37	none	foal4	10
287	37	none	foal2	81
443	37	none	foal3	86
409	37	none	foal4	76
378	37	none	foal1	51
199	37	none	foal3	80
567	37	none	foal3	29
154	37	none	foal3	49
389	37	none	foal3	20
69	37	none	foal3	18
199	37	none	foal4	32
393	38	yellow	foal2	62
90	38	yellow	foal1	23
516	38	yellow	foal3	10
225	38	yellow	foal4	23
86	38	yellow	foal4	67
29	38	yellow	foal3	5
511	38	yellow	foal2	90
171	38	none	foal2	43
100	38	none	foal1	72
410	38	none	foal3	13
449	38	none	foal1	33
4	38	none	foal3	71
100	38	none	foal4	35
23	38	none	foal3	79
86	38	none	foal3	16
354	38	none	foal1	49
23	38	none	foal2	67
570	38	none	foal3	29
100	38	none	foal4	20
328	38	none	foal1	62
570	38	none	foal4	41
274	39	yellow	foal1	64
383	39	yellow	foal3	60
452	39	yellow	foal4	35
39	39	yellow	foal1	18
371	39	yellow	foal4	41
56	39	red	foal3	25
391	39	none	foal4	52
244	39	none	foal1	47
296	39	none	foal4	79
59	39	none	foal3	85
429	39	none	foal4	86
59	39	none	foal4	20
377	39	none	foal4	51
56	39	none	foal2	74
506	39	none	foal3	65
268	39	none	foal4	80
296	39	none	foal2	7
147	39	none	foal4	84
528	39	none	foal1	22
452	39	none	foal1	17
56	39	none	foal2	28
268	39	none	foal3	74
244	39	none	foal4	68
45	39	none	foal1	76
31	39	none	foal4	69
187	39	none	foal1	80
31	39	none	foal3	3
187	39	none	foal2	66
12	40	yellow	foal1	15
12	40	yellow	foal4	20
152	40	yellow	foal2	32
177	40	none	foal1	75
228	40	none	foal1	55
152	40	none	foal3	32
217	40	none	foal1	67
327	40	none	foal4	33
550	40	none	foal4	1
552	40	none	foal3	76
152	40	none	foal2	30
152	40	none	foal4	69
306	40	none	foal3	26
228	40	none	foal4	57
416	40	none	foal4	28
255	40	none	foal1	80
179	40	none	foal3	89
73	40	none	foal1	10
177	40	none	foal3	65
190	40	none	foal3	66
552	40	none	foal2	43
177	40	none	foal3	34
228	40	none	foal2	11
34	40	none	foal4	30
550	40	none	foal4	21
327	40	none	foal3	0
21	41	none	foal1	51
459	41	none	foal2	16
156	41	none	foal1	54
207	41	none	foal3	27
25	41	none	foal3	20
412	41	none	foal2	12
164	41	none	foal3	41
164	41	none	foal2	13
156	41	none	foal3	37
164	41	none	foal1	73
459	41	none	foal4	29
459	41	none	foal1	57
554	41	none	foal4	16
278	41	none	foal2	13
412	41	none	foal3	14
25	41	none	foal1	38
513	41	none	foal3	62
273	41	none	foal2	3
349	41	none	foal4	71
21	41	none	foal3	66
127	41	none	foal1	16
418	41	none	foal4	73
472	41	none	foal2	26
273	41	none	foal4	11
37	41	none	foal3	36
513	41	none	foal2	6
459	41	none	foal4	25
513	41	none	foal1	0
554	41	none	foal2	21
37	41	none	foal4	38
21	41	none	foal1	76
207	41	none	foal3	67
490	41	none	foal2	72
21	41	none	foal4	26
273	41	none	foal4	63
248	41	none	foal3	74
368	42	yellow	foal3	88
145	42	yellow	foal2	18
267	42	yellow	foal3	75
141	42	yellow	foal4	36
158	42	yellow	foal3	83
72	42	yellow	foal3	27
141	42	red	foal2	35
215	42	none	foal1	69
365	42	none	foal2	87
215	42	none	foal2	36
218	42	none	foal4	33
133	42	none	foal3	8
365	42	none	foal1	10
290	42	none	foal2	54
215	42	none	foal4	48
546	42	none	foal4	52
465	42	none	foal3	58
290	42	none	foal1	17
510	42	none	foal4	78
215	42	none	foal1	65
276	43	none	foal3	6
393	43	none	foal4	32
426	43	none	foal1	87
88	43	none	foal4	40
340	43	none	foal4	16
464	43	none	foal3	29
87	43	none	foal4	65
276	43	none	foal1	76
547	43	none	foal1	2
213	43	none	foal4	16
393	43	none	foal3	52
213	43	none	foal2	84
488	44	yellow	foal2	13
442	44	yellow	foal4	81
497	44	yellow	foal3	83
559	44	none	foal1	1
356	44	none	foal1	42
406	44	none	foal1	69
6	44	none	foal3	81
266	44	none	foal4	20
545	44	none	foal3	2
266	44	none	foal3	89
291	44	none	foal3	50
497	44	none	foal3	52
266	44	none	foal3	67
526	44	none	foal1	58
115	44	none	foal4	48
545	44	none	foal3	4
545	44	none	foal2	45
123	44	none	foal2	30
406	44	none	foal3	57
279	44	none	foal1	57
115	44	none	foal4	19
362	44	none	foal2	4
526	44	none	foal2	43
526	44	none	foal4	25
497	44	none	foal3	24
246	44	none	foal3	87
109	44	none	foal1	25
250	44	none	foal2	47
494	44	none	foal4	35
379	44	none	foal4	64
356	44	none	foal2	72
109	44	none	foal4	46
6	44	none	foal4	87
545	44	none	foal2	17
362	44	none	foal4	76
308	44	none	foal1	68
266	44	none	foal3	19
555	44	none	foal1	27
49	44	none	foal3	32
356	44	none	foal2	0
115	44	none	foal1	13
442	44	none	foal1	3
545	44	none	foal2	43
22	45	none	foal1	56
571	45	none	foal4	18
22	45	none	foal3	71
9	45	none	foal2	0
531	45	none	foal4	65
33	45	none	foal3	34
531	45	none	foal3	48
160	45	none	foal2	19
222	45	none	foal3	51
128	45	none	foal1	56
220	45	none	foal1	82
571	45	none	foal3	40
350	45	none	foal1	20
370	45	none	foal2	90
489	45	none	foal1	32
535	45	none	foal2	47
23	46	none	foal2	48
419	46	none	foal1	8
401	46	none	foal4	12
519	46	none	foal3	56
468	46	none	foal1	33
514	46	none	foal4	63
23	46	none	foal1	46
300	46	none	foal2	85
223	46	none	foal2	46
130	46	none	foal2	90
29	46	none	foal2	65
354	46	none	foal3	4
212	46	none	foal1	47
143	46	none	foal4	68
468	46	none	foal1	21
171	46	none	foal3	50
143	46	none	foal1	0
143	46	none	foal3	13
570	46	none	foal4	32
511	46	none	foal4	45
300	46	none	foal2	17
456	46	none	foal3	51
225	46	none	foal4	67
165	47	yellow	foal3	19
518	47	yellow	foal3	53
498	47	yellow	foal3	45
51	47	yellow	foal2	33
444	47	red	foal4	69
377	47	none	foal2	78
371	47	none	foal2	57
51	47	none	foal3	39
45	47	none	foal3	23
498	47	none	foal1	89
391	47	none	foal3	34
59	47	none	foal1	48
452	47	none	foal3	30
66	47	none	foal3	44
56	47	none	foal1	87
391	47	none	foal1	5
371	47	none	foal2	28
89	48	yellow	foal3	65
289	48	yellow	foal3	52
383	48	yellow	foal1	11
64	48	yellow	foal1	16
520	48	yellow	foal3	9
64	48	yellow	foal2	61
75	48	none	foal1	16
280	48	none	foal2	17
469	48	none	foal2	4
249	48	none	foal4	79
301	48	none	foal2	49
274	48	none	foal4	76
493	48	none	foal4	4
448	48	none	foal3	72
264	48	none	foal1	32
394	48	none	foal3	49
324	48	none	foal3	76
54	48	none	foal1	87
448	48	none	foal4	36
383	48	none	foal1	75
280	48	none	foal4	79
493	48	none	foal3	58
237	48	none	foal4	43
450	48	none	foal3	80
448	48	none	foal1	12
65	48	none	foal2	13
524	48	none	foal2	56
280	48	none	foal4	82
538	48	none	foal4	55
351	49	yellow	foal1	75
341	49	yellow	foal1	44
259	49	yellow	foal2	34
18	49	yellow	foal3	63
352	49	yellow	foal2	25
240	49	yellow	foal4	5
364	49	yellow	foal2	16
373	49	none	foal2	36
404	49	none	foal1	48
572	49	none	foal4	43
240	49	none	foal2	82
48	49	none	foal3	82
572	49	none	foal2	40
211	49	none	foal1	38
101	49	none	foal4	86
1	49	none	foal4	63
259	49	none	foal4	69
254	50	yellow	foal4	37
256	50	yellow	foal4	71
153	50	yellow	foal1	87
311	50	yellow	foal4	71
311	50	yellow	foal3	69
396	50	none	foal3	51
258	50	none	foal2	89
376	50	none	foal3	70
129	50	none	foal1	78
569	50	none	foal2	60
153	50	none	foal3	77
385	50	none	foal4	37
153	50	none	foal2	43
78	50	none	foal2	25
55	50	none	foal4	52
569	50	none	foal3	58
55	50	none	foal3	51
427	51	yellow	foal2	26
517	51	yellow	foal3	75
17	51	yellow	foal4	3
297	51	none	foal3	1
424	51	none	foal1	74
10	51	none	foal4	90
560	51	none	foal4	67
320	51	none	foal4	82
126	51	none	foal2	13
518	51	none	foal1	29
560	51	none	foal2	35
320	51	none	foal2	87
297	51	none	foal3	87
41	51	none	foal2	8
503	51	none	foal2	83
473	51	none	foal4	2
118	51	none	foal3	30
144	51	none	foal2	43
320	51	none	foal1	37
144	51	none	foal2	5
197	51	none	foal4	7
232	51	none	foal3	69
12	51	none	foal4	71
54	52	yellow	foal4	53
77	52	yellow	foal2	44
167	52	none	foal2	9
544	52	none	foal2	31
484	52	none	foal2	53
162	52	none	foal1	83
432	52	none	foal2	75
512	52	none	foal4	55
374	52	none	foal4	6
162	52	none	foal2	26
331	52	none	foal4	67
267	52	none	foal2	40
425	52	none	foal1	83
13	52	none	foal2	7
67	52	none	foal2	16
63	52	none	foal2	23
521	52	none	foal2	14
94	53	yellow	foal1	15
467	53	yellow	foal1	37
201	53	none	foal4	20
433	53	none	foal2	76
323	53	none	foal3	4
201	53	none	foal4	51
467	53	none	foal3	84
455	53	none	foal3	21
170	53	none	foal4	85
460	53	none	foal2	45
467	53	none	foal1	3
282	53	none	foal4	46
454	53	none	foal1	64
150	53	none	foal3	81
231	53	none	foal4	15
291	54	yellow	foal1	35
199	54	yellow	foal2	57
184	54	none	foal2	40
470	54	none	foal4	11
407	54	none	foal3	33
57	54	none	foal4	88
154	54	none	foal2	36
313	54	none	foal1	57
193	54	none	foal3	38
389	54	none	foal1	0
57	54	none	foal2	87
184	54	none	foal2	27
95	54	none	foal3	22
154	54	none	foal1	27
470	54	none	foal4	20
57	54	none	foal4	4
407	54	none	foal2	49
476	54	none	foal3	53
120	54	none	foal2	13
193	54	none	foal4	15
476	54	none	foal2	45
57	54	none	foal3	1
199	54	none	foal1	34
470	54	none	foal2	15
345	54	none	foal2	79
409	54	none	foal2	40
409	54	none	foal1	56
117	55	yellow	foal1	67
133	55	yellow	foal2	21
488	55	yellow	foal3	48
285	55	none	foal4	4
386	55	none	foal1	83
395	55	none	foal2	61
529	55	none	foal1	27
395	55	none	foal4	82
192	55	none	foal3	87
257	55	none	foal1	30
453	55	none	foal2	33
395	55	none	foal4	48
257	55	none	foal1	30
159	55	none	foal3	80
5	55	none	foal2	85
314	55	none	foal2	60
172	55	none	foal4	34
284	55	none	foal1	15
314	55	none	foal2	17
529	55	none	foal3	54
363	56	yellow	foal3	70
509	56	yellow	foal3	16
254	56	none	foal4	28
254	56	none	foal4	69
403	56	none	foal3	20
557	56	none	foal3	14
437	56	none	foal2	82
525	56	none	foal4	60
135	56	none	foal2	17
525	56	none	foal3	53
543	56	none	foal4	61
96	56	none	foal3	44
305	56	none	foal1	80
483	56	none	foal4	63
437	56	none	foal3	23
24	56	none	foal1	51
135	56	none	foal2	47
372	56	none	foal1	53
53	56	none	foal4	71
403	56	none	foal2	83
102	56	none	foal2	49
423	56	none	foal4	14
457	56	none	foal1	46
305	56	none	foal1	49
390	56	none	foal4	12
403	56	none	foal2	49
45	57	yellow	foal3	17
343	57	yellow	foal1	21
343	57	none	foal2	60
236	57	none	foal2	37
463	57	none	foal2	62
481	57	none	foal3	87
89	57	none	foal3	82
474	57	none	foal3	64
281	57	none	foal3	62
329	57	none	foal3	31
478	57	none	foal1	53
99	57	none	foal1	62
482	57	none	foal1	62
397	57	none	foal3	20
478	57	none	foal3	61
329	57	none	foal2	86
479	57	none	foal2	22
124	57	none	foal1	69
474	57	none	foal1	77
311	58	yellow	foal1	30
91	58	yellow	foal3	80
504	58	yellow	foal4	8
217	58	none	foal4	11
327	58	none	foal3	30
217	58	none	foal3	13
415	58	none	foal2	85
205	58	none	foal4	25
116	58	none	foal3	68
190	58	none	foal4	61
73	58	none	foal4	45
445	58	none	foal3	63
190	58	none	foal3	42
333	58	none	foal1	67
177	58	none	foal1	42
532	58	none	foal3	9
217	58	none	foal2	33
415	58	none	foal4	5
226	58	none	foal4	46
552	58	none	foal2	47
327	58	none	foal4	49
415	58	none	foal1	68
317	58	none	foal2	60
228	58	none	foal1	71
445	58	none	foal4	46
177	58	none	foal3	83
317	58	none	foal2	20
139	58	none	foal4	8
179	58	none	foal1	51
52	59	yellow	foal1	25
18	59	yellow	foal4	42
38	59	yellow	foal3	9
417	59	none	foal3	87
93	59	none	foal1	42
548	59	none	foal3	20
477	59	none	foal3	66
93	59	none	foal4	6
558	59	none	foal2	10
93	59	none	foal2	20
151	59	none	foal4	64
210	59	none	foal1	7
174	59	none	foal1	74
210	59	none	foal1	84
447	59	none	foal2	31
203	59	none	foal1	19
44	59	none	foal1	75
203	59	none	foal3	34
447	59	none	foal1	29
480	59	none	foal3	64
477	59	none	foal1	28
322	59	none	foal4	49
384	59	none	foal1	6
417	59	none	foal2	11
477	59	none	foal1	4
447	59	none	foal4	77
130	60	yellow	foal2	84
519	60	yellow	foal1	83
414	60	yellow	foal4	68
293	60	none	foal1	27
83	60	none	foal2	35
500	60	none	foal3	0
326	60	none	foal2	22
247	60	none	foal2	67
83	60	none	foal3	7
451	60	none	foal2	55
40	60	none	foal3	61
247	60	none	foal4	22
83	60	none	foal1	9
326	60	none	foal4	71
500	60	none	foal3	90
496	60	none	foal3	3
103	60	none	foal4	41
330	60	none	foal2	23
326	60	none	foal1	35
451	60	none	foal4	7
39	61	yellow	foal2	54
56	61	none	foal1	50
56	61	none	foal2	12
45	61	none	foal4	19
549	61	none	foal4	52
381	61	none	foal4	79
528	61	none	foal3	77
359	61	none	foal2	67
56	61	none	foal3	12
147	61	none	foal3	57
39	61	none	foal3	14
45	61	none	foal1	61
268	61	none	foal4	56
381	61	none	foal2	77
187	61	none	foal4	30
371	61	none	foal1	62
452	61	none	foal1	24
45	61	none	foal1	79
176	61	none	foal4	75
549	61	none	foal4	4
452	61	none	foal3	41
296	61	none	foal2	72
296	61	none	foal3	85
244	61	none	foal4	41
429	61	none	foal3	30
410	62	yellow	foal4	40
143	62	yellow	foal1	23
118	62	yellow	foal1	40
126	62	yellow	foal1	67
473	62	none	foal2	83
536	62	none	foal2	58
126	62	none	foal4	47
232	62	none	foal1	41
12	62	none	foal4	27
536	62	none	foal1	12
297	62	none	foal3	19
12	62	none	foal3	51
10	62	none	foal4	37
424	62	none	foal4	34
424	62	none	foal1	56
367	62	none	foal3	16
208	62	none	foal4	8
503	62	none	foal4	62
208	62	none	foal1	83
473	62	none	foal4	80
232	62	none	foal2	3
197	62	none	foal2	43
41	62	none	foal4	77
473	62	none	foal2	26
12	62	none	foal1	73
126	62	none	foal1	73
424	62	none	foal4	65
165	62	none	foal2	47
10	62	none	foal2	66
518	62	none	foal2	85
33	63	yellow	foal4	55
370	63	yellow	foal4	12
271	63	yellow	foal2	86
325	63	none	foal3	27
427	63	none	foal1	56
336	63	none	foal2	74
22	63	none	foal2	83
22	63	none	foal3	72
195	63	none	foal3	86
222	63	none	foal4	42
507	63	none	foal1	68
370	63	none	foal2	24
160	63	none	foal1	58
571	63	none	foal1	53
531	63	none	foal1	57
336	63	none	foal3	32
336	63	none	foal4	27
399	63	none	foal3	31
370	63	none	foal3	55
33	63	none	foal2	44
186	63	none	foal2	78
9	63	none	foal2	55
285	64	yellow	foal1	29
461	64	yellow	foal4	18
405	64	yellow	foal4	83
34	64	yellow	foal2	7
416	64	none	foal1	38
550	64	none	foal3	5
333	64	none	foal4	79
306	64	none	foal4	41
306	64	none	foal4	82
73	64	none	foal2	22
206	64	none	foal2	75
333	64	none	foal4	60
434	64	none	foal4	55
157	64	none	foal1	61
34	64	none	foal1	6
306	64	none	foal3	41
317	64	none	foal3	54
405	64	none	foal1	48
434	64	none	foal2	86
157	64	none	foal1	13
434	64	none	foal4	3
177	64	none	foal4	35
205	64	none	foal3	81
73	64	none	foal2	19
357	64	none	foal2	8
306	64	none	foal3	42
217	64	none	foal1	56
190	64	none	foal3	87
353	64	none	foal1	90
504	64	none	foal1	55
255	64	none	foal1	69
534	64	none	foal1	10
205	64	none	foal1	7
552	64	none	foal2	66
34	64	none	foal1	70
415	64	none	foal1	22
206	64	none	foal3	0
317	64	none	foal4	29
306	64	none	foal2	55
385	65	yellow	foal2	55
347	65	yellow	foal4	41
55	65	yellow	foal4	4
261	65	none	foal4	23
347	65	none	foal3	76
84	65	none	foal4	69
82	65	none	foal4	19
376	65	none	foal2	11
441	65	none	foal1	51
78	65	none	foal3	6
441	65	none	foal2	63
508	65	none	foal3	63
36	65	none	foal3	37
396	65	none	foal2	8
311	65	none	foal3	0
91	65	none	foal3	66
311	65	none	foal2	71
91	65	none	foal2	64
245	66	none	foal2	56
133	66	none	foal4	83
221	66	none	foal3	58
215	66	none	foal4	37
133	66	none	foal1	5
133	66	none	foal2	49
141	66	none	foal1	37
218	66	none	foal1	47
465	66	none	foal1	87
465	66	none	foal2	11
458	66	none	foal3	10
458	66	none	foal3	64
133	66	none	foal4	17
72	66	none	foal3	62
245	66	none	foal2	49
133	66	none	foal1	15
510	66	none	foal2	88
221	66	none	foal4	35
133	66	none	foal4	27
158	66	none	foal1	86
215	66	none	foal3	14
158	66	none	foal2	78
465	66	none	foal2	57
92	66	none	foal4	68
215	66	none	foal3	0
337	67	yellow	foal1	74
478	67	yellow	foal2	42
563	67	yellow	foal2	7
525	67	yellow	foal2	35
411	67	none	foal2	45
523	67	none	foal2	42
106	67	none	foal2	5
411	67	none	foal2	20
256	67	none	foal2	12
483	67	none	foal2	8
525	67	none	foal2	81
423	67	none	foal3	30
390	67	none	foal4	7
32	67	none	foal1	9
565	67	none	foal2	72
372	67	none	foal1	27
135	67	none	foal2	73
491	67	none	foal2	65
102	67	none	foal1	7
557	67	none	foal4	17
239	67	none	foal4	24
32	67	none	foal4	5
565	67	none	foal4	34
106	67	none	foal1	6
239	67	none	foal4	43
102	67	none	foal4	11
557	67	none	foal3	24
400	67	none	foal1	65
523	67	none	foal4	85
239	67	none	foal2	76
251	67	none	foal4	34
239	67	none	foal2	46
437	67	none	foal4	87
198	67	none	foal4	43
564	68	yellow	foal2	1
25	68	yellow	foal2	25
25	68	none	foal4	15
273	68	none	foal1	10
21	68	none	foal4	76
540	68	none	foal1	52
412	68	none	foal1	10
134	68	none	foal3	11
412	68	none	foal4	3
278	68	none	foal3	88
554	68	none	foal1	68
490	68	none	foal4	89
349	68	none	foal4	76
472	68	none	foal4	52
412	68	none	foal1	43
459	68	none	foal2	15
273	68	none	foal1	61
502	69	yellow	foal2	21
448	69	yellow	foal1	2
324	69	yellow	foal1	66
383	69	yellow	foal3	10
54	69	none	foal3	59
2	69	none	foal4	17
450	69	none	foal1	14
324	69	none	foal3	80
54	69	none	foal2	87
448	69	none	foal2	46
286	69	none	foal4	86
538	69	none	foal3	18
469	69	none	foal3	80
521	70	yellow	foal3	45
173	70	yellow	foal3	88
167	70	yellow	foal4	73
362	70	yellow	foal2	36
115	70	yellow	foal4	35
123	70	yellow	foal3	62
559	70	yellow	foal4	87
123	70	none	foal3	17
123	70	none	foal1	68
362	70	none	foal1	15
272	70	none	foal2	76
28	70	none	foal2	49
28	70	none	foal4	68
379	70	none	foal2	3
356	70	none	foal2	70
308	70	none	foal3	77
109	70	none	foal1	17
559	70	none	foal3	66
431	70	none	foal3	23
202	71	yellow	foal2	82
153	71	yellow	foal4	21
551	71	yellow	foal3	19
240	71	yellow	foal1	23
240	71	yellow	foal2	60
52	71	none	foal2	65
50	71	none	foal1	56
235	71	none	foal4	83
422	71	none	foal4	4
155	71	none	foal1	40
18	71	none	foal2	32
30	71	none	foal4	58
572	71	none	foal1	69
364	71	none	foal4	57
48	71	none	foal1	56
125	71	none	foal2	71
240	71	none	foal4	82
48	71	none	foal3	28
352	71	none	foal2	85
62	71	none	foal3	32
471	71	none	foal3	71
404	71	none	foal4	53
30	71	none	foal2	7
211	71	none	foal3	19
50	71	none	foal4	54
275	71	none	foal1	29
240	71	none	foal3	75
364	71	none	foal2	30
240	71	none	foal4	50
30	71	none	foal3	41
52	71	none	foal2	30
373	71	none	foal4	53
182	71	none	foal3	37
259	71	none	foal2	68
65	72	yellow	foal2	28
168	72	yellow	foal4	24
277	72	yellow	foal3	16
178	72	yellow	foal4	65
488	72	none	foal3	26
257	72	none	foal2	58
178	72	none	foal1	24
172	72	none	foal1	52
178	72	none	foal4	64
395	72	none	foal3	38
122	72	none	foal4	58
3	72	none	foal2	0
285	72	none	foal1	78
462	72	none	foal1	23
453	72	none	foal1	76
122	72	none	foal2	70
453	72	none	foal1	49
453	72	none	foal1	33
529	72	none	foal2	44
488	72	none	foal3	63
461	72	none	foal4	60
5	72	none	foal1	50
14	72	none	foal4	42
283	72	none	foal2	5
461	72	none	foal4	37
334	72	none	foal4	5
3	72	none	foal3	15
291	73	yellow	foal4	49
379	73	yellow	foal3	3
250	73	yellow	foal3	50
337	73	yellow	foal1	88
343	73	yellow	foal3	1
289	73	yellow	foal3	79
388	73	yellow	foal3	27
99	73	none	foal4	59
289	73	none	foal3	75
289	73	none	foal1	28
281	73	none	foal2	76
388	73	none	foal3	25
89	73	none	foal3	0
563	73	none	foal3	1
388	73	none	foal3	7
224	73	none	foal2	52
474	73	none	foal4	56
124	73	none	foal2	78
215	74	yellow	foal4	41
133	74	yellow	foal3	89
510	74	yellow	foal4	76
140	74	red	foal4	73
537	74	yellow	foal4	83
537	74	none	foal4	44
83	74	none	foal4	72
247	74	none	foal2	29
247	74	none	foal1	76
166	74	none	foal1	11
500	74	none	foal1	82
500	74	none	foal2	22
414	74	none	foal2	9
496	74	none	foal2	83
214	74	none	foal4	5
542	74	none	foal3	53
496	74	none	foal4	32
40	74	none	foal4	40
293	74	none	foal1	18
166	74	none	foal2	18
40	74	none	foal1	12
351	74	none	foal4	42
542	74	none	foal1	74
214	74	none	foal4	85
361	74	none	foal1	64
40	74	none	foal1	50
414	74	none	foal2	15
566	74	none	foal2	43
414	74	none	foal4	34
566	74	none	foal2	27
40	74	none	foal2	35
214	74	none	foal1	12
353	75	yellow	foal3	33
357	75	yellow	foal4	25
357	75	yellow	foal1	40
312	75	yellow	foal2	67
348	75	red	foal3	46
148	75	none	foal4	53
61	75	none	foal2	18
61	75	none	foal1	5
393	75	none	foal4	39
90	75	none	foal3	27
61	75	none	foal2	53
348	75	none	foal1	44
428	75	none	foal2	61
90	75	none	foal2	31
348	75	none	foal1	61
94	75	none	foal4	3
216	75	none	foal1	73
94	75	none	foal2	26
516	75	none	foal2	20
312	75	none	foal3	81
270	75	none	foal3	16
348	75	none	foal1	25
547	75	none	foal2	5
464	75	none	foal4	51
547	75	none	foal3	17
142	75	none	foal3	73
204	75	none	foal4	88
340	75	none	foal1	74
61	75	none	foal1	32
303	75	none	foal4	25
204	75	none	foal1	20
262	75	none	foal2	56
227	76	yellow	foal3	8
227	76	yellow	foal2	4
518	76	yellow	foal1	34
367	76	yellow	foal3	74
503	76	red	foal4	39
425	76	yellow	foal1	5
265	76	none	foal4	23
173	76	none	foal4	30
421	76	none	foal2	80
47	76	none	foal1	0
238	76	none	foal4	58
360	76	none	foal2	74
294	76	none	foal3	28
47	76	none	foal4	81
267	76	none	foal1	54
331	76	none	foal4	23
162	76	none	foal2	3
331	76	none	foal2	12
484	76	none	foal3	28
444	77	yellow	foal4	58
200	77	yellow	foal1	23
476	77	yellow	foal2	16
527	77	yellow	foal3	57
501	77	none	foal1	65
154	77	none	foal3	86
154	77	none	foal2	4
501	77	none	foal4	84
407	77	none	foal1	21
378	77	none	foal2	9
243	77	none	foal4	79
57	77	none	foal4	65
319	77	none	foal3	54
193	77	none	foal3	2
527	77	none	foal4	63
243	77	none	foal3	44
252	77	none	foal4	31
389	77	none	foal2	63
184	77	none	foal1	79
443	77	none	foal1	86
154	77	none	foal3	62
501	77	none	foal3	56
287	77	none	foal4	27
188	77	none	foal1	41
287	77	none	foal3	72
154	77	none	foal1	15
287	77	none	foal3	41
476	77	none	foal2	84
407	77	none	foal3	46
345	77	none	foal4	63
378	77	none	foal3	43
287	77	none	foal1	9
567	77	none	foal2	4
470	77	none	foal4	55
527	77	none	foal2	12
263	78	yellow	foal1	8
507	78	yellow	foal2	72
519	78	none	foal4	12
143	78	none	foal3	62
143	78	none	foal1	55
130	78	none	foal3	17
86	78	none	foal2	41
20	78	none	foal4	20
300	78	none	foal4	38
456	78	none	foal1	14
570	78	none	foal1	23
32	79	yellow	foal4	66
372	79	yellow	foal1	4
557	79	yellow	foal1	65
106	79	yellow	foal3	20
457	79	yellow	foal3	4
483	79	yellow	foal1	66
149	79	none	foal1	34
322	79	none	foal1	70
447	79	none	foal2	88
366	79	none	foal3	48
44	79	none	foal1	27
151	79	none	foal1	89
417	79	none	foal2	23
174	79	none	foal2	7
203	79	none	foal2	0
105	79	none	foal2	24
369	79	none	foal2	76
417	79	none	foal1	51
295	79	none	foal4	84
180	79	none	foal2	2
203	79	none	foal2	6
93	79	none	foal2	79
564	80	yellow	foal1	60
201	80	yellow	foal2	85
460	80	yellow	foal1	2
183	80	yellow	foal2	74
332	80	none	foal4	6
191	80	none	foal3	69
282	80	none	foal1	18
85	80	none	foal1	75
68	80	none	foal4	41
150	80	none	foal4	3
505	80	none	foal4	63
170	80	none	foal3	46
150	80	none	foal1	3
60	80	none	foal1	81
121	80	none	foal2	7
231	80	none	foal3	54
170	80	none	foal1	10
183	80	none	foal4	49
430	80	none	foal1	76
460	80	none	foal1	21
282	80	none	foal2	14
85	80	none	foal1	6
150	80	none	foal4	57
68	80	none	foal4	41
68	80	none	foal2	20
85	80	none	foal3	30
191	80	none	foal4	37
455	80	none	foal1	66
460	80	none	foal4	61
430	80	none	foal4	48
460	80	none	foal1	81
344	80	none	foal4	13
455	80	none	foal4	16
121	80	none	foal2	58
467	80	none	foal1	37
430	80	none	foal4	9
455	80	none	foal2	76
137	80	none	foal1	65
344	80	none	foal1	61
467	80	none	foal1	1
505	80	none	foal1	75
344	80	none	foal1	31
149	81	yellow	foal3	17
38	81	yellow	foal2	21
528	81	yellow	foal4	75
452	81	yellow	foal4	10
475	81	yellow	foal4	73
244	81	yellow	foal4	30
429	81	yellow	foal2	27
31	81	none	foal3	57
549	81	none	foal4	39
549	81	none	foal2	57
187	81	none	foal3	8
391	81	none	foal4	86
377	81	none	foal1	81
45	81	none	foal2	36
377	81	none	foal3	23
66	81	none	foal4	18
444	81	none	foal2	0
339	81	none	foal1	31
429	81	none	foal3	43
244	81	none	foal2	59
268	81	none	foal4	65
66	81	none	foal1	38
31	81	none	foal4	26
112	81	none	foal1	14
45	81	none	foal4	54
339	81	none	foal1	24
371	81	none	foal4	36
147	81	none	foal2	77
307	81	none	foal3	34
59	81	none	foal3	75
296	81	none	foal1	65
429	81	none	foal2	1
444	81	none	foal2	72
176	81	none	foal2	14
39	81	none	foal4	17
307	81	none	foal4	88
444	81	none	foal2	54
506	81	none	foal2	15
112	81	none	foal3	69
112	81	none	foal1	48
296	81	none	foal3	85
45	81	none	foal4	50
112	81	none	foal4	80
200	81	none	foal3	88
425	82	yellow	foal3	36
411	82	yellow	foal2	8
251	82	yellow	foal4	21
251	82	none	foal4	53
363	82	none	foal1	70
565	82	none	foal2	69
251	82	none	foal1	38
32	82	none	foal2	64
557	82	none	foal1	0
437	82	none	foal3	48
256	82	none	foal2	3
254	82	none	foal2	84
372	82	none	foal2	77
411	82	none	foal2	42
457	82	none	foal2	43
254	82	none	foal4	90
525	82	none	foal4	64
457	82	none	foal3	38
372	82	none	foal3	66
457	82	none	foal4	24
24	82	none	foal4	46
96	82	none	foal3	49
483	82	none	foal3	3
198	82	none	foal4	16
390	82	none	foal1	77
316	82	none	foal3	41
428	83	yellow	foal4	48
464	83	yellow	foal3	8
90	83	yellow	foal1	90
128	83	yellow	foal1	30
42	83	yellow	foal3	80
195	83	yellow	foal1	23
271	83	none	foal4	69
195	83	none	foal2	63
222	83	none	foal3	86
263	83	none	foal3	1
22	83	none	foal2	29
160	83	none	foal4	82
186	83	none	foal1	65
571	83	none	foal2	84
489	83	none	foal2	70
160	83	none	foal1	17
22	83	none	foal2	86
535	83	none	foal3	2
571	83	none	foal3	14
33	83	none	foal4	33
195	83	none	foal4	69
195	83	none	foal2	10
535	83	none	foal3	15
195	83	none	foal3	49
263	83	none	foal2	11
186	83	none	foal2	85
195	83	none	foal2	7
271	83	none	foal2	29
487	83	none	foal3	38
160	83	none	foal2	39
507	83	none	foal2	72
571	83	none	foal1	37
9	83	none	foal4	59
229	83	none	foal3	81
33	83	none	foal4	21
325	83	none	foal3	34
553	84	yellow	foal4	43
455	84	yellow	foal3	76
2	84	yellow	foal3	67
286	84	yellow	foal4	62
274	84	none	foal1	6
249	84	none	foal1	53
65	84	none	foal4	51
274	84	none	foal2	76
394	84	none	foal3	61
301	84	none	foal3	26
264	84	none	foal3	29
168	84	none	foal2	22
274	84	none	foal4	35
448	84	none	foal1	47
77	84	none	foal3	79
448	84	none	foal4	29
75	84	none	foal1	73
538	84	none	foal1	36
493	84	none	foal1	32
108	84	none	foal4	45
249	84	none	foal4	0
264	84	none	foal1	58
274	84	none	foal2	7
274	84	none	foal1	83
108	84	none	foal2	74
311	85	yellow	foal4	84
385	85	yellow	foal3	68
298	85	none	foal4	59
55	85	none	foal4	17
36	85	none	foal2	51
55	85	none	foal2	26
380	85	none	foal3	21
91	85	none	foal4	12
82	85	none	foal4	49
36	85	none	foal4	26
396	85	none	foal3	66
342	85	none	foal4	82
385	85	none	foal3	33
131	85	none	foal3	73
311	85	none	foal4	55
55	85	none	foal4	40
55	85	none	foal3	41
261	85	none	foal3	59
342	85	none	foal4	48
396	85	none	foal4	36
209	85	none	foal3	19
376	85	none	foal2	84
311	85	none	foal3	6
376	85	none	foal4	59
146	85	none	foal1	22
376	85	none	foal2	10
91	85	none	foal3	29
78	85	none	foal2	9
385	85	none	foal1	30
125	86	yellow	foal2	2
485	86	yellow	foal2	24
50	86	yellow	foal4	26
353	86	none	foal2	7
504	86	none	foal1	89
317	86	none	foal3	89
333	86	none	foal3	45
416	86	none	foal4	14
226	86	none	foal1	59
445	86	none	foal1	15
353	86	none	foal1	47
116	86	none	foal2	22
179	86	none	foal1	88
532	86	none	foal4	51
552	86	none	foal3	34
179	86	none	foal2	9
306	86	none	foal2	13
152	86	none	foal3	44
534	86	none	foal1	88
353	86	none	foal3	55
504	86	none	foal3	84
177	86	none	foal3	72
416	86	none	foal2	65
116	86	none	foal2	83
353	86	none	foal4	77
255	86	none	foal1	36
445	86	none	foal3	7
124	87	yellow	foal4	50
15	87	yellow	foal2	52
224	87	yellow	foal4	80
74	87	yellow	foal1	68
367	87	none	foal4	22
197	87	none	foal4	21
74	87	none	foal4	24
503	87	none	foal4	70
473	87	none	foal1	68
8	87	none	foal4	20
8	87	none	foal2	68
232	87	none	foal4	55
292	88	yellow	foal1	41
540	88	yellow	foal4	78
490	88	none	foal2	84
472	88	none	foal3	42
513	88	none	foal2	44
127	88	none	foal3	34
513	88	none	foal3	51
37	88	none	foal3	70
292	88	none	foal1	35
37	88	none	foal3	22
46	88	none	foal4	39
11	88	none	foal2	5
490	88	none	foal3	68
513	88	none	foal4	77
21	88	none	foal1	54
127	88	none	foal3	64
164	88	none	foal2	2
156	88	none	foal3	38
164	88	none	foal4	18
127	88	none	foal2	25
83	89	yellow	foal1	52
402	89	yellow	foal2	51
291	89	yellow	foal3	4
431	89	none	foal1	90
28	89	none	foal3	14
28	89	none	foal2	37
356	89	none	foal1	69
6	89	none	foal2	66
242	89	none	foal2	66
70	89	none	foal1	16
442	89	none	foal2	84
266	89	none	foal4	7
442	89	none	foal1	55
398	89	none	foal3	88
442	89	none	foal3	45
246	89	none	foal2	50
497	89	none	foal4	14
272	89	none	foal2	4
555	89	none	foal4	40
362	89	none	foal3	52
379	89	none	foal1	81
379	89	none	foal3	72
246	89	none	foal1	63
242	89	none	foal3	77
272	89	none	foal4	42
335	90	yellow	foal3	48
100	90	yellow	foal2	22
510	90	yellow	foal4	88
221	90	yellow	foal4	10
117	90	none	foal2	66
556	90	none	foal3	24
92	90	none	foal4	73
19	90	none	foal1	84
315	90	none	foal1	60
72	90	none	foal2	37
196	90	none	foal3	70
78	91	yellow	foal2	3
508	91	yellow	foal2	19
202	91	yellow	foal2	81
561	91	none	foal4	80
482	91	none	foal2	77
474	91	none	foal3	66
343	91	none	foal3	67
463	91	none	foal2	35
561	91	none	foal3	78
343	91	none	foal3	0
163	91	none	foal2	50
388	91	none	foal1	46
163	91	none	foal4	27
561	91	none	foal3	30
563	91	none	foal2	60
224	91	none	foal4	52
163	91	none	foal4	60
343	91	none	foal2	39
163	91	none	foal1	33
43	92	yellow	foal1	38
229	92	yellow	foal3	76
325	92	yellow	foal1	73
222	92	red	foal4	84
360	92	yellow	foal1	69
111	92	none	foal3	78
310	92	none	foal4	8
162	92	none	foal4	21
304	92	none	foal2	4
304	92	none	foal3	71
544	92	none	foal2	86
162	92	none	foal1	1
425	92	none	foal3	56
267	92	none	foal2	41
346	92	none	foal4	71
421	92	none	foal2	21
544	92	none	foal4	19
387	92	none	foal1	56
544	92	none	foal4	87
47	92	none	foal2	31
267	92	none	foal3	23
265	92	none	foal3	57
238	92	none	foal1	14
331	92	none	foal4	59
432	92	none	foal3	48
387	92	none	foal3	53
47	92	none	foal4	90
393	93	none	foal1	4
502	93	none	foal3	13
547	93	none	foal3	45
464	93	none	foal2	63
393	93	none	foal3	35
428	93	none	foal3	36
516	93	none	foal4	13
547	93	none	foal2	27
216	93	none	foal2	11
148	93	none	foal2	72
213	93	none	foal1	61
303	93	none	foal2	16
213	93	none	foal3	78
393	93	none	foal4	34
428	93	none	foal1	54
270	93	none	foal2	50
312	93	none	foal4	6
303	93	none	foal2	21
428	93	none	foal3	0
378	94	yellow	foal1	28
567	94	none	foal2	64
527	94	none	foal4	56
407	94	none	foal4	71
69	94	none	foal4	43
470	94	none	foal3	36
501	94	none	foal3	29
319	94	none	foal2	68
243	94	none	foal3	81
69	94	none	foal1	21
252	94	none	foal1	71
241	94	none	foal3	72
470	94	none	foal3	71
527	94	none	foal1	10
378	94	none	foal2	12
233	94	none	foal3	31
120	94	none	foal3	45
95	94	none	foal4	57
378	94	none	foal3	3
69	94	none	foal4	55
345	94	none	foal4	81
144	95	yellow	foal2	50
119	95	yellow	foal1	68
14	95	yellow	foal3	19
334	95	none	foal1	16
522	95	none	foal3	8
257	95	none	foal4	73
529	95	none	foal2	37
314	95	none	foal2	14
122	95	none	foal4	14
277	95	none	foal2	86
395	95	none	foal2	10
5	95	none	foal4	72
277	95	none	foal4	86
110	95	none	foal3	7
283	95	none	foal4	82
285	95	none	foal1	40
462	95	none	foal4	21
136	95	none	foal4	7
178	95	none	foal3	71
420	96	yellow	foal3	11
62	96	yellow	foal3	35
240	96	red	foal3	40
30	96	none	foal1	75
211	96	none	foal2	63
18	96	none	foal3	38
155	96	none	foal3	5
235	96	none	foal1	11
80	96	none	foal1	87
471	96	none	foal3	63
182	96	none	foal3	19
404	96	none	foal1	17
52	96	none	foal4	46
211	96	none	foal1	42
52	96	none	foal2	85
182	96	none	foal4	35
50	96	none	foal2	72
50	96	none	foal1	61
80	96	none	foal1	8
189	96	none	foal2	58
422	96	none	foal1	62
448	97	yellow	foal2	73
274	97	yellow	foal3	72
54	97	yellow	foal1	70
394	97	yellow	foal2	84
169	97	yellow	foal3	29
93	97	yellow	foal3	21
384	97	none	foal2	44
384	97	none	foal4	40
210	97	none	foal4	65
322	97	none	foal4	42
366	97	none	foal1	57
435	97	none	foal2	34
38	97	none	foal3	13
169	97	none	foal3	14
138	97	none	foal1	0
93	97	none	foal1	34
138	97	none	foal1	78
435	97	none	foal4	67
369	97	none	foal2	42
558	97	none	foal4	52
562	97	none	foal2	55
138	97	none	foal1	2
369	97	none	foal1	29
105	97	none	foal4	24
180	97	none	foal3	62
104	97	none	foal4	55
366	97	none	foal3	44
44	97	none	foal2	28
44	97	none	foal1	0
477	97	none	foal2	11
558	97	none	foal2	6
38	97	none	foal3	53
105	97	none	foal1	47
38	97	none	foal4	20
210	97	none	foal2	44
58	97	none	foal2	2
266	98	yellow	foal4	52
419	98	yellow	foal2	53
499	98	yellow	foal1	39
100	98	none	foal3	61
514	98	none	foal2	56
570	98	none	foal2	31
419	98	none	foal2	23
401	98	none	foal2	52
410	98	none	foal4	39
4	98	none	foal3	56
419	98	none	foal3	77
300	98	none	foal4	53
499	98	none	foal4	44
225	98	none	foal3	64
506	99	yellow	foal1	43
498	99	yellow	foal1	53
230	99	yellow	foal3	23
326	99	none	foal2	3
382	99	none	foal3	89
16	99	none	foal1	71
341	99	none	foal1	22
83	99	none	foal4	3
361	99	none	foal1	76
496	99	none	foal4	27
166	99	none	foal2	33
326	99	none	foal1	67
288	99	none	foal4	70
214	99	none	foal4	1
247	99	none	foal2	84
414	99	none	foal1	8
214	99	none	foal2	14
351	99	none	foal4	11
351	99	none	foal3	6
326	99	none	foal1	47
466	99	none	foal3	71
83	99	none	foal3	13
228	100	yellow	foal1	7
217	100	yellow	foal4	53
433	100	yellow	foal4	79
81	100	yellow	foal2	57
85	100	none	foal4	28
201	100	none	foal1	10
454	100	none	foal1	3
121	100	none	foal3	5
191	100	none	foal4	88
201	100	none	foal3	60
505	100	none	foal4	33
137	100	none	foal4	32
455	100	none	foal4	14
454	100	none	foal2	50
231	100	none	foal4	48
454	100	none	foal1	64
231	100	none	foal4	61
68	100	none	foal1	71
454	100	none	foal2	72
183	100	none	foal4	4
505	100	none	foal3	5
467	100	none	foal1	61
433	100	none	foal4	17
183	100	none	foal2	35
191	100	none	foal4	70
455	100	none	foal1	15
344	100	none	foal4	49
183	100	none	foal3	3
432	101	yellow	foal2	84
521	101	yellow	foal3	59
432	101	yellow	foal1	82
97	101	yellow	foal1	22
391	101	yellow	foal3	41
528	101	yellow	foal4	18
359	101	yellow	foal4	75
452	101	none	foal1	18
59	101	none	foal3	30
528	101	none	foal1	31
45	101	none	foal1	57
112	101	none	foal2	0
549	101	none	foal4	37
391	101	none	foal1	9
51	101	none	foal2	68
444	101	none	foal3	32
391	101	none	foal4	26
444	101	none	foal2	0
51	101	none	foal3	18
502	102	yellow	foal2	50
90	102	yellow	foal3	81
133	102	yellow	foal2	80
365	102	yellow	foal3	63
117	102	none	foal2	23
19	102	none	foal2	81
245	102	none	foal1	63
141	102	none	foal2	40
546	102	none	foal4	39
117	102	none	foal3	68
458	102	none	foal1	52
465	102	none	foal3	82
19	102	none	foal2	55
365	102	none	foal4	41
556	102	none	foal2	45
420	102	none	foal2	63
245	102	none	foal3	65
140	102	none	foal1	85
510	102	none	foal3	47
420	102	none	foal4	55
196	102	none	foal3	62
515	103	yellow	foal2	48
385	103	none	foal2	72
261	103	none	foal4	88
551	103	none	foal2	58
261	103	none	foal4	65
209	103	none	foal3	44
508	103	none	foal3	5
441	103	none	foal3	71
396	103	none	foal3	7
342	103	none	foal1	41
91	103	none	foal3	88
146	103	none	foal2	20
342	103	none	foal1	89
194	103	none	foal3	70
91	103	none	foal2	69
342	103	none	foal4	28
342	103	none	foal3	40
396	103	none	foal3	38
82	103	none	foal4	56
202	103	none	foal2	89
78	103	none	foal2	38
129	103	none	foal3	82
376	103	none	foal4	32
194	103	none	foal2	89
209	103	none	foal2	16
131	103	none	foal2	34
194	103	none	foal1	63
36	103	none	foal2	57
84	103	none	foal1	62
91	103	none	foal2	3
258	103	none	foal2	82
389	104	yellow	foal2	64
541	104	yellow	foal2	48
41	104	yellow	foal1	49
126	104	yellow	foal3	38
208	104	yellow	foal4	15
79	104	yellow	foal2	11
227	104	none	foal4	47
503	104	none	foal2	80
232	104	none	foal2	37
197	104	none	foal2	12
10	104	none	foal3	82
12	104	none	foal3	18
17	104	none	foal3	4
17	104	none	foal2	83
541	104	none	foal4	7
10	104	none	foal3	79
473	104	none	foal2	58
10	104	none	foal2	51
126	104	none	foal4	49
503	104	none	foal2	79
560	104	none	foal2	30
8	104	none	foal1	37
352	105	yellow	foal1	23
469	105	yellow	foal2	65
520	105	yellow	foal1	74
493	105	yellow	foal4	20
168	105	yellow	foal2	62
493	105	none	foal3	63
324	105	none	foal4	35
2	105	none	foal2	23
65	105	none	foal3	76
301	105	none	foal3	39
65	105	none	foal4	88
280	105	none	foal3	75
324	105	none	foal4	63
249	105	none	foal1	16
108	105	none	foal1	54
493	105	none	foal3	85
450	105	none	foal3	67
448	105	none	foal4	84
274	105	none	foal2	64
2	105	none	foal2	2
520	105	none	foal3	74
520	105	none	foal1	11
448	105	none	foal3	3
383	105	none	foal4	53
286	105	none	foal3	76
168	105	none	foal1	42
450	105	none	foal3	22
168	105	none	foal4	40
264	105	none	foal3	85
113	105	none	foal2	29
450	105	none	foal1	79
448	105	none	foal2	1
448	105	none	foal1	48
54	105	none	foal1	17
130	106	yellow	foal2	64
564	106	yellow	foal1	89
156	106	none	foal4	76
127	106	none	foal1	21
472	106	none	foal3	76
207	106	none	foal2	71
564	106	none	foal1	78
185	106	none	foal2	71
412	106	none	foal4	61
292	106	none	foal3	6
397	107	yellow	foal4	52
327	107	yellow	foal1	24
317	107	yellow	foal1	74
504	107	none	foal1	23
226	107	none	foal1	65
228	107	none	foal3	30
353	107	none	foal2	58
353	107	none	foal1	49
353	107	none	foal3	28
190	107	none	foal4	51
139	107	none	foal1	83
504	107	none	foal2	22
353	107	none	foal2	83
116	107	none	foal1	87
157	107	none	foal2	15
353	107	none	foal2	12
206	107	none	foal4	44
217	107	none	foal3	1
317	107	none	foal1	77
534	107	none	foal2	25
255	107	none	foal1	74
190	107	none	foal3	20
206	107	none	foal2	43
139	107	none	foal1	88
206	107	none	foal2	87
190	107	none	foal1	27
550	107	none	foal1	12
190	107	none	foal1	61
150	108	yellow	foal2	22
523	108	yellow	foal4	74
256	108	none	foal4	16
251	108	none	foal2	30
509	108	none	foal2	45
523	108	none	foal1	27
509	108	none	foal2	90
557	108	none	foal2	24
423	108	none	foal2	45
316	108	none	foal1	56
565	108	none	foal2	69
305	108	none	foal3	69
239	108	none	foal3	46
372	108	none	foal4	5
437	108	none	foal3	62
198	108	none	foal2	22
24	108	none	foal3	66
198	108	none	foal3	44
251	108	none	foal4	79
400	108	none	foal3	4
423	108	none	foal1	39
115	109	yellow	foal2	46
291	109	none	foal1	24
398	109	none	foal3	2
266	109	none	foal2	5
115	109	none	foal1	72
358	109	none	foal4	12
555	109	none	foal2	87
488	110	yellow	foal2	42
535	110	yellow	foal3	30
325	110	yellow	foal2	79
517	110	none	foal2	59
98	110	none	foal3	44
195	110	none	foal3	34
533	110	none	foal2	79
160	110	none	foal4	24
128	110	none	foal1	38
489	110	none	foal2	28
336	110	none	foal2	25
195	110	none	foal1	29
325	110	none	foal3	24
229	110	none	foal2	1
517	110	none	foal4	79
160	110	none	foal4	52
464	111	yellow	foal3	49
204	111	yellow	foal1	0
258	111	yellow	foal3	56
441	111	red	foal2	34
380	111	none	foal4	64
146	111	none	foal2	43
347	111	none	foal3	88
78	111	none	foal2	56
380	111	none	foal2	19
376	111	none	foal1	25
202	111	none	foal3	75
78	111	none	foal2	58
131	111	none	foal3	82
385	111	none	foal1	72
311	111	none	foal3	31
311	111	none	foal2	71
396	111	none	foal2	42
569	111	none	foal3	80
153	111	none	foal2	45
84	111	none	foal4	61
551	111	none	foal2	34
209	111	none	foal4	85
131	111	none	foal4	26
508	111	none	foal3	27
551	111	none	foal4	50
551	111	none	foal3	58
311	111	none	foal4	19
261	111	none	foal4	58
342	111	none	foal3	64
202	111	none	foal2	16
347	111	none	foal1	19
515	111	none	foal1	8
385	111	none	foal1	41
258	111	none	foal1	62
314	112	yellow	foal1	56
30	112	yellow	foal3	46
155	112	none	foal2	19
211	112	none	foal4	56
404	112	none	foal3	51
375	112	none	foal1	57
101	112	none	foal4	28
439	112	none	foal1	0
125	112	none	foal3	64
485	112	none	foal4	28
375	112	none	foal2	34
364	112	none	foal2	36
80	112	none	foal4	15
52	112	none	foal3	30
375	112	none	foal3	26
52	112	none	foal1	87
211	112	none	foal3	15
365	113	yellow	foal4	34
218	113	yellow	foal4	17
75	113	none	foal3	50
469	113	none	foal2	49
249	113	none	foal4	57
520	113	none	foal1	69
113	113	none	foal3	84
450	113	none	foal1	28
54	113	none	foal2	42
264	113	none	foal1	82
264	113	none	foal4	29
538	113	none	foal2	3
2	113	none	foal1	20
113	113	none	foal1	22
383	113	none	foal4	43
469	113	none	foal3	79
2	113	none	foal4	83
538	113	none	foal2	46
493	113	none	foal4	28
493	113	none	foal4	70
450	113	none	foal4	31
77	113	none	foal1	0
184	114	yellow	foal4	35
287	114	yellow	foal1	26
304	114	yellow	foal2	30
13	114	none	foal3	66
267	114	none	foal3	27
310	114	none	foal1	39
492	114	none	foal4	72
47	114	none	foal1	12
107	114	none	foal3	77
162	114	none	foal2	53
331	114	none	foal2	37
267	114	none	foal3	46
304	114	none	foal1	12
521	114	none	foal2	31
374	114	none	foal4	82
523	115	yellow	foal4	53
256	115	yellow	foal4	11
525	115	yellow	foal2	11
560	115	yellow	foal3	7
8	115	yellow	foal1	60
367	115	none	foal2	67
473	115	none	foal1	71
208	115	none	foal4	7
12	115	none	foal4	89
17	115	none	foal2	18
536	115	none	foal2	51
297	115	none	foal1	89
8	115	none	foal4	74
518	115	none	foal4	38
503	115	none	foal3	34
8	115	none	foal3	2
424	115	none	foal4	46
424	115	none	foal4	85
74	115	none	foal2	40
74	115	none	foal2	43
79	115	none	foal1	32
541	115	none	foal2	67
126	115	none	foal4	58
473	115	none	foal4	55
541	115	none	foal1	81
118	115	none	foal4	56
518	115	none	foal1	55
165	115	none	foal4	8
10	115	none	foal1	38
74	115	none	foal4	60
518	115	none	foal3	66
518	115	none	foal2	80
208	115	none	foal3	82
8	115	none	foal4	15
424	115	none	foal1	79
8	115	none	foal1	30
560	115	none	foal4	75
74	115	none	foal2	29
10	115	none	foal3	33
526	116	yellow	foal1	71
34	116	yellow	foal1	73
205	116	none	foal2	29
206	116	none	foal2	48
255	116	none	foal1	25
206	116	none	foal2	63
219	116	none	foal2	68
255	116	none	foal3	29
534	116	none	foal4	32
205	116	none	foal1	35
415	116	none	foal4	74
405	116	none	foal2	0
327	116	none	foal4	59
228	116	none	foal3	35
177	116	none	foal4	71
353	116	none	foal1	9
116	116	none	foal4	3
504	116	none	foal2	86
357	116	none	foal4	57
206	116	none	foal4	67
445	116	none	foal2	57
190	116	none	foal4	42
179	116	none	foal1	37
415	116	none	foal2	56
306	116	none	foal4	7
333	116	none	foal1	55
550	116	none	foal2	8
152	116	none	foal1	22
552	116	none	foal1	63
34	116	none	foal1	84
445	116	none	foal4	39
550	116	none	foal2	42
415	116	none	foal1	79
206	116	none	foal3	64
540	117	yellow	foal4	63
271	117	yellow	foal1	81
427	117	none	foal3	89
535	117	none	foal4	29
355	117	none	foal1	27
427	117	none	foal3	90
160	117	none	foal1	1
128	117	none	foal4	14
98	117	none	foal2	12
128	117	none	foal3	40
489	117	none	foal3	78
98	117	none	foal4	77
195	117	none	foal1	54
222	117	none	foal2	16
531	117	none	foal1	7
427	117	none	foal2	77
22	117	none	foal3	64
271	117	none	foal1	1
355	117	none	foal1	78
229	117	none	foal3	48
531	117	none	foal4	4
222	117	none	foal2	89
517	117	none	foal4	61
128	117	none	foal1	45
263	117	none	foal1	90
22	117	none	foal3	40
9	117	none	foal1	5
336	117	none	foal1	72
489	117	none	foal4	22
487	117	none	foal3	40
38	118	yellow	foal2	43
480	118	yellow	foal4	47
295	118	yellow	foal4	13
447	118	yellow	foal3	28
330	118	yellow	foal4	60
230	118	yellow	foal2	28
341	118	yellow	foal4	70
326	118	none	foal3	86
230	118	none	foal4	6
330	118	none	foal2	42
530	118	none	foal1	30
402	118	none	foal3	67
451	118	none	foal1	60
214	118	none	foal2	81
566	118	none	foal1	84
230	118	none	foal4	32
361	118	none	foal4	55
542	118	none	foal4	0
542	118	none	foal1	40
341	118	none	foal4	61
382	118	none	foal4	73
414	118	none	foal3	37
326	118	none	foal1	32
330	118	none	foal3	70
466	118	none	foal3	70
166	118	none	foal1	81
542	118	none	foal1	51
566	118	none	foal4	11
288	118	none	foal2	59
537	118	none	foal2	65
16	118	none	foal3	53
103	118	none	foal4	83
214	118	none	foal2	29
16	118	none	foal1	27
341	118	none	foal2	45
466	118	none	foal3	77
351	118	none	foal4	69
354	119	yellow	foal3	30
410	119	yellow	foal3	28
563	119	yellow	foal4	13
463	119	yellow	foal3	17
481	119	none	foal3	53
124	119	none	foal1	4
482	119	none	foal3	73
486	119	none	foal1	59
289	119	none	foal4	66
463	119	none	foal4	81
269	119	none	foal4	74
281	119	none	foal1	64
183	120	yellow	foal2	29
506	120	yellow	foal3	82
66	120	none	foal4	54
429	120	none	foal1	75
498	120	none	foal3	19
528	120	none	foal3	64
31	120	none	foal2	17
452	120	none	foal3	19
339	120	none	foal3	0
429	120	none	foal2	19
112	120	none	foal1	54
377	120	none	foal2	40
371	120	none	foal1	71
498	120	none	foal2	58
39	120	none	foal1	28
429	120	none	foal1	38
45	120	none	foal2	76
371	120	none	foal2	0
381	120	none	foal3	85
475	120	none	foal3	74
244	120	none	foal3	68
31	120	none	foal2	9
45	120	none	foal2	13
342	121	yellow	foal4	80
380	121	yellow	foal2	74
146	121	yellow	foal2	30
420	121	yellow	foal1	88
436	121	yellow	foal4	59
420	121	red	foal3	18
117	121	none	foal2	35
546	121	none	foal4	39
546	121	none	foal2	73
436	121	none	foal3	81
302	121	none	foal4	11
140	121	none	foal3	14
318	121	none	foal3	34
302	121	none	foal4	67
302	121	none	foal1	68
215	121	none	foal2	76
365	121	none	foal3	35
436	121	none	foal4	3
92	121	none	foal1	47
315	121	none	foal1	37
302	121	none	foal2	54
19	121	none	foal3	40
196	121	none	foal2	25
365	121	none	foal1	63
556	121	none	foal1	23
516	122	yellow	foal3	79
464	122	yellow	foal1	83
213	122	yellow	foal3	56
94	122	none	foal1	45
94	122	none	foal3	65
393	122	none	foal4	79
94	122	none	foal3	77
393	122	none	foal2	57
321	122	none	foal3	0
88	122	none	foal1	86
426	122	none	foal2	51
216	122	none	foal2	23
464	122	none	foal1	55
426	122	none	foal4	72
464	122	none	foal1	47
262	122	none	foal1	19
464	122	none	foal4	76
393	122	none	foal3	90
340	122	none	foal2	3
312	122	none	foal4	10
464	122	none	foal1	13
321	122	none	foal4	26
338	122	none	foal1	90
216	122	none	foal2	30
276	122	none	foal4	14
98	123	yellow	foal3	55
98	123	yellow	foal1	76
254	123	yellow	foal3	50
24	123	yellow	foal1	76
239	123	yellow	foal2	50
102	123	none	foal1	10
557	123	none	foal1	54
305	123	none	foal3	71
543	123	none	foal3	86
239	123	none	foal4	79
509	123	none	foal3	47
239	123	none	foal2	89
32	123	none	foal3	60
390	123	none	foal2	15
509	123	none	foal2	73
256	123	none	foal2	70
423	123	none	foal3	20
423	123	none	foal2	84
106	123	none	foal3	35
239	123	none	foal2	62
24	123	none	foal3	39
372	123	none	foal3	76
256	123	none	foal2	8
423	123	none	foal3	52
32	123	none	foal3	53
423	123	none	foal3	60
557	123	none	foal4	35
509	123	none	foal3	29
543	123	none	foal4	79
66	124	yellow	foal4	77
494	124	yellow	foal4	39
442	124	yellow	foal3	59
70	124	none	foal1	70
49	124	none	foal1	71
242	124	none	foal1	24
123	124	none	foal4	23
308	124	none	foal3	71
494	124	none	foal3	63
123	124	none	foal4	36
28	124	none	foal1	25
406	124	none	foal4	55
250	124	none	foal1	8
123	124	none	foal3	5
398	124	none	foal4	54
442	124	none	foal3	37
266	124	none	foal4	47
440	124	none	foal1	80
356	124	none	foal4	17
266	124	none	foal4	83
494	124	none	foal2	90
242	124	none	foal2	76
6	124	none	foal4	49
545	124	none	foal1	31
497	124	none	foal3	21
25	125	yellow	foal2	65
412	125	red	foal4	35
412	125	none	foal2	14
185	125	none	foal2	55
513	125	none	foal4	16
127	125	none	foal2	40
513	125	none	foal2	83
349	125	none	foal4	83
21	125	none	foal1	31
540	125	none	foal1	29
412	125	none	foal1	21
349	125	none	foal1	57
513	125	none	foal3	23
273	125	none	foal4	5
248	125	none	foal2	10
412	125	none	foal4	40
25	125	none	foal1	10
412	125	none	foal4	53
248	125	none	foal1	78
459	125	none	foal4	35
248	125	none	foal2	57
11	125	none	foal3	25
412	125	none	foal4	8
349	125	none	foal3	32
248	125	none	foal3	79
207	125	none	foal2	66
418	125	none	foal4	51
156	125	none	foal1	27
472	125	none	foal3	47
472	125	none	foal1	72
185	125	none	foal2	59
185	125	none	foal1	70
553	126	none	foal4	31
433	126	none	foal2	51
137	126	none	foal4	13
201	126	none	foal4	88
323	126	none	foal1	64
150	126	none	foal1	24
150	126	none	foal3	70
231	126	none	foal3	33
183	126	none	foal1	40
85	126	none	foal1	16
455	126	none	foal1	32
170	126	none	foal4	90
121	126	none	foal1	64
231	126	none	foal2	75
85	126	none	foal1	17
231	126	none	foal3	87
150	126	none	foal3	45
433	126	none	foal4	13
121	126	none	foal2	56
191	126	none	foal3	54
81	126	none	foal2	86
201	126	none	foal4	44
430	126	none	foal2	76
137	126	none	foal4	41
455	126	none	foal1	85
460	126	none	foal3	77
81	126	none	foal2	28
460	126	none	foal1	38
201	126	none	foal3	2
505	126	none	foal2	73
191	126	none	foal4	54
68	126	none	foal4	40
149	127	yellow	foal2	15
369	127	yellow	foal3	58
548	127	yellow	foal2	69
44	127	none	foal3	90
169	127	none	foal2	47
384	127	none	foal1	85
562	127	none	foal4	54
58	127	none	foal1	25
151	127	none	foal3	50
477	127	none	foal3	53
138	127	none	foal2	45
44	127	none	foal2	59
322	127	none	foal2	56
149	127	none	foal2	85
58	127	none	foal3	27
480	127	none	foal2	60
369	127	none	foal1	67
210	127	none	foal3	18
322	127	none	foal2	88
149	127	none	foal3	8
562	127	none	foal2	88
384	127	none	foal1	82
417	127	none	foal2	13
44	127	none	foal2	16
203	127	none	foal4	20
447	127	none	foal1	76
58	127	none	foal2	84
149	127	none	foal2	51
562	127	none	foal1	74
151	127	none	foal3	45
93	127	none	foal2	38
384	127	none	foal3	81
435	127	none	foal1	32
44	127	none	foal2	23
447	127	none	foal4	21
44	127	none	foal4	64
67	128	yellow	foal4	83
145	128	yellow	foal1	80
449	128	yellow	foal1	8
468	128	none	foal2	24
392	128	none	foal4	73
410	128	none	foal3	9
225	128	none	foal2	41
456	128	none	foal4	88
4	128	none	foal4	79
519	128	none	foal4	18
20	128	none	foal4	84
143	128	none	foal2	70
29	128	none	foal4	53
511	128	none	foal3	79
410	128	none	foal2	70
212	128	none	foal3	59
410	128	none	foal3	15
456	128	none	foal1	71
223	128	none	foal4	6
161	128	none	foal4	89
161	128	none	foal2	68
354	128	none	foal2	52
269	129	yellow	foal4	88
277	129	yellow	foal2	19
334	129	yellow	foal1	14
7	129	none	foal2	6
461	129	none	foal3	22
119	129	none	foal1	89
234	129	none	foal2	66
234	129	none	foal1	50
3	129	none	foal2	45
334	129	none	foal4	50
386	129	none	foal3	64
334	129	none	foal3	20
277	129	none	foal4	35
462	129	none	foal3	75
110	129	none	foal2	81
122	129	none	foal3	84
234	129	none	foal2	61
522	129	none	foal1	85
178	129	none	foal1	46
178	129	none	foal1	24
283	129	none	foal3	81
461	129	none	foal3	32
122	129	none	foal4	77
539	129	none	foal4	48
522	129	none	foal2	66
461	129	none	foal3	31
5	129	none	foal4	42
188	130	yellow	foal3	41
567	130	none	foal2	81
299	130	none	foal3	53
345	130	none	foal1	61
476	130	none	foal2	68
243	130	none	foal4	29
233	130	none	foal3	16
378	130	none	foal2	15
345	130	none	foal4	24
476	130	none	foal3	66
470	130	none	foal4	66
95	130	none	foal3	86
193	130	none	foal4	12
345	130	none	foal2	59
120	130	none	foal4	58
276	131	yellow	foal2	60
561	131	yellow	foal1	68
163	131	yellow	foal4	25
124	131	none	foal2	40
561	131	none	foal1	0
15	131	none	foal1	53
163	131	none	foal4	69
89	131	none	foal4	35
163	131	none	foal1	81
479	131	none	foal4	75
281	131	none	foal1	30
329	131	none	foal2	61
474	131	none	foal1	45
561	131	none	foal2	56
479	131	none	foal3	41
15	131	none	foal3	14
481	131	none	foal4	70
413	131	none	foal2	4
224	131	none	foal4	22
413	131	none	foal4	36
289	131	none	foal1	6
15	131	none	foal1	37
481	131	none	foal3	10
481	131	none	foal3	55
289	131	none	foal2	72
163	131	none	foal2	7
479	131	none	foal4	65
478	131	none	foal3	55
561	131	none	foal2	59
337	131	none	foal2	1
406	132	yellow	foal4	44
168	132	yellow	foal2	5
35	132	none	foal4	2
324	132	none	foal2	58
383	132	none	foal2	14
448	132	none	foal1	57
520	132	none	foal1	88
469	132	none	foal3	25
493	132	none	foal3	18
301	132	none	foal3	52
64	132	none	foal3	41
2	132	none	foal2	80
450	132	none	foal3	16
2	132	none	foal2	88
383	132	none	foal1	47
301	132	none	foal2	50
264	132	none	foal1	30
274	132	none	foal1	1
237	132	none	foal1	2
280	132	none	foal3	8
35	132	none	foal1	77
75	132	none	foal4	3
520	132	none	foal2	8
113	132	none	foal4	60
280	132	none	foal2	39
301	132	none	foal1	23
450	132	none	foal3	70
77	132	none	foal4	55
54	132	none	foal1	67
301	132	none	foal2	68
113	132	none	foal3	44
450	132	none	foal1	20
524	132	none	foal4	51
264	132	none	foal1	89
77	132	none	foal3	61
76	133	red	foal3	88
311	133	yellow	foal4	5
396	133	yellow	foal4	78
202	133	none	foal2	31
515	133	none	foal4	3
298	133	none	foal4	63
131	133	none	foal4	25
508	133	none	foal1	89
258	133	none	foal2	23
515	133	none	foal2	36
441	133	none	foal2	37
78	133	none	foal4	13
551	133	none	foal3	83
551	133	none	foal2	39
508	133	none	foal1	11
131	133	none	foal3	41
569	133	none	foal2	35
78	133	none	foal3	6
153	133	none	foal1	83
515	133	none	foal1	4
258	133	none	foal1	22
194	133	none	foal4	20
380	133	none	foal2	42
146	133	none	foal3	14
396	133	none	foal1	19
385	133	none	foal4	54
78	133	none	foal3	82
36	133	none	foal2	19
311	133	none	foal3	83
146	133	none	foal4	30
36	133	none	foal3	2
261	133	none	foal2	61
436	134	yellow	foal4	37
556	134	yellow	foal3	57
536	134	yellow	foal3	55
144	134	red	foal4	65
10	134	none	foal4	29
8	134	none	foal1	55
503	134	none	foal2	73
197	134	none	foal1	74
473	134	none	foal3	64
560	134	none	foal3	2
232	134	none	foal4	12
503	134	none	foal3	49
473	134	none	foal4	52
541	134	none	foal3	0
310	135	none	foal4	14
432	135	none	foal3	41
132	135	none	foal4	60
97	135	none	foal1	9
512	135	none	foal3	59
521	135	none	foal2	44
484	135	none	foal2	17
63	135	none	foal3	66
331	135	none	foal3	90
368	135	none	foal3	1
387	135	none	foal4	77
492	135	none	foal1	85
544	135	none	foal3	59
97	135	none	foal4	54
265	135	none	foal4	87
265	135	none	foal1	53
425	135	none	foal3	44
97	135	none	foal4	73
267	135	none	foal3	75
387	135	none	foal4	19
484	135	none	foal3	58
162	135	none	foal3	18
162	135	none	foal1	46
97	135	none	foal4	14
512	135	none	foal4	46
374	135	none	foal2	5
331	135	none	foal4	23
184	136	yellow	foal2	85
443	136	yellow	foal4	74
233	136	yellow	foal4	41
101	136	yellow	foal3	4
352	136	yellow	foal4	79
50	136	yellow	foal3	26
404	136	none	foal4	14
18	136	none	foal3	90
471	136	none	foal2	56
101	136	none	foal1	24
80	136	none	foal3	9
30	136	none	foal3	70
422	136	none	foal3	81
1	136	none	foal4	66
375	136	none	foal4	78
275	136	none	foal2	62
373	136	none	foal2	74
1	136	none	foal1	42
189	136	none	foal4	74
240	136	none	foal3	49
375	136	none	foal1	58
30	136	none	foal2	58
471	136	none	foal2	55
211	136	none	foal3	44
275	136	none	foal4	36
155	136	none	foal2	39
1	136	none	foal3	65
422	136	none	foal1	40
135	137	yellow	foal1	85
525	137	yellow	foal4	39
543	137	yellow	foal2	5
483	137	yellow	foal1	2
506	137	yellow	foal1	74
39	137	yellow	foal3	68
371	137	yellow	foal4	18
377	137	yellow	foal1	52
112	137	none	foal4	23
176	137	none	foal2	81
339	137	none	foal3	23
452	137	none	foal4	13
475	137	none	foal3	44
51	137	none	foal1	39
371	137	none	foal3	44
444	137	none	foal1	69
339	137	none	foal2	0
429	137	none	foal3	82
39	137	none	foal3	48
45	137	none	foal4	5
268	137	none	foal1	57
452	137	none	foal2	31
307	137	none	foal3	4
51	137	none	foal1	13
359	137	none	foal4	32
66	137	none	foal1	72
475	137	none	foal3	88
444	137	none	foal2	39
244	137	none	foal2	38
56	137	none	foal2	17
45	137	none	foal4	14
200	137	none	foal4	16
475	137	none	foal2	57
56	137	none	foal2	77
59	137	none	foal2	4
475	137	none	foal2	66
268	137	none	foal4	71
444	137	none	foal3	8
112	137	none	foal3	87
548	138	yellow	foal1	25
138	138	yellow	foal2	85
271	138	yellow	foal3	41
517	138	none	foal1	62
229	138	none	foal3	23
220	138	none	foal4	85
222	138	none	foal4	31
427	138	none	foal3	15
33	138	none	foal3	75
325	138	none	foal2	72
325	138	none	foal3	20
355	138	none	foal2	39
370	138	none	foal2	11
571	138	none	foal1	87
571	138	none	foal3	83
186	138	none	foal4	49
350	138	none	foal2	54
531	138	none	foal3	14
535	138	none	foal2	26
571	138	none	foal2	25
514	139	yellow	foal1	13
456	139	yellow	foal1	32
300	139	yellow	foal2	83
73	139	yellow	foal2	30
532	139	yellow	foal2	75
157	139	yellow	foal4	43
504	139	yellow	foal2	13
504	139	red	foal2	50
552	139	none	foal1	48
415	139	none	foal1	29
73	139	none	foal4	15
157	139	none	foal1	89
226	139	none	foal1	52
157	139	none	foal1	46
116	139	none	foal2	20
219	139	none	foal2	24
415	139	none	foal2	41
317	139	none	foal1	54
116	139	none	foal1	8
179	139	none	foal2	33
434	139	none	foal2	29
177	139	none	foal3	17
353	139	none	foal4	53
127	140	yellow	foal2	16
11	140	yellow	foal3	35
472	140	yellow	foal2	8
330	140	yellow	foal2	72
530	140	yellow	foal1	8
214	140	none	foal3	64
542	140	none	foal4	39
103	140	none	foal2	28
382	140	none	foal4	48
414	140	none	foal1	32
247	140	none	foal4	30
293	140	none	foal3	61
83	140	none	foal3	69
293	140	none	foal2	84
351	140	none	foal3	15
382	140	none	foal1	81
247	140	none	foal4	37
466	140	none	foal3	16
166	140	none	foal1	19
326	140	none	foal3	82
537	140	none	foal4	24
288	140	none	foal4	75
361	140	none	foal1	0
500	140	none	foal1	36
466	140	none	foal2	82
326	140	none	foal2	81
361	140	none	foal3	45
47	141	yellow	foal1	37
132	141	yellow	foal3	81
425	141	yellow	foal2	89
145	141	yellow	foal2	80
453	141	yellow	foal2	64
136	141	yellow	foal2	69
192	141	none	foal4	46
462	141	none	foal4	33
26	141	none	foal2	67
5	141	none	foal4	63
386	141	none	foal1	2
122	141	none	foal3	76
84	142	yellow	foal3	25
385	142	yellow	foal1	22
298	142	red	foal2	70
526	142	yellow	foal1	63
358	142	yellow	foal4	12
28	142	yellow	foal2	86
109	142	none	foal1	44
356	142	none	foal3	66
308	142	none	foal1	36
559	142	none	foal3	22
442	142	none	foal4	26
398	142	none	foal1	48
123	142	none	foal4	79
497	142	none	foal2	43
440	142	none	foal1	25
246	142	none	foal4	8
398	142	none	foal3	36
431	142	none	foal3	4
242	142	none	foal3	84
497	142	none	foal3	66
356	142	none	foal2	72
266	142	none	foal4	21
545	142	none	foal1	42
362	142	none	foal2	31
6	142	none	foal3	1
431	142	none	foal2	52
398	142	none	foal2	25
526	142	none	foal4	16
545	142	none	foal4	12
272	142	none	foal3	70
6	142	none	foal1	84
442	142	none	foal4	62
242	142	none	foal2	89
246	142	none	foal3	54
362	142	none	foal2	89
362	142	none	foal1	73
28	142	none	foal2	36
246	142	none	foal1	4
272	142	none	foal2	7
379	142	none	foal1	73
362	142	none	foal4	57
440	142	none	foal4	43
398	142	none	foal1	71
125	143	yellow	foal1	36
87	143	yellow	foal4	13
312	143	yellow	foal1	84
312	143	none	foal2	28
464	143	none	foal2	44
547	143	none	foal1	57
148	143	none	foal1	34
393	143	none	foal3	63
142	143	none	foal3	53
94	143	none	foal4	64
393	143	none	foal4	18
428	143	none	foal1	42
516	143	none	foal3	70
428	143	none	foal3	8
148	143	none	foal1	5
428	143	none	foal3	66
276	143	none	foal1	18
270	143	none	foal2	74
516	143	none	foal1	2
393	143	none	foal3	16
338	143	none	foal4	62
438	143	none	foal2	34
213	143	none	foal3	86
142	143	none	foal1	64
85	144	yellow	foal3	80
60	144	none	foal2	47
344	144	none	foal1	53
553	144	none	foal3	41
231	144	none	foal4	74
460	144	none	foal3	36
344	144	none	foal2	83
433	144	none	foal3	27
467	144	none	foal4	24
553	144	none	foal1	71
231	144	none	foal4	59
344	144	none	foal2	42
68	144	none	foal1	4
460	144	none	foal4	67
455	144	none	foal1	26
467	144	none	foal3	72
191	144	none	foal2	13
121	144	none	foal1	88
60	144	none	foal2	54
460	144	none	foal4	67
170	144	none	foal1	70
60	144	none	foal2	25
467	144	none	foal3	68
553	144	none	foal3	38
524	145	yellow	foal2	23
11	145	none	foal4	3
418	145	none	foal2	25
185	145	none	foal2	9
418	145	none	foal1	78
21	145	none	foal4	74
127	145	none	foal2	6
513	145	none	foal2	73
513	145	none	foal4	78
273	145	none	foal3	54
134	145	none	foal1	48
185	145	none	foal3	82
472	145	none	foal4	49
207	145	none	foal4	34
11	145	none	foal1	53
25	145	none	foal4	15
25	145	none	foal3	77
156	145	none	foal3	16
185	145	none	foal3	23
349	145	none	foal2	77
185	145	none	foal1	77
412	145	none	foal2	62
513	145	none	foal1	44
25	145	none	foal2	90
21	145	none	foal1	22
46	145	none	foal3	67
292	145	none	foal1	14
185	145	none	foal1	24
458	146	none	foal4	39
92	146	none	foal4	86
245	146	none	foal2	55
556	146	none	foal3	26
318	146	none	foal3	29
140	146	none	foal4	25
290	146	none	foal2	52
302	146	none	foal2	21
19	146	none	foal4	18
140	146	none	foal2	83
215	146	none	foal4	5
221	146	none	foal3	36
72	146	none	foal1	41
420	146	none	foal2	84
568	146	none	foal1	45
568	146	none	foal3	45
546	146	none	foal3	66
196	146	none	foal1	54
302	146	none	foal1	52
158	146	none	foal3	13
556	146	none	foal4	45
253	146	none	foal3	80
99	147	yellow	foal3	26
563	147	yellow	foal3	74
481	147	yellow	foal2	23
388	147	yellow	foal1	64
447	147	yellow	foal4	1
149	147	yellow	foal1	6
203	147	yellow	foal4	34
58	147	yellow	foal4	25
105	147	none	foal3	71
384	147	none	foal2	26
480	147	none	foal2	17
322	147	none	foal1	34
93	147	none	foal1	56
480	147	none	foal4	33
44	147	none	foal4	52
174	147	none	foal4	66
477	147	none	foal2	65
447	147	none	foal1	35
295	147	none	foal3	70
58	147	none	foal2	7
435	147	none	foal3	12
295	147	none	foal4	56
105	147	none	foal1	31
480	147	none	foal2	37
203	147	none	foal3	34
366	147	none	foal2	32
203	147	none	foal2	58
38	147	none	foal3	11
138	147	none	foal2	64
169	147	none	foal2	33
105	147	none	foal4	35
44	147	none	foal1	31
548	147	none	foal1	45
252	148	yellow	foal1	34
114	148	yellow	foal1	33
527	148	yellow	foal4	45
409	148	yellow	foal3	69
241	148	yellow	foal1	74
378	148	none	foal4	10
154	148	none	foal2	12
193	148	none	foal3	31
299	148	none	foal4	80
319	148	none	foal3	79
199	148	none	foal2	28
243	148	none	foal3	51
252	148	none	foal4	36
378	148	none	foal1	16
243	148	none	foal4	48
233	148	none	foal4	77
57	148	none	foal3	35
199	148	none	foal3	74
57	148	none	foal2	55
389	148	none	foal2	16
409	148	none	foal4	40
527	148	none	foal3	5
287	148	none	foal4	76
69	148	none	foal2	9
252	148	none	foal4	45
313	148	none	foal1	61
498	149	yellow	foal2	10
31	149	yellow	foal3	16
391	149	yellow	foal1	17
514	149	yellow	foal1	77
419	149	yellow	foal4	69
171	149	yellow	foal4	56
100	149	none	foal1	76
130	149	none	foal3	10
143	149	none	foal1	70
100	149	none	foal2	3
29	149	none	foal4	31
335	149	none	foal3	12
171	149	none	foal3	32
410	149	none	foal3	7
143	149	none	foal4	34
519	149	none	foal2	47
570	149	none	foal3	57
225	149	none	foal1	54
175	149	none	foal1	82
223	149	none	foal4	89
100	149	none	foal4	83
410	149	none	foal1	82
212	149	none	foal3	85
328	149	none	foal3	17
514	149	none	foal1	77
4	149	none	foal2	7
499	149	none	foal2	29
100	149	none	foal2	26
511	149	none	foal2	58
71	149	none	foal1	80
456	149	none	foal1	81
423	150	none	foal2	29
135	150	none	foal1	68
400	150	none	foal4	6
557	150	none	foal4	50
363	150	none	foal4	27
400	150	none	foal2	86
96	150	none	foal2	80
525	150	none	foal2	7
525	150	none	foal1	55
102	150	none	foal1	60
423	150	none	foal3	59
437	150	none	foal2	60
491	150	none	foal1	35
24	150	none	foal1	74
411	150	none	foal3	85
390	150	none	foal4	39
198	150	none	foal2	76
254	150	none	foal3	49
198	150	none	foal2	18
400	150	none	foal3	34
525	150	none	foal1	22
363	150	none	foal3	3
53	150	none	foal1	21
483	150	none	foal2	50
198	150	none	foal3	21
63	151	yellow	foal1	72
346	151	yellow	foal1	20
25	151	yellow	foal3	73
459	151	none	foal1	89
207	151	none	foal3	49
11	151	none	foal2	77
490	151	none	foal1	10
185	151	none	foal4	44
134	151	none	foal4	45
207	151	none	foal4	3
127	151	none	foal4	24
11	151	none	foal2	82
185	151	none	foal2	32
418	151	none	foal1	59
459	151	none	foal3	68
513	151	none	foal1	59
248	151	none	foal4	30
273	151	none	foal4	56
540	151	none	foal2	83
418	151	none	foal2	51
37	151	none	foal3	62
349	151	none	foal3	20
25	151	none	foal2	85
540	151	none	foal3	29
207	151	none	foal2	74
248	151	none	foal4	90
540	151	none	foal1	12
143	152	yellow	foal1	85
86	152	yellow	foal1	14
335	152	yellow	foal4	52
175	152	yellow	foal4	65
401	152	yellow	foal3	58
539	152	yellow	foal2	54
309	152	yellow	foal1	26
76	152	yellow	foal1	37
529	152	yellow	foal3	30
76	152	none	foal4	41
119	152	none	foal3	55
386	152	none	foal4	44
234	152	none	foal2	14
192	152	none	foal4	16
172	152	none	foal3	29
529	152	none	foal3	62
136	152	none	foal1	7
284	152	none	foal3	76
119	152	none	foal3	6
172	152	none	foal4	45
14	152	none	foal3	66
283	152	none	foal1	35
461	152	none	foal1	10
453	152	none	foal3	77
14	152	none	foal4	39
257	152	none	foal3	4
285	152	none	foal4	29
395	152	none	foal3	77
3	152	none	foal4	85
395	152	none	foal4	58
119	152	none	foal2	29
283	152	none	foal3	24
159	152	none	foal1	50
172	152	none	foal3	66
283	152	none	foal3	56
453	152	none	foal4	47
257	152	none	foal1	32
539	152	none	foal4	59
110	152	none	foal2	82
386	152	none	foal3	80
7	152	none	foal3	54
524	153	yellow	foal3	8
450	153	yellow	foal3	46
551	153	none	foal1	47
551	153	none	foal4	12
84	153	none	foal1	86
298	153	none	foal2	83
91	153	none	foal1	71
298	153	none	foal3	59
396	153	none	foal4	43
347	153	none	foal4	56
311	153	none	foal4	49
36	153	none	foal2	78
202	153	none	foal1	1
82	153	none	foal4	24
194	153	none	foal4	17
36	153	none	foal4	49
261	153	none	foal4	26
441	153	none	foal3	37
142	154	yellow	foal1	3
516	154	yellow	foal3	78
557	154	yellow	foal4	17
363	154	yellow	foal4	0
457	154	none	foal3	5
32	154	none	foal2	26
254	154	none	foal2	8
437	154	none	foal1	74
557	154	none	foal2	20
509	154	none	foal3	8
372	154	none	foal3	80
390	154	none	foal3	32
102	154	none	foal4	8
543	154	none	foal4	63
102	154	none	foal1	30
53	154	none	foal4	53
135	154	none	foal2	77
305	154	none	foal4	76
457	154	none	foal2	16
51	155	yellow	foal4	56
22	155	yellow	foal3	26
222	155	yellow	foal3	71
336	155	red	foal1	7
325	155	none	foal4	84
128	155	none	foal3	36
271	155	none	foal4	80
507	155	none	foal2	84
22	155	none	foal4	5
531	155	none	foal4	55
355	155	none	foal2	53
370	155	none	foal2	81
186	155	none	foal2	38
533	155	none	foal3	49
427	155	none	foal1	38
42	155	none	foal2	40
22	155	none	foal2	18
507	155	none	foal3	29
507	155	none	foal2	51
9	155	none	foal4	24
489	155	none	foal2	63
42	155	none	foal1	6
271	155	none	foal1	58
9	155	none	foal4	53
33	155	none	foal1	43
399	155	none	foal1	46
22	155	none	foal2	2
533	155	none	foal3	63
33	155	none	foal1	61
125	156	yellow	foal3	78
497	156	yellow	foal3	5
49	156	yellow	foal2	60
266	156	none	foal1	22
379	156	none	foal1	84
242	156	none	foal1	8
362	156	none	foal2	24
49	156	none	foal2	40
431	156	none	foal1	63
28	156	none	foal3	55
115	156	none	foal3	41
58	157	yellow	foal3	5
58	157	yellow	foal1	13
332	157	none	foal3	25
467	157	none	foal3	34
454	157	none	foal4	31
68	157	none	foal3	16
85	157	none	foal3	6
137	157	none	foal2	34
505	157	none	foal3	45
332	157	none	foal1	5
282	157	none	foal1	37
191	157	none	foal1	87
183	157	none	foal2	8
150	157	none	foal2	57
170	157	none	foal2	85
191	157	none	foal1	7
467	157	none	foal2	59
137	157	none	foal2	36
467	157	none	foal3	55
201	157	none	foal2	31
344	157	none	foal1	15
68	157	none	foal1	50
433	157	none	foal4	41
150	157	none	foal3	90
332	157	none	foal2	88
137	157	none	foal1	11
191	157	none	foal1	84
430	157	none	foal2	1
72	158	yellow	foal3	78
158	158	yellow	foal1	86
318	158	yellow	foal1	59
532	158	yellow	foal1	64
217	158	none	foal3	33
550	158	none	foal1	3
532	158	none	foal1	83
405	158	none	foal2	25
217	158	none	foal1	66
34	158	none	foal1	63
534	158	none	foal2	3
552	158	none	foal3	58
504	158	none	foal4	4
434	158	none	foal1	9
73	158	none	foal4	49
205	158	none	foal3	54
116	158	none	foal3	32
206	158	none	foal2	70
445	158	none	foal1	40
504	158	none	foal3	26
152	158	none	foal1	14
139	158	none	foal3	4
534	158	none	foal2	42
157	158	none	foal2	35
139	158	none	foal4	33
226	158	none	foal2	87
152	158	none	foal4	13
552	158	none	foal2	28
116	158	none	foal2	36
73	158	none	foal2	69
327	158	none	foal4	69
188	159	yellow	foal2	40
299	159	yellow	foal3	37
443	159	red	foal3	53
343	159	yellow	foal4	37
413	159	yellow	foal3	87
561	159	yellow	foal4	56
269	159	yellow	foal2	76
413	159	yellow	foal3	34
474	159	none	foal2	37
478	159	none	foal1	79
482	159	none	foal2	83
486	159	none	foal1	75
269	159	none	foal3	56
474	159	none	foal1	77
89	159	none	foal3	20
413	159	none	foal1	28
15	159	none	foal3	86
561	159	none	foal1	90
463	159	none	foal3	46
289	159	none	foal4	24
337	159	none	foal1	28
388	159	none	foal4	54
99	159	none	foal4	10
224	159	none	foal4	11
269	159	none	foal1	42
397	159	none	foal2	18
563	159	none	foal2	17
466	160	yellow	foal3	8
518	160	yellow	foal2	27
473	160	none	foal4	83
297	160	none	foal1	31
197	160	none	foal1	17
181	160	none	foal1	10
473	160	none	foal4	87
503	160	none	foal4	84
232	160	none	foal4	33
424	160	none	foal3	8
79	160	none	foal4	80
320	160	none	foal2	33
79	160	none	foal2	60
41	160	none	foal3	46
121	161	yellow	foal1	13
40	161	yellow	foal3	30
466	161	yellow	foal1	22
230	161	none	foal1	6
361	161	none	foal3	10
247	161	none	foal4	76
214	161	none	foal2	90
351	161	none	foal1	13
326	161	none	foal1	84
166	161	none	foal3	86
500	161	none	foal3	15
402	161	none	foal4	46
537	161	none	foal1	12
351	161	none	foal4	56
537	161	none	foal2	38
361	161	none	foal2	14
230	161	none	foal4	61
451	161	none	foal3	25
40	161	none	foal1	34
361	161	none	foal3	86
402	161	none	foal2	35
40	161	none	foal1	49
103	161	none	foal3	72
537	161	none	foal2	42
451	161	none	foal4	84
496	161	none	foal3	54
382	161	none	foal4	30
542	161	none	foal4	32
530	161	none	foal3	79
406	162	yellow	foal1	79
246	162	yellow	foal2	69
315	162	yellow	foal2	45
140	162	none	foal3	54
290	162	none	foal4	5
420	162	none	foal4	59
315	162	none	foal2	72
510	162	none	foal3	90
458	162	none	foal1	13
546	162	none	foal4	69
218	162	none	foal4	47
141	162	none	foal2	14
510	162	none	foal4	61
458	162	none	foal1	79
117	162	none	foal4	90
556	162	none	foal1	86
302	162	none	foal3	30
133	162	none	foal4	77
556	162	none	foal4	15
465	162	none	foal4	8
133	162	none	foal3	24
465	162	none	foal3	41
436	162	none	foal3	32
436	162	none	foal2	7
215	162	none	foal3	4
215	162	none	foal4	2
315	162	none	foal2	33
529	163	yellow	foal1	46
476	163	yellow	foal4	48
95	163	none	foal4	84
470	163	none	foal2	26
154	163	none	foal2	14
470	163	none	foal4	60
287	163	none	foal2	71
69	163	none	foal1	11
319	163	none	foal4	78
501	163	none	foal1	2
345	163	none	foal4	34
389	163	none	foal3	52
184	163	none	foal2	68
154	163	none	foal3	0
378	163	none	foal3	49
95	163	none	foal2	77
241	163	none	foal3	54
287	163	none	foal3	44
287	163	none	foal1	1
108	164	yellow	foal3	18
35	164	yellow	foal2	21
75	164	none	foal3	4
286	164	none	foal2	74
383	164	none	foal1	9
249	164	none	foal1	65
264	164	none	foal2	10
65	164	none	foal2	86
249	164	none	foal2	85
168	164	none	foal1	55
301	164	none	foal2	77
264	164	none	foal4	52
264	164	none	foal3	5
394	164	none	foal2	87
383	164	none	foal4	62
448	164	none	foal1	27
249	164	none	foal2	4
493	164	none	foal1	59
324	164	none	foal2	50
324	164	none	foal4	2
321	165	none	foal2	64
338	165	none	foal1	78
61	165	none	foal4	0
502	165	none	foal3	1
547	165	none	foal2	80
312	165	none	foal2	45
90	165	none	foal3	27
142	165	none	foal3	79
426	165	none	foal4	80
312	165	none	foal1	65
547	165	none	foal1	3
216	165	none	foal1	45
393	165	none	foal1	78
312	165	none	foal3	78
87	165	none	foal3	12
61	165	none	foal3	39
204	165	none	foal3	76
426	165	none	foal1	57
216	165	none	foal3	89
262	165	none	foal2	58
87	165	none	foal2	79
148	165	none	foal1	30
312	165	none	foal2	87
516	165	none	foal2	37
213	165	none	foal4	42
426	165	none	foal4	10
213	165	none	foal4	48
270	165	none	foal4	86
262	165	none	foal3	66
303	165	none	foal1	42
289	166	yellow	foal4	19
67	166	yellow	foal3	31
425	166	yellow	foal2	46
265	166	none	foal4	22
310	166	none	foal3	72
167	166	none	foal4	18
492	166	none	foal1	19
387	166	none	foal4	5
310	166	none	foal1	53
238	166	none	foal3	53
531	167	yellow	foal2	81
22	167	yellow	foal3	28
446	167	yellow	foal1	50
275	167	none	foal4	12
101	167	none	foal2	34
155	167	none	foal3	60
373	167	none	foal2	68
404	167	none	foal3	10
211	167	none	foal3	81
485	167	none	foal1	47
422	167	none	foal1	68
422	167	none	foal2	0
48	167	none	foal2	20
30	167	none	foal4	52
125	167	none	foal1	72
572	167	none	foal3	37
18	167	none	foal1	44
50	167	none	foal1	74
375	167	none	foal2	11
240	167	none	foal4	79
48	167	none	foal1	22
146	168	yellow	foal1	46
342	168	yellow	foal1	9
138	168	yellow	foal2	33
384	168	yellow	foal1	42
369	168	none	foal3	39
562	168	none	foal4	5
480	168	none	foal1	66
477	168	none	foal2	67
435	168	none	foal1	83
435	168	none	foal3	20
169	168	none	foal2	17
417	168	none	foal1	64
58	168	none	foal4	52
562	168	none	foal3	5
93	168	none	foal4	47
203	168	none	foal1	34
295	168	none	foal2	15
104	168	none	foal4	44
548	168	none	foal1	68
548	168	none	foal1	56
295	168	none	foal4	83
210	168	none	foal4	35
169	168	none	foal2	2
447	168	none	foal1	75
203	168	none	foal4	29
105	168	none	foal4	5
38	168	none	foal4	48
169	168	none	foal1	31
423	169	yellow	foal1	19
106	169	yellow	foal4	67
251	169	yellow	foal4	25
4	169	yellow	foal2	1
328	169	none	foal4	31
468	169	none	foal3	15
449	169	none	foal3	42
143	169	none	foal3	80
514	169	none	foal2	2
161	169	none	foal2	58
212	169	none	foal4	67
511	169	none	foal1	90
401	169	none	foal4	16
419	169	none	foal4	83
130	169	none	foal4	23
86	169	none	foal1	16
401	169	none	foal4	9
419	169	none	foal1	52
20	169	none	foal2	59
335	169	none	foal4	82
143	169	none	foal2	44
223	169	none	foal4	20
71	169	none	foal1	85
225	169	none	foal1	1
519	169	none	foal4	63
86	169	none	foal1	28
444	170	yellow	foal1	89
391	170	yellow	foal2	77
452	170	none	foal1	27
296	170	none	foal4	34
381	170	none	foal1	51
187	170	none	foal2	38
444	170	none	foal2	6
307	170	none	foal1	32
475	170	none	foal2	60
273	171	none	foal1	21
156	171	none	foal2	53
207	171	none	foal2	41
127	171	none	foal1	54
418	171	none	foal2	5
21	171	none	foal4	42
418	171	none	foal2	43
349	171	none	foal2	8
37	171	none	foal3	60
185	171	none	foal4	23
21	171	none	foal4	25
564	171	none	foal4	60
459	171	none	foal3	52
278	171	none	foal3	19
292	171	none	foal4	13
46	171	none	foal2	38
11	171	none	foal2	82
459	171	none	foal1	1
21	171	none	foal1	12
207	171	none	foal4	28
127	171	none	foal1	39
490	171	none	foal3	39
540	171	none	foal1	34
472	171	none	foal3	28
46	171	none	foal4	89
513	171	none	foal4	71
418	171	none	foal4	61
127	171	none	foal1	83
540	171	none	foal4	38
248	171	none	foal4	41
134	171	none	foal2	61
292	171	none	foal1	18
459	171	none	foal4	4
164	171	none	foal3	43
328	172	yellow	foal3	22
71	172	yellow	foal1	58
394	172	yellow	foal2	53
274	172	yellow	foal1	20
65	172	yellow	foal4	82
75	172	yellow	foal2	57
520	172	yellow	foal4	2
113	172	none	foal3	4
301	172	none	foal3	59
274	172	none	foal1	22
2	172	none	foal3	35
469	172	none	foal3	18
450	172	none	foal2	38
383	172	none	foal1	56
237	172	none	foal3	83
75	172	none	foal2	60
168	172	none	foal2	51
77	172	none	foal1	50
383	172	none	foal4	4
324	172	none	foal3	79
113	172	none	foal3	87
168	172	none	foal4	14
493	172	none	foal2	88
249	172	none	foal2	54
450	172	none	foal1	70
249	172	none	foal4	1
113	172	none	foal1	45
264	172	none	foal3	63
168	172	none	foal2	27
2	172	none	foal3	37
280	172	none	foal1	12
383	172	none	foal1	1
168	172	none	foal4	89
54	172	none	foal1	42
2	172	none	foal3	37
301	172	none	foal4	11
77	172	none	foal4	78
484	173	yellow	foal4	33
387	173	yellow	foal2	73
78	173	yellow	foal2	9
202	173	red	foal1	29
91	173	none	foal1	7
78	173	none	foal3	53
153	173	none	foal1	36
146	173	none	foal3	38
347	173	none	foal1	79
131	173	none	foal1	29
376	173	none	foal1	47
261	173	none	foal2	48
78	173	none	foal1	33
84	173	none	foal2	70
55	173	none	foal2	37
458	174	yellow	foal3	8
133	174	yellow	foal4	71
19	174	none	foal4	55
465	174	none	foal3	31
19	174	none	foal2	9
568	174	none	foal1	13
365	174	none	foal1	61
196	174	none	foal4	8
420	174	none	foal3	81
315	174	none	foal3	41
19	174	none	foal1	34
436	174	none	foal4	13
365	174	none	foal2	28
218	174	none	foal2	81
196	174	none	foal3	70
245	174	none	foal3	54
420	174	none	foal4	38
510	174	none	foal2	47
245	174	none	foal2	80
141	174	none	foal1	71
196	174	none	foal1	56
290	174	none	foal2	21
556	174	none	foal3	65
140	174	none	foal4	28
488	175	yellow	foal3	48
277	175	yellow	foal1	7
106	175	yellow	foal2	43
543	175	yellow	foal4	52
372	175	yellow	foal4	18
525	175	none	foal4	33
491	175	none	foal4	28
256	175	none	foal3	0
256	175	none	foal3	21
543	175	none	foal3	64
423	175	none	foal3	10
135	175	none	foal2	84
523	175	none	foal2	11
525	175	none	foal3	41
102	175	none	foal4	44
411	175	none	foal1	63
437	175	none	foal3	83
509	175	none	foal4	5
198	175	none	foal2	32
32	175	none	foal3	3
523	175	none	foal2	81
363	175	none	foal1	16
106	175	none	foal4	29
254	175	none	foal2	17
363	175	none	foal1	12
523	175	none	foal1	23
251	175	none	foal4	60
525	175	none	foal3	50
406	176	yellow	foal1	42
250	176	yellow	foal2	84
497	176	yellow	foal3	23
242	176	yellow	foal4	0
358	176	none	foal1	6
555	176	none	foal4	88
497	176	none	foal3	60
362	176	none	foal2	58
398	176	none	foal2	42
440	176	none	foal4	15
398	176	none	foal1	24
494	176	none	foal2	31
526	176	none	foal4	76
559	176	none	foal1	75
123	176	none	foal3	28
272	176	none	foal3	21
308	176	none	foal3	61
526	176	none	foal4	68
250	176	none	foal4	83
442	176	none	foal2	21
497	176	none	foal3	5
70	176	none	foal3	9
246	176	none	foal3	56
246	176	none	foal1	36
494	176	none	foal3	46
272	176	none	foal4	7
49	176	none	foal1	13
362	176	none	foal2	21
250	176	none	foal2	43
545	176	none	foal4	89
440	176	none	foal4	45
356	176	none	foal1	87
497	176	none	foal3	39
494	176	none	foal1	58
279	176	none	foal2	58
559	176	none	foal4	64
308	176	none	foal4	36
470	177	yellow	foal2	24
43	177	yellow	foal2	62
535	177	yellow	foal3	53
195	177	none	foal3	46
9	177	none	foal4	7
489	177	none	foal4	88
531	177	none	foal4	90
98	177	none	foal2	50
399	177	none	foal4	83
22	177	none	foal2	57
487	177	none	foal1	24
33	177	none	foal2	19
98	177	none	foal1	47
495	178	yellow	foal4	70
235	178	yellow	foal3	66
439	178	yellow	foal2	31
503	178	yellow	foal2	80
118	178	yellow	foal3	61
10	178	none	foal4	54
126	178	none	foal1	8
541	178	none	foal3	39
227	178	none	foal3	80
12	178	none	foal4	83
424	178	none	foal1	54
144	178	none	foal1	8
541	178	none	foal2	86
74	178	none	foal4	73
503	178	none	foal4	80
208	178	none	foal3	48
536	178	none	foal1	59
232	178	none	foal2	62
320	178	none	foal2	23
536	178	none	foal2	86
79	178	none	foal2	5
320	178	none	foal3	90
503	178	none	foal4	80
41	178	none	foal3	89
297	178	none	foal3	46
560	178	none	foal1	37
126	178	none	foal1	85
74	178	none	foal4	88
408	178	none	foal3	74
232	178	none	foal1	58
79	178	none	foal3	33
408	178	none	foal1	85
547	179	yellow	foal4	37
61	179	yellow	foal3	30
56	179	yellow	foal1	22
45	179	none	foal4	38
429	179	none	foal4	78
549	179	none	foal3	5
475	179	none	foal3	37
268	179	none	foal4	12
391	179	none	foal3	47
391	179	none	foal1	21
56	179	none	foal1	48
307	179	none	foal3	17
51	179	none	foal3	1
307	179	none	foal2	24
391	179	none	foal4	17
45	179	none	foal4	10
452	179	none	foal1	86
268	179	none	foal4	76
429	179	none	foal3	63
39	179	none	foal2	24
452	179	none	foal1	18
217	180	yellow	foal1	67
228	180	yellow	foal4	23
415	180	none	foal1	74
306	180	none	foal1	43
139	180	none	foal2	20
219	180	none	foal1	34
226	180	none	foal4	59
255	180	none	foal4	82
333	180	none	foal3	8
217	180	none	foal2	68
552	180	none	foal3	1
532	180	none	foal2	88
416	180	none	foal4	81
228	180	none	foal4	59
317	180	none	foal2	72
139	180	none	foal3	19
152	180	none	foal2	66
219	180	none	foal2	41
327	180	none	foal1	59
116	180	none	foal3	65
219	180	none	foal2	27
550	180	none	foal3	34
532	180	none	foal2	68
504	180	none	foal4	69
317	180	none	foal1	13
34	180	none	foal4	47
73	180	none	foal1	73
550	180	none	foal4	21
353	180	none	foal2	39
552	180	none	foal1	89
333	180	none	foal1	29
205	180	none	foal1	16
205	180	none	foal4	33
116	180	none	foal4	14
534	180	none	foal3	61
152	180	none	foal4	68
255	180	none	foal2	33
534	180	none	foal2	54
157	180	none	foal2	19
116	180	none	foal4	55
139	180	none	foal4	80
507	181	yellow	foal2	7
33	181	yellow	foal4	21
343	181	yellow	foal3	21
236	181	none	foal1	81
481	181	none	foal1	16
413	181	none	foal3	36
99	181	none	foal4	35
479	181	none	foal1	68
124	181	none	foal4	62
463	181	none	foal2	75
124	181	none	foal1	4
281	181	none	foal3	48
337	181	none	foal2	47
236	181	none	foal1	35
479	181	none	foal3	22
124	181	none	foal2	62
329	181	none	foal2	66
478	181	none	foal4	89
474	181	none	foal4	63
397	181	none	foal3	38
486	181	none	foal2	78
463	181	none	foal1	66
563	181	none	foal2	50
224	181	none	foal4	58
289	181	none	foal1	35
343	181	none	foal3	1
89	181	none	foal4	60
474	181	none	foal3	56
163	181	none	foal4	63
329	181	none	foal3	85
99	181	none	foal1	31
486	181	none	foal4	53
281	181	none	foal4	76
561	181	none	foal4	47
478	181	none	foal2	51
563	181	none	foal2	15
463	181	none	foal2	80
524	182	yellow	foal4	89
280	182	yellow	foal2	66
537	182	yellow	foal1	11
402	182	yellow	foal3	90
542	182	yellow	foal2	8
496	182	yellow	foal2	62
566	182	none	foal3	3
16	182	none	foal3	37
230	182	none	foal2	76
361	182	none	foal1	25
542	182	none	foal1	5
361	182	none	foal2	62
530	182	none	foal1	54
361	182	none	foal1	34
537	182	none	foal1	74
230	182	none	foal2	48
214	182	none	foal2	21
361	182	none	foal3	27
466	182	none	foal4	65
382	182	none	foal2	38
330	182	none	foal3	41
83	182	none	foal3	2
451	182	none	foal3	86
247	182	none	foal2	26
16	182	none	foal4	31
247	182	none	foal4	34
293	182	none	foal4	30
103	182	none	foal3	5
542	182	none	foal1	68
402	182	none	foal1	57
542	182	none	foal3	37
341	182	none	foal3	34
247	182	none	foal2	33
542	182	none	foal2	19
402	182	none	foal1	24
530	182	none	foal3	20
537	182	none	foal1	49
382	182	none	foal4	61
542	182	none	foal3	72
83	182	none	foal3	37
566	182	none	foal4	0
166	182	none	foal2	55
438	183	yellow	foal3	18
312	183	yellow	foal3	12
502	183	yellow	foal2	54
312	183	none	foal1	38
88	183	none	foal3	15
340	183	none	foal4	76
428	183	none	foal1	88
262	183	none	foal3	63
464	183	none	foal1	55
428	183	none	foal3	15
276	183	none	foal1	90
516	183	none	foal3	8
90	183	none	foal3	68
348	183	none	foal2	81
312	183	none	foal4	54
88	183	none	foal4	43
142	183	none	foal1	49
213	183	none	foal4	85
516	183	none	foal2	8
213	183	none	foal2	30
94	183	none	foal3	11
464	183	none	foal4	1
547	183	none	foal2	30
94	183	none	foal4	60
204	183	none	foal1	89
438	183	none	foal4	71
516	183	none	foal4	1
340	183	none	foal4	9
218	184	yellow	foal3	85
318	184	yellow	foal2	3
460	184	yellow	foal3	74
81	184	yellow	foal4	1
323	184	red	foal2	22
183	184	none	foal1	11
183	184	none	foal4	90
505	184	none	foal3	42
183	184	none	foal1	68
332	184	none	foal1	66
454	184	none	foal3	79
121	184	none	foal2	33
191	184	none	foal1	5
85	184	none	foal3	83
505	184	none	foal2	78
344	184	none	foal1	28
332	184	none	foal1	12
150	184	none	foal1	4
430	184	none	foal1	81
60	184	none	foal2	82
553	184	none	foal3	53
505	184	none	foal4	78
137	184	none	foal4	51
150	184	none	foal1	79
201	184	none	foal1	5
505	184	none	foal3	43
467	184	none	foal2	51
282	184	none	foal2	17
191	184	none	foal2	9
231	184	none	foal2	69
201	184	none	foal4	63
150	184	none	foal2	53
68	184	none	foal3	86
454	184	none	foal4	17
231	184	none	foal2	21
454	184	none	foal2	59
191	184	none	foal4	70
191	184	none	foal1	74
323	184	none	foal3	4
150	184	none	foal4	2
319	185	none	foal3	70
154	185	none	foal4	90
378	185	none	foal2	28
501	185	none	foal2	77
287	185	none	foal2	61
233	185	none	foal3	24
188	185	none	foal1	54
407	185	none	foal1	45
345	185	none	foal4	88
188	185	none	foal1	19
243	185	none	foal3	51
69	185	none	foal1	72
452	186	yellow	foal1	29
159	186	yellow	foal1	39
539	186	none	foal4	25
257	186	none	foal4	1
529	186	none	foal1	28
462	186	none	foal4	72
76	186	none	foal2	35
284	186	none	foal4	85
395	186	none	foal1	0
488	186	none	foal1	0
522	186	none	foal2	63
529	186	none	foal3	54
234	186	none	foal2	48
453	186	none	foal2	22
119	186	none	foal2	24
284	186	none	foal4	9
461	186	none	foal4	3
453	186	none	foal1	83
277	186	none	foal3	3
522	186	none	foal4	29
178	186	none	foal2	11
3	186	none	foal3	63
14	186	none	foal3	54
277	186	none	foal1	19
309	186	none	foal4	27
539	186	none	foal4	83
119	186	none	foal1	44
461	186	none	foal3	36
3	186	none	foal2	49
539	186	none	foal1	89
136	186	none	foal4	33
178	186	none	foal1	24
539	186	none	foal3	78
73	187	yellow	foal3	27
416	187	yellow	foal1	40
107	187	yellow	foal2	26
331	187	none	foal2	32
425	187	none	foal1	5
521	187	none	foal2	33
294	187	none	foal4	44
304	187	none	foal1	6
544	187	none	foal4	1
310	187	none	foal1	21
167	187	none	foal4	8
425	187	none	foal4	67
167	187	none	foal3	46
265	187	none	foal4	65
265	187	none	foal4	84
238	187	none	foal2	30
387	187	none	foal2	80
294	187	none	foal3	56
368	187	none	foal1	66
47	187	none	foal2	36
544	187	none	foal4	67
97	187	none	foal2	71
63	187	none	foal3	5
421	187	none	foal1	31
396	188	yellow	foal4	19
91	188	yellow	foal2	62
143	188	yellow	foal1	58
328	188	none	foal4	42
20	188	none	foal1	8
29	188	none	foal4	79
23	188	none	foal3	60
161	188	none	foal3	60
71	188	none	foal1	26
300	188	none	foal4	29
4	188	none	foal2	83
223	188	none	foal3	52
514	188	none	foal4	86
161	188	none	foal1	14
300	188	none	foal1	31
514	188	none	foal2	49
468	188	none	foal3	69
225	188	none	foal3	73
212	188	none	foal4	38
392	188	none	foal4	2
4	188	none	foal4	5
161	188	none	foal1	86
335	188	none	foal4	32
130	188	none	foal4	40
100	188	none	foal4	28
570	188	none	foal2	23
212	188	none	foal4	80
212	188	none	foal4	58
328	188	none	foal4	70
71	188	none	foal1	56
297	189	yellow	foal3	81
562	189	none	foal2	7
295	189	none	foal4	4
322	189	none	foal2	36
58	189	none	foal1	21
169	189	none	foal1	61
562	189	none	foal4	39
548	189	none	foal1	3
480	189	none	foal4	32
105	189	none	foal4	87
180	189	none	foal3	81
480	189	none	foal2	29
366	189	none	foal4	15
447	189	none	foal2	15
149	189	none	foal1	69
58	189	none	foal1	64
180	189	none	foal4	1
562	189	none	foal4	11
38	189	none	foal4	8
169	189	none	foal4	60
384	189	none	foal3	26
180	189	none	foal3	61
435	189	none	foal2	83
384	189	none	foal3	30
104	189	none	foal1	66
210	189	none	foal1	20
423	190	yellow	foal4	24
96	190	yellow	foal1	27
422	190	none	foal1	51
364	190	none	foal2	47
1	190	none	foal2	6
373	190	none	foal1	57
189	190	none	foal1	88
80	190	none	foal4	40
446	190	none	foal3	54
485	190	none	foal1	44
471	190	none	foal2	67
485	190	none	foal4	21
495	190	none	foal1	27
375	190	none	foal1	55
1	190	none	foal2	82
30	190	none	foal4	14
1	190	none	foal4	25
18	190	none	foal1	19
62	190	none	foal2	57
572	190	none	foal4	55
471	190	none	foal4	11
30	190	none	foal3	7
101	190	none	foal4	55
485	190	none	foal2	29
364	190	none	foal3	49
485	190	none	foal1	87
189	190	none	foal4	85
330	191	yellow	foal3	83
466	191	yellow	foal2	24
566	191	none	foal1	23
326	191	none	foal4	65
382	191	none	foal1	65
414	191	none	foal2	45
230	191	none	foal2	34
496	191	none	foal3	56
326	191	none	foal4	47
341	191	none	foal4	66
361	191	none	foal2	8
382	191	none	foal2	79
230	191	none	foal2	10
326	191	none	foal2	88
402	191	none	foal3	69
103	191	none	foal1	4
330	191	none	foal2	49
414	191	none	foal3	49
214	191	none	foal1	48
229	192	yellow	foal3	39
22	192	yellow	foal2	45
229	192	yellow	foal4	8
3	192	yellow	foal3	47
172	192	none	foal2	40
110	192	none	foal3	55
76	192	none	foal2	75
192	192	none	foal2	22
172	192	none	foal3	28
110	192	none	foal1	75
7	192	none	foal2	84
14	192	none	foal4	21
3	192	none	foal4	64
7	192	none	foal4	20
539	192	none	foal3	8
136	192	none	foal3	0
395	192	none	foal2	82
461	192	none	foal1	30
88	193	yellow	foal4	6
276	193	yellow	foal4	70
270	193	none	foal4	5
61	193	none	foal3	67
148	193	none	foal4	69
303	193	none	foal4	52
88	193	none	foal2	20
216	193	none	foal2	42
393	193	none	foal3	27
348	193	none	foal1	29
438	193	none	foal3	59
516	193	none	foal3	31
87	193	none	foal2	86
312	193	none	foal3	2
204	193	none	foal2	35
90	193	none	foal3	86
338	193	none	foal4	0
87	193	none	foal3	90
426	193	none	foal2	57
547	193	none	foal3	64
338	193	none	foal1	7
312	193	none	foal3	21
204	193	none	foal2	82
61	193	none	foal3	77
426	193	none	foal2	79
276	193	none	foal4	72
338	193	none	foal1	5
426	193	none	foal1	20
464	193	none	foal4	34
338	193	none	foal1	88
87	193	none	foal3	36
438	193	none	foal1	40
547	193	none	foal3	24
27	193	none	foal4	67
340	193	none	foal1	51
94	193	none	foal1	22
219	194	yellow	foal4	19
416	194	yellow	foal3	54
228	194	yellow	foal3	81
124	194	yellow	foal1	51
397	194	yellow	foal3	3
289	194	none	foal2	31
343	194	none	foal3	46
486	194	none	foal3	40
236	194	none	foal2	28
478	194	none	foal1	78
481	194	none	foal4	87
343	194	none	foal2	48
479	194	none	foal2	18
478	194	none	foal4	28
89	194	none	foal1	19
561	194	none	foal2	90
463	194	none	foal2	52
563	194	none	foal2	82
486	194	none	foal1	20
563	194	none	foal1	19
329	194	none	foal3	42
479	194	none	foal4	90
413	194	none	foal1	60
479	194	none	foal1	78
474	194	none	foal4	83
99	194	none	foal4	38
329	194	none	foal1	85
124	194	none	foal1	15
397	194	none	foal1	54
289	194	none	foal4	54
563	194	none	foal4	43
413	194	none	foal1	21
479	194	none	foal3	59
124	194	none	foal4	10
561	194	none	foal4	37
337	194	none	foal1	0
89	194	none	foal4	79
473	195	yellow	foal3	27
57	195	yellow	foal1	79
69	195	yellow	foal1	67
233	195	none	foal4	2
443	195	none	foal3	2
243	195	none	foal1	5
69	195	none	foal3	86
319	195	none	foal1	16
243	195	none	foal4	19
184	195	none	foal1	16
407	195	none	foal3	1
241	195	none	foal2	22
154	195	none	foal4	73
193	195	none	foal3	69
287	195	none	foal3	9
57	195	none	foal4	26
407	195	none	foal1	79
567	195	none	foal3	75
299	195	none	foal2	60
233	195	none	foal1	85
260	195	none	foal3	14
527	195	none	foal3	14
233	195	none	foal2	81
378	195	none	foal3	10
69	195	none	foal3	47
252	195	none	foal2	39
299	195	none	foal2	32
46	196	yellow	foal1	66
392	196	yellow	foal3	26
419	196	yellow	foal1	29
143	196	none	foal3	15
410	196	none	foal1	45
143	196	none	foal3	45
225	196	none	foal3	16
20	196	none	foal4	0
130	196	none	foal2	4
225	196	none	foal4	64
4	196	none	foal1	7
519	196	none	foal2	86
514	196	none	foal4	40
171	196	none	foal3	0
354	196	none	foal2	32
328	196	none	foal3	44
175	196	none	foal2	42
175	196	none	foal2	50
223	196	none	foal2	70
20	196	none	foal4	36
100	196	none	foal1	17
328	196	none	foal2	25
130	196	none	foal4	58
130	196	none	foal2	19
401	196	none	foal3	80
419	196	none	foal3	30
570	196	none	foal4	63
449	196	none	foal4	73
143	196	none	foal2	25
4	196	none	foal4	75
149	197	yellow	foal3	65
447	197	none	foal3	24
151	197	none	foal2	64
558	197	none	foal4	78
93	197	none	foal1	9
562	197	none	foal1	37
58	197	none	foal3	65
322	197	none	foal1	84
369	197	none	foal4	85
384	197	none	foal4	68
562	197	none	foal3	12
562	197	none	foal2	32
366	197	none	foal2	85
369	197	none	foal4	5
322	197	none	foal1	36
548	197	none	foal2	34
203	197	none	foal2	60
44	197	none	foal1	75
180	197	none	foal3	37
295	197	none	foal3	7
105	197	none	foal1	11
369	197	none	foal3	42
210	197	none	foal1	6
180	197	none	foal1	89
149	197	none	foal1	84
180	197	none	foal1	62
149	197	none	foal4	66
44	197	none	foal3	6
104	197	none	foal4	42
394	198	yellow	foal2	49
404	198	yellow	foal1	12
155	198	yellow	foal4	78
155	198	yellow	foal1	71
375	198	yellow	foal3	86
471	198	none	foal2	36
189	198	none	foal2	37
182	198	none	foal4	41
1	198	none	foal1	21
364	198	none	foal1	40
375	198	none	foal1	81
446	198	none	foal1	27
495	198	none	foal4	46
80	198	none	foal4	85
182	198	none	foal1	47
30	198	none	foal2	78
101	198	none	foal3	66
375	198	none	foal1	31
62	198	none	foal4	63
422	198	none	foal4	21
275	198	none	foal2	90
30	198	none	foal3	48
446	198	none	foal2	4
182	198	none	foal2	38
211	198	none	foal1	2
275	198	none	foal1	15
364	198	none	foal1	21
422	198	none	foal2	61
572	198	none	foal3	67
471	198	none	foal1	33
18	198	none	foal1	61
471	198	none	foal2	63
96	199	yellow	foal3	9
509	199	yellow	foal2	6
557	199	red	foal1	63
332	199	yellow	foal1	19
332	199	yellow	foal3	44
553	199	yellow	foal1	22
323	199	none	foal1	72
460	199	none	foal2	63
460	199	none	foal1	39
460	199	none	foal1	31
505	199	none	foal1	64
553	199	none	foal4	82
137	199	none	foal3	72
85	199	none	foal1	49
460	199	none	foal2	50
467	199	none	foal3	27
231	199	none	foal1	16
191	199	none	foal1	40
231	199	none	foal4	48
191	199	none	foal4	82
433	199	none	foal3	32
231	199	none	foal1	79
454	199	none	foal1	68
332	199	none	foal4	61
430	199	none	foal1	59
231	199	none	foal1	17
231	199	none	foal3	14
68	199	none	foal1	7
549	200	yellow	foal1	16
549	200	yellow	foal2	79
244	200	red	foal1	72
238	200	none	foal2	22
368	200	none	foal3	50
484	200	none	foal4	18
47	200	none	foal3	50
265	200	none	foal3	32
544	200	none	foal2	57
374	200	none	foal1	70
47	200	none	foal4	51
484	200	none	foal2	57
47	200	none	foal3	61
132	200	none	foal3	60
13	200	none	foal4	87
97	200	none	foal2	20
374	200	none	foal4	44
512	200	none	foal2	21
512	200	none	foal1	60
47	200	none	foal3	18
544	200	none	foal1	87
63	200	none	foal2	26
484	200	none	foal4	43
132	200	none	foal3	50
267	200	none	foal4	71
238	200	none	foal3	28
145	200	none	foal4	66
544	200	none	foal4	48
145	200	none	foal1	17
111	200	none	foal2	66
537	201	yellow	foal3	62
537	201	yellow	foal1	85
326	201	yellow	foal3	25
253	201	yellow	foal1	69
117	201	none	foal1	6
218	201	none	foal3	12
465	201	none	foal1	90
436	201	none	foal1	68
253	201	none	foal2	2
365	201	none	foal3	37
318	201	none	foal1	82
92	201	none	foal1	88
365	201	none	foal4	52
556	201	none	foal3	8
302	201	none	foal3	36
215	201	none	foal2	16
436	201	none	foal4	7
546	201	none	foal2	57
133	201	none	foal3	69
218	201	none	foal3	77
290	201	none	foal3	72
365	201	none	foal1	30
556	201	none	foal1	83
510	201	none	foal2	28
302	201	none	foal4	42
436	201	none	foal3	37
117	201	none	foal3	5
568	201	none	foal1	6
140	201	none	foal4	90
365	201	none	foal2	19
465	201	none	foal1	46
510	201	none	foal2	60
556	201	none	foal1	48
253	201	none	foal3	22
158	201	none	foal3	17
318	201	none	foal3	12
365	201	none	foal2	11
92	201	none	foal4	38
218	201	none	foal2	16
92	201	none	foal2	24
510	201	none	foal2	87
318	201	none	foal3	14
140	201	none	foal4	20
325	202	yellow	foal1	38
489	202	none	foal3	83
43	202	none	foal4	87
487	202	none	foal3	76
350	202	none	foal3	59
489	202	none	foal2	13
336	202	none	foal1	90
533	202	none	foal4	41
350	202	none	foal4	76
128	202	none	foal1	67
98	202	none	foal1	33
426	203	yellow	foal1	42
333	203	none	foal1	19
327	203	none	foal3	90
152	203	none	foal4	24
504	203	none	foal1	79
550	203	none	foal1	87
255	203	none	foal1	37
116	203	none	foal2	51
306	203	none	foal1	86
228	203	none	foal4	5
226	203	none	foal4	22
333	203	none	foal3	15
179	203	none	foal3	49
504	203	none	foal4	85
219	203	none	foal3	61
219	203	none	foal4	62
157	203	none	foal4	71
416	203	none	foal4	54
357	203	none	foal2	79
206	203	none	foal2	73
357	203	none	foal3	71
228	203	none	foal4	80
179	203	none	foal4	10
205	203	none	foal4	83
203	204	yellow	foal1	79
372	204	yellow	foal2	68
390	204	yellow	foal4	86
135	204	none	foal2	76
96	204	none	foal3	24
390	204	none	foal3	24
135	204	none	foal4	77
316	204	none	foal3	64
239	204	none	foal4	28
198	204	none	foal3	37
509	204	none	foal3	52
135	204	none	foal1	23
483	204	none	foal3	50
423	204	none	foal1	48
135	204	none	foal3	10
525	204	none	foal1	79
24	204	none	foal1	4
411	204	none	foal1	57
491	204	none	foal4	26
372	204	none	foal3	59
372	204	none	foal2	8
135	204	none	foal4	78
543	204	none	foal4	64
251	204	none	foal1	63
32	204	none	foal1	9
437	204	none	foal4	72
135	204	none	foal3	60
363	204	none	foal2	67
491	204	none	foal3	48
411	204	none	foal2	17
239	204	none	foal3	73
372	204	none	foal2	1
523	204	none	foal1	64
437	204	none	foal3	1
390	204	none	foal1	66
390	204	none	foal4	41
390	204	none	foal2	5
24	204	none	foal1	22
3	205	yellow	foal3	23
395	205	red	foal2	86
274	205	yellow	foal4	49
383	205	yellow	foal3	24
538	205	yellow	foal4	75
450	205	yellow	foal4	58
520	205	red	foal3	75
2	205	none	foal4	6
64	205	none	foal4	45
524	205	none	foal2	32
113	205	none	foal2	77
65	205	none	foal3	40
54	205	none	foal3	16
274	205	none	foal4	8
54	205	none	foal1	14
65	205	none	foal1	17
286	205	none	foal4	46
108	205	none	foal4	31
538	205	none	foal3	60
113	205	none	foal2	37
2	205	none	foal3	22
286	205	none	foal2	26
538	205	none	foal2	15
448	205	none	foal3	44
286	205	none	foal1	8
493	205	none	foal3	36
383	205	none	foal2	7
168	205	none	foal1	48
35	205	none	foal2	88
538	205	none	foal4	52
168	205	none	foal3	10
75	205	none	foal1	5
394	205	none	foal2	53
249	205	none	foal4	60
394	205	none	foal3	56
264	205	none	foal2	57
286	205	none	foal2	68
131	206	yellow	foal3	69
129	206	none	foal3	48
298	206	none	foal4	88
508	206	none	foal1	10
129	206	none	foal2	35
36	206	none	foal1	85
55	206	none	foal3	12
91	206	none	foal4	70
146	206	none	foal1	26
311	206	none	foal3	16
84	206	none	foal3	54
342	206	none	foal2	22
385	206	none	foal1	31
78	206	none	foal1	62
380	206	none	foal2	68
376	206	none	foal3	45
441	206	none	foal4	46
508	206	none	foal4	18
153	206	none	foal1	21
311	206	none	foal4	45
380	206	none	foal1	57
209	206	none	foal2	0
342	206	none	foal4	68
209	206	none	foal1	55
163	207	yellow	foal4	52
563	207	yellow	foal1	31
486	207	yellow	foal4	57
486	207	yellow	foal1	44
398	207	yellow	foal2	7
250	207	none	foal3	88
49	207	none	foal4	33
440	207	none	foal1	38
431	207	none	foal1	64
266	207	none	foal2	59
266	207	none	foal3	32
494	207	none	foal3	18
115	207	none	foal1	63
406	207	none	foal4	64
70	207	none	foal1	90
6	207	none	foal4	83
494	207	none	foal4	48
362	207	none	foal3	80
358	207	none	foal4	87
406	207	none	foal3	23
279	207	none	foal4	52
559	207	none	foal3	39
279	207	none	foal4	75
559	207	none	foal1	84
497	207	none	foal4	84
304	208	yellow	foal4	88
10	208	yellow	foal3	2
17	208	yellow	foal4	33
297	208	yellow	foal2	87
227	208	yellow	foal3	7
10	208	none	foal4	63
118	208	none	foal4	86
8	208	none	foal1	65
320	208	none	foal3	82
367	208	none	foal1	81
197	208	none	foal4	77
408	208	none	foal3	17
8	208	none	foal3	87
126	208	none	foal4	69
408	208	none	foal4	21
541	208	none	foal3	20
144	208	none	foal2	35
41	208	none	foal2	84
144	208	none	foal2	7
320	208	none	foal1	78
232	208	none	foal1	78
367	208	none	foal2	40
297	208	none	foal3	90
424	208	none	foal2	51
17	208	none	foal3	45
118	208	none	foal1	53
367	208	none	foal3	72
320	208	none	foal1	19
10	208	none	foal4	16
503	208	none	foal3	53
79	208	none	foal1	5
297	208	none	foal4	45
126	208	none	foal1	37
367	208	none	foal1	68
473	208	none	foal2	73
503	208	none	foal4	0
126	208	none	foal4	32
12	208	none	foal4	40
473	208	none	foal2	28
181	208	none	foal1	11
17	208	none	foal1	19
197	208	none	foal2	31
199	209	yellow	foal2	27
506	209	yellow	foal2	73
475	209	yellow	foal3	77
296	209	none	foal2	74
56	209	none	foal1	39
498	209	none	foal4	69
528	209	none	foal2	24
59	209	none	foal2	83
268	209	none	foal3	84
339	209	none	foal4	36
371	209	none	foal3	14
452	209	none	foal2	11
506	209	none	foal3	71
475	209	none	foal2	76
381	209	none	foal2	62
506	209	none	foal4	3
244	209	none	foal2	35
332	210	yellow	foal3	16
85	210	yellow	foal3	49
231	210	yellow	foal3	3
183	210	yellow	foal2	84
292	210	yellow	foal3	83
418	210	yellow	foal2	17
349	210	none	foal3	2
540	210	none	foal2	30
459	210	none	foal3	87
472	210	none	foal1	25
472	210	none	foal2	1
21	210	none	foal4	35
418	210	none	foal4	20
564	210	none	foal2	76
164	210	none	foal2	30
292	210	none	foal1	80
418	210	none	foal1	41
127	210	none	foal4	26
46	210	none	foal4	57
540	210	none	foal4	48
134	210	none	foal4	72
185	210	none	foal3	7
21	210	none	foal2	69
207	210	none	foal2	20
418	210	none	foal4	15
554	210	none	foal3	4
540	210	none	foal3	58
46	210	none	foal2	45
25	210	none	foal2	89
292	210	none	foal2	83
46	210	none	foal4	70
418	210	none	foal2	24
46	210	none	foal4	89
292	210	none	foal2	83
185	210	none	foal1	58
459	210	none	foal2	79
540	210	none	foal3	89
185	210	none	foal2	5
412	210	none	foal3	26
37	210	none	foal2	56
185	210	none	foal2	3
134	210	none	foal1	79
490	210	none	foal4	88
412	210	none	foal1	86
11	210	none	foal4	10
513	210	none	foal1	55
130	211	yellow	foal4	5
143	211	yellow	foal2	88
519	211	none	foal3	32
392	211	none	foal1	84
335	211	none	foal1	87
419	211	none	foal1	13
401	211	none	foal2	62
20	211	none	foal4	32
86	211	none	foal3	79
410	211	none	foal2	50
401	211	none	foal1	2
175	211	none	foal3	46
23	211	none	foal2	2
401	211	none	foal1	18
29	211	none	foal3	32
212	211	none	foal1	46
4	211	none	foal3	81
511	211	none	foal4	1
161	211	none	foal4	69
401	211	none	foal4	85
20	211	none	foal3	56
86	211	none	foal2	76
456	211	none	foal4	30
449	211	none	foal1	89
161	211	none	foal4	0
29	211	none	foal2	28
300	211	none	foal4	4
143	211	none	foal1	73
71	211	none	foal2	90
161	211	none	foal2	57
223	211	none	foal1	29
248	212	none	foal2	37
278	212	none	foal1	0
156	212	none	foal4	83
21	212	none	foal3	34
164	212	none	foal2	42
273	212	none	foal3	65
412	212	none	foal2	63
412	212	none	foal1	76
248	212	none	foal3	60
156	212	none	foal4	75
278	212	none	foal2	40
292	212	none	foal3	50
185	212	none	foal1	84
412	212	none	foal4	50
127	212	none	foal3	53
513	212	none	foal1	83
554	212	none	foal1	78
554	212	none	foal1	35
127	212	none	foal1	26
248	212	none	foal2	32
21	212	none	foal2	53
278	212	none	foal4	6
25	212	none	foal2	56
37	212	none	foal1	69
278	212	none	foal1	28
418	212	none	foal4	7
264	213	yellow	foal2	34
22	213	yellow	foal2	88
533	213	yellow	foal3	39
370	213	none	foal3	0
22	213	none	foal4	8
263	213	none	foal1	38
229	213	none	foal4	16
33	213	none	foal1	7
43	213	none	foal4	81
263	213	none	foal3	80
42	213	none	foal2	89
9	213	none	foal2	80
229	213	none	foal2	17
22	213	none	foal1	39
98	213	none	foal2	63
263	213	none	foal2	3
355	213	none	foal1	52
547	214	yellow	foal3	78
148	214	yellow	foal4	27
276	214	yellow	foal2	58
395	214	yellow	foal1	20
395	214	none	foal3	54
5	214	none	foal1	86
284	214	none	foal4	8
122	214	none	foal2	40
172	214	none	foal1	8
159	214	none	foal4	58
334	214	none	foal4	79
539	214	none	foal4	1
453	214	none	foal1	1
309	214	none	foal2	23
7	214	none	foal3	9
334	214	none	foal3	55
136	214	none	foal1	49
395	214	none	foal4	50
136	214	none	foal1	25
234	214	none	foal2	67
234	214	none	foal4	21
172	214	none	foal4	56
178	214	none	foal2	71
7	214	none	foal3	25
5	214	none	foal3	25
453	214	none	foal1	59
285	214	none	foal3	10
453	214	none	foal3	18
522	214	none	foal3	77
386	214	none	foal1	5
462	214	none	foal1	70
26	214	none	foal3	33
386	214	none	foal1	64
555	215	yellow	foal3	41
8	215	yellow	foal4	1
232	215	yellow	foal4	41
367	215	yellow	foal1	65
165	215	yellow	foal2	55
8	215	none	foal4	83
208	215	none	foal1	8
118	215	none	foal2	86
297	215	none	foal2	45
408	215	none	foal2	79
126	215	none	foal4	19
297	215	none	foal3	30
79	215	none	foal1	7
560	215	none	foal4	24
367	215	none	foal3	60
126	215	none	foal1	16
208	215	none	foal3	45
118	215	none	foal3	64
126	215	none	foal2	87
473	215	none	foal1	30
518	215	none	foal2	24
232	215	none	foal4	78
560	215	none	foal1	89
41	215	none	foal3	74
541	215	none	foal3	16
541	215	none	foal3	39
408	215	none	foal2	26
518	215	none	foal4	56
408	215	none	foal4	1
458	216	yellow	foal1	37
420	216	yellow	foal3	89
390	216	yellow	foal4	41
316	216	yellow	foal2	17
256	216	red	foal2	27
363	216	none	foal4	75
403	216	none	foal3	24
254	216	none	foal1	22
557	216	none	foal1	17
96	216	none	foal3	40
411	216	none	foal1	11
305	216	none	foal4	1
523	216	none	foal4	55
256	216	none	foal4	31
363	216	none	foal4	23
390	216	none	foal4	89
251	216	none	foal1	39
509	216	none	foal4	80
102	216	none	foal1	59
457	216	none	foal4	48
363	216	none	foal2	9
256	216	none	foal3	4
411	216	none	foal3	11
403	216	none	foal3	35
53	216	none	foal3	21
32	216	none	foal1	85
32	216	none	foal1	67
256	216	none	foal1	74
363	216	none	foal3	90
316	216	none	foal3	84
251	216	none	foal3	6
483	216	none	foal2	48
24	216	none	foal4	13
372	216	none	foal4	76
543	216	none	foal2	77
239	216	none	foal2	68
483	216	none	foal4	80
254	216	none	foal2	63
305	216	none	foal3	21
437	216	none	foal4	39
239	216	none	foal1	81
423	216	none	foal1	60
523	216	none	foal2	29
151	217	yellow	foal1	27
57	217	yellow	foal4	0
241	217	none	foal1	38
313	217	none	foal3	30
319	217	none	foal2	35
476	217	none	foal2	57
114	217	none	foal1	60
527	217	none	foal4	73
389	217	none	foal2	31
120	217	none	foal2	6
120	217	none	foal1	66
567	217	none	foal2	81
299	217	none	foal4	27
233	217	none	foal4	51
243	217	none	foal2	69
345	217	none	foal2	67
241	217	none	foal3	69
476	217	none	foal1	88
243	217	none	foal2	76
313	217	none	foal3	37
57	217	none	foal1	72
252	217	none	foal1	74
241	217	none	foal1	11
95	217	none	foal2	7
188	217	none	foal1	0
319	217	none	foal3	20
120	217	none	foal4	23
114	217	none	foal4	90
120	217	none	foal1	73
527	217	none	foal1	73
241	217	none	foal4	77
407	217	none	foal1	19
287	217	none	foal3	48
476	217	none	foal2	11
496	218	yellow	foal2	16
537	218	yellow	foal1	58
293	218	yellow	foal3	9
293	218	yellow	foal3	76
293	218	yellow	foal3	88
432	218	none	foal4	70
63	218	none	foal2	12
387	218	none	foal2	64
387	218	none	foal1	46
294	218	none	foal3	85
310	218	none	foal2	62
421	218	none	foal1	67
145	218	none	foal1	71
421	218	none	foal2	35
310	218	none	foal4	35
67	218	none	foal4	33
265	218	none	foal2	9
432	218	none	foal1	79
421	218	none	foal3	69
512	218	none	foal1	59
294	218	none	foal3	8
331	218	none	foal3	65
67	218	none	foal2	88
107	218	none	foal2	39
167	218	none	foal2	24
13	218	none	foal1	53
360	218	none	foal2	32
310	218	none	foal4	65
492	218	none	foal2	20
521	218	none	foal2	47
162	218	none	foal3	36
346	218	none	foal4	46
238	218	none	foal4	35
167	218	none	foal2	53
445	219	yellow	foal4	16
31	219	yellow	foal3	22
112	219	yellow	foal2	20
371	219	none	foal4	74
307	219	none	foal2	7
66	219	none	foal4	89
339	219	none	foal1	90
268	219	none	foal4	59
31	219	none	foal3	15
187	219	none	foal4	35
51	219	none	foal2	9
307	219	none	foal1	90
371	219	none	foal4	30
452	219	none	foal4	59
377	219	none	foal2	42
506	219	none	foal1	72
244	219	none	foal4	16
444	219	none	foal4	1
39	219	none	foal1	57
307	219	none	foal3	52
452	219	none	foal4	27
339	219	none	foal1	47
452	219	none	foal1	13
528	219	none	foal1	33
549	219	none	foal3	73
183	220	yellow	foal4	53
289	220	red	foal3	47
289	220	none	foal3	63
479	220	none	foal1	5
343	220	none	foal4	71
99	220	none	foal4	75
15	220	none	foal3	9
478	220	none	foal2	55
236	220	none	foal1	38
388	220	none	foal4	54
481	220	none	foal1	90
561	220	none	foal4	2
482	220	none	foal1	14
388	220	none	foal4	66
561	220	none	foal1	20
482	220	none	foal1	3
89	220	none	foal3	32
329	220	none	foal4	47
329	220	none	foal2	28
163	220	none	foal3	82
482	220	none	foal4	32
482	220	none	foal1	58
224	220	none	foal2	77
478	220	none	foal1	71
478	220	none	foal3	65
337	220	none	foal3	80
481	220	none	foal4	75
329	220	none	foal1	12
561	220	none	foal2	83
281	220	none	foal1	51
479	220	none	foal2	14
99	220	none	foal1	84
481	221	yellow	foal2	53
397	221	yellow	foal1	63
388	221	yellow	foal2	86
245	221	yellow	foal3	56
141	221	yellow	foal4	12
92	221	yellow	foal1	46
458	221	none	foal1	73
158	221	none	foal4	26
290	221	none	foal2	81
19	221	none	foal3	16
458	221	none	foal2	63
140	221	none	foal2	90
196	221	none	foal1	80
92	221	none	foal4	9
158	221	none	foal4	42
196	221	none	foal4	25
215	221	none	foal2	85
141	221	none	foal2	76
439	222	yellow	foal4	71
364	222	none	foal2	75
18	222	none	foal3	52
211	222	none	foal3	17
422	222	none	foal2	46
62	222	none	foal2	13
211	222	none	foal2	44
275	222	none	foal1	34
471	222	none	foal2	72
80	222	none	foal3	72
125	222	none	foal3	44
375	222	none	foal2	45
182	222	none	foal2	54
349	223	yellow	foal2	20
273	223	red	foal4	62
28	223	yellow	foal2	84
398	223	none	foal2	68
440	223	none	foal4	26
358	223	none	foal3	34
308	223	none	foal2	54
272	223	none	foal3	58
431	223	none	foal3	60
242	223	none	foal1	74
526	223	none	foal3	26
250	223	none	foal2	86
246	223	none	foal3	44
28	223	none	foal1	58
109	223	none	foal1	20
555	223	none	foal3	29
356	223	none	foal2	41
497	223	none	foal3	77
431	223	none	foal2	18
358	223	none	foal2	2
115	223	none	foal2	68
431	223	none	foal3	90
442	223	none	foal4	42
377	224	yellow	foal4	3
261	224	none	foal4	69
202	224	none	foal4	21
82	224	none	foal2	77
78	224	none	foal4	79
515	224	none	foal2	56
202	224	none	foal3	43
258	224	none	foal2	25
342	224	none	foal1	72
342	224	none	foal3	47
258	224	none	foal1	69
311	224	none	foal2	77
441	224	none	foal4	23
61	225	yellow	foal3	57
213	225	none	foal3	8
312	225	none	foal1	24
502	225	none	foal3	58
88	225	none	foal1	20
90	225	none	foal4	41
94	225	none	foal4	75
340	225	none	foal4	39
262	225	none	foal4	26
276	225	none	foal4	89
88	225	none	foal3	73
142	225	none	foal3	72
27	225	none	foal3	35
27	225	none	foal3	88
61	225	none	foal3	13
94	225	none	foal4	12
464	225	none	foal1	28
216	225	none	foal2	74
90	225	none	foal4	24
348	225	none	foal3	6
321	225	none	foal3	48
312	225	none	foal2	11
87	225	none	foal1	28
88	225	none	foal2	52
523	226	yellow	foal1	2
509	226	yellow	foal1	22
326	226	yellow	foal1	29
326	226	none	foal2	75
293	226	none	foal4	89
330	226	none	foal2	18
214	226	none	foal3	85
214	226	none	foal1	32
230	226	none	foal3	89
214	226	none	foal4	82
166	226	none	foal3	61
451	226	none	foal4	32
414	226	none	foal1	4
40	226	none	foal4	90
542	226	none	foal2	23
16	226	none	foal3	18
530	226	none	foal1	9
166	226	none	foal4	24
288	226	none	foal2	38
537	226	none	foal3	38
530	226	none	foal1	24
451	226	none	foal2	6
451	226	none	foal1	74
16	226	none	foal2	76
103	226	none	foal1	29
402	226	none	foal1	6
16	226	none	foal1	25
361	226	none	foal2	69
496	226	none	foal4	88
402	226	none	foal3	68
341	226	none	foal2	83
537	226	none	foal1	42
530	226	none	foal2	42
118	227	yellow	foal4	67
394	227	yellow	foal1	37
301	227	yellow	foal3	7
65	227	none	foal1	53
280	227	none	foal2	8
450	227	none	foal1	74
286	227	none	foal2	16
2	227	none	foal2	57
2	227	none	foal4	71
538	227	none	foal2	53
237	227	none	foal3	18
520	227	none	foal2	42
383	227	none	foal4	10
237	227	none	foal1	90
383	227	none	foal4	44
35	227	none	foal4	86
324	227	none	foal2	87
524	227	none	foal3	78
237	227	none	foal2	0
450	227	none	foal2	30
64	227	none	foal2	52
383	227	none	foal1	26
286	227	none	foal3	88
264	227	none	foal4	45
54	227	none	foal4	73
274	227	none	foal3	26
65	227	none	foal3	67
274	227	none	foal4	88
450	227	none	foal3	52
203	228	yellow	foal1	60
548	228	yellow	foal2	45
203	228	none	foal1	26
151	228	none	foal4	76
138	228	none	foal2	27
149	228	none	foal3	14
44	228	none	foal3	90
480	228	none	foal4	20
138	228	none	foal3	25
210	228	none	foal1	55
169	228	none	foal1	34
322	228	none	foal1	33
93	228	none	foal4	27
480	228	none	foal2	79
210	228	none	foal2	72
417	228	none	foal4	43
203	228	none	foal3	56
151	228	none	foal4	27
314	229	yellow	foal1	90
257	229	yellow	foal4	25
121	229	yellow	foal4	67
68	229	yellow	foal1	42
430	229	none	foal1	24
505	229	none	foal4	72
60	229	none	foal4	43
430	229	none	foal1	49
121	229	none	foal1	18
68	229	none	foal4	48
137	229	none	foal1	44
150	229	none	foal2	82
191	229	none	foal3	28
460	229	none	foal2	16
231	229	none	foal2	34
460	229	none	foal1	25
68	229	none	foal1	36
121	229	none	foal4	10
60	229	none	foal4	4
433	229	none	foal2	74
231	229	none	foal2	68
399	230	yellow	foal2	41
533	230	yellow	foal4	65
206	230	yellow	foal3	79
205	230	yellow	foal2	30
357	230	yellow	foal1	24
226	230	none	foal2	89
353	230	none	foal3	88
415	230	none	foal3	90
34	230	none	foal3	28
139	230	none	foal1	58
139	230	none	foal2	22
73	230	none	foal2	2
416	230	none	foal1	75
353	230	none	foal4	50
333	230	none	foal3	85
34	230	none	foal3	31
255	230	none	foal3	82
179	230	none	foal1	65
532	230	none	foal4	70
327	230	none	foal2	36
226	230	none	foal3	8
228	230	none	foal2	21
228	230	none	foal4	80
217	230	none	foal4	4
328	231	yellow	foal4	63
570	231	yellow	foal2	20
392	231	yellow	foal3	38
547	231	yellow	foal1	75
213	231	yellow	foal1	26
270	231	yellow	foal1	48
270	231	none	foal3	50
516	231	none	foal3	37
270	231	none	foal1	38
87	231	none	foal2	43
94	231	none	foal4	16
428	231	none	foal2	85
88	231	none	foal3	69
142	231	none	foal3	54
87	231	none	foal4	61
338	231	none	foal2	46
61	231	none	foal2	0
276	231	none	foal1	52
321	231	none	foal4	55
87	231	none	foal3	7
90	231	none	foal3	72
547	231	none	foal2	22
27	231	none	foal3	84
27	231	none	foal2	86
213	231	none	foal1	28
348	231	none	foal4	78
213	231	none	foal1	31
438	231	none	foal2	1
88	231	none	foal4	50
348	231	none	foal1	39
94	231	none	foal4	2
262	231	none	foal3	47
88	231	none	foal2	1
148	231	none	foal2	38
94	231	none	foal3	21
87	231	none	foal4	29
142	231	none	foal1	32
148	231	none	foal1	68
312	231	none	foal1	67
426	231	none	foal3	7
547	231	none	foal2	19
325	232	yellow	foal1	6
33	232	yellow	foal3	78
298	232	yellow	foal4	83
385	232	yellow	foal2	87
78	232	yellow	foal4	19
396	232	none	foal3	85
91	232	none	foal1	70
84	232	none	foal4	52
258	232	none	foal1	63
82	232	none	foal4	40
258	232	none	foal4	12
55	232	none	foal4	80
342	232	none	foal1	35
347	232	none	foal4	5
551	232	none	foal4	59
342	232	none	foal2	47
55	232	none	foal1	23
311	232	none	foal3	40
146	232	none	foal4	33
376	232	none	foal1	50
78	232	none	foal1	34
202	232	none	foal1	45
347	232	none	foal4	6
82	232	none	foal3	60
298	232	none	foal1	38
461	233	yellow	foal4	58
40	233	yellow	foal4	71
496	233	yellow	foal4	5
330	233	yellow	foal3	18
288	233	yellow	foal3	61
330	233	red	foal4	83
382	233	none	foal4	44
326	233	none	foal2	15
293	233	none	foal2	62
542	233	none	foal4	25
166	233	none	foal4	15
382	233	none	foal1	74
247	233	none	foal2	5
382	233	none	foal3	9
103	233	none	foal4	44
341	233	none	foal3	30
530	233	none	foal3	28
330	233	none	foal2	49
230	233	none	foal4	40
341	233	none	foal1	79
382	233	none	foal1	78
288	233	none	foal4	50
293	233	none	foal1	66
566	233	none	foal1	47
496	233	none	foal4	63
293	233	none	foal3	4
351	233	none	foal2	61
530	233	none	foal3	9
388	234	yellow	foal4	57
563	234	yellow	foal3	62
563	234	yellow	foal1	35
329	234	yellow	foal1	0
364	234	yellow	foal3	87
18	234	none	foal1	63
211	234	none	foal3	29
375	234	none	foal4	19
1	234	none	foal4	33
373	234	none	foal4	16
439	234	none	foal2	1
30	234	none	foal3	2
446	234	none	foal1	58
439	234	none	foal4	76
240	234	none	foal4	38
48	234	none	foal2	32
211	234	none	foal1	88
101	234	none	foal2	53
155	234	none	foal4	25
471	234	none	foal1	45
572	234	none	foal1	17
495	234	none	foal3	4
147	235	yellow	foal3	3
450	235	yellow	foal4	57
108	235	yellow	foal2	40
264	235	yellow	foal4	70
64	235	none	foal4	22
249	235	none	foal4	5
35	235	none	foal3	83
394	235	none	foal2	8
469	235	none	foal3	79
77	235	none	foal4	56
469	235	none	foal4	78
64	235	none	foal1	63
280	235	none	foal1	70
65	235	none	foal4	71
493	235	none	foal1	52
75	235	none	foal3	60
493	235	none	foal1	3
168	235	none	foal3	46
113	235	none	foal2	33
77	235	none	foal3	84
280	235	none	foal2	26
65	235	none	foal3	2
394	235	none	foal2	66
450	235	none	foal4	27
95	236	yellow	foal1	65
378	236	yellow	foal4	36
332	236	yellow	foal4	62
282	236	yellow	foal3	40
433	236	yellow	foal2	0
332	236	none	foal1	7
332	236	none	foal4	87
231	236	none	foal2	62
121	236	none	foal2	48
201	236	none	foal2	33
85	236	none	foal3	81
121	236	none	foal3	33
282	236	none	foal4	66
332	236	none	foal1	46
85	236	none	foal2	79
63	237	yellow	foal4	66
151	237	none	foal2	22
369	237	none	foal2	76
477	237	none	foal2	38
138	237	none	foal1	30
180	237	none	foal1	45
58	237	none	foal2	30
38	237	none	foal3	73
38	237	none	foal4	5
369	237	none	foal2	63
210	237	none	foal4	1
104	237	none	foal1	9
548	237	none	foal1	59
104	237	none	foal3	54
435	237	none	foal2	47
447	237	none	foal2	89
149	237	none	foal1	40
295	237	none	foal2	60
417	237	none	foal3	8
38	237	none	foal1	63
384	237	none	foal1	8
435	237	none	foal4	82
562	237	none	foal2	70
435	237	none	foal2	26
169	237	none	foal1	18
295	237	none	foal1	20
295	237	none	foal3	43
104	237	none	foal1	85
210	237	none	foal1	83
138	237	none	foal4	52
558	237	none	foal1	89
548	237	none	foal2	7
477	237	none	foal1	40
322	237	none	foal4	26
523	238	yellow	foal3	48
256	238	yellow	foal1	62
279	238	yellow	foal1	34
109	238	yellow	foal2	55
440	238	yellow	foal2	13
28	238	red	foal2	47
442	238	none	foal3	22
279	238	none	foal2	33
555	238	none	foal3	49
308	238	none	foal1	36
431	238	none	foal2	77
272	238	none	foal1	33
358	238	none	foal3	79
398	238	none	foal3	33
109	238	none	foal2	6
134	239	yellow	foal1	9
253	239	yellow	foal4	6
253	239	yellow	foal2	30
215	239	yellow	foal1	75
196	239	none	foal3	41
215	239	none	foal3	3
546	239	none	foal3	8
315	239	none	foal3	75
436	239	none	foal3	7
19	239	none	foal4	21
196	239	none	foal4	56
420	239	none	foal1	14
245	239	none	foal4	29
133	239	none	foal3	78
315	239	none	foal3	35
458	239	none	foal2	71
315	239	none	foal4	28
465	239	none	foal4	16
92	239	none	foal2	76
556	239	none	foal2	48
245	239	none	foal1	16
458	239	none	foal1	82
315	239	none	foal2	64
302	239	none	foal1	81
218	239	none	foal1	29
556	239	none	foal4	33
158	239	none	foal2	31
436	239	none	foal1	82
290	239	none	foal1	71
17	240	yellow	foal4	30
197	240	yellow	foal2	30
503	240	yellow	foal4	83
165	240	yellow	foal2	66
8	240	none	foal2	23
536	240	none	foal2	65
367	240	none	foal3	43
12	240	none	foal2	56
227	240	none	foal2	40
126	240	none	foal1	44
12	240	none	foal2	51
8	240	none	foal2	59
144	240	none	foal2	39
367	240	none	foal2	7
197	240	none	foal3	4
8	240	none	foal4	11
118	240	none	foal3	77
208	240	none	foal3	74
473	240	none	foal4	50
227	240	none	foal4	58
12	240	none	foal3	21
74	240	none	foal1	85
79	240	none	foal2	32
297	240	none	foal3	65
74	240	none	foal4	42
41	240	none	foal1	32
118	240	none	foal3	85
320	240	none	foal1	34
165	240	none	foal4	71
118	240	none	foal4	9
144	240	none	foal3	21
8	240	none	foal2	43
17	240	none	foal4	79
541	240	none	foal1	5
74	240	none	foal4	83
408	240	none	foal4	4
10	240	none	foal2	52
10	240	none	foal4	67
69	241	yellow	foal4	21
243	241	none	foal1	21
69	241	none	foal4	36
95	241	none	foal2	55
409	241	none	foal4	84
184	241	none	foal4	82
476	241	none	foal1	42
299	241	none	foal1	77
345	241	none	foal4	73
114	241	none	foal2	30
527	241	none	foal1	69
527	241	none	foal3	30
260	241	none	foal2	12
443	241	none	foal1	73
233	241	none	foal4	55
199	241	none	foal1	51
476	241	none	foal3	77
313	241	none	foal3	59
243	241	none	foal2	74
184	241	none	foal3	62
241	241	none	foal1	51
243	241	none	foal1	35
345	241	none	foal4	26
184	241	none	foal1	39
95	241	none	foal2	45
120	241	none	foal4	35
345	241	none	foal1	89
527	241	none	foal1	61
443	241	none	foal4	80
95	241	none	foal2	17
443	241	none	foal2	34
378	241	none	foal4	6
243	241	none	foal3	76
184	241	none	foal4	14
69	241	none	foal3	79
241	241	none	foal2	63
527	241	none	foal1	52
57	241	none	foal4	84
194	242	yellow	foal2	19
126	242	none	foal2	80
208	242	none	foal2	66
297	242	none	foal3	84
424	242	none	foal2	3
424	242	none	foal3	54
408	242	none	foal1	9
126	242	none	foal1	82
320	242	none	foal4	73
408	242	none	foal4	57
408	242	none	foal2	64
367	242	none	foal2	36
8	242	none	foal1	89
560	242	none	foal2	6
367	242	none	foal3	7
367	242	none	foal1	10
367	242	none	foal1	21
74	242	none	foal4	62
165	242	none	foal2	70
536	242	none	foal1	86
518	242	none	foal2	52
41	242	none	foal4	90
297	242	none	foal2	88
424	242	none	foal4	67
227	242	none	foal2	2
227	242	none	foal4	14
227	242	none	foal3	64
118	242	none	foal1	43
197	242	none	foal2	76
181	242	none	foal4	63
208	242	none	foal3	58
10	242	none	foal1	61
297	242	none	foal2	37
536	242	none	foal1	36
408	242	none	foal3	73
536	242	none	foal1	72
536	242	none	foal1	22
394	243	yellow	foal2	15
168	243	yellow	foal1	24
2	243	yellow	foal3	82
457	243	yellow	foal2	18
363	243	none	foal2	53
24	243	none	foal1	29
96	243	none	foal1	47
483	243	none	foal2	88
135	243	none	foal1	31
457	243	none	foal3	50
106	243	none	foal3	62
256	243	none	foal2	89
509	243	none	foal2	82
363	243	none	foal3	1
96	243	none	foal3	8
254	243	none	foal4	56
523	243	none	foal3	51
24	243	none	foal2	4
423	243	none	foal3	72
363	243	none	foal3	12
256	243	none	foal1	78
437	243	none	foal3	41
254	243	none	foal1	82
403	243	none	foal4	12
423	243	none	foal4	40
411	243	none	foal2	10
198	243	none	foal3	14
96	243	none	foal4	55
159	244	none	foal2	71
522	244	none	foal3	7
461	244	none	foal2	5
234	244	none	foal4	29
26	244	none	foal1	85
488	244	none	foal1	51
529	244	none	foal1	16
461	244	none	foal1	6
257	244	none	foal4	74
119	244	none	foal1	33
234	244	none	foal2	80
5	244	none	foal4	51
522	244	none	foal4	10
453	244	none	foal3	34
14	244	none	foal4	74
122	244	none	foal2	5
14	244	none	foal4	87
257	244	none	foal2	17
529	244	none	foal1	22
119	244	none	foal3	27
461	244	none	foal1	61
453	244	none	foal4	80
234	244	none	foal3	17
284	244	none	foal2	11
7	244	none	foal1	1
277	244	none	foal4	17
172	244	none	foal4	58
234	244	none	foal1	78
257	244	none	foal4	2
279	245	yellow	foal1	76
70	245	yellow	foal4	5
195	245	yellow	foal3	22
325	245	yellow	foal1	54
222	245	yellow	foal3	88
222	245	none	foal4	31
325	245	none	foal4	29
355	245	none	foal4	79
222	245	none	foal2	20
350	245	none	foal2	65
43	245	none	foal3	42
9	245	none	foal4	26
533	245	none	foal2	53
427	245	none	foal2	85
487	245	none	foal1	61
220	245	none	foal3	72
22	245	none	foal2	9
186	245	none	foal2	32
370	245	none	foal1	15
186	245	none	foal3	35
427	245	none	foal4	7
22	245	none	foal4	55
263	245	none	foal3	67
229	245	none	foal3	35
263	245	none	foal1	15
22	245	none	foal1	81
33	245	none	foal3	64
9	245	none	foal1	40
336	245	none	foal4	10
229	245	none	foal3	2
517	245	none	foal1	38
533	245	none	foal1	77
128	245	none	foal4	16
98	245	none	foal4	50
166	246	yellow	foal2	4
500	246	yellow	foal3	57
293	246	yellow	foal1	76
89	246	yellow	foal3	62
289	246	none	foal3	80
224	246	none	foal1	75
163	246	none	foal4	20
281	246	none	foal3	24
281	246	none	foal4	25
281	246	none	foal1	73
478	246	none	foal4	67
15	246	none	foal3	3
474	246	none	foal1	17
289	246	none	foal4	76
561	246	none	foal4	67
142	247	yellow	foal1	85
294	247	yellow	foal2	38
238	247	yellow	foal4	10
107	247	none	foal1	31
492	247	none	foal1	87
145	247	none	foal2	19
162	247	none	foal2	1
421	247	none	foal4	69
167	247	none	foal4	25
162	247	none	foal4	44
162	247	none	foal1	56
132	247	none	foal1	83
67	247	none	foal4	83
544	247	none	foal3	11
167	247	none	foal1	38
13	247	none	foal2	69
267	247	none	foal1	39
173	247	none	foal3	30
145	247	none	foal3	43
267	247	none	foal2	39
512	247	none	foal2	82
294	247	none	foal4	5
265	247	none	foal2	6
162	247	none	foal3	30
162	247	none	foal1	71
97	247	none	foal4	40
556	248	yellow	foal4	29
510	248	yellow	foal3	2
158	248	yellow	foal1	20
290	248	yellow	foal2	1
506	248	yellow	foal1	48
377	248	yellow	foal4	7
371	248	yellow	foal3	78
147	248	yellow	foal1	42
498	248	none	foal3	47
429	248	none	foal2	83
187	248	none	foal1	68
200	248	none	foal4	20
187	248	none	foal3	7
45	248	none	foal4	55
339	248	none	foal3	80
176	248	none	foal1	20
244	248	none	foal3	41
391	248	none	foal3	29
444	248	none	foal4	54
371	248	none	foal4	85
112	248	none	foal4	73
455	249	yellow	foal3	81
328	249	yellow	foal3	17
449	249	none	foal4	37
161	249	none	foal2	59
419	249	none	foal1	38
300	249	none	foal2	63
4	249	none	foal2	90
514	249	none	foal1	45
130	249	none	foal2	33
175	249	none	foal3	52
100	249	none	foal2	64
570	249	none	foal3	6
130	249	none	foal2	57
456	249	none	foal3	6
171	249	none	foal4	58
100	249	none	foal2	0
240	250	yellow	foal4	90
564	250	yellow	foal3	6
540	250	none	foal2	35
185	250	none	foal2	37
46	250	none	foal4	73
185	250	none	foal3	88
185	250	none	foal2	54
185	250	none	foal2	88
127	250	none	foal2	10
472	250	none	foal3	63
127	250	none	foal2	41
207	250	none	foal3	55
412	250	none	foal4	48
490	250	none	foal3	79
351	251	yellow	foal1	35
81	251	yellow	foal1	90
433	251	none	foal2	29
191	251	none	foal4	52
191	251	none	foal3	32
282	251	none	foal2	31
282	251	none	foal1	40
60	251	none	foal3	34
332	251	none	foal3	12
85	251	none	foal3	35
183	251	none	foal2	45
323	251	none	foal1	37
505	251	none	foal1	39
137	251	none	foal3	84
344	251	none	foal4	35
85	251	none	foal2	86
282	251	none	foal1	90
191	251	none	foal3	11
454	251	none	foal4	20
344	251	none	foal2	12
455	251	none	foal3	8
505	251	none	foal3	16
60	251	none	foal3	77
454	251	none	foal2	86
332	251	none	foal3	72
170	251	none	foal3	37
430	251	none	foal4	83
517	252	yellow	foal3	24
487	252	yellow	foal1	25
42	252	yellow	foal4	43
45	252	yellow	foal4	59
39	252	yellow	foal3	58
475	252	none	foal1	90
296	252	none	foal2	14
200	252	none	foal2	35
429	252	none	foal4	28
528	252	none	foal4	10
112	252	none	foal2	49
51	252	none	foal4	64
475	252	none	foal4	83
506	252	none	foal3	75
66	252	none	foal4	2
381	252	none	foal4	46
528	252	none	foal1	21
56	252	none	foal4	40
371	252	none	foal2	17
147	252	none	foal1	62
296	252	none	foal4	17
506	252	none	foal2	2
475	252	none	foal2	5
444	252	none	foal3	89
444	252	none	foal3	17
371	252	none	foal4	42
371	252	none	foal1	90
66	252	none	foal3	86
296	252	none	foal2	18
377	252	none	foal3	55
39	252	none	foal4	70
147	252	none	foal2	1
176	252	none	foal1	77
112	252	none	foal4	87
147	252	none	foal3	18
339	252	none	foal1	74
39	252	none	foal4	74
506	252	none	foal4	20
549	252	none	foal2	61
266	253	yellow	foal2	32
291	253	yellow	foal4	48
70	253	yellow	foal4	51
80	253	none	foal4	89
155	253	none	foal1	89
125	253	none	foal2	5
48	253	none	foal3	57
240	253	none	foal2	51
189	253	none	foal2	2
439	253	none	foal1	57
62	253	none	foal3	56
18	253	none	foal4	37
352	253	none	foal1	44
80	253	none	foal4	9
471	253	none	foal3	69
439	253	none	foal4	9
48	253	none	foal3	75
375	253	none	foal3	87
52	253	none	foal1	56
155	253	none	foal2	1
235	253	none	foal1	32
211	253	none	foal4	27
404	253	none	foal2	66
80	253	none	foal4	86
211	253	none	foal4	45
373	253	none	foal3	34
30	253	none	foal1	24
52	253	none	foal1	58
62	253	none	foal3	79
309	254	yellow	foal3	27
314	254	yellow	foal4	70
283	254	yellow	foal3	5
71	254	yellow	foal1	23
468	254	yellow	foal3	79
468	254	none	foal3	83
23	254	none	foal4	31
570	254	none	foal4	9
212	254	none	foal4	82
71	254	none	foal3	15
514	254	none	foal1	13
29	254	none	foal1	29
511	254	none	foal2	24
225	254	none	foal2	82
161	254	none	foal1	3
468	254	none	foal1	2
499	254	none	foal4	26
175	254	none	foal1	7
300	254	none	foal4	73
401	254	none	foal3	38
171	254	none	foal3	63
130	254	none	foal3	77
354	254	none	foal1	42
156	255	yellow	foal2	82
564	255	yellow	foal2	76
167	255	yellow	foal1	73
374	255	yellow	foal4	28
421	255	none	foal3	7
421	255	none	foal3	87
492	255	none	foal3	42
360	255	none	foal1	49
492	255	none	foal4	8
310	255	none	foal2	79
162	255	none	foal1	29
304	255	none	foal4	50
512	255	none	foal1	84
304	255	none	foal1	34
421	255	none	foal1	17
421	255	none	foal2	66
111	255	none	foal1	59
67	255	none	foal2	74
251	256	yellow	foal2	69
316	256	yellow	foal3	21
557	256	yellow	foal1	76
142	256	yellow	foal3	74
303	256	yellow	foal4	49
276	256	yellow	foal1	1
142	256	none	foal2	66
428	256	none	foal2	57
88	256	none	foal1	10
94	256	none	foal2	89
27	256	none	foal4	88
148	256	none	foal2	77
502	256	none	foal2	49
338	256	none	foal4	36
216	256	none	foal3	72
516	256	none	foal3	38
338	256	none	foal3	64
270	256	none	foal2	16
393	256	none	foal4	75
426	256	none	foal4	46
502	256	none	foal1	74
88	256	none	foal2	34
232	257	yellow	foal1	59
41	257	yellow	foal3	9
288	257	yellow	foal2	9
361	257	red	foal4	6
166	257	none	foal1	4
293	257	none	foal2	31
166	257	none	foal3	67
330	257	none	foal4	79
341	257	none	foal2	35
566	257	none	foal3	23
542	257	none	foal1	13
361	257	none	foal3	3
530	257	none	foal3	87
288	257	none	foal2	26
496	257	none	foal2	6
293	257	none	foal3	44
530	257	none	foal2	83
466	257	none	foal3	27
361	257	none	foal4	10
351	257	none	foal1	35
40	257	none	foal1	61
40	257	none	foal3	84
293	257	none	foal1	86
247	257	none	foal1	39
451	257	none	foal1	56
247	257	none	foal2	55
376	258	yellow	foal2	50
301	258	yellow	foal4	0
286	258	none	foal1	33
54	258	none	foal4	22
448	258	none	foal1	80
113	258	none	foal2	39
520	258	none	foal1	51
237	258	none	foal3	46
249	258	none	foal2	41
493	258	none	foal1	54
286	258	none	foal2	36
108	258	none	foal1	61
54	258	none	foal2	10
35	258	none	foal3	78
54	258	none	foal1	74
64	258	none	foal1	66
286	258	none	foal4	39
113	258	none	foal4	65
264	258	none	foal4	36
520	258	none	foal4	48
448	258	none	foal1	3
324	258	none	foal1	82
280	258	none	foal4	38
237	258	none	foal2	4
274	258	none	foal4	18
394	258	none	foal3	41
493	258	none	foal4	73
450	258	none	foal3	32
383	258	none	foal2	86
274	258	none	foal4	15
280	258	none	foal3	36
77	258	none	foal4	6
532	259	yellow	foal1	77
157	259	yellow	foal1	53
445	259	yellow	foal1	21
72	259	yellow	foal4	22
290	259	none	foal2	35
92	259	none	foal1	68
302	259	none	foal3	27
140	259	none	foal4	35
253	259	none	foal3	19
436	259	none	foal2	84
568	259	none	foal4	10
365	259	none	foal3	5
158	259	none	foal3	45
170	260	yellow	foal2	67
548	260	yellow	foal4	72
562	260	yellow	foal3	39
93	260	none	foal4	71
384	260	none	foal4	47
151	260	none	foal4	54
203	260	none	foal1	68
480	260	none	foal4	55
369	260	none	foal2	52
138	260	none	foal1	49
562	260	none	foal2	46
558	260	none	foal3	84
435	260	none	foal1	52
174	260	none	foal4	69
369	260	none	foal3	59
44	260	none	foal1	2
463	261	yellow	foal4	42
120	261	yellow	foal2	57
470	261	yellow	foal1	2
407	261	yellow	foal2	40
378	261	none	foal3	17
470	261	none	foal4	78
476	261	none	foal4	32
252	261	none	foal4	57
199	261	none	foal3	23
193	261	none	foal2	85
407	261	none	foal1	4
57	261	none	foal4	11
313	261	none	foal1	8
313	261	none	foal2	80
527	261	none	foal3	37
57	261	none	foal2	14
527	261	none	foal4	48
193	261	none	foal3	38
345	261	none	foal2	53
470	261	none	foal4	19
443	261	none	foal2	30
319	261	none	foal1	39
299	261	none	foal1	2
233	261	none	foal3	90
120	261	none	foal3	49
319	261	none	foal3	80
233	261	none	foal2	60
567	261	none	foal4	44
319	261	none	foal1	88
252	261	none	foal1	7
184	261	none	foal4	58
57	261	none	foal1	66
233	261	none	foal4	46
216	262	yellow	foal4	89
41	262	yellow	foal1	84
473	262	yellow	foal3	86
320	262	none	foal1	85
41	262	none	foal1	72
473	262	none	foal1	28
118	262	none	foal2	48
126	262	none	foal1	32
297	262	none	foal3	15
41	262	none	foal4	35
367	262	none	foal3	49
320	262	none	foal3	51
118	262	none	foal1	5
41	262	none	foal2	64
118	262	none	foal4	55
181	262	none	foal2	47
471	263	yellow	foal4	66
43	263	yellow	foal1	38
489	263	none	foal4	6
399	263	none	foal4	27
571	263	none	foal2	39
33	263	none	foal4	70
533	263	none	foal3	63
355	263	none	foal2	38
571	263	none	foal1	38
355	263	none	foal4	60
195	263	none	foal3	43
271	263	none	foal1	16
355	263	none	foal1	83
517	263	none	foal3	21
355	263	none	foal3	30
75	264	yellow	foal2	22
550	264	yellow	foal2	57
357	264	yellow	foal3	48
152	264	yellow	foal1	68
139	264	none	foal2	38
415	264	none	foal4	46
219	264	none	foal1	61
190	264	none	foal4	69
116	264	none	foal1	81
73	264	none	foal3	28
219	264	none	foal1	83
357	264	none	foal2	31
416	264	none	foal3	86
205	264	none	foal3	66
139	264	none	foal2	8
432	265	yellow	foal3	14
67	265	yellow	foal3	65
173	265	yellow	foal4	3
13	265	yellow	foal3	28
99	265	yellow	foal3	7
563	265	yellow	foal1	79
281	265	yellow	foal2	23
481	265	yellow	foal1	6
474	265	yellow	foal3	20
482	265	none	foal3	79
413	265	none	foal2	58
289	265	none	foal1	17
163	265	none	foal4	71
124	265	none	foal4	42
563	265	none	foal3	30
388	265	none	foal4	24
463	265	none	foal2	72
479	265	none	foal3	65
89	265	none	foal3	79
269	265	none	foal1	86
482	265	none	foal4	35
474	265	none	foal1	67
482	265	none	foal4	53
486	265	none	foal4	81
224	265	none	foal3	66
329	265	none	foal1	70
478	265	none	foal1	53
561	265	none	foal1	42
479	265	none	foal2	74
329	265	none	foal1	3
329	265	none	foal3	38
15	265	none	foal1	32
561	265	none	foal2	29
413	265	none	foal1	52
329	265	none	foal3	11
329	265	none	foal4	32
199	266	yellow	foal1	70
57	266	yellow	foal3	84
285	266	red	foal4	23
284	266	none	foal1	65
192	266	none	foal3	34
522	266	none	foal1	15
309	266	none	foal4	32
284	266	none	foal3	37
334	266	none	foal1	20
539	266	none	foal2	78
309	266	none	foal2	49
257	266	none	foal4	64
395	266	none	foal2	2
172	266	none	foal3	35
119	266	none	foal1	13
136	266	none	foal4	58
192	266	none	foal2	28
3	266	none	foal1	73
522	266	none	foal4	66
462	266	none	foal1	23
159	266	none	foal4	6
386	266	none	foal3	71
458	267	yellow	foal4	31
221	267	yellow	foal1	18
526	267	yellow	foal2	77
272	267	none	foal2	48
398	267	none	foal1	73
6	267	none	foal3	64
115	267	none	foal3	14
431	267	none	foal4	68
356	267	none	foal1	38
358	267	none	foal4	81
70	267	none	foal4	81
440	267	none	foal2	33
242	267	none	foal4	5
555	267	none	foal3	71
246	267	none	foal3	68
545	267	none	foal1	53
246	267	none	foal2	41
356	267	none	foal2	69
557	268	none	foal1	67
565	268	none	foal3	21
543	268	none	foal3	58
239	268	none	foal1	62
403	268	none	foal3	25
106	268	none	foal3	83
316	268	none	foal1	55
316	268	none	foal2	71
390	268	none	foal2	30
411	268	none	foal2	61
423	268	none	foal4	66
198	268	none	foal2	85
239	268	none	foal2	30
96	268	none	foal1	62
523	268	none	foal4	56
305	268	none	foal1	74
32	268	none	foal3	58
423	268	none	foal1	57
239	268	none	foal4	44
316	268	none	foal3	28
53	268	none	foal2	86
32	268	none	foal1	33
390	268	none	foal3	88
491	268	none	foal1	49
403	268	none	foal2	61
437	268	none	foal4	40
316	268	none	foal2	48
316	268	none	foal1	51
372	268	none	foal2	25
316	268	none	foal4	20
307	269	yellow	foal4	64
185	269	yellow	foal1	56
292	269	yellow	foal3	73
513	269	yellow	foal2	77
540	269	none	foal4	46
248	269	none	foal2	81
554	269	none	foal3	2
513	269	none	foal4	32
164	269	none	foal4	51
412	269	none	foal4	21
554	269	none	foal1	62
273	269	none	foal4	36
418	269	none	foal2	45
46	269	none	foal3	39
46	269	none	foal2	31
564	269	none	foal1	90
46	269	none	foal3	87
426	270	yellow	foal3	1
61	270	yellow	foal1	69
426	270	yellow	foal4	11
166	270	yellow	foal3	86
326	270	none	foal4	0
382	270	none	foal1	76
288	270	none	foal2	56
537	270	none	foal3	73
103	270	none	foal2	45
288	270	none	foal1	68
247	270	none	foal1	10
230	270	none	foal4	39
414	270	none	foal3	39
537	270	none	foal3	68
166	270	none	foal2	24
500	270	none	foal1	53
83	270	none	foal2	69
496	270	none	foal4	67
293	270	none	foal4	26
542	270	none	foal3	48
83	270	none	foal3	22
537	270	none	foal3	33
103	270	none	foal4	8
341	270	none	foal3	1
330	270	none	foal3	14
293	270	none	foal2	78
402	270	none	foal4	55
451	270	none	foal1	76
214	270	none	foal1	82
40	270	none	foal4	55
330	270	none	foal3	77
496	270	none	foal2	76
402	270	none	foal3	58
530	270	none	foal3	50
172	271	yellow	foal4	42
283	271	yellow	foal3	74
281	271	yellow	foal2	19
463	271	yellow	foal1	47
561	271	none	foal2	60
89	271	none	foal2	89
124	271	none	foal4	38
474	271	none	foal2	34
281	271	none	foal2	49
89	271	none	foal2	1
463	271	none	foal1	55
478	271	none	foal4	20
15	271	none	foal3	38
133	272	yellow	foal2	44
55	272	yellow	foal1	25
385	272	none	foal3	56
131	272	none	foal2	80
380	272	none	foal3	20
129	272	none	foal3	32
441	272	none	foal3	28
342	272	none	foal1	84
376	272	none	foal1	21
311	272	none	foal4	84
342	272	none	foal2	40
396	272	none	foal2	57
396	272	none	foal2	1
261	272	none	foal2	70
569	272	none	foal4	39
342	272	none	foal4	36
396	272	none	foal1	36
508	272	none	foal4	19
84	272	none	foal1	71
194	272	none	foal1	13
441	272	none	foal4	68
342	272	none	foal3	86
261	272	none	foal3	67
202	272	none	foal4	21
298	272	none	foal4	90
84	272	none	foal2	26
120	273	yellow	foal2	42
75	273	yellow	foal2	32
450	273	yellow	foal3	25
524	273	yellow	foal3	9
394	273	none	foal2	73
280	273	none	foal3	20
75	273	none	foal2	88
237	273	none	foal3	66
77	273	none	foal2	43
54	273	none	foal2	87
2	273	none	foal3	80
450	273	none	foal2	0
324	273	none	foal3	45
493	273	none	foal4	18
324	273	none	foal3	7
286	273	none	foal3	79
469	273	none	foal2	21
301	273	none	foal4	56
64	273	none	foal1	12
524	273	none	foal1	23
274	273	none	foal3	54
324	273	none	foal3	0
77	273	none	foal2	69
2	273	none	foal4	15
100	274	yellow	foal3	45
225	274	yellow	foal3	11
132	274	yellow	foal4	24
162	274	yellow	foal4	73
425	274	none	foal4	55
360	274	none	foal2	46
387	274	none	foal2	6
13	274	none	foal1	86
310	274	none	foal2	70
167	274	none	foal1	70
310	274	none	foal4	37
132	274	none	foal4	83
521	274	none	foal2	79
331	274	none	foal2	72
492	274	none	foal1	5
265	274	none	foal1	55
132	274	none	foal3	74
132	274	none	foal3	85
331	274	none	foal4	78
265	274	none	foal3	70
368	274	none	foal4	44
167	274	none	foal4	21
387	274	none	foal4	56
294	274	none	foal1	18
368	274	none	foal4	67
111	274	none	foal2	77
13	274	none	foal4	37
521	274	none	foal1	74
162	274	none	foal3	39
67	274	none	foal1	21
374	274	none	foal4	80
22	275	yellow	foal2	56
98	275	none	foal3	19
22	275	none	foal1	29
42	275	none	foal4	0
186	275	none	foal4	9
229	275	none	foal1	12
355	275	none	foal3	15
399	275	none	foal3	88
33	275	none	foal1	18
325	275	none	foal3	39
160	275	none	foal4	2
128	275	none	foal3	47
442	276	yellow	foal3	37
559	276	yellow	foal3	79
498	276	yellow	foal2	90
498	276	yellow	foal2	75
200	276	yellow	foal4	41
268	276	none	foal4	69
31	276	none	foal4	30
59	276	none	foal1	27
429	276	none	foal3	66
268	276	none	foal2	84
429	276	none	foal3	28
429	276	none	foal1	15
59	276	none	foal2	28
307	276	none	foal1	30
147	276	none	foal1	84
377	276	none	foal1	51
391	276	none	foal1	1
377	276	none	foal2	78
147	276	none	foal3	17
176	276	none	foal2	40
31	276	none	foal1	65
528	276	none	foal2	13
447	277	yellow	foal4	73
532	277	yellow	foal3	40
34	277	none	foal3	24
206	277	none	foal2	64
405	277	none	foal4	87
552	277	none	foal2	50
219	277	none	foal1	81
139	277	none	foal1	72
116	277	none	foal4	12
228	277	none	foal4	88
157	277	none	foal2	24
532	277	none	foal1	51
503	278	yellow	foal3	29
367	278	yellow	foal2	71
536	278	none	foal4	69
17	278	none	foal1	72
165	278	none	foal4	15
536	278	none	foal2	16
541	278	none	foal2	65
197	278	none	foal3	66
208	278	none	foal2	43
320	278	none	foal4	20
181	278	none	foal1	90
208	278	none	foal3	34
144	278	none	foal2	50
232	278	none	foal3	43
518	278	none	foal4	56
118	278	none	foal3	32
208	278	none	foal1	18
12	278	none	foal2	49
41	278	none	foal3	26
181	278	none	foal3	78
536	278	none	foal1	7
536	278	none	foal1	9
297	278	none	foal1	45
297	278	none	foal1	11
259	279	yellow	foal2	58
18	279	yellow	foal1	25
50	279	none	foal2	51
439	279	none	foal4	51
485	279	none	foal3	3
485	279	none	foal2	42
155	279	none	foal1	26
80	279	none	foal4	57
240	279	none	foal3	0
446	279	none	foal3	2
439	279	none	foal1	46
375	279	none	foal2	0
352	279	none	foal3	42
62	279	none	foal1	0
182	279	none	foal3	32
471	279	none	foal3	72
352	279	none	foal2	38
485	279	none	foal3	27
439	279	none	foal1	64
352	279	none	foal3	71
439	279	none	foal4	69
62	279	none	foal3	75
155	279	none	foal3	77
352	279	none	foal1	24
317	280	yellow	foal3	35
550	280	yellow	foal1	22
327	280	yellow	foal2	70
514	280	yellow	foal3	90
456	280	yellow	foal1	36
4	280	red	foal3	45
519	280	none	foal4	4
71	280	none	foal4	1
212	280	none	foal4	21
161	280	none	foal4	31
335	280	none	foal4	18
86	280	none	foal1	53
29	280	none	foal1	82
225	280	none	foal1	66
175	280	none	foal2	2
354	280	none	foal1	42
512	281	yellow	foal4	41
81	281	yellow	foal3	39
137	281	yellow	foal2	70
170	281	none	foal3	6
467	281	none	foal1	47
191	281	none	foal1	20
231	281	none	foal4	6
68	281	none	foal2	7
455	281	none	foal2	79
344	281	none	foal3	7
68	281	none	foal1	25
85	281	none	foal2	62
298	282	yellow	foal3	0
261	282	yellow	foal4	60
257	282	yellow	foal4	56
461	282	yellow	foal4	3
529	282	none	foal3	4
529	282	none	foal1	89
285	282	none	foal3	9
309	282	none	foal2	49
461	282	none	foal2	67
529	282	none	foal3	50
284	282	none	foal1	74
462	282	none	foal1	30
178	282	none	foal1	90
122	282	none	foal1	19
110	282	none	foal1	82
453	282	none	foal1	81
386	282	none	foal4	61
7	282	none	foal4	7
234	282	none	foal4	79
178	282	none	foal1	62
395	282	none	foal1	19
395	282	none	foal2	42
539	282	none	foal3	55
3	282	none	foal3	2
461	282	none	foal1	41
314	282	none	foal4	26
159	282	none	foal3	9
309	282	none	foal3	89
539	282	none	foal3	17
172	282	none	foal2	31
172	282	none	foal1	59
314	282	none	foal2	64
461	282	none	foal2	40
110	282	none	foal3	88
309	282	none	foal3	40
192	282	none	foal1	86
324	283	yellow	foal1	30
545	283	yellow	foal2	46
308	283	yellow	foal4	31
379	283	none	foal3	38
526	283	none	foal2	90
442	283	none	foal3	87
246	283	none	foal4	81
358	283	none	foal1	35
545	283	none	foal1	40
109	283	none	foal1	90
6	283	none	foal1	57
398	283	none	foal4	1
526	283	none	foal4	87
431	283	none	foal2	44
291	283	none	foal3	78
70	283	none	foal1	17
123	283	none	foal4	57
526	283	none	foal4	32
6	283	none	foal3	36
6	283	none	foal3	68
406	283	none	foal4	8
398	283	none	foal4	22
494	283	none	foal3	8
308	283	none	foal1	37
115	283	none	foal2	4
379	283	none	foal2	81
279	283	none	foal2	55
291	283	none	foal2	6
242	283	none	foal2	35
497	283	none	foal1	72
362	283	none	foal3	25
279	283	none	foal1	2
266	283	none	foal3	7
70	283	none	foal1	90
45	284	yellow	foal2	34
112	284	yellow	foal2	30
457	284	yellow	foal2	16
102	284	none	foal2	64
372	284	none	foal4	33
437	284	none	foal3	60
256	284	none	foal2	2
24	284	none	foal1	43
423	284	none	foal2	27
256	284	none	foal2	3
102	284	none	foal1	81
403	284	none	foal2	14
437	284	none	foal1	17
254	284	none	foal1	71
102	284	none	foal2	88
53	284	none	foal1	56
251	284	none	foal4	50
254	284	none	foal2	43
525	284	none	foal2	68
316	284	none	foal4	42
32	284	none	foal2	33
483	284	none	foal4	63
543	284	none	foal1	46
363	284	none	foal1	33
256	284	none	foal1	37
403	284	none	foal1	15
413	285	yellow	foal3	5
94	285	yellow	foal3	67
438	285	yellow	foal2	62
142	285	none	foal2	2
464	285	none	foal3	83
340	285	none	foal1	11
303	285	none	foal2	84
142	285	none	foal3	82
142	285	none	foal2	84
148	285	none	foal2	12
303	285	none	foal3	68
94	285	none	foal3	20
148	285	none	foal3	45
428	285	none	foal3	16
216	285	none	foal2	19
270	285	none	foal3	46
270	285	none	foal1	77
348	285	none	foal1	84
262	285	none	foal2	72
547	285	none	foal4	55
270	285	none	foal4	69
502	285	none	foal1	19
27	285	none	foal3	10
422	286	yellow	foal1	64
50	286	yellow	foal3	35
495	286	yellow	foal2	21
260	286	yellow	foal2	85
114	286	yellow	foal2	19
319	286	yellow	foal4	23
287	286	yellow	foal3	83
154	286	none	foal3	70
476	286	none	foal3	77
120	286	none	foal2	61
345	286	none	foal4	43
470	286	none	foal3	68
287	286	none	foal4	81
184	286	none	foal1	28
287	286	none	foal2	59
241	286	none	foal4	56
470	286	none	foal2	57
527	286	none	foal4	51
313	286	none	foal3	54
527	286	none	foal4	73
407	286	none	foal3	47
443	286	none	foal2	80
476	286	none	foal1	38
567	286	none	foal3	24
501	286	none	foal1	8
567	286	none	foal1	50
313	286	none	foal1	22
501	286	none	foal1	19
199	286	none	foal3	0
319	286	none	foal1	22
409	286	none	foal4	85
319	286	none	foal2	17
470	286	none	foal2	61
120	286	none	foal4	13
199	286	none	foal1	20
287	286	none	foal2	14
193	286	none	foal1	72
287	286	none	foal2	59
95	286	none	foal2	37
408	287	yellow	foal1	56
536	287	yellow	foal3	54
503	287	yellow	foal1	89
197	287	yellow	foal4	64
197	287	yellow	foal4	72
72	287	yellow	foal1	84
158	287	none	foal2	62
546	287	none	foal2	50
196	287	none	foal2	82
568	287	none	foal1	46
436	287	none	foal1	16
253	287	none	foal3	17
245	287	none	foal4	29
302	287	none	foal3	78
218	287	none	foal4	36
253	287	none	foal2	10
140	287	none	foal3	45
465	287	none	foal1	8
465	287	none	foal3	43
72	287	none	foal3	1
19	287	none	foal4	28
546	287	none	foal1	13
221	287	none	foal4	6
510	287	none	foal4	59
92	287	none	foal4	14
196	287	none	foal4	55
19	287	none	foal4	72
546	287	none	foal2	2
318	287	none	foal1	31
420	287	none	foal4	76
436	287	none	foal3	19
72	287	none	foal3	75
92	287	none	foal3	21
318	287	none	foal4	56
220	288	yellow	foal3	80
355	288	yellow	foal1	38
417	288	yellow	foal3	88
180	288	none	foal4	39
104	288	none	foal3	32
93	288	none	foal2	50
447	288	none	foal2	4
562	288	none	foal2	38
174	288	none	foal3	39
169	288	none	foal3	84
93	288	none	foal4	61
366	288	none	foal1	79
548	288	none	foal2	19
38	288	none	foal4	22
562	288	none	foal2	9
180	288	none	foal1	73
477	288	none	foal1	68
174	288	none	foal2	67
341	289	yellow	foal1	31
349	289	yellow	foal3	17
349	289	yellow	foal2	17
134	289	none	foal3	38
156	289	none	foal2	49
185	289	none	foal1	53
513	289	none	foal2	6
46	289	none	foal1	79
185	289	none	foal4	86
418	289	none	foal2	50
11	289	none	foal4	58
273	289	none	foal2	20
21	289	none	foal3	83
459	289	none	foal4	31
25	289	none	foal4	8
46	289	none	foal2	75
185	289	none	foal1	87
37	289	none	foal3	46
156	289	none	foal2	79
292	289	none	foal1	89
37	289	none	foal2	34
207	289	none	foal2	70
554	289	none	foal3	42
472	289	none	foal3	61
513	289	none	foal2	74
21	289	none	foal2	32
273	289	none	foal2	57
292	289	none	foal1	9
273	289	none	foal1	51
127	289	none	foal4	34
513	289	none	foal3	36
156	289	none	foal1	76
412	289	none	foal3	18
207	289	none	foal3	87
273	289	none	foal3	14
127	289	none	foal3	55
37	289	none	foal3	79
266	290	yellow	foal2	79
441	290	yellow	foal1	50
311	290	yellow	foal2	41
153	290	yellow	foal4	3
376	290	yellow	foal4	6
342	290	yellow	foal3	84
209	290	none	foal3	31
298	290	none	foal2	88
209	290	none	foal4	81
78	290	none	foal4	74
78	290	none	foal2	43
342	290	none	foal4	11
131	290	none	foal4	83
91	290	none	foal3	82
385	290	none	foal4	41
131	290	none	foal1	5
36	290	none	foal1	90
347	290	none	foal1	57
131	290	none	foal1	59
36	290	none	foal1	39
36	290	none	foal4	90
347	290	none	foal4	70
547	291	yellow	foal2	69
303	291	yellow	foal4	67
275	291	yellow	foal3	36
211	291	none	foal3	67
125	291	none	foal4	36
439	291	none	foal4	37
495	291	none	foal2	60
52	291	none	foal3	68
404	291	none	foal1	88
80	291	none	foal2	77
485	291	none	foal1	38
373	291	none	foal1	36
182	291	none	foal2	47
373	291	none	foal3	69
155	291	none	foal2	68
373	291	none	foal1	67
52	291	none	foal1	67
453	292	yellow	foal1	35
462	292	yellow	foal2	14
76	292	yellow	foal4	55
111	292	yellow	foal4	81
360	292	none	foal2	31
145	292	none	foal4	62
107	292	none	foal2	77
484	292	none	foal3	42
107	292	none	foal1	40
111	292	none	foal3	44
310	292	none	foal4	19
346	292	none	foal3	21
238	292	none	foal2	10
387	292	none	foal1	85
331	292	none	foal4	83
63	292	none	foal2	57
521	292	none	foal1	88
132	292	none	foal2	3
294	292	none	foal4	61
63	292	none	foal1	28
374	292	none	foal4	12
107	292	none	foal1	72
145	292	none	foal3	75
145	292	none	foal4	3
67	292	none	foal3	12
63	292	none	foal4	4
267	292	none	foal3	49
368	292	none	foal1	10
368	292	none	foal2	48
304	292	none	foal4	20
432	292	none	foal2	7
521	292	none	foal4	73
13	292	none	foal2	73
97	292	none	foal3	58
98	293	yellow	foal2	12
220	293	yellow	foal1	28
350	293	none	foal4	62
186	293	none	foal2	15
160	293	none	foal3	57
43	293	none	foal3	67
42	293	none	foal4	82
222	293	none	foal1	49
9	293	none	foal3	22
9	293	none	foal4	60
220	293	none	foal2	20
271	293	none	foal1	76
195	293	none	foal3	53
355	293	none	foal3	72
427	293	none	foal1	14
160	293	none	foal4	60
571	293	none	foal4	73
22	293	none	foal1	54
531	293	none	foal4	19
186	293	none	foal1	42
128	293	none	foal3	41
350	293	none	foal3	36
128	293	none	foal1	72
22	293	none	foal4	11
9	293	none	foal2	62
389	294	yellow	foal1	77
389	294	yellow	foal3	13
95	294	yellow	foal3	41
40	294	yellow	foal3	56
247	294	none	foal3	64
402	294	none	foal4	55
83	294	none	foal2	2
542	294	none	foal1	29
451	294	none	foal2	22
402	294	none	foal1	32
214	294	none	foal2	20
530	294	none	foal4	54
530	294	none	foal4	82
451	294	none	foal4	46
530	294	none	foal3	13
466	294	none	foal1	75
382	294	none	foal3	29
402	294	none	foal3	58
247	294	none	foal1	50
293	294	none	foal4	15
496	294	none	foal1	17
103	294	none	foal3	16
361	294	none	foal1	50
542	294	none	foal2	66
402	294	none	foal1	63
135	295	yellow	foal4	2
457	295	yellow	foal4	61
372	295	yellow	foal2	90
135	295	yellow	foal1	45
357	295	yellow	foal4	23
306	295	yellow	foal4	60
255	295	none	foal1	3
415	295	none	foal1	71
333	295	none	foal3	66
416	295	none	foal3	73
255	295	none	foal4	6
73	295	none	foal1	62
190	295	none	foal3	58
415	295	none	foal1	72
317	295	none	foal3	19
415	295	none	foal2	72
177	295	none	foal2	45
534	295	none	foal4	16
73	295	none	foal1	34
306	295	none	foal4	13
353	295	none	foal4	40
405	295	none	foal1	64
157	295	none	foal4	82
116	295	none	foal2	71
217	295	none	foal3	51
405	295	none	foal4	80
405	295	none	foal4	42
550	295	none	foal4	64
552	295	none	foal2	35
552	295	none	foal2	80
157	295	none	foal4	40
152	295	none	foal4	24
317	295	none	foal4	38
405	295	none	foal4	83
415	295	none	foal4	26
353	295	none	foal2	20
467	296	yellow	foal1	77
12	296	yellow	foal4	20
408	296	none	foal2	39
197	296	none	foal2	42
10	296	none	foal3	61
541	296	none	foal4	72
518	296	none	foal2	65
10	296	none	foal4	29
518	296	none	foal2	0
560	296	none	foal4	77
144	296	none	foal3	60
473	296	none	foal2	14
424	296	none	foal3	13
181	296	none	foal1	88
503	296	none	foal1	22
560	296	none	foal1	88
424	296	none	foal1	55
560	296	none	foal3	81
208	296	none	foal2	40
541	296	none	foal1	85
320	296	none	foal1	20
412	297	yellow	foal4	67
37	297	yellow	foal2	90
75	297	none	foal1	82
35	297	none	foal4	53
383	297	none	foal4	77
448	297	none	foal4	88
264	297	none	foal1	90
286	297	none	foal1	88
77	297	none	foal3	80
64	297	none	foal1	64
448	297	none	foal1	19
2	297	none	foal2	75
54	297	none	foal3	6
383	297	none	foal3	74
237	297	none	foal3	40
524	297	none	foal3	25
524	297	none	foal4	76
168	297	none	foal2	54
113	297	none	foal4	47
35	297	none	foal1	84
35	297	none	foal4	83
450	297	none	foal3	58
493	297	none	foal4	2
301	297	none	foal4	86
324	297	none	foal1	86
295	298	yellow	foal2	71
479	298	yellow	foal3	54
563	298	yellow	foal4	17
478	298	yellow	foal2	90
561	298	yellow	foal3	81
479	298	none	foal4	23
486	298	none	foal2	2
337	298	none	foal4	28
329	298	none	foal4	18
474	298	none	foal3	29
397	298	none	foal4	60
99	298	none	foal2	90
15	298	none	foal2	42
482	298	none	foal2	28
474	298	none	foal4	12
281	298	none	foal4	64
478	298	none	foal2	37
224	298	none	foal3	27
269	298	none	foal4	64
337	298	none	foal3	72
397	298	none	foal3	58
499	299	yellow	foal2	49
468	299	yellow	foal3	34
31	299	yellow	foal2	58
176	299	yellow	foal1	34
268	299	none	foal3	29
45	299	none	foal3	27
39	299	none	foal2	8
444	299	none	foal3	71
377	299	none	foal2	86
66	299	none	foal1	59
244	299	none	foal2	71
56	299	none	foal2	8
475	299	none	foal4	7
112	299	none	foal3	57
187	299	none	foal1	83
381	299	none	foal1	89
66	299	none	foal2	69
244	299	none	foal4	56
498	299	none	foal3	71
359	299	none	foal3	85
444	299	none	foal2	85
268	299	none	foal4	63
268	299	none	foal1	47
359	299	none	foal1	7
112	299	none	foal4	88
66	299	none	foal2	17
112	299	none	foal3	7
147	299	none	foal1	88
56	299	none	foal1	43
56	299	none	foal2	81
429	299	none	foal3	88
346	300	yellow	foal2	51
173	300	yellow	foal3	1
13	300	yellow	foal4	66
252	300	yellow	foal1	64
57	300	yellow	foal3	51
287	300	none	foal3	82
345	300	none	foal2	5
407	300	none	foal1	4
476	300	none	foal1	2
188	300	none	foal2	3
443	300	none	foal3	13
378	300	none	foal2	2
476	300	none	foal1	58
501	300	none	foal2	63
470	300	none	foal1	32
154	300	none	foal2	43
184	300	none	foal1	41
114	300	none	foal1	5
527	300	none	foal1	62
184	300	none	foal1	74
443	300	none	foal3	34
69	300	none	foal1	40
567	300	none	foal1	42
448	301	yellow	foal4	16
546	301	yellow	foal2	38
465	301	red	foal3	76
420	301	none	foal2	55
568	301	none	foal1	68
221	301	none	foal3	44
221	301	none	foal2	3
253	301	none	foal1	59
568	301	none	foal3	15
196	301	none	foal2	31
215	301	none	foal4	3
420	301	none	foal4	66
315	301	none	foal4	21
140	301	none	foal2	38
465	301	none	foal4	52
290	301	none	foal3	20
290	301	none	foal1	5
315	301	none	foal2	17
245	301	none	foal3	65
196	301	none	foal2	79
290	301	none	foal2	25
436	301	none	foal4	0
290	301	none	foal2	50
318	301	none	foal1	28
140	301	none	foal4	54
302	301	none	foal1	62
234	302	yellow	foal4	53
3	302	yellow	foal3	65
119	302	none	foal2	87
234	302	none	foal3	37
76	302	none	foal3	78
284	302	none	foal1	88
136	302	none	foal4	34
3	302	none	foal2	20
192	302	none	foal4	79
386	302	none	foal4	1
277	302	none	foal1	46
14	302	none	foal2	32
178	302	none	foal3	9
263	303	yellow	foal2	23
42	303	yellow	foal4	77
11	303	yellow	foal1	89
185	303	none	foal2	70
37	303	none	foal1	66
418	303	none	foal3	86
156	303	none	foal4	63
46	303	none	foal3	36
21	303	none	foal1	90
540	303	none	foal4	81
273	303	none	foal3	10
11	303	none	foal3	33
513	303	none	foal4	28
25	303	none	foal3	25
156	303	none	foal3	30
472	303	none	foal3	20
25	303	none	foal3	14
156	303	none	foal4	72
490	303	none	foal1	75
542	304	yellow	foal4	36
562	304	yellow	foal4	30
558	304	yellow	foal1	18
384	304	none	foal3	27
105	304	none	foal2	32
384	304	none	foal1	56
447	304	none	foal3	26
151	304	none	foal2	36
58	304	none	foal4	90
489	305	yellow	foal1	5
98	305	yellow	foal2	68
60	305	none	foal4	14
454	305	none	foal1	1
433	305	none	foal3	76
282	305	none	foal4	30
150	305	none	foal1	62
323	305	none	foal4	82
191	305	none	foal3	61
170	305	none	foal4	71
183	305	none	foal3	15
282	305	none	foal3	26
150	305	none	foal2	21
231	305	none	foal3	40
201	305	none	foal1	14
332	305	none	foal2	24
282	305	none	foal2	59
170	305	none	foal2	41
201	305	none	foal3	57
460	305	none	foal1	76
282	305	none	foal1	30
85	305	none	foal1	31
121	305	none	foal3	42
231	305	none	foal4	43
433	305	none	foal4	82
85	305	none	foal1	36
170	305	none	foal4	47
460	305	none	foal1	56
332	305	none	foal4	69
332	305	none	foal4	31
323	305	none	foal3	69
376	306	yellow	foal1	63
251	306	yellow	foal2	42
372	306	yellow	foal1	36
457	306	none	foal4	21
523	306	none	foal1	27
96	306	none	foal1	51
390	306	none	foal1	25
198	306	none	foal3	76
525	306	none	foal4	27
543	306	none	foal4	53
437	306	none	foal1	52
565	306	none	foal1	90
483	306	none	foal1	23
403	306	none	foal2	74
565	306	none	foal2	74
565	306	none	foal1	22
557	306	none	foal1	8
316	306	none	foal4	37
24	306	none	foal4	33
543	306	none	foal2	50
32	306	none	foal4	1
254	306	none	foal1	2
400	306	none	foal3	77
305	306	none	foal3	63
53	306	none	foal2	78
403	306	none	foal2	21
525	306	none	foal1	85
543	306	none	foal4	71
423	306	none	foal3	74
198	306	none	foal1	13
363	306	none	foal1	63
24	306	none	foal2	90
509	306	none	foal2	4
256	306	none	foal1	14
403	306	none	foal4	23
523	306	none	foal2	59
108	307	yellow	foal3	4
388	307	yellow	foal2	62
337	307	none	foal1	64
224	307	none	foal2	73
15	307	none	foal4	43
124	307	none	foal4	81
413	307	none	foal4	12
343	307	none	foal2	33
289	307	none	foal1	88
289	307	none	foal3	6
343	307	none	foal1	3
224	307	none	foal2	58
337	307	none	foal2	62
478	307	none	foal3	83
281	307	none	foal1	90
563	307	none	foal4	82
289	307	none	foal4	55
89	307	none	foal3	82
474	307	none	foal4	50
397	307	none	foal1	1
99	307	none	foal4	87
124	307	none	foal1	33
122	308	none	foal3	82
76	308	none	foal2	43
234	308	none	foal4	79
172	308	none	foal3	42
285	308	none	foal1	73
284	308	none	foal2	25
5	308	none	foal3	27
277	308	none	foal2	37
309	308	none	foal3	65
539	308	none	foal2	16
136	308	none	foal1	25
159	308	none	foal3	27
488	308	none	foal4	33
522	308	none	foal1	59
7	308	none	foal4	4
285	308	none	foal4	59
314	308	none	foal2	84
309	308	none	foal1	80
453	308	none	foal4	77
178	308	none	foal4	9
284	308	none	foal4	64
453	308	none	foal2	17
529	308	none	foal3	48
192	308	none	foal1	38
277	308	none	foal2	34
122	308	none	foal1	38
159	308	none	foal3	2
178	308	none	foal2	68
110	308	none	foal4	54
257	308	none	foal3	73
136	308	none	foal2	40
421	309	yellow	foal1	7
368	309	yellow	foal4	27
67	309	none	foal4	9
310	309	none	foal2	90
63	309	none	foal3	5
162	309	none	foal1	39
294	309	none	foal2	74
484	309	none	foal1	86
63	309	none	foal4	46
13	309	none	foal1	44
387	309	none	foal2	9
132	309	none	foal3	66
421	309	none	foal3	49
167	309	none	foal3	54
111	309	none	foal4	13
13	309	none	foal3	78
331	309	none	foal3	55
97	309	none	foal2	1
492	309	none	foal3	75
432	309	none	foal3	45
484	309	none	foal4	69
421	309	none	foal4	31
111	309	none	foal1	18
167	309	none	foal3	40
13	309	none	foal4	54
173	309	none	foal4	59
391	310	yellow	foal4	74
118	310	yellow	foal2	23
165	310	yellow	foal4	64
74	310	none	foal3	85
424	310	none	foal3	10
227	310	none	foal1	63
8	310	none	foal1	77
8	310	none	foal3	53
79	310	none	foal2	51
8	310	none	foal1	74
473	310	none	foal1	34
367	310	none	foal4	57
181	310	none	foal2	13
181	310	none	foal2	51
473	310	none	foal1	1
424	310	none	foal4	21
367	310	none	foal1	25
541	310	none	foal1	49
232	310	none	foal3	50
126	310	none	foal4	75
126	310	none	foal1	63
181	310	none	foal2	25
208	310	none	foal2	86
12	310	none	foal4	65
424	310	none	foal3	74
118	310	none	foal1	88
518	310	none	foal2	66
17	310	none	foal4	88
10	310	none	foal3	61
572	311	yellow	foal4	85
537	311	yellow	foal3	40
542	311	none	foal3	44
496	311	none	foal2	64
247	311	none	foal2	30
351	311	none	foal2	43
288	311	none	foal3	61
500	311	none	foal3	19
466	311	none	foal3	0
330	311	none	foal1	71
530	311	none	foal4	61
293	311	none	foal2	14
40	311	none	foal2	84
341	311	none	foal4	35
351	311	none	foal2	31
83	311	none	foal4	39
214	311	none	foal3	59
326	311	none	foal1	16
530	311	none	foal1	29
542	311	none	foal1	16
537	311	none	foal4	35
451	311	none	foal4	41
166	311	none	foal4	36
288	311	none	foal1	53
414	311	none	foal1	57
94	312	yellow	foal2	45
428	312	yellow	foal3	0
151	312	yellow	foal3	45
58	312	yellow	foal2	67
417	312	yellow	foal1	61
203	312	none	foal4	86
447	312	none	foal4	19
366	312	none	foal2	3
93	312	none	foal3	21
169	312	none	foal1	67
322	312	none	foal4	4
562	312	none	foal1	83
384	312	none	foal3	41
73	313	yellow	foal4	68
532	313	none	foal4	30
357	313	none	foal3	38
416	313	none	foal4	65
415	313	none	foal3	55
116	313	none	foal1	68
534	313	none	foal1	20
34	313	none	foal3	31
317	313	none	foal3	66
333	313	none	foal3	79
353	313	none	foal1	34
206	313	none	foal2	37
73	313	none	foal1	45
219	313	none	foal1	73
226	313	none	foal3	69
255	313	none	foal1	46
534	313	none	foal2	27
255	313	none	foal4	43
255	313	none	foal3	21
157	313	none	foal4	58
212	314	yellow	foal2	58
29	314	yellow	foal1	48
154	314	none	foal2	33
193	314	none	foal1	32
154	314	none	foal1	26
409	314	none	foal4	17
193	314	none	foal2	31
345	314	none	foal3	42
389	314	none	foal4	25
252	314	none	foal1	87
378	314	none	foal4	57
120	314	none	foal4	14
319	314	none	foal2	54
319	314	none	foal1	58
527	314	none	foal4	89
243	314	none	foal3	50
287	314	none	foal1	77
120	314	none	foal4	24
476	314	none	foal1	81
144	315	yellow	foal4	77
118	315	yellow	foal1	86
503	315	yellow	foal1	87
399	315	yellow	foal3	13
531	315	yellow	foal2	17
9	315	none	foal4	89
42	315	none	foal3	60
535	315	none	foal3	34
160	315	none	foal2	13
399	315	none	foal2	56
186	315	none	foal3	66
160	315	none	foal2	20
325	315	none	foal1	75
195	315	none	foal4	41
571	315	none	foal3	30
222	315	none	foal2	5
128	315	none	foal4	81
535	315	none	foal4	40
427	315	none	foal1	33
263	315	none	foal4	68
220	315	none	foal3	9
507	315	none	foal3	84
33	315	none	foal2	66
42	315	none	foal2	18
222	315	none	foal2	0
487	315	none	foal2	0
128	315	none	foal1	0
336	315	none	foal3	68
220	315	none	foal1	58
222	315	none	foal2	39
222	315	none	foal3	52
507	315	none	foal3	51
531	315	none	foal1	81
186	315	none	foal4	83
289	316	yellow	foal2	8
498	316	yellow	foal1	49
187	316	yellow	foal2	86
296	316	yellow	foal3	10
498	316	red	foal2	79
200	316	none	foal2	74
187	316	none	foal3	88
528	316	none	foal2	30
39	316	none	foal4	45
371	316	none	foal3	60
187	316	none	foal3	47
268	316	none	foal2	10
528	316	none	foal3	52
296	316	none	foal1	31
444	316	none	foal2	60
200	316	none	foal4	31
528	316	none	foal3	35
31	316	none	foal4	13
209	317	none	foal1	5
551	317	none	foal4	16
376	317	none	foal4	23
131	317	none	foal1	21
551	317	none	foal2	8
261	317	none	foal4	66
515	317	none	foal4	48
55	317	none	foal4	32
258	317	none	foal2	41
261	317	none	foal3	70
146	317	none	foal1	74
441	317	none	foal2	38
380	317	none	foal3	77
209	317	none	foal3	18
258	317	none	foal2	47
258	317	none	foal4	8
396	317	none	foal4	68
376	317	none	foal1	35
78	317	none	foal1	65
405	318	yellow	foal2	75
494	318	none	foal4	0
250	318	none	foal2	17
242	318	none	foal2	74
358	318	none	foal2	60
70	318	none	foal3	32
555	318	none	foal4	77
497	318	none	foal3	53
242	318	none	foal3	30
545	318	none	foal3	69
28	318	none	foal2	21
526	318	none	foal3	42
291	318	none	foal3	6
123	318	none	foal4	31
28	318	none	foal1	52
362	318	none	foal1	88
440	318	none	foal4	29
494	318	none	foal4	8
266	318	none	foal4	77
356	318	none	foal1	75
358	318	none	foal1	68
440	318	none	foal4	18
308	318	none	foal1	25
279	318	none	foal4	67
358	318	none	foal3	63
250	318	none	foal4	26
242	318	none	foal1	52
440	318	none	foal1	81
272	318	none	foal2	63
356	318	none	foal3	82
440	318	none	foal3	22
497	318	none	foal4	41
362	318	none	foal4	8
262	319	yellow	foal4	51
27	319	yellow	foal1	3
270	319	yellow	foal4	23
502	319	none	foal2	26
348	319	none	foal1	12
348	319	none	foal1	29
142	319	none	foal2	66
148	319	none	foal4	19
216	319	none	foal4	29
438	319	none	foal3	60
204	319	none	foal1	38
88	319	none	foal3	82
216	319	none	foal2	19
348	319	none	foal4	12
340	319	none	foal1	33
90	319	none	foal3	10
338	319	none	foal3	49
303	319	none	foal4	32
340	319	none	foal2	89
262	319	none	foal4	1
270	319	none	foal3	15
547	319	none	foal3	78
428	319	none	foal1	21
204	319	none	foal2	20
393	319	none	foal4	67
502	319	none	foal4	81
87	319	none	foal4	43
464	319	none	foal2	40
88	319	none	foal2	82
262	319	none	foal3	48
88	319	none	foal3	12
457	320	yellow	foal2	0
96	320	yellow	foal2	52
472	320	yellow	foal3	30
564	320	yellow	foal2	68
185	320	yellow	foal2	43
564	320	yellow	foal2	0
37	320	none	foal4	55
459	320	none	foal2	18
513	320	none	foal2	26
564	320	none	foal4	35
540	320	none	foal2	84
248	320	none	foal4	50
37	320	none	foal1	7
513	320	none	foal4	1
540	320	none	foal4	48
46	320	none	foal4	26
207	320	none	foal2	68
564	320	none	foal4	4
21	320	none	foal1	89
278	320	none	foal1	15
248	320	none	foal4	18
564	320	none	foal2	28
25	320	none	foal3	77
164	320	none	foal2	58
37	320	none	foal3	69
248	320	none	foal4	36
540	320	none	foal4	17
490	320	none	foal2	3
472	320	none	foal2	39
360	321	yellow	foal1	86
374	321	yellow	foal1	13
237	321	yellow	foal1	56
280	321	yellow	foal3	42
264	321	yellow	foal4	45
113	321	none	foal2	87
54	321	none	foal1	24
264	321	none	foal4	44
35	321	none	foal3	77
301	321	none	foal2	51
168	321	none	foal1	15
54	321	none	foal4	78
237	321	none	foal2	27
77	321	none	foal2	77
2	321	none	foal2	71
77	321	none	foal3	84
524	321	none	foal2	55
249	321	none	foal1	67
65	321	none	foal3	40
280	321	none	foal2	29
524	321	none	foal2	25
450	321	none	foal4	48
469	321	none	foal3	73
64	321	none	foal3	14
274	321	none	foal1	29
538	321	none	foal2	2
64	321	none	foal3	42
113	321	none	foal3	37
301	321	none	foal3	56
274	321	none	foal3	38
35	321	none	foal3	58
520	321	none	foal3	5
65	321	none	foal2	73
469	321	none	foal4	81
54	321	none	foal3	64
280	321	none	foal4	41
113	321	none	foal4	81
462	322	yellow	foal1	16
285	322	yellow	foal2	66
284	322	yellow	foal2	24
302	322	none	foal2	56
221	322	none	foal4	7
458	322	none	foal1	80
253	322	none	foal3	12
315	322	none	foal3	67
465	322	none	foal1	14
140	322	none	foal4	12
19	322	none	foal4	54
302	322	none	foal1	10
141	322	none	foal4	46
302	322	none	foal1	48
568	322	none	foal2	47
546	322	none	foal2	80
158	322	none	foal1	78
215	322	none	foal4	62
290	322	none	foal2	22
302	322	none	foal1	55
221	322	none	foal4	33
510	322	none	foal3	66
318	322	none	foal2	48
221	322	none	foal1	81
72	322	none	foal3	74
196	322	none	foal3	48
443	323	yellow	foal4	17
49	323	yellow	foal3	66
70	323	yellow	foal1	0
494	323	none	foal4	68
356	323	none	foal4	67
28	323	none	foal2	56
266	323	none	foal2	3
406	323	none	foal1	35
246	323	none	foal3	15
431	323	none	foal4	76
494	323	none	foal3	18
494	323	none	foal3	37
431	323	none	foal2	19
361	324	yellow	foal1	21
328	324	yellow	foal2	81
328	324	yellow	foal3	71
23	324	yellow	foal2	9
519	324	yellow	foal3	79
223	324	none	foal3	76
570	324	none	foal2	66
456	324	none	foal4	46
449	324	none	foal2	11
410	324	none	foal4	48
335	324	none	foal1	70
449	324	none	foal1	2
449	324	none	foal4	63
175	324	none	foal3	80
300	324	none	foal4	90
401	324	none	foal4	30
23	324	none	foal2	76
225	324	none	foal4	47
86	324	none	foal1	34
570	324	none	foal4	32
401	324	none	foal3	80
71	324	none	foal2	66
468	324	none	foal2	53
570	324	none	foal3	9
23	324	none	foal2	12
223	324	none	foal1	25
23	324	none	foal2	27
143	324	none	foal1	45
86	324	none	foal1	20
456	324	none	foal2	14
4	324	none	foal4	79
570	324	none	foal4	34
100	324	none	foal1	80
175	324	none	foal2	9
456	324	none	foal4	64
38	325	yellow	foal3	18
295	325	yellow	foal4	26
50	325	yellow	foal2	44
275	325	none	foal2	18
155	325	none	foal1	37
18	325	none	foal1	46
446	325	none	foal3	4
189	325	none	foal2	36
240	325	none	foal4	28
18	325	none	foal2	68
422	325	none	foal3	85
422	325	none	foal2	41
364	325	none	foal1	14
404	325	none	foal2	56
572	325	none	foal4	52
80	325	none	foal3	17
375	325	none	foal2	89
50	325	none	foal2	90
485	325	none	foal4	85
375	325	none	foal2	12
18	325	none	foal3	74
235	325	none	foal3	66
572	325	none	foal3	39
1	325	none	foal2	31
404	325	none	foal4	8
365	326	yellow	foal4	39
253	326	yellow	foal2	28
345	326	yellow	foal1	35
114	326	yellow	foal3	81
241	326	yellow	foal3	21
199	326	none	foal4	81
287	326	none	foal3	74
567	326	none	foal1	1
407	326	none	foal3	84
407	326	none	foal4	4
389	326	none	foal1	78
57	326	none	foal3	10
407	326	none	foal2	59
389	326	none	foal4	81
233	326	none	foal4	60
409	326	none	foal2	43
299	326	none	foal4	87
243	326	none	foal4	12
114	326	none	foal3	43
243	326	none	foal1	29
241	326	none	foal3	63
95	326	none	foal3	51
154	326	none	foal1	78
527	326	none	foal1	90
378	326	none	foal2	87
409	326	none	foal2	6
389	326	none	foal3	66
260	326	none	foal3	7
470	326	none	foal2	87
57	326	none	foal4	60
243	326	none	foal1	26
184	326	none	foal2	60
241	326	none	foal1	6
193	326	none	foal1	8
476	326	none	foal1	2
313	326	none	foal4	56
333	327	yellow	foal3	74
219	327	yellow	foal4	71
26	327	yellow	foal2	40
14	327	yellow	foal3	42
529	327	none	foal3	59
462	327	none	foal2	16
285	327	none	foal1	60
461	327	none	foal3	40
283	327	none	foal2	36
334	327	none	foal1	49
285	327	none	foal2	67
334	327	none	foal4	70
539	327	none	foal4	22
462	327	none	foal2	74
7	327	none	foal1	57
178	327	none	foal3	61
461	327	none	foal2	68
314	327	none	foal1	8
3	327	none	foal4	27
7	327	none	foal4	10
119	327	none	foal3	19
178	327	none	foal4	62
192	327	none	foal1	46
539	327	none	foal2	69
309	327	none	foal4	80
284	327	none	foal2	57
529	327	none	foal4	43
7	327	none	foal2	3
522	327	none	foal4	87
395	327	none	foal3	45
76	327	none	foal2	62
76	327	none	foal4	21
441	328	yellow	foal2	27
202	328	yellow	foal2	77
311	328	red	foal1	61
162	328	yellow	foal1	2
63	328	yellow	foal2	54
421	328	yellow	foal1	43
492	328	yellow	foal3	73
492	328	none	foal4	83
432	328	none	foal1	22
304	328	none	foal2	34
47	328	none	foal3	20
544	328	none	foal3	10
67	328	none	foal3	88
360	328	none	foal2	65
544	328	none	foal4	20
132	328	none	foal3	7
374	328	none	foal2	13
47	328	none	foal3	80
13	328	none	foal4	30
360	328	none	foal2	15
346	328	none	foal2	74
310	328	none	foal3	34
67	328	none	foal3	86
374	328	none	foal3	8
294	328	none	foal1	45
111	328	none	foal1	50
111	328	none	foal1	74
238	328	none	foal4	67
421	328	none	foal1	52
538	329	yellow	foal2	24
77	329	yellow	foal1	67
94	329	yellow	foal2	65
216	329	yellow	foal4	32
340	329	yellow	foal4	16
438	329	yellow	foal4	72
438	329	none	foal2	55
464	329	none	foal3	17
27	329	none	foal1	30
87	329	none	foal4	12
148	329	none	foal3	69
303	329	none	foal1	76
204	329	none	foal1	82
128	330	yellow	foal3	65
507	330	yellow	foal3	17
466	330	yellow	foal1	32
288	330	none	foal4	76
451	330	none	foal4	64
293	330	none	foal4	51
326	330	none	foal2	22
16	330	none	foal4	38
402	330	none	foal3	6
402	330	none	foal1	43
361	330	none	foal3	2
293	330	none	foal1	67
40	330	none	foal3	59
166	330	none	foal2	19
466	330	none	foal4	43
542	330	none	foal2	37
103	330	none	foal2	86
166	330	none	foal2	69
230	330	none	foal2	47
288	330	none	foal4	52
341	330	none	foal1	31
566	330	none	foal3	3
537	330	none	foal3	3
326	330	none	foal4	60
382	330	none	foal4	38
341	330	none	foal2	51
40	330	none	foal3	21
330	330	none	foal1	81
500	330	none	foal2	27
341	330	none	foal3	79
256	331	yellow	foal4	20
99	331	yellow	foal3	85
224	331	yellow	foal1	54
482	331	yellow	foal2	75
15	331	none	foal2	76
343	331	none	foal4	71
481	331	none	foal2	29
124	331	none	foal2	65
481	331	none	foal1	26
563	331	none	foal3	22
561	331	none	foal3	76
289	331	none	foal4	11
89	331	none	foal3	12
481	331	none	foal1	17
479	331	none	foal2	39
563	331	none	foal2	43
561	331	none	foal2	71
397	331	none	foal3	80
474	331	none	foal4	67
482	331	none	foal2	72
388	331	none	foal3	7
413	331	none	foal3	32
224	331	none	foal1	11
474	331	none	foal2	37
388	331	none	foal2	29
481	331	none	foal1	61
413	331	none	foal4	4
307	332	yellow	foal1	49
101	332	yellow	foal2	29
275	332	none	foal4	13
439	332	none	foal3	82
373	332	none	foal1	46
211	332	none	foal4	19
572	332	none	foal4	28
48	332	none	foal3	35
495	332	none	foal4	54
240	332	none	foal4	0
375	332	none	foal3	19
240	332	none	foal2	13
375	332	none	foal3	73
80	332	none	foal3	65
182	332	none	foal2	76
422	332	none	foal3	87
352	332	none	foal1	45
495	332	none	foal3	76
240	332	none	foal1	26
422	332	none	foal2	8
471	332	none	foal3	12
352	332	none	foal2	36
446	332	none	foal1	70
259	332	none	foal1	87
259	332	none	foal3	62
259	332	none	foal4	35
430	333	none	foal1	44
137	333	none	foal1	85
323	333	none	foal1	26
81	333	none	foal1	37
68	333	none	foal1	90
467	333	none	foal1	62
344	333	none	foal3	59
467	333	none	foal4	40
60	333	none	foal4	36
183	333	none	foal1	60
137	333	none	foal3	29
455	333	none	foal2	73
460	333	none	foal2	58
505	333	none	foal2	43
282	333	none	foal3	5
505	333	none	foal2	48
332	333	none	foal1	15
183	333	none	foal3	34
455	333	none	foal4	16
231	333	none	foal2	19
430	333	none	foal3	72
201	333	none	foal4	46
467	333	none	foal3	73
85	333	none	foal2	14
121	333	none	foal4	54
505	333	none	foal4	34
68	333	none	foal4	64
60	333	none	foal3	84
477	334	yellow	foal1	52
38	334	none	foal3	6
548	334	none	foal2	52
203	334	none	foal4	22
295	334	none	foal1	30
203	334	none	foal4	42
558	334	none	foal1	45
295	334	none	foal3	84
44	334	none	foal3	71
477	334	none	foal1	31
447	334	none	foal1	88
180	334	none	foal3	64
366	334	none	foal1	84
151	334	none	foal3	72
58	334	none	foal3	51
227	335	yellow	foal3	79
181	335	yellow	foal2	55
297	335	red	foal3	20
499	335	none	foal4	45
71	335	none	foal3	53
161	335	none	foal3	22
4	335	none	foal1	90
212	335	none	foal3	86
300	335	none	foal3	22
143	335	none	foal1	14
468	335	none	foal4	31
449	335	none	foal4	35
449	335	none	foal1	67
4	335	none	foal3	41
449	335	none	foal4	71
300	335	none	foal3	71
86	335	none	foal4	75
449	335	none	foal2	80
4	335	none	foal2	68
225	335	none	foal1	6
419	335	none	foal2	69
547	336	yellow	foal1	33
213	336	none	foal2	3
61	336	none	foal4	25
204	336	none	foal2	34
438	336	none	foal1	89
393	336	none	foal1	50
303	336	none	foal2	68
216	336	none	foal4	89
338	336	none	foal2	65
428	336	none	foal3	3
142	336	none	foal1	80
502	336	none	foal3	35
87	336	none	foal4	49
148	336	none	foal4	24
303	336	none	foal2	90
516	336	none	foal4	50
340	336	none	foal4	0
87	336	none	foal2	8
148	336	none	foal2	20
90	336	none	foal2	64
464	336	none	foal1	55
348	336	none	foal3	81
94	336	none	foal4	54
204	336	none	foal4	90
270	336	none	foal4	82
312	336	none	foal4	76
87	336	none	foal1	53
61	336	none	foal2	78
137	337	yellow	foal3	88
116	337	yellow	foal1	42
219	337	yellow	foal4	65
255	337	none	foal1	72
157	337	none	foal2	82
217	337	none	foal2	40
255	337	none	foal4	21
73	337	none	foal2	18
34	337	none	foal2	21
116	337	none	foal3	46
534	337	none	foal4	30
534	337	none	foal2	6
206	337	none	foal3	66
534	337	none	foal4	76
205	337	none	foal4	31
217	337	none	foal1	20
206	337	none	foal1	3
550	337	none	foal3	71
190	337	none	foal2	23
327	337	none	foal4	67
434	337	none	foal2	33
306	337	none	foal1	57
353	337	none	foal3	16
177	337	none	foal3	54
219	337	none	foal4	13
552	337	none	foal3	17
434	337	none	foal2	10
368	338	yellow	foal3	4
531	338	yellow	foal1	17
487	338	yellow	foal3	0
507	338	yellow	foal4	51
427	338	none	foal3	56
98	338	none	foal4	52
98	338	none	foal3	36
160	338	none	foal3	74
535	338	none	foal2	35
229	338	none	foal1	65
33	338	none	foal3	20
507	338	none	foal2	10
350	338	none	foal4	86
43	338	none	foal3	70
489	338	none	foal1	39
128	338	none	foal4	10
172	339	yellow	foal3	73
334	339	yellow	foal4	20
10	339	yellow	foal3	82
503	339	yellow	foal3	10
126	339	none	foal3	57
74	339	none	foal1	80
473	339	none	foal2	80
536	339	none	foal3	61
408	339	none	foal3	42
541	339	none	foal4	49
10	339	none	foal2	25
473	339	none	foal3	21
424	339	none	foal2	43
536	339	none	foal1	73
118	339	none	foal2	72
10	339	none	foal1	87
541	339	none	foal3	80
518	339	none	foal1	55
208	339	none	foal2	42
118	339	none	foal1	61
560	339	none	foal4	61
518	339	none	foal4	38
165	339	none	foal2	90
10	339	none	foal2	80
208	339	none	foal2	60
18	340	yellow	foal3	11
50	340	yellow	foal4	31
465	340	none	foal1	86
215	340	none	foal1	0
72	340	none	foal3	58
141	340	none	foal4	32
218	340	none	foal1	39
465	340	none	foal2	33
546	340	none	foal1	55
465	340	none	foal2	14
302	340	none	foal1	34
133	340	none	foal4	54
290	340	none	foal3	22
158	340	none	foal3	46
158	340	none	foal1	69
365	340	none	foal3	68
253	340	none	foal2	30
365	340	none	foal4	29
380	341	yellow	foal2	46
129	341	none	foal2	60
385	341	none	foal3	28
508	341	none	foal4	3
84	341	none	foal2	52
129	341	none	foal1	88
380	341	none	foal2	77
347	341	none	foal4	71
441	341	none	foal3	44
129	341	none	foal2	12
131	341	none	foal2	0
209	341	none	foal2	67
380	341	none	foal1	37
131	341	none	foal3	57
36	341	none	foal2	74
36	341	none	foal4	74
551	341	none	foal1	74
202	341	none	foal2	75
84	341	none	foal1	4
209	341	none	foal3	10
91	341	none	foal4	36
258	341	none	foal1	18
78	341	none	foal1	69
569	341	none	foal2	21
342	341	none	foal3	61
131	341	none	foal2	8
261	341	none	foal3	28
258	341	none	foal3	45
396	341	none	foal1	82
91	341	none	foal1	7
298	341	none	foal1	65
91	341	none	foal4	15
24	342	yellow	foal1	72
106	342	yellow	foal1	11
400	342	none	foal4	58
106	342	none	foal1	1
457	342	none	foal2	62
411	342	none	foal1	71
198	342	none	foal1	2
437	342	none	foal3	5
400	342	none	foal1	5
135	342	none	foal3	24
403	342	none	foal4	19
411	342	none	foal1	52
372	342	none	foal3	37
565	342	none	foal2	88
305	342	none	foal4	89
565	342	none	foal2	67
251	342	none	foal1	61
305	342	none	foal4	88
40	343	yellow	foal3	1
244	343	yellow	foal3	75
56	343	none	foal4	25
66	343	none	foal4	83
371	343	none	foal4	49
528	343	none	foal2	71
66	343	none	foal1	87
39	343	none	foal4	20
187	343	none	foal4	23
296	343	none	foal4	87
66	343	none	foal2	22
59	343	none	foal4	81
549	343	none	foal3	76
549	343	none	foal1	63
498	343	none	foal2	54
429	343	none	foal4	10
339	343	none	foal4	68
45	343	none	foal3	40
4	344	yellow	foal2	7
71	344	yellow	foal1	19
71	344	yellow	foal2	62
300	344	yellow	foal4	43
49	344	yellow	foal3	27
109	344	none	foal2	27
279	344	none	foal1	81
250	344	none	foal2	27
308	344	none	foal1	75
526	344	none	foal4	20
431	344	none	foal1	30
279	344	none	foal4	33
398	344	none	foal4	50
279	344	none	foal2	89
115	344	none	foal4	51
279	344	none	foal4	77
406	344	none	foal4	20
358	344	none	foal2	3
356	344	none	foal4	79
246	344	none	foal4	88
109	344	none	foal2	13
266	344	none	foal4	36
358	344	none	foal2	24
440	344	none	foal3	77
362	344	none	foal1	16
526	344	none	foal1	19
526	344	none	foal3	65
340	345	yellow	foal1	62
273	345	yellow	foal2	66
490	345	none	foal2	34
248	345	none	foal2	38
134	345	none	foal1	71
564	345	none	foal3	87
472	345	none	foal3	44
349	345	none	foal3	23
459	345	none	foal4	48
21	345	none	foal1	45
164	345	none	foal4	16
21	345	none	foal3	7
156	345	none	foal1	82
418	345	none	foal3	57
207	345	none	foal4	56
21	345	none	foal4	32
349	345	none	foal2	80
11	345	none	foal4	84
127	345	none	foal1	53
21	345	none	foal4	11
412	345	none	foal3	37
11	345	none	foal3	81
513	345	none	foal1	5
278	345	none	foal4	76
156	345	none	foal1	39
21	345	none	foal3	20
11	345	none	foal2	60
156	345	none	foal2	56
459	345	none	foal1	5
418	345	none	foal2	10
37	345	none	foal1	55
134	345	none	foal3	83
44	346	yellow	foal3	68
105	346	yellow	foal2	30
450	346	yellow	foal1	71
524	346	none	foal1	5
324	346	none	foal4	86
538	346	none	foal1	69
469	346	none	foal4	57
448	346	none	foal4	84
286	346	none	foal2	13
538	346	none	foal2	9
469	346	none	foal3	2
524	346	none	foal2	64
75	346	none	foal2	46
524	346	none	foal4	36
280	346	none	foal2	76
65	346	none	foal2	48
286	346	none	foal4	64
538	346	none	foal2	24
77	346	none	foal4	54
408	347	yellow	foal4	61
536	347	yellow	foal4	12
144	347	yellow	foal2	43
232	347	yellow	foal3	40
197	347	yellow	foal1	33
316	347	yellow	foal3	49
523	347	yellow	foal4	88
363	347	none	foal3	60
316	347	none	foal3	63
523	347	none	foal2	71
483	347	none	foal3	41
254	347	none	foal4	39
251	347	none	foal4	88
437	347	none	foal2	55
251	347	none	foal4	46
491	347	none	foal2	38
437	347	none	foal1	61
32	347	none	foal2	15
198	347	none	foal4	52
523	347	none	foal1	85
523	347	none	foal3	51
400	347	none	foal4	8
251	347	none	foal2	15
400	347	none	foal3	22
400	347	none	foal1	80
523	347	none	foal2	10
565	347	none	foal4	70
106	347	none	foal1	61
135	347	none	foal1	85
372	347	none	foal4	29
437	347	none	foal4	68
405	348	yellow	foal1	60
131	348	yellow	foal3	87
84	348	yellow	foal1	8
78	348	none	foal3	72
569	348	none	foal1	28
131	348	none	foal1	61
376	348	none	foal4	69
569	348	none	foal1	37
441	348	none	foal2	22
129	348	none	foal4	31
385	348	none	foal1	65
129	348	none	foal1	67
261	348	none	foal2	9
342	348	none	foal4	58
311	348	none	foal1	73
209	348	none	foal4	80
298	348	none	foal3	1
146	348	none	foal2	69
380	348	none	foal2	29
482	349	yellow	foal4	37
269	349	yellow	foal2	87
511	349	yellow	foal1	81
20	349	yellow	foal1	43
410	349	yellow	foal2	50
71	349	none	foal2	60
499	349	none	foal4	67
29	349	none	foal2	61
225	349	none	foal2	89
519	349	none	foal1	37
130	349	none	foal1	28
23	349	none	foal1	1
130	349	none	foal4	49
519	349	none	foal4	28
143	349	none	foal4	68
143	349	none	foal2	8
468	349	none	foal4	33
300	349	none	foal2	85
225	349	none	foal2	11
147	350	yellow	foal3	75
339	350	yellow	foal4	48
460	350	yellow	foal2	53
467	350	yellow	foal1	25
121	350	none	foal1	46
81	350	none	foal4	27
430	350	none	foal3	47
191	350	none	foal1	41
121	350	none	foal4	7
60	350	none	foal4	79
344	350	none	foal2	0
191	350	none	foal1	18
430	350	none	foal4	76
150	350	none	foal4	21
430	350	none	foal3	4
332	350	none	foal2	68
121	350	none	foal1	29
433	350	none	foal3	87
460	350	none	foal3	63
121	350	none	foal4	35
150	350	none	foal2	67
191	350	none	foal4	45
170	350	none	foal1	0
430	350	none	foal4	62
454	350	none	foal4	41
277	351	none	foal1	66
14	351	none	foal1	59
284	351	none	foal1	23
283	351	none	foal4	15
192	351	none	foal3	39
192	351	none	foal4	1
178	351	none	foal1	69
283	351	none	foal2	29
285	351	none	foal2	72
453	351	none	foal2	85
7	351	none	foal1	0
539	351	none	foal3	64
386	351	none	foal3	17
14	351	none	foal2	50
386	351	none	foal3	55
488	351	none	foal4	81
529	351	none	foal4	37
122	351	none	foal4	35
26	351	none	foal3	45
159	351	none	foal1	20
529	351	none	foal4	42
50	352	yellow	foal2	12
439	352	yellow	foal1	55
50	352	none	foal3	1
211	352	none	foal4	70
439	352	none	foal1	3
1	352	none	foal1	44
240	352	none	foal2	14
80	352	none	foal4	27
352	352	none	foal3	75
446	352	none	foal3	53
572	352	none	foal2	90
52	352	none	foal1	23
189	352	none	foal4	32
30	352	none	foal4	27
125	352	none	foal4	5
275	352	none	foal4	57
48	352	none	foal3	82
471	352	none	foal3	50
189	352	none	foal4	49
485	352	none	foal1	48
235	352	none	foal3	36
259	352	none	foal4	48
80	352	none	foal2	80
62	352	none	foal1	6
246	353	yellow	foal2	39
246	353	yellow	foal2	5
466	353	none	foal2	52
566	353	none	foal1	16
288	353	none	foal2	58
414	353	none	foal1	71
103	353	none	foal3	13
166	353	none	foal1	48
496	353	none	foal2	21
83	353	none	foal2	38
402	353	none	foal4	81
326	353	none	foal4	33
351	353	none	foal3	62
341	353	none	foal2	71
500	353	none	foal2	64
330	353	none	foal3	86
103	353	none	foal3	47
466	353	none	foal2	17
414	353	none	foal1	72
288	353	none	foal2	48
330	353	none	foal1	25
361	353	none	foal4	18
451	353	none	foal4	71
402	353	none	foal4	77
83	353	none	foal3	42
83	353	none	foal2	77
83	353	none	foal4	35
230	353	none	foal4	49
83	353	none	foal4	68
542	353	none	foal1	84
500	353	none	foal4	23
247	353	none	foal1	89
537	353	none	foal4	80
466	353	none	foal4	32
393	354	none	foal2	19
213	354	none	foal2	1
94	354	none	foal1	17
428	354	none	foal3	9
340	354	none	foal3	75
321	354	none	foal1	72
338	354	none	foal3	22
547	354	none	foal1	53
216	354	none	foal1	77
426	354	none	foal4	77
88	354	none	foal2	66
27	354	none	foal1	35
148	354	none	foal4	4
516	354	none	foal3	63
276	354	none	foal3	41
148	354	none	foal4	46
27	354	none	foal1	58
276	354	none	foal1	30
216	354	none	foal2	85
348	354	none	foal3	12
204	354	none	foal2	71
509	355	yellow	foal3	34
305	355	yellow	foal2	70
346	355	yellow	foal3	66
132	355	none	foal2	80
47	355	none	foal2	13
512	355	none	foal4	44
521	355	none	foal2	47
544	355	none	foal1	16
265	355	none	foal3	3
67	355	none	foal2	72
267	355	none	foal1	69
267	355	none	foal4	29
374	355	none	foal2	1
360	355	none	foal4	40
67	355	none	foal2	56
492	355	none	foal2	11
521	355	none	foal2	61
304	355	none	foal2	28
118	356	yellow	foal2	65
536	356	yellow	foal2	3
41	356	yellow	foal2	89
343	356	yellow	foal2	78
563	356	yellow	foal3	44
463	356	none	foal1	25
99	356	none	foal4	24
329	356	none	foal4	61
397	356	none	foal2	42
343	356	none	foal4	37
289	356	none	foal4	82
482	356	none	foal3	26
337	356	none	foal4	21
413	356	none	foal3	49
413	356	none	foal2	25
482	356	none	foal2	47
163	356	none	foal4	43
99	356	none	foal2	5
478	356	none	foal1	55
146	357	yellow	foal3	22
258	357	yellow	foal3	54
409	357	yellow	foal4	4
287	357	yellow	foal1	65
57	357	yellow	foal3	37
378	357	none	foal2	33
319	357	none	foal3	65
501	357	none	foal1	23
199	357	none	foal4	28
184	357	none	foal3	15
501	357	none	foal1	78
233	357	none	foal4	86
345	357	none	foal3	73
260	357	none	foal4	54
120	357	none	foal3	90
241	357	none	foal3	73
120	357	none	foal1	46
184	357	none	foal4	77
465	358	yellow	foal3	65
140	358	yellow	foal1	60
158	358	yellow	foal3	44
29	358	yellow	foal2	24
511	358	yellow	foal2	55
86	358	red	foal4	54
23	358	none	foal1	25
29	358	none	foal4	46
130	358	none	foal4	30
328	358	none	foal1	49
29	358	none	foal1	1
401	358	none	foal3	76
468	358	none	foal2	81
354	358	none	foal1	40
449	358	none	foal1	53
225	358	none	foal2	86
524	359	yellow	foal3	48
68	359	yellow	foal4	90
430	359	none	foal1	1
191	359	none	foal1	75
323	359	none	foal1	53
121	359	none	foal2	22
183	359	none	foal3	52
201	359	none	foal4	66
68	359	none	foal3	74
430	359	none	foal2	79
454	359	none	foal3	13
150	359	none	foal4	9
460	359	none	foal4	61
460	359	none	foal1	48
430	359	none	foal1	9
430	359	none	foal2	90
505	359	none	foal2	5
505	359	none	foal2	88
150	359	none	foal4	61
528	360	yellow	foal1	34
112	360	yellow	foal1	54
307	360	yellow	foal2	39
417	360	yellow	foal3	83
369	360	yellow	foal1	76
366	360	none	foal4	84
369	360	none	foal3	88
104	360	none	foal4	62
369	360	none	foal3	84
38	360	none	foal3	22
558	360	none	foal4	84
558	360	none	foal1	61
169	360	none	foal2	68
477	360	none	foal3	10
93	360	none	foal4	84
562	360	none	foal3	52
322	360	none	foal1	2
210	360	none	foal2	58
295	360	none	foal2	26
93	360	none	foal4	5
93	360	none	foal2	40
477	360	none	foal3	78
435	360	none	foal3	28
105	360	none	foal1	24
417	360	none	foal3	44
548	360	none	foal2	48
93	360	none	foal2	41
249	361	yellow	foal1	19
168	361	yellow	foal1	18
469	361	none	foal4	71
524	361	none	foal3	70
324	361	none	foal3	44
249	361	none	foal2	62
75	361	none	foal4	42
469	361	none	foal2	5
264	361	none	foal3	42
77	361	none	foal3	33
168	361	none	foal3	15
280	361	none	foal1	13
286	361	none	foal1	67
538	361	none	foal1	69
383	361	none	foal3	52
280	361	none	foal2	26
2	361	none	foal1	72
64	361	none	foal4	9
324	361	none	foal3	8
301	361	none	foal4	17
280	361	none	foal1	83
538	361	none	foal3	13
524	361	none	foal4	47
324	361	none	foal2	9
264	361	none	foal3	32
265	362	yellow	foal1	56
357	362	yellow	foal3	17
157	362	yellow	foal3	0
415	362	yellow	foal2	57
434	362	yellow	foal1	21
550	362	yellow	foal3	19
226	362	red	foal4	71
333	362	red	foal2	26
306	362	none	foal1	60
327	362	none	foal3	85
550	362	none	foal2	44
550	362	none	foal1	21
206	362	none	foal4	53
226	362	none	foal2	89
205	362	none	foal1	27
255	362	none	foal4	65
306	362	none	foal1	15
177	362	none	foal3	11
416	362	none	foal4	58
152	362	none	foal4	71
228	362	none	foal1	51
405	362	none	foal1	63
333	362	none	foal1	29
152	362	none	foal4	26
552	362	none	foal2	56
190	362	none	foal1	85
306	362	none	foal4	59
177	362	none	foal1	26
327	362	none	foal2	33
226	362	none	foal4	67
353	362	none	foal1	57
101	363	yellow	foal4	53
102	363	yellow	foal3	0
491	363	none	foal3	47
491	363	none	foal4	33
543	363	none	foal3	53
483	363	none	foal4	39
135	363	none	foal2	83
96	363	none	foal4	14
316	363	none	foal3	54
53	363	none	foal3	23
565	363	none	foal3	3
135	363	none	foal1	4
316	363	none	foal2	83
483	363	none	foal1	46
305	363	none	foal4	82
403	363	none	foal3	8
106	363	none	foal2	9
525	363	none	foal2	64
457	363	none	foal2	16
316	363	none	foal2	47
483	363	none	foal4	20
390	363	none	foal3	32
523	363	none	foal2	2
53	363	none	foal3	7
198	363	none	foal2	28
491	363	none	foal4	78
483	363	none	foal3	54
483	363	none	foal2	18
281	364	yellow	foal4	77
571	364	yellow	foal2	0
128	364	yellow	foal2	80
186	364	yellow	foal4	0
98	364	none	foal2	37
160	364	none	foal2	83
98	364	none	foal3	84
33	364	none	foal3	51
571	364	none	foal1	42
22	364	none	foal2	41
487	364	none	foal2	81
399	364	none	foal1	1
263	364	none	foal4	13
128	364	none	foal2	0
487	364	none	foal1	69
160	364	none	foal1	7
186	364	none	foal4	46
22	364	none	foal2	83
535	364	none	foal4	19
128	364	none	foal4	29
487	364	none	foal3	34
98	364	none	foal4	31
22	364	none	foal1	22
98	364	none	foal3	74
370	364	none	foal4	89
128	364	none	foal4	30
98	364	none	foal2	15
517	364	none	foal4	71
325	364	none	foal1	53
128	364	none	foal3	87
571	364	none	foal4	53
263	364	none	foal3	50
535	364	none	foal2	34
535	364	none	foal2	27
545	365	none	foal2	36
246	365	none	foal2	22
279	365	none	foal4	73
266	365	none	foal2	53
291	365	none	foal4	12
526	365	none	foal2	88
279	365	none	foal1	12
109	365	none	foal3	85
70	365	none	foal4	90
362	365	none	foal2	29
379	365	none	foal1	88
545	365	none	foal4	62
246	365	none	foal2	68
379	365	none	foal3	65
250	365	none	foal2	62
308	365	none	foal3	14
109	365	none	foal3	0
406	365	none	foal3	75
431	365	none	foal2	80
494	365	none	foal3	79
406	365	none	foal3	67
526	365	none	foal4	84
494	365	none	foal2	41
242	365	none	foal3	6
28	365	none	foal2	43
123	365	none	foal1	67
109	365	none	foal4	55
431	365	none	foal1	75
379	365	none	foal4	82
431	365	none	foal3	23
497	365	none	foal2	2
266	365	none	foal1	36
358	365	none	foal3	8
242	365	none	foal2	60
266	365	none	foal3	84
379	365	none	foal3	22
319	366	yellow	foal1	48
164	366	yellow	foal3	77
11	366	none	foal1	49
46	366	none	foal1	83
11	366	none	foal1	55
540	366	none	foal4	3
349	366	none	foal4	43
554	366	none	foal3	77
11	366	none	foal3	58
278	366	none	foal3	18
156	366	none	foal2	75
554	366	none	foal1	39
412	366	none	foal2	43
46	366	none	foal4	82
37	366	none	foal1	34
207	366	none	foal1	73
134	366	none	foal3	28
185	366	none	foal1	4
418	366	none	foal3	61
41	367	yellow	foal1	37
74	367	none	foal2	56
297	367	none	foal2	6
8	367	none	foal1	2
367	367	none	foal4	89
541	367	none	foal3	25
473	367	none	foal4	49
227	367	none	foal3	20
560	367	none	foal2	51
518	367	none	foal4	25
536	367	none	foal4	20
536	367	none	foal2	14
74	367	none	foal1	61
197	367	none	foal3	43
10	367	none	foal3	40
395	368	yellow	foal2	21
112	368	yellow	foal4	45
31	368	none	foal2	33
307	368	none	foal1	73
296	368	none	foal1	34
381	368	none	foal2	22
307	368	none	foal3	36
371	368	none	foal2	39
244	368	none	foal4	78
45	368	none	foal2	90
187	368	none	foal2	26
112	368	none	foal4	30
475	368	none	foal2	54
112	368	none	foal4	88
371	368	none	foal2	43
371	368	none	foal2	47
187	368	none	foal1	74
359	368	none	foal1	20
498	368	none	foal2	82
475	368	none	foal2	16
86	369	yellow	foal1	64
499	369	yellow	foal1	22
570	369	yellow	foal4	67
456	369	yellow	foal1	1
143	369	yellow	foal4	8
258	369	yellow	foal3	50
347	369	yellow	foal2	16
146	369	none	foal1	5
202	369	none	foal2	10
194	369	none	foal4	76
129	369	none	foal3	40
258	369	none	foal3	76
342	369	none	foal1	9
441	369	none	foal1	80
146	369	none	foal1	60
342	369	none	foal3	90
569	369	none	foal2	42
441	369	none	foal2	5
569	369	none	foal3	27
298	369	none	foal4	58
55	369	none	foal3	51
396	369	none	foal2	35
78	369	none	foal1	31
55	369	none	foal3	82
194	369	none	foal2	41
342	369	none	foal4	86
344	370	yellow	foal3	31
191	370	yellow	foal1	13
150	370	yellow	foal1	32
556	370	yellow	foal1	49
221	370	yellow	foal4	54
19	370	none	foal2	41
465	370	none	foal4	68
92	370	none	foal1	79
318	370	none	foal3	85
420	370	none	foal2	87
510	370	none	foal1	51
556	370	none	foal4	77
141	370	none	foal2	56
196	370	none	foal1	83
315	370	none	foal4	81
215	370	none	foal3	68
436	370	none	foal3	5
510	370	none	foal1	58
92	370	none	foal1	3
140	370	none	foal3	59
19	370	none	foal3	45
158	370	none	foal3	88
546	370	none	foal4	72
465	370	none	foal1	40
556	370	none	foal2	18
465	370	none	foal4	36
19	370	none	foal2	62
365	370	none	foal4	40
510	370	none	foal3	84
290	370	none	foal3	60
465	370	none	foal3	33
458	370	none	foal4	44
92	370	none	foal1	10
196	370	none	foal3	71
158	370	none	foal1	39
455	371	none	foal1	4
231	371	none	foal4	87
150	371	none	foal2	80
81	371	none	foal4	37
170	371	none	foal1	40
323	371	none	foal3	33
454	371	none	foal4	19
553	371	none	foal1	45
394	372	yellow	foal2	56
54	372	yellow	foal2	79
524	372	yellow	foal2	5
75	372	yellow	foal3	41
249	372	yellow	foal1	68
100	372	yellow	foal4	36
514	372	none	foal4	90
23	372	none	foal1	11
175	372	none	foal2	28
499	372	none	foal1	43
225	372	none	foal1	67
468	372	none	foal1	70
212	372	none	foal2	57
71	372	none	foal4	58
468	372	none	foal1	14
71	372	none	foal2	56
171	372	none	foal4	0
171	372	none	foal2	60
143	372	none	foal4	29
223	372	none	foal3	2
308	373	yellow	foal2	85
115	373	yellow	foal4	51
442	373	yellow	foal2	89
47	373	none	foal4	65
67	373	none	foal1	14
238	373	none	foal2	62
111	373	none	foal4	19
521	373	none	foal1	80
267	373	none	foal3	1
67	373	none	foal2	47
310	373	none	foal4	68
310	373	none	foal4	86
425	373	none	foal2	45
267	373	none	foal1	72
145	373	none	foal2	73
132	373	none	foal3	71
145	373	none	foal3	2
360	373	none	foal3	46
521	373	none	foal1	53
492	373	none	foal3	20
294	373	none	foal4	23
304	373	none	foal1	63
331	373	none	foal4	38
238	373	none	foal3	62
162	373	none	foal3	24
521	373	none	foal1	10
310	373	none	foal3	16
368	373	none	foal4	7
374	373	none	foal4	71
173	373	none	foal3	48
132	373	none	foal4	29
374	373	none	foal2	83
13	373	none	foal3	55
220	374	yellow	foal2	9
69	374	none	foal1	72
501	374	none	foal2	18
188	374	none	foal4	11
241	374	none	foal1	79
378	374	none	foal2	65
407	374	none	foal1	4
407	374	none	foal4	11
193	374	none	foal1	44
260	374	none	foal3	57
184	374	none	foal1	27
527	374	none	foal1	38
476	374	none	foal3	62
443	374	none	foal3	73
378	374	none	foal2	79
319	374	none	foal1	31
345	374	none	foal1	30
409	374	none	foal1	10
188	374	none	foal4	47
243	374	none	foal1	4
120	374	none	foal4	52
378	374	none	foal1	78
260	374	none	foal2	41
154	374	none	foal4	37
57	374	none	foal1	83
407	374	none	foal3	66
313	374	none	foal1	31
260	374	none	foal1	3
319	374	none	foal2	58
477	375	yellow	foal2	20
558	375	none	foal2	38
562	375	none	foal1	42
295	375	none	foal4	28
105	375	none	foal1	15
295	375	none	foal1	40
477	375	none	foal3	17
435	375	none	foal3	65
384	375	none	foal3	76
169	375	none	foal4	31
562	375	none	foal4	56
295	375	none	foal1	58
384	375	none	foal2	67
58	375	none	foal4	8
105	375	none	foal4	55
210	375	none	foal2	64
562	375	none	foal3	47
366	375	none	foal1	32
138	375	none	foal2	69
295	375	none	foal3	68
169	375	none	foal3	67
548	375	none	foal2	80
169	375	none	foal3	57
89	376	yellow	foal3	71
561	376	yellow	foal4	6
236	376	none	foal1	1
269	376	none	foal3	17
486	376	none	foal1	43
163	376	none	foal2	86
281	376	none	foal3	61
307	377	yellow	foal3	4
66	377	yellow	foal1	69
56	377	yellow	foal1	2
61	377	yellow	foal2	46
262	377	yellow	foal1	87
338	377	yellow	foal2	41
90	377	none	foal4	44
61	377	none	foal2	10
213	377	none	foal4	7
502	377	none	foal1	40
428	377	none	foal4	80
502	377	none	foal4	21
216	377	none	foal3	64
213	377	none	foal1	52
464	377	none	foal4	75
438	377	none	foal2	45
213	377	none	foal1	60
426	377	none	foal2	43
3	378	yellow	foal4	13
110	378	none	foal2	72
461	378	none	foal1	15
192	378	none	foal2	60
257	378	none	foal1	61
5	378	none	foal1	23
462	378	none	foal1	44
5	378	none	foal3	18
386	378	none	foal2	34
284	378	none	foal3	80
172	378	none	foal3	24
122	378	none	foal4	87
462	378	none	foal3	58
14	378	none	foal2	86
284	378	none	foal1	49
172	378	none	foal3	58
172	378	none	foal3	85
178	378	none	foal4	34
26	378	none	foal3	34
76	378	none	foal3	24
7	378	none	foal4	28
3	378	none	foal4	10
529	378	none	foal3	41
7	378	none	foal2	37
234	378	none	foal3	14
334	378	none	foal1	45
178	378	none	foal1	79
488	378	none	foal4	25
453	378	none	foal2	87
326	379	yellow	foal1	27
40	379	yellow	foal2	0
496	379	none	foal3	53
351	379	none	foal2	86
40	379	none	foal3	44
361	379	none	foal1	16
230	379	none	foal1	69
214	379	none	foal4	77
247	379	none	foal3	12
500	379	none	foal2	31
537	379	none	foal3	10
83	379	none	foal4	67
230	379	none	foal3	75
230	379	none	foal3	77
542	379	none	foal2	36
83	379	none	foal3	75
382	379	none	foal3	62
330	379	none	foal3	4
566	379	none	foal1	82
402	379	none	foal2	83
500	379	none	foal4	10
144	380	yellow	foal4	10
424	380	red	foal4	18
155	380	none	foal1	81
364	380	none	foal1	21
211	380	none	foal1	41
235	380	none	foal4	15
471	380	none	foal3	4
211	380	none	foal1	46
572	380	none	foal2	50
235	380	none	foal3	55
259	380	none	foal3	5
182	380	none	foal1	43
30	380	none	foal1	22
439	380	none	foal3	41
446	380	none	foal2	14
50	380	none	foal4	62
471	380	none	foal1	1
446	380	none	foal1	71
80	380	none	foal1	10
30	380	none	foal1	79
373	380	none	foal1	88
101	380	none	foal2	33
30	380	none	foal3	6
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   2869.dat                                                                                            0000600 0004000 0002000 00000025655 13774640454 0014315 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	339	76
1	31	36
1	315	14
2	252	31
2	415	0
2	206	18
3	304	12
3	47	72
4	246	49
4	109	5
5	203	42
5	38	5
5	366	81
6	74	1
6	227	23
7	479	63
7	482	76
7	451	43
7	83	29
8	134	90
8	248	4
8	156	24
8	46	89
10	137	60
10	170	31
12	103	50
12	542	63
12	305	1
13	365	9
13	92	48
14	550	23
14	434	44
14	177	51
14	220	69
15	18	79
15	387	0
15	294	12
16	384	47
16	149	88
16	105	25
16	223	26
16	4	15
17	75	75
17	541	62
17	181	88
17	227	89
18	505	46
18	430	32
18	81	26
18	455	33
18	344	32
18	121	29
18	277	47
19	508	42
19	569	7
19	194	36
19	444	7
19	381	90
20	207	33
20	540	73
21	486	73
21	454	62
22	304	26
22	132	56
22	288	84
22	230	59
23	175	63
23	401	58
23	468	16
23	404	79
25	102	2
25	158	76
25	196	22
26	490	12
27	227	63
27	144	18
27	398	63
28	350	63
28	427	18
28	533	68
28	336	26
28	394	72
28	77	26
29	69	47
29	44	29
29	105	42
30	405	1
30	228	38
30	226	59
31	436	39
31	21	57
31	554	71
32	258	59
32	153	2
32	336	38
32	160	3
33	169	85
33	151	41
34	525	24
34	198	23
35	414	20
35	522	74
36	479	19
37	455	44
37	201	80
37	199	23
38	428	27
38	270	63
38	354	83
38	223	5
38	23	14
39	176	5
39	475	77
40	10	49
40	8	16
40	205	77
41	550	84
41	418	32
41	25	13
42	304	89
42	425	90
42	107	72
42	47	54
42	420	75
42	465	29
43	149	21
43	180	79
43	58	44
43	480	69
43	348	87
44	398	18
45	454	42
45	60	49
45	505	79
46	313	53
46	514	53
46	29	71
47	536	60
47	31	32
47	59	44
48	99	26
49	341	87
49	439	36
49	80	50
49	439	44
50	437	37
50	305	43
50	515	77
50	551	28
51	43	74
51	367	7
52	168	39
52	35	24
52	324	18
52	264	82
53	455	43
53	191	66
53	231	43
53	430	61
53	467	76
55	568	0
55	510	57
55	245	70
55	7	7
56	207	28
56	25	24
56	412	69
57	244	0
57	124	65
58	146	89
58	255	76
58	550	88
60	20	47
60	456	61
61	62	88
61	572	81
61	101	14
61	268	27
62	392	13
62	449	68
63	382	72
63	341	60
63	466	53
64	327	47
64	190	11
65	467	71
65	201	23
66	465	20
66	72	25
67	481	16
67	329	75
68	417	30
68	127	13
69	270	23
69	274	44
69	65	71
70	267	83
70	492	80
70	545	20
71	82	89
72	448	64
72	159	57
73	281	47
74	465	52
74	496	58
74	214	71
75	434	25
76	63	37
76	368	8
76	544	1
76	294	46
77	39	79
77	359	70
77	66	51
77	57	34
77	120	88
78	355	80
78	23	85
78	20	81
78	29	83
78	225	31
78	519	70
79	93	17
79	174	80
79	477	27
81	435	83
81	384	6
81	66	65
81	45	37
83	204	81
83	464	58
83	303	14
83	438	85
83	9	35
83	9	28
84	344	17
84	323	10
84	60	55
84	344	86
84	81	42
85	261	29
86	116	9
87	144	71
87	320	4
88	185	16
89	542	49
89	103	76
90	175	39
90	328	26
90	212	38
90	158	37
91	153	80
92	368	63
92	47	17
92	374	39
93	490	67
93	25	74
93	25	88
93	273	47
93	88	30
95	297	51
95	197	59
95	227	83
96	218	46
96	155	88
97	93	62
97	435	81
97	562	72
97	477	59
98	358	7
98	545	26
98	456	44
98	419	40
99	147	55
99	244	25
99	500	60
100	121	74
101	265	62
101	528	84
101	59	7
102	510	71
103	496	56
103	496	82
103	16	54
103	347	82
104	443	23
105	155	83
105	495	86
105	404	15
105	572	42
105	108	54
105	274	50
106	225	90
106	46	71
107	329	37
107	463	2
107	552	11
107	415	54
107	333	13
108	430	29
108	553	75
108	183	62
108	553	15
108	505	72
108	137	5
108	390	3
109	322	34
109	477	9
109	174	24
109	250	71
110	284	48
111	61	8
111	204	28
111	129	79
112	257	37
112	62	76
114	193	34
114	69	66
114	374	30
115	305	42
115	320	26
116	205	79
117	412	71
117	248	32
119	71	28
119	561	56
120	467	51
120	231	79
120	183	88
120	429	24
121	258	11
121	318	22
122	330	39
123	531	61
123	160	50
123	531	29
123	491	58
123	509	81
125	564	15
125	248	33
125	207	40
126	460	41
126	433	2
126	332	17
126	201	57
127	416	12
127	504	79
127	116	35
127	210	81
128	67	22
128	514	37
128	570	71
129	285	80
129	395	8
130	264	80
130	567	80
130	69	1
131	61	35
131	502	41
131	474	56
132	406	41
132	545	7
133	309	77
133	55	29
133	55	81
134	133	87
134	141	23
135	282	42
135	60	46
135	430	87
135	67	77
136	30	18
136	1	9
136	211	19
137	32	45
137	525	3
137	549	70
137	112	8
138	477	5
138	322	35
139	300	65
139	29	89
139	401	4
139	71	32
139	504	49
139	327	54
140	185	69
141	360	81
141	432	38
141	110	25
142	194	71
142	209	11
142	342	47
142	246	6
143	1	82
143	240	78
143	30	48
143	94	36
144	503	72
144	433	15
144	121	90
145	54	43
145	164	60
145	273	33
145	540	33
146	370	58
146	546	8
147	269	81
147	563	63
147	203	7
148	330	52
148	114	80
149	268	20
149	51	79
149	514	3
149	449	21
150	228	80
150	157	90
150	255	87
150	251	10
151	46	52
151	292	26
151	25	63
151	164	85
152	223	46
153	75	21
154	321	74
155	112	63
155	391	77
155	475	35
155	444	88
155	271	5
156	101	38
156	495	83
156	373	87
156	123	33
156	266	3
157	138	65
157	38	6
158	179	33
158	73	30
159	319	55
159	99	65
159	281	35
160	16	18
160	40	29
160	541	0
160	560	81
161	430	65
161	455	18
161	460	4
161	16	5
162	398	67
163	470	27
164	357	61
165	232	74
165	473	44
165	8	26
165	428	79
165	502	8
166	281	19
166	486	82
167	1	82
167	422	48
168	441	36
168	562	77
168	203	73
169	198	66
169	491	33
169	372	77
169	130	29
169	419	70
170	472	36
170	134	25
170	459	37
170	498	78
171	278	32
171	459	32
172	23	55
172	456	87
172	328	33
172	35	62
173	145	47
173	238	57
174	510	38
175	14	56
175	198	69
175	96	17
175	305	43
176	455	35
176	201	30
176	266	18
176	431	44
176	242	46
178	320	85
178	367	56
179	338	75
179	268	46
179	429	18
179	307	77
179	528	62
179	528	70
180	214	0
180	230	46
180	228	31
180	445	25
180	206	27
180	219	58
180	228	1
180	157	3
181	507	56
181	388	59
182	113	45
182	166	83
182	288	71
182	414	78
182	496	52
182	466	56
184	546	83
184	253	0
184	121	8
185	349	21
185	164	22
185	349	37
185	513	42
186	371	72
186	51	18
186	391	68
186	178	26
187	434	88
187	534	76
187	405	63
187	206	45
187	217	46
188	551	65
188	511	10
189	41	50
189	210	79
189	44	31
190	523	56
190	30	20
190	52	74
191	258	44
192	427	39
193	213	79
194	179	7
194	463	51
194	15	59
194	269	82
195	17	45
195	154	49
196	21	22
196	292	70
196	134	50
196	349	16
196	278	27
196	23	49
197	558	0
198	35	86
198	538	67
199	557	22
199	455	14
199	60	20
199	150	47
200	475	44
200	549	72
200	377	11
200	187	77
200	67	81
201	510	14
202	86	0
202	130	44
202	161	68
202	225	14
202	98	86
203	226	90
203	333	47
203	152	6
205	5	80
205	520	41
205	168	59
206	422	56
206	439	31
206	298	71
206	298	75
207	28	11
207	440	10
208	97	64
208	238	19
208	374	57
208	560	44
208	424	68
208	473	24
209	296	58
209	381	6
210	231	41
210	231	20
210	46	6
211	439	53
212	540	4
213	113	54
213	75	41
213	160	10
215	362	63
215	518	18
215	297	24
216	158	66
216	400	15
216	491	29
217	58	57
217	384	31
217	57	56
218	83	75
218	166	37
219	506	36
220	137	78
220	191	71
220	455	90
221	413	38
221	281	73
221	388	63
221	269	34
221	92	63
221	568	69
221	245	29
222	267	41
222	331	25
223	185	41
223	418	33
223	513	41
223	412	35
223	545	85
223	356	13
223	70	24
224	528	57
224	528	43
224	82	40
225	470	31
225	241	36
225	407	24
226	254	67
226	53	51
226	496	1
228	328	3
228	499	89
229	85	71
229	344	46
229	68	45
230	535	53
230	157	62
230	228	61
231	468	37
231	328	86
231	216	37
232	427	0
232	160	65
232	571	34
232	533	7
232	380	62
232	569	19
233	361	52
234	99	85
234	479	59
234	563	35
235	371	70
235	498	76
235	286	6
235	301	24
236	567	61
236	567	76
236	433	51
237	111	79
237	162	34
237	267	27
237	484	77
238	96	70
238	123	72
239	490	29
239	315	24
240	219	62
240	445	88
240	227	4
241	228	45
243	264	80
243	363	72
244	435	52
244	369	9
244	295	57
244	435	88
244	44	3
245	379	73
245	406	26
246	288	85
246	269	51
246	337	25
246	463	30
247	87	15
247	464	9
248	51	42
249	460	25
249	460	44
249	460	15
249	511	20
250	259	8
250	554	49
251	170	41
251	60	83
252	39	43
252	391	22
252	359	88
253	494	67
253	182	78
254	26	54
254	212	75
254	300	20
255	127	81
255	156	68
255	459	88
256	390	12
256	27	60
256	213	70
257	197	42
258	311	22
258	301	83
258	65	84
258	64	15
259	534	71
259	532	35
259	152	10
259	141	46
260	60	56
260	282	13
260	433	32
260	231	83
260	553	45
260	183	78
261	289	29
261	199	0
262	142	71
262	118	83
262	408	76
262	232	74
262	367	4
262	10	32
263	485	28
263	352	32
263	404	52
263	531	81
264	2	40
264	280	21
264	226	30
265	521	90
265	479	79
266	114	25
266	57	65
267	458	55
267	272	6
267	545	53
267	356	32
267	308	76
268	468	63
268	20	16
270	288	24
270	402	81
270	382	36
271	7	34
272	133	87
272	245	67
272	376	6
273	501	80
273	409	61
274	130	31
274	71	43
274	4	16
274	354	58
274	171	62
274	267	56
275	411	22
275	390	87
276	242	83
276	244	17
276	268	70
276	268	30
277	104	88
277	38	28
278	513	22
278	21	74
278	513	79
278	127	69
278	185	58
279	201	76
280	206	50
280	410	13
281	121	2
282	36	13
283	64	34
283	440	39
283	497	7
283	406	38
284	506	13
284	371	44
284	506	35
284	256	24
284	96	71
285	337	8
285	397	15
286	364	26
286	275	87
287	8	23
287	126	70
287	510	73
288	98	54
288	384	62
288	480	6
290	494	38
290	146	69
290	209	10
291	321	31
291	142	68
292	238	1
292	310	22
293	510	10
293	117	84
293	92	37
293	531	27
294	567	38
294	184	2
294	241	23
294	247	36
294	326	56
295	32	14
295	102	16
295	73	26
296	344	76
296	430	17
296	505	76
296	197	18
297	248	20
297	540	76
297	554	4
297	490	1
297	237	49
297	493	52
298	295	24
298	89	82
299	456	59
299	175	10
300	304	0
300	492	63
300	252	60
300	378	73
301	35	81
301	436	32
301	365	69
302	422	11
302	52	10
302	50	37
302	101	55
302	192	50
302	461	61
302	462	41
303	9	88
303	25	81
303	248	54
304	382	20
304	230	69
305	332	56
305	553	3
306	198	30
307	2	35
307	280	19
308	49	23
308	526	90
309	141	84
309	196	61
310	339	84
310	39	56
310	541	86
311	247	62
311	293	64
312	27	68
312	417	35
312	151	75
313	127	66
313	418	53
313	116	83
314	401	30
314	514	87
315	560	35
315	297	90
315	297	47
315	367	51
315	531	8
316	481	30
316	89	58
316	31	0
317	58	70
317	295	81
317	562	82
318	116	43
318	217	9
319	505	54
319	150	20
320	254	33
320	564	49
320	418	38
320	207	23
321	267	15
321	54	52
321	394	40
321	301	36
322	284	8
322	215	14
322	133	56
322	72	26
322	253	53
323	398	12
324	402	1
325	562	7
325	151	5
326	193	66
327	255	65
327	317	64
327	534	77
327	116	72
328	267	55
328	238	51
328	432	90
328	331	28
328	310	59
329	54	61
329	2	58
330	22	19
330	571	77
331	491	19
331	363	31
331	53	58
331	124	20
332	244	58
332	339	58
332	275	12
333	266	68
333	454	6
333	467	67
333	433	81
334	127	13
334	554	78
335	468	12
336	393	30
336	516	62
337	85	85
338	222	72
339	192	80
339	17	87
339	12	60
340	240	34
340	404	22
340	117	0
340	245	55
342	199	69
342	319	18
342	313	69
342	198	32
343	341	29
343	288	13
343	40	40
343	382	16
344	161	10
344	161	80
344	398	17
344	250	13
344	308	32
345	156	87
345	11	8
346	477	48
346	151	82
346	65	17
346	520	75
347	503	72
347	251	32
348	205	76
349	281	88
349	478	74
349	89	75
349	514	79
350	553	1
350	332	89
351	292	84
351	418	5
351	540	90
351	513	45
351	46	37
352	352	67
354	42	1
355	523	1
355	483	47
355	525	90
355	265	74
355	425	31
355	492	7
356	518	22
356	269	6
356	289	14
357	508	62
357	95	63
358	196	69
358	318	88
358	19	24
359	460	38
360	112	71
360	203	38
361	537	16
361	326	55
362	492	17
363	364	32
363	182	65
363	446	65
364	15	11
365	340	21
365	270	25
365	6	60
365	406	45
365	497	35
366	470	81
366	260	26
366	156	21
366	278	88
366	278	43
367	38	13
367	322	51
367	203	2
368	285	50
368	429	38
369	130	24
369	515	58
370	344	81
371	202	50
371	332	41
371	467	54
371	505	25
371	231	80
372	168	75
372	354	4
372	419	84
372	570	53
373	431	74
373	115	81
373	398	1
373	526	12
373	379	5
373	294	89
373	310	5
373	107	22
374	154	25
374	443	37
374	287	11
374	69	67
376	564	89
376	278	7
377	321	28
377	428	21
378	437	35
378	3	3
379	206	31
379	116	60
379	288	79
379	330	62
380	17	51
380	211	29
380	422	57
380	404	61
380	404	40
\.


                                                                                   2870.dat                                                                                            0000600 0004000 0002000 00000000174 13774640454 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Premier League	2018/2019	Completed	20	380	2.81999993	1.57000005	1.25	10.2799997	3907	3.46000004	1.62	1.84000003	1315
\.


                                                                                                                                                                                                                                                                                                                                                                                                    2871.dat                                                                                            0000600 0004000 0002000 00000343555 13774640454 0014310 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1533927600	Aug 10 2018 - 7:00pm	complete	74439	Manchester United	Leicester City	Andre Marriner	1	0	0	1.89	1.32	2	1	3	1	1	0	3,83	90:2	2	5	2	0	1	0	0	2	0	1	8	8	7	5	1	3	11	8	46	54	1.25	1.46	0	0	0	0	0	0	0	0	0	0	0	0	1.37	4.98	9.81	1.33	2	3.6	7.5	2.05	1.69	Old Trafford (Manchester)	1
2	1533987000	Aug 11 2018 - 11:30am	complete	51749	Newcastle United	Tottenham Hotspur	Martin Atkinson	1	0	0	1.32	1.74	1	2	3	3	1	2	11	8,18	3	5	2	0	2	0	0	2	1	1	11	13	3	6	8	7	11	12	40	60	1.18	1.58	0	0	0	0	0	0	0	0	0	0	0	0	4.51	3.77	1.84	1.31	1.95	3.5	5.75	1.83	1.87	St. James: Park (Newcastle upon Tyne)	1
3	1533996000	Aug 11 2018 - 2:00pm	complete	10353	AFC Bournemouth	Cardiff City	Kevin Friend	1	0	0	1.53	0.74	2	0	2	1	1	0	24,90:1	None	7	4	1	0	1	0	1	0	1	0	11	7	5	2	6	5	11	9	62	38	1.5	0.89	0	0	0	0	0	0	0	0	0	0	0	0	2.03	3.51	3.96	1.31	1.95	3.45	6.7	1.83	1.83	Vitality Stadium (Bournemouth- Dorset)	1
4	1533996000	Aug 11 2018 - 2:00pm	complete	24821	Fulham	Crystal Palace	Mike Dean	1	0	0	1.11	1.53	0	2	2	1	0	1	None	41,79	5	5	1	0	2	0	1	0	1	1	11	11	7	11	4	0	9	11	66	34	1.67	1.81	0	0	0	0	0	0	0	0	0	0	0	0	2.31	3.44	3.26	1.28	1.87	3.2	7	1.71	2	Craven Cottage (London)	1
5	1533996000	Aug 11 2018 - 2:00pm	complete	24121	Huddersfield Town	Chelsea	Chris Kavanagh	1	0	0	0.47	1.58	0	3	3	2	0	2	None	34,45,80	2	5	2	0	1	0	1	1	0	1	6	8	2	5	4	3	9	8	37	63	0.9	1.17	0	0	0	0	0	0	0	0	0	0	0	0	7.47	4.27	1.51	1.29	1.91	3.3	6.95	2	1.71	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
6	1533996000	Aug 11 2018 - 2:00pm	complete	20051	Watford	Brighton & Hove Albion	Jonathan Moss	1	0	0	1.42	0.68	2	0	2	1	1	0	35,54	None	8	2	2	0	2	0	0	2	1	1	15	6	6	0	9	6	10	16	53	47	1.78	0.65	0	0	0	0	0	0	0	0	0	0	0	0	2.26	3.35	3.45	1.44	2.35	4.55	9.5	2	1.71	Vicarage Road (Watford)	1
7	1534005000	Aug 11 2018 - 4:30pm	complete	31231	Wolverhampton Wanderers	Everton	Craig Pawson	1	0	0	1.79	1.05	2	2	4	2	1	1	44,80	17,67	3	6	0	0	1	1	0	0	2	0	10	9	5	6	5	3	8	7	57	43	1.41	1.34	0	0	0	0	0	0	0	0	0	0	0	0	2.57	3.39	2.89	1.39	2.2	4.1	9	1.91	1.77	Molineux Stadium (Wolverhampton- West Midlands)	1
8	1534077000	Aug 12 2018 - 12:30pm	complete	53235	Liverpool	West Ham United	Anthony Taylor	1	0	0	2.79	1.11	4	0	4	2	2	0	19,45:2,53,88	None	5	4	1	0	2	0	1	0	0	2	16	5	9	3	7	2	14	9	64	36	2.12	0.75	0	0	0	0	0	0	0	0	0	0	0	0	1.33	5.56	9.99	1.11	1.4	2	3.5	1.83	1.87	Anfield (Liverpool)	1
9	1534077000	Aug 12 2018 - 12:30pm	complete	30784	Southampton	Burnley	Graham Scott	1	0	0	1.21	0.89	0	0	0	0	0	0	None	None	8	5	0	0	1	0	0	0	1	0	10	13	4	7	6	6	10	9	47	53	1.29	1.69	0	0	0	0	0	0	0	0	0	0	0	0	1.93	3.47	4.48	1.47	2.4	4.7	10	2.2	1.59	St. Mary:s Stadium (Southampton- Hampshire)	1
10	1534086000	Aug 12 2018 - 3:00pm	complete	59934	Arsenal	Manchester City	Michael Oliver	1	0	0	2.37	2.32	0	2	2	1	0	1	None	14,64	2	9	2	0	2	0	1	1	1	1	8	14	4	9	4	5	11	14	42	58	1.11	1.91	0	0	0	0	0	0	0	0	0	0	0	0	3.7	3.81	2.01	1.16	1.51	2.3	4.25	1.51	2.35	Emirates Stadium (London)	1
11	1534591800	Aug 18 2018 - 11:30am	complete	30720	Cardiff City	Newcastle United	Craig Pawson	2	0	0	1.05	1.05	0	0	0	0	0	0	None	None	5	5	2	0	2	1	0	2	2	1	8	8	2	7	6	1	14	16	51	49	1.03	1.22	0	0	0	0	0	0	0	0	0	50	0	0	3.01	3.11	2.66	1.48	2.45	4.8	10	2	1.71	Cardiff City Stadium (Cardiff (Caerdydd))	1
12	1534600800	Aug 18 2018 - 2:00pm	complete	38601	Everton	Southampton	Lee Mason	2	0	0	1.79	0.84	2	1	3	2	2	0	15,31	54	2	5	0	0	5	0	0	0	4	1	11	11	8	5	3	6	8	20	58	42	1.69	1.33	0	0	0	0	0	0	0	0	50	50	0	0	2.07	3.36	4.02	1.33	2.05	3.65	7.7	1.91	1.77	Goodison Park (Liverpool)	1
13	1534600800	Aug 18 2018 - 2:00pm	complete	32043	Leicester City	Wolverhampton Wanderers	Mike Dean	2	0	0	1.42	1.21	2	0	2	2	2	0	29,45	None	1	9	2	1	1	0	0	3	0	1	5	11	3	4	2	7	10	8	42	58	0.81	1.53	0	0	0	0	0	0	0	0	100	100	0	0	2.08	3.48	3.83	1.36	2.1	3.9	7.5	1.91	1.8	King Power Stadium (Leicester- Leicestershire)	1
14	1534600800	Aug 18 2018 - 2:00pm	complete	58297	Tottenham Hotspur	Fulham	Anthony Taylor	2	0	0	2	0.26	3	1	4	1	1	0	43,74,77	52	5	2	0	0	0	0	0	0	0	0	22	9	12	4	10	5	9	5	59	41	2.75	1.04	0	0	0	0	0	0	0	0	0	50	0	0	1.28	6.05	9.99	1.13	1.43	2.1	3.3	1.83	1.83	Wembley Stadium (London)	1
15	1534600800	Aug 18 2018 - 2:00pm	complete	56888	West Ham United	AFC Bournemouth	Stuart Attwell	2	0	0	1.63	0.84	1	2	3	1	1	0	33	60,66	6	4	6	0	2	0	1	5	1	1	9	9	6	6	3	3	14	10	61	39	1.39	1.31	0	0	0	0	0	0	0	0	50	100	0	0	2.24	3.52	3.35	1.23	1.71	2.8	5.5	1.62	2.15	London Stadium (London)	1
16	1534609800	Aug 18 2018 - 4:30pm	complete	40491	Chelsea	Arsenal	Martin Atkinson	2	0	0	2.21	1.32	3	2	5	4	2	2	9,20,81	37,41	5	1	0	0	2	0	0	0	1	1	19	13	12	7	7	6	12	9	62	38	2.47	1.61	0	0	0	0	0	0	0	0	0	100	0	0	1.91	3.95	4.2	1.18	1.59	2.45	4.6	1.57	2.25	Stamford Bridge (London)	1
17	1534681800	Aug 19 2018 - 12:30pm	complete	18822	Burnley	Watford	Paul Tierney	2	0	0	1.21	1.21	1	3	4	2	1	1	6	3,48,51	5	2	1	0	2	0	0	1	1	1	7	7	4	7	3	0	8	19	58	42	1.09	1.25	0	0	0	0	0	0	0	0	0	50	0	0	2.4	3.08	3.46	1.49	2.5	4.9	10.5	2.1	1.65	Turf Moor (Burnley)	1
18	1534681800	Aug 19 2018 - 12:30pm	complete	54021	Manchester City	Huddersfield Town	Andre Marriner	2	0	0	2.84	0.37	6	1	7	4	3	1	25,31,35,48,75,84	43	10	3	0	0	2	0	0	0	0	2	24	4	15	2	9	2	9	4	76	24	3.23	0.59	0	0	0	0	0	0	0	0	0	100	0	0	1.09	9.99	9.99	1.09	1.34	1.87	3	2.8	1.38	Etihad Stadium (Manchester)	1
19	1534690800	Aug 19 2018 - 3:00pm	complete	30592	Brighton & Hove Albion	Manchester United	Kevin Friend	2	0	0	1.21	1.58	3	2	5	4	3	1	25,27,44	34,90:5	3	5	1	0	1	0	0	1	1	0	7	8	4	4	3	4	16	13	33	67	0.97	1.06	0	0	0	0	0	0	0	0	50	100	0	0	5.29	3.56	1.79	1.38	2.15	4.05	8.1	2	1.69	The American Express Community Stadium (Falmer- East Sussex)	1
20	1534791600	Aug 20 2018 - 7:00pm	complete	25750	Crystal Palace	Liverpool	Michael Oliver	2	0	0	1.05	2.32	0	2	2	1	0	1	None	45,90:3	6	7	1	1	1	0	1	1	0	1	8	11	3	7	5	4	6	13	36	64	1.03	1.7	0	0	0	0	0	0	0	0	50	100	0	0	6.76	4.74	1.49	1.16	1.53	2.3	4.25	1.71	2	Selhurst Park (London)	1
21	1535196600	Aug 25 2018 - 11:30am	complete	31222	Wolverhampton Wanderers	Manchester City	Martin Atkinson	3	1	3	1.79	2.32	1	1	2	0	0	0	57	69	5	9	1	0	2	0	1	0	1	1	9	13	3	7	6	6	13	8	28	72	0.96	1.84	3	50	100	50	50	0	50	100	50	75	12	2	9.99	6.28	1.27	1.16	1.53	2.35	4.6	1.95	1.77	Molineux Stadium (Wolverhampton- West Midlands)	1
22	1535205600	Aug 25 2018 - 2:00pm	complete	10654	AFC Bournemouth	Everton	Lee Probert	3	3	1	1.53	1.05	2	2	4	0	0	0	75,79	56,66	6	2	0	1	3	1	0	1	1	3	16	9	6	4	10	5	12	10	49	51	1.75	1.16	3	50	100	50	50	0	50	100	50	100	13	4	2.52	3.32	3.02	1.25	1.77	2.95	6	1.61	2.15	Vitality Stadium (Bournemouth- Dorset)	1
23	1535205600	Aug 25 2018 - 2:00pm	complete	59830	Arsenal	West Ham United	Graham Scott	3	0	0	2.37	1.11	3	1	4	2	1	1	30,70,90:2	25	7	2	1	0	3	0	0	1	1	2	13	11	11	6	2	5	16	13	61	39	2.01	1.44	3	0	100	50	50	0	50	100	50	100	6	4	1.51	4.59	6.65	1.12	1.42	2.05	3.7	1.62	2.15	Emirates Stadium (London)	1
24	1535205600	Aug 25 2018 - 2:00pm	complete	21193	Huddersfield Town	Cardiff City	Michael Oliver	3	0	0	0.47	0.74	0	0	0	0	0	0	None	None	7	7	0	1	1	0	0	1	0	1	4	11	2	5	2	6	8	10	58	42	0.76	1.47	2.5	0	100	50	0	0	50	100	25	75	6	3	2.25	3.21	3.66	1.53	2.65	5.3	10.5	2.2	1.59	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
25	1535205600	Aug 25 2018 - 2:00pm	complete	29925	Southampton	Leicester City	Jonathan Moss	3	1	0	1.21	1.32	1	2	3	0	0	0	52	56,90:2	10	3	2	1	1	0	1	2	0	1	10	9	6	6	4	3	13	11	51	49	1.54	1.23	1.5	50	50	50	0	0	0	50	25	50	13	1	2.44	3.21	3.25	1.42	2.25	4.35	8.3	1.95	1.77	St. Mary:s Stadium (Southampton- Hampshire)	1
26	1535214600	Aug 25 2018 - 4:30pm	complete	53294	Liverpool	Brighton & Hove Albion	Chris Kavanagh	3	3	0	2.79	0.68	1	0	1	1	1	0	23	None	8	5	1	0	1	0	0	1	0	1	16	5	9	3	7	2	8	14	70	30	2.26	0.76	3	0	100	50	50	0	50	100	25	100	7	3	1.18	7.93	9.99	1.12	1.42	2.05	3.5	2.4	1.51	Anfield (Liverpool)	1
27	1535286600	Aug 26 2018 - 12:30pm	complete	20014	Watford	Crystal Palace	Anthony Taylor	3	3	3	1.42	1.53	2	1	3	0	0	0	53,71	78	6	3	4	0	2	0	2	2	1	1	10	9	6	4	4	5	14	11	43	57	1.5	1.21	2	0	100	0	0	0	0	100	25	100	13	4	2.49	3.31	3.07	1.32	2	3.55	8	1.77	1.91	Vicarage Road (Watford)	1
28	1535295600	Aug 26 2018 - 3:00pm	complete	23438	Fulham	Burnley	David Coote	3	0	1	1.11	0.89	4	2	6	5	3	2	4,36,38,83	10,41	6	4	2	0	1	0	0	2	0	1	23	8	13	3	10	5	11	8	63	37	2.65	1.06	1	0	50	0	0	0	0	50	50	75	10	2	2.48	3.2	3.19	1.38	2.15	4.05	7.9	1.91	1.8	Craven Cottage (London)	1
29	1535295600	Aug 26 2018 - 3:00pm	complete	51791	Newcastle United	Chelsea	Paul Tierney	3	0	3	1.32	1.58	1	2	3	0	0	0	83	76,87	4	5	3	0	1	0	0	3	1	0	5	11	3	4	2	7	16	8	18	82	0.68	1.69	3	50	100	100	0	0	100	100	0	50	8	3	5.2	3.7	1.76	1.25	1.77	2.95	5.65	1.77	1.95	St. James: Park (Newcastle upon Tyne)	1
30	1535396400	Aug 27 2018 - 7:00pm	complete	74400	Manchester United	Tottenham Hotspur	Craig Pawson	3	3	3	1.89	1.74	0	3	3	0	0	0	None	50,52,84	5	2	2	0	3	0	1	1	2	1	18	8	6	6	12	2	11	16	57	43	2.01	1.11	3	100	100	100	0	0	50	100	50	75	7	4	2.19	3.45	3.53	1.27	1.83	3.15	6.6	1.61	2.15	Old Trafford (Manchester)	1
31	1535801400	Sep 01 2018 - 11:30am	complete	32149	Leicester City	Liverpool	Paul Tierney	4	3	3	1.42	2.32	1	2	3	2	0	2	63	10,45	4	4	3	0	2	0	0	3	0	2	9	9	6	5	3	4	9	12	51	49	1.39	1.22	2	0	100	0	0	0	50	100	50	67	8	5	6.34	4.59	1.53	1.21	1.67	2.7	4.9	1.87	1.8	King Power Stadium (Leicester- Leicestershire)	1
32	1535810400	Sep 01 2018 - 2:00pm	complete	30526	Brighton & Hove Albion	Fulham	Lee Probert	4	3	0	1.21	0.26	2	2	4	1	0	1	67,84	43,62	7	1	3	0	3	0	1	2	0	3	13	9	6	6	7	3	12	14	41	59	1.69	1.22	4.5	100	100	100	100	50	50	100	17	84	5	1	2.19	3.35	3.63	1.28	1.87	3.2	6.2	1.71	2	The American Express Community Stadium (Falmer- East Sussex)	1
33	1535810400	Sep 01 2018 - 2:00pm	complete	40178	Chelsea	AFC Bournemouth	Lee Mason	4	3	3	2.21	0.84	2	0	2	0	0	0	72,85	None	7	6	2	0	2	0	1	1	1	1	13	8	7	2	6	6	10	7	72	28	1.85	1.01	4	100	100	100	50	50	50	100	50	100	9	2	1.29	5.98	9.99	1.12	1.42	2.05	3.68	1.69	2	Stamford Bridge (London)	1
34	1535810400	Sep 01 2018 - 2:00pm	complete	25495	Crystal Palace	Southampton	Martin Atkinson	4	0	0	1.05	0.84	0	2	2	0	0	0	None	47,90:2	7	4	1	0	1	0	0	1	0	1	14	13	7	7	7	6	11	12	50	50	1.84	1.67	2.5	50	100	50	0	0	50	100	33	84	11	8	2.03	3.42	4.11	1.31	1.95	3.5	7.6	1.77	1.91	Selhurst Park (London)	1
35	1535810400	Sep 01 2018 - 2:00pm	complete	38767	Everton	Huddersfield Town	Stuart Attwell	4	3	0	1.79	0.37	1	1	2	2	1	1	36	34	4	3	3	0	3	0	0	3	1	2	10	8	2	7	8	1	13	14	57	43	1.06	1.33	5	100	100	100	50	50	100	100	50	84	5	2	1.5	4.34	7.53	1.35	2.1	3.8	6.9	2.1	1.65	Goodison Park (Liverpool)	1
36	1535810400	Sep 01 2018 - 2:00pm	complete	59947	West Ham United	Wolverhampton Wanderers	Chris Kavanagh	4	0	0	1.63	1.21	0	1	1	0	0	0	None	90:3	4	4	2	0	1	0	1	1	0	1	9	14	4	7	5	7	10	11	47	53	1.3	1.75	2.5	50	100	50	0	0	50	100	84	84	15	7	2.54	3.35	2.96	1.33	2	3.6	5.75	1.77	1.95	London Stadium (London)	1
37	1535819400	Sep 01 2018 - 4:30pm	complete	53946	Manchester City	Newcastle United	Kevin Friend	4	3	1	2.84	1.05	2	1	3	2	1	1	8,52	30	4	0	0	0	0	0	0	0	0	0	18	4	9	3	9	1	5	13	78	22	2.34	0.62	3.5	50	50	50	50	50	50	50	50	67	15	4	1.12	9.99	9.99	1.08	1.31	1.8	3.1	2.15	1.61	Etihad Stadium (Manchester)	1
38	1535891400	Sep 02 2018 - 12:30pm	complete	32316	Cardiff City	Arsenal	Anthony Taylor	4	1	0	1.05	1.32	2	3	5	2	1	1	45:2,70	11,62,81	3	9	3	0	4	0	0	3	1	3	14	16	4	12	10	4	12	14	27	73	1.49	2.35	2.5	50	50	50	50	50	50	50	17	67	6	4	5.54	4.07	1.66	1.22	1.69	2.75	5.4	1.77	1.95	Cardiff City Stadium (Cardiff (Caerdydd))	1
39	1535900400	Sep 02 2018 - 3:00pm	complete	21525	Burnley	Manchester United	Jonathan Moss	4	0	0	1.21	1.58	0	2	2	2	0	2	None	27,44	2	5	2	0	3	1	0	2	1	3	9	16	3	10	6	6	7	13	46	54	1.13	2.06	4.5	100	100	100	100	50	100	100	50	84	10	2	5.92	3.59	1.72	1.3	1.95	3.35	8	1.95	1.74	Turf Moor (Burnley)	1
40	1535900400	Sep 02 2018 - 3:00pm	complete	20141	Watford	Tottenham Hotspur	Andre Marriner	4	3	3	1.42	1.74	2	1	3	0	0	0	69,76	53	3	10	2	0	1	0	0	2	0	1	7	10	4	3	3	7	9	8	34	66	1.13	1.45	2.75	50	100	75	0	0	25	50	67	84	10.5	5.5	5.2	4.08	1.69	1.19	1.62	2.55	5.15	1.65	2.1	Vicarage Road (Watford)	1
41	1537011000	Sep 15 2018 - 11:30am	complete	80188	Tottenham Hotspur	Liverpool	Michael Oliver	5	3	3	2	2.32	1	2	3	1	0	1	90:3	39,54	5	4	0	0	0	0	0	0	0	0	9	16	4	11	5	5	17	16	60	40	1.03	1.9	3.25	75	100	75	50	0	25	100	50	75	10.5	1.5	3.2	3.6	2.3	1.19	1.62	2.55	4.5	1.5	2.4	Wembley Stadium (London)	1
42	1537020000	Sep 15 2018 - 2:00pm	complete	10543	AFC Bournemouth	Leicester City	Craig Pawson	5	2	1.5	1.53	1.32	4	2	6	3	3	0	19,37,41,81	88,89	4	6	3	0	3	1	1	2	2	2	8	13	6	9	2	4	13	15	46	54	1.16	1.85	3	75	100	75	25	0	0	50	63	88	10.5	2.5	2.4	3.45	3.1	1.28	1.87	3.2	5.7	1.67	2.1	Vitality Stadium (Bournemouth- Dorset)	1
43	1537020000	Sep 15 2018 - 2:00pm	complete	40499	Chelsea	Cardiff City	Jonathan Moss	5	3	0.5	2.21	0.74	4	1	5	3	2	1	37,43,80,83	16	5	4	0	0	0	0	0	0	0	0	16	7	8	3	8	4	8	10	76	24	1.86	0.91	2.25	25	75	25	25	25	25	50	38	75	11.5	2	1.16	9	21.75	1.13	1.43	2.1	4.3	2.25	1.57	Stamford Bridge (London)	1
44	1537020000	Sep 15 2018 - 2:00pm	complete	23696	Huddersfield Town	Crystal Palace	Lee Mason	5	0.5	1.5	0.47	1.53	0	1	1	1	0	1	None	38	5	3	1	0	2	0	1	0	2	0	12	5	3	3	9	2	11	17	58	42	1.43	0.71	2	25	75	50	0	0	25	50	38	75	8.5	4	3.35	3.2	2.45	1.43	2.35	4.5	9.5	1.95	1.74	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
45	1537020000	Sep 15 2018 - 2:00pm	complete	53307	Manchester City	Fulham	Stuart Attwell	5	3	0.5	2.84	0.26	3	0	3	2	2	0	2,21,47	None	10	4	0	0	0	0	0	0	0	0	18	9	10	4	8	5	7	7	64	36	2.4	1.08	4.5	100	100	100	75	25	50	100	50	100	8.5	1.5	1.1	13.75	28.75	1.05	1.2	1.54	2.38	2	1.71	Etihad Stadium (Manchester)	1
46	1537020000	Sep 15 2018 - 2:00pm	complete	52165	Newcastle United	Arsenal	Lee Probert	5	0	1.5	1.32	1.32	1	2	3	0	0	0	90:1	49,58	10	4	0	0	0	0	0	0	0	0	3	8	3	3	0	5	13	11	36	64	0.7	1.09	4	100	100	100	50	50	75	75	38	75	8.5	5.5	4.55	3.85	1.87	1.2	1.67	2.65	5.45	1.57	2.2	St. James: Park (Newcastle upon Tyne)	1
47	1537029000	Sep 15 2018 - 4:30pm	complete	20537	Watford	Manchester United	Mike Dean	5	3	1.5	1.42	1.58	1	2	3	2	0	2	65	35,38	6	8	2	0	2	1	2	0	0	3	9	8	6	7	3	1	9	11	42	58	1.41	1.36	3.09	59	100	59	25	25	50	67	63	88	10.67	5.67	4.55	3.65	1.91	1.3	1.95	3.35	7.3	1.8	1.87	Vicarage Road (Watford)	1
48	1537101000	Sep 16 2018 - 12:30pm	complete	30406	Wolverhampton Wanderers	Burnley	Andre Marriner	5	1	0.5	1.79	0.89	1	0	1	0	0	0	61	None	8	2	2	0	4	0	0	2	2	2	21	8	8	3	13	5	10	9	58	42	2.4	0.96	3	75	75	50	50	25	50	50	38	63	8.5	1.5	1.77	3.55	5.85	1.37	2.15	3.95	8.7	2.05	1.69	Molineux Stadium (Wolverhampton- West Midlands)	1
49	1537110000	Sep 16 2018 - 3:00pm	complete	39161	Everton	West Ham United	Martin Atkinson	5	2	0	1.79	1.11	1	3	4	3	1	2	45:2	11,31,61	4	2	2	0	5	0	1	1	1	4	11	7	5	5	6	2	15	12	55	45	1.51	1.14	3.25	75	100	75	50	0	100	100	63	88	6	4	2	3.6	4.15	1.25	1.8	3	6.6	1.69	2.05	Goodison Park (Liverpool)	1
50	1537210800	Sep 17 2018 - 7:00pm	complete	27742	Southampton	Brighton & Hove Albion	Anthony Taylor	5	0.5	0	1.21	0.68	2	2	4	1	1	0	35,65	67,90	1	4	2	0	3	0	0	2	0	3	12	10	6	5	6	5	10	13	51	49	1.51	1.26	1.5	25	50	25	0	0	0	50	38	75	12.5	3	2.05	3.3	4.2	1.43	2.35	4.45	9	1.95	1.74	St. Mary:s Stadium (Southampton- Hampshire)	1
51	1537615800	Sep 22 2018 - 11:30am	complete	23418	Fulham	Watford	Martin Atkinson	6	1.5	3	1.11	1.21	1	1	2	1	0	1	78	2	8	8	2	0	1	0	2	0	0	1	10	11	4	7	6	4	11	9	60	40	1.26	1.55	4	75	100	75	75	25	75	100	50	100	7.5	3.5	2.85	3.45	2.55	1.23	1.71	2.8	5.75	1.61	2.15	Craven Cottage (London)	1
52	1537624800	Sep 22 2018 - 2:00pm	complete	18636	Burnley	AFC Bournemouth	Anthony Taylor	6	0	1.5	1.21	0.84	4	0	4	2	2	0	39,41,83,88	None	3	8	2	0	0	0	1	1	0	0	9	11	6	6	3	5	17	6	37	63	1.24	1.6	2.75	50	100	50	25	0	50	75	50	80	8.5	3.5	3.05	3.3	2.45	1.3	1.95	3.35	6	1.69	2	Turf Moor (Burnley)	1
53	1537624800	Sep 22 2018 - 2:00pm	complete	32321	Cardiff City	Manchester City	Michael Oliver	6	0.5	2	1.05	2.32	0	5	5	3	0	3	None	32,35,44,67,89	1	9	1	0	1	0	1	0	0	1	3	15	3	11	0	4	6	4	21	79	0.54	2.14	2.25	50	75	25	25	25	25	50	40	80	13	4.5	20.5	8.75	1.15	1.11	1.38	2	3.3	2.15	1.61	Cardiff City Stadium (Cardiff (Caerdydd))	1
54	1537624800	Sep 22 2018 - 2:00pm	complete	25679	Crystal Palace	Newcastle United	Andre Marriner	6	0	0.5	1.05	1.05	0	0	0	0	0	0	None	None	9	5	1	0	1	0	0	1	1	0	12	7	5	4	7	3	8	11	61	39	1.57	0.94	1.75	25	75	25	0	0	25	50	40	70	9	4	2.05	3.4	4.05	1.37	2.15	3.95	8	1.91	1.77	Selhurst Park (London)	1
55	1537624800	Sep 22 2018 - 2:00pm	complete	31676	Leicester City	Huddersfield Town	David Coote	6	1.5	0.5	1.42	0.37	3	1	4	2	1	1	19,66,75	5	3	1	2	0	1	0	2	0	0	1	16	8	9	3	7	5	10	16	62	38	1.9	0.92	3.5	75	100	50	25	25	100	100	40	60	5.5	6	1.71	3.65	5.7	1.44	2.35	4.55	9.5	2.25	1.57	King Power Stadium (Leicester- Leicestershire)	1
56	1537624800	Sep 22 2018 - 2:00pm	complete	50965	Liverpool	Southampton	Paul Tierney	6	3	1.5	2.79	0.84	3	0	3	3	3	0	10,21,45:3	None	5	4	0	0	2	0	0	0	1	1	10	3	5	2	5	1	7	10	60	40	1.41	0.61	2.5	25	75	50	25	0	50	75	50	80	11	4	1.19	7.75	16.25	1.13	1.43	2.1	3.4	2.1	1.67	Anfield (Liverpool)	1
57	1537624800	Sep 22 2018 - 2:00pm	complete	74489	Manchester United	Wolverhampton Wanderers	Kevin Friend	6	1.5	1.5	1.89	1.21	1	1	2	1	1	0	18	53	5	4	1	0	1	0	1	0	0	1	10	12	7	9	3	3	5	17	64	36	1.57	1.71	2.25	25	75	50	0	0	25	50	40	80	10	3	1.67	3.95	5.7	1.26	1.8	3.05	7	1.83	1.83	Old Trafford (Manchester)	1
58	1537633800	Sep 22 2018 - 4:30pm	complete	30531	Brighton & Hove Albion	Tottenham Hotspur	Chris Kavanagh	6	2	2	1.21	1.74	1	2	3	1	0	1	90:3	42,76	5	7	2	0	1	0	0	2	0	1	8	13	5	8	3	5	15	9	28	72	1.08	1.71	3.75	84	100	100	50	25	42	67	60	80	10.67	4	5.4	3.95	1.69	1.25	1.77	2.95	6	1.74	1.95	The American Express Community Stadium (Falmer- East Sussex)	1
59	1537705800	Sep 23 2018 - 12:30pm	complete	56875	West Ham United	Chelsea	Mike Dean	6	0	3	1.63	1.58	0	0	0	0	0	0	None	None	1	8	2	0	1	0	0	2	0	1	6	13	2	7	4	6	11	9	28	72	0.73	1.9	2.5	50	75	75	0	0	25	50	60	100	10	5	5.55	4.3	1.61	1.18	1.57	2.45	5	1.65	2.1	London Stadium (London)	1
60	1537714800	Sep 23 2018 - 3:00pm	complete	59964	Arsenal	Everton	Jonathan Moss	6	1.5	1	2.37	1.05	2	0	2	0	0	0	56,59	None	5	9	2	0	1	0	2	0	1	0	7	9	6	7	1	2	17	12	62	38	1.3	1.46	3.5	75	100	75	75	0	50	75	50	90	8.5	5.5	1.43	5.1	7.25	1.12	1.41	2	3.6	1.56	2.3	Emirates Stadium (London)	1
61	1538220600	Sep 29 2018 - 11:30am	complete	56938	West Ham United	Manchester United	Michael Oliver	7	0.33	2	1.63	1.58	3	1	4	2	2	0	5,43,74	71	4	9	0	0	1	0	0	0	0	1	8	6	4	5	4	1	12	12	49	51	1.13	1.2	2.33	50	67	50	17	17	50	67	42	83	9.67	6.33	4.2	3.6	1.95	1.25	1.8	3	5.75	1.69	2.05	London Stadium (London)	1
62	1538229600	Sep 29 2018 - 2:00pm	complete	60019	Arsenal	Watford	Anthony Taylor	7	2	2	2.37	1.21	2	0	2	0	0	0	81,83	None	6	6	2	0	2	0	1	1	1	1	9	13	3	6	6	7	11	17	63	37	1.22	1.53	2.84	67	100	42	42	0	42	84	59	100	9.67	3.17	1.49	4.75	6.7	1.15	1.5	2.25	3.98	1.59	2.2	Emirates Stadium (London)	1
63	1538229600	Sep 29 2018 - 2:00pm	complete	38788	Everton	Fulham	Roger East	7	1.33	0.33	1.79	0.26	3	0	3	0	0	0	56,66,89	None	12	1	0	0	3	0	0	0	1	2	13	7	7	0	6	7	13	13	51	49	1.68	0.64	3.34	84	100	84	50	0	67	100	42	92	5.66	2.67	1.67	4.2	5.35	1.16	1.53	2.35	4.2	1.59	2.2	Goodison Park (Liverpool)	1
64	1538229600	Sep 29 2018 - 2:00pm	complete	23885	Huddersfield Town	Tottenham Hotspur	Craig Pawson	7	0.33	2.25	0.47	1.74	0	2	2	2	0	2	None	25,34	3	0	2	0	2	0	1	1	0	2	9	11	6	7	3	4	17	16	52	48	1.38	1.41	2.17	38	67	67	0	0	29	59	58	67	10.67	3.42	6.4	4.05	1.59	1.27	1.87	3.2	6.05	1.91	1.8	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
65	1538229600	Sep 29 2018 - 2:00pm	complete	54152	Manchester City	Brighton & Hove Albion	Lee Mason	7	3	0.33	2.84	0.68	2	0	2	1	1	0	29,65	None	10	3	0	0	3	0	0	0	2	1	22	3	9	2	13	1	4	10	80	20	2.75	0.46	3.33	50	84	67	33	17	50	100	50	92	11.67	2	1.09	12	33	1.1	1.36	1.91	3.3	2.35	1.53	Etihad Stadium (Manchester)	1
66	1538229600	Sep 29 2018 - 2:00pm	complete	51523	Newcastle United	Leicester City	Simon Hooper	7	0	1	1.32	1.32	0	2	2	1	0	1	None	30,73	5	9	0	0	0	0	0	0	0	0	6	10	2	6	4	4	11	5	41	59	0.73	1.36	3.5	100	100	100	17	17	33	50	50	67	10.34	3.67	2.75	3.2	2.8	1.43	2.3	4.4	10	1.95	1.77	St. James: Park (Newcastle upon Tyne)	1
67	1538229600	Sep 29 2018 - 2:00pm	complete	31147	Wolverhampton Wanderers	Southampton	Stuart Attwell	7	1.67	1	1.79	0.84	2	0	2	0	0	0	79,87	None	8	6	3	0	1	0	0	3	0	1	13	11	7	7	6	4	11	7	48	52	1.6	1.5	2.5	50	84	50	17	0	50	50	42	75	9.66	3.67	1.91	3.5	4.55	1.34	2.05	3.75	7.6	1.91	1.8	Molineux Stadium (Wolverhampton- West Midlands)	1
68	1538238600	Sep 29 2018 - 4:30pm	complete	40625	Chelsea	Liverpool	Andre Marriner	7	3	3	2.21	2.32	1	1	2	1	1	0	25	89	4	4	0	0	2	0	0	0	1	1	9	13	5	7	4	6	7	9	47	53	1.17	1.78	3.34	67	100	67	34	34	50	84	42	75	10.67	1.67	2.65	3.45	2.7	1.2	1.65	2.6	5	1.54	2.3	Stamford Bridge (London)	1
69	1538319600	Sep 30 2018 - 3:00pm	complete	30411	Cardiff City	Burnley	Martin Atkinson	7	0.33	0.33	1.05	0.89	1	2	3	0	0	0	60	51,70	10	2	1	0	3	0	0	1	1	2	15	4	6	3	9	1	11	15	54	46	1.94	0.72	2.83	33	50	50	50	50	50	50	42	67	6.67	4	2.55	3.05	3.2	1.44	2.35	4.55	9.5	1.95	1.74	Cardiff City Stadium (Cardiff (Caerdydd))	1
70	1538420400	Oct 01 2018 - 7:00pm	complete	10199	AFC Bournemouth	Crystal Palace	Mike Dean	7	2.33	2	1.53	1.53	2	1	3	1	1	0	5,87	55	3	3	3	0	4	0	1	2	0	4	10	7	6	3	4	4	9	12	44	56	1.39	1.04	3	50	84	50	34	17	17	67	58	84	9.34	4	2.25	3.4	3.35	1.24	1.74	2.9	4.25	1.62	2.1	Vitality Stadium (Bournemouth- Dorset)	1
71	1538766000	Oct 05 2018 - 7:00pm	complete	30544	Brighton & Hove Albion	West Ham United	Kevin Friend	8	1.33	1	1.21	1.11	1	0	1	1	1	0	25	None	2	9	3	0	2	0	1	2	0	2	9	12	5	5	4	7	12	8	35	65	1.37	1.86	4	84	100	100	84	17	67	100	50	86	7.67	5.33	2.75	3.3	2.75	1.34	2.05	3.7	5.75	1.83	1.87	The American Express Community Stadium (Falmer- East Sussex)	1
72	1538834400	Oct 06 2018 - 2:00pm	complete	20533	Burnley	Huddersfield Town	Chris Kavanagh	8	1	0.33	1.21	0.37	1	1	2	1	1	0	20	66	1	10	2	0	2	0	0	2	0	2	4	10	4	3	0	7	9	11	31	69	0.76	1.32	3.83	67	100	67	67	17	100	100	36	57	5.66	3.67	2.1	3.1	4.2	1.48	2.45	4.8	10.5	2.1	1.65	Turf Moor (Burnley)	1
73	1538834400	Oct 06 2018 - 2:00pm	complete	25715	Crystal Palace	Wolverhampton Wanderers	Michael Oliver	8	0.33	1.33	1.05	1.21	0	1	1	0	0	0	None	56	6	3	3	0	4	0	1	2	0	4	9	8	5	3	4	5	11	13	67	33	1.48	0.95	1.5	17	67	0	0	0	17	50	43	79	13	2.67	2.8	3.2	2.75	1.4	2.25	4.2	8.5	1.91	1.77	Selhurst Park (London)	1
74	1538834400	Oct 06 2018 - 2:00pm	complete	32007	Leicester City	Everton	Andre Marriner	8	2	0.67	1.42	1.05	1	2	3	2	1	1	40	7,77	2	10	3	1	1	0	2	2	1	0	8	14	3	9	5	5	10	11	51	49	0.99	1.92	3.17	67	100	67	50	0	67	67	57	86	8.34	6	2.3	3.35	3.35	1.27	1.87	3.2	7	1.71	2	King Power Stadium (Leicester- Leicestershire)	1
75	1538834400	Oct 06 2018 - 2:00pm	complete	43268	Tottenham Hotspur	Cardiff City	Mike Dean	8	1.5	0.33	2	0.74	1	0	1	1	1	0	8	None	6	2	3	0	1	1	0	3	0	2	14	9	8	7	6	2	7	11	75	25	2.03	1.37	2.92	67	84	67	42	17	17	84	64	71	10	0.67	1.24	6.4	15	1.14	1.47	2.2	4.6	1.91	1.77	Wembley Stadium (London)	1
76	1538834400	Oct 06 2018 - 2:00pm	complete	20139	Watford	AFC Bournemouth	Jonathan Moss	8	2.25	1	1.42	0.84	0	4	4	3	0	3	None	14,33,45,47	10	7	4	1	1	0	3	2	0	1	5	11	3	8	2	3	11	9	47	53	0.89	1.59	2.88	54	100	71	17	0	29	59	72	100	11.75	3.83	2.15	3.55	3.55	1.24	1.74	2.9	6	1.65	2.1	Vicarage Road (Watford)	1
77	1538843400	Oct 06 2018 - 4:30pm	complete	74519	Manchester United	Newcastle United	Anthony Taylor	8	1.33	0.67	1.89	1.05	3	2	5	2	0	2	70,76,90	7,10	10	6	2	0	2	0	1	1	0	2	16	14	11	9	5	5	16	8	73	27	2.36	1.84	1.84	50	67	50	0	0	17	50	36	72	7.33	3.34	1.44	4.5	8.5	1.28	1.87	3.2	7.3	2	1.71	Old Trafford (Manchester)	1
78	1538910000	Oct 07 2018 - 11:00am	complete	25401	Fulham	Arsenal	Paul Tierney	8	1.33	2	1.11	1.32	1	5	6	2	1	1	44	29,49,67,79,90:1	4	2	2	0	0	0	0	2	0	0	13	10	5	8	8	2	11	12	48	52	1.53	1.56	3.83	84	100	67	50	50	50	84	57	100	11	3.67	5.15	4.35	1.65	1.13	1.43	2.1	3.85	1.48	2.45	Craven Cottage (London)	1
79	1538918100	Oct 07 2018 - 1:15pm	complete	27077	Southampton	Chelsea	Craig Pawson	8	0.67	2.33	1.21	1.58	0	3	3	1	0	1	None	30,57,90:3	4	12	6	0	0	0	1	5	0	0	13	10	7	7	6	3	13	11	34	66	1.56	1.74	2.17	50	67	67	17	0	17	33	50	79	12.33	2.67	6.1	4.1	1.61	1.25	1.77	2.95	6	1.83	1.87	St. Mary:s Stadium (Southampton- Hampshire)	1
80	1538926200	Oct 07 2018 - 3:30pm	complete	52117	Liverpool	Manchester City	Martin Atkinson	8	3	2.33	2.79	2.32	0	0	0	0	0	0	None	None	2	6	1	0	3	0	0	1	1	2	7	6	3	3	4	3	10	10	49	51	0.99	0.91	2.84	17	84	50	33	17	50	84	36	86	15	2.34	2.6	3.5	2.75	1.2	1.62	2.6	5.25	1.54	2.3	Anfield (Liverpool)	1
81	1540035000	Oct 20 2018 - 11:30am	complete	40721	Chelsea	Manchester United	Mike Dean	9	2.5	1.5	2.21	1.58	2	2	4	1	1	0	21,90:6	55,73	5	3	2	0	5	0	2	0	2	3	15	8	7	5	8	3	9	17	62	38	1.96	1.14	3.5	75	100	63	50	38	75	88	50	88	12	3	1.71	3.95	5.2	1.24	1.74	2.9	5	1.74	1.95	Stamford Bridge (London)	1
82	1540044000	Oct 20 2018 - 2:00pm	complete	10986	AFC Bournemouth	Southampton	Lee Probert	9	2.5	0.75	1.53	0.84	0	0	0	0	0	0	None	None	6	4	1	0	2	0	0	1	2	0	8	7	3	5	5	2	11	14	57	43	1.15	1.12	3.13	50	100	63	25	13	38	63	69	88	9.75	4.5	2.3	3.45	3.25	1.24	1.74	2.9	5.25	1.62	2.1	Vitality Stadium (Bournemouth- Dorset)	1
83	1540044000	Oct 20 2018 - 2:00pm	complete	29681	Cardiff City	Fulham	Kevin Friend	9	0.25	0.25	1.05	0.26	4	2	6	4	2	2	15,20,65,87	11,34	4	4	3	0	3	0	1	2	3	0	16	8	6	5	10	3	15	16	40	60	1.85	1.15	3.38	50	88	88	50	25	38	63	50	82	6.75	3.25	2.5	3.4	2.95	1.25	1.77	2.95	5.5	1.61	2.15	Cardiff City Stadium (Cardiff (Caerdydd))	1
84	1540044000	Oct 20 2018 - 2:00pm	complete	54094	Manchester City	Burnley	Jonathan Moss	9	3	1	2.84	0.89	5	0	5	1	1	0	17,54,56,83,90	None	10	1	2	0	2	0	1	1	2	0	17	5	11	0	6	5	11	5	69	31	2.33	0.48	3.13	50	75	63	25	25	50	63	38	82	11.75	2.25	1.07	15.5	33.75	1.06	1.25	1.67	2.37	2.3	1.54	Etihad Stadium (Manchester)	1
85	1540044000	Oct 20 2018 - 2:00pm	complete	50329	Newcastle United	Brighton & Hove Albion	Andre Marriner	9	0	0.25	1.32	0.68	0	1	1	1	0	1	None	29	10	2	0	0	2	0	0	0	1	1	19	7	7	3	12	4	13	17	68	32	2.38	0.93	2.5	50	88	50	13	0	13	75	38	69	9	3.5	2.2	3.2	3.8	1.48	2.45	4.8	11	2.1	1.65	St. James: Park (Newcastle upon Tyne)	1
86	1540044000	Oct 20 2018 - 2:00pm	complete	56921	West Ham United	Tottenham Hotspur	Martin Atkinson	9	1	2.4	1.63	1.74	0	1	1	1	0	1	None	44	10	6	3	0	0	0	0	3	0	0	12	7	5	3	7	4	8	10	44	56	1.62	0.92	2.4	55	75	65	13	0	33	55	57	69	8.55	4.3	3.95	3.7	1.95	1.19	1.62	2.55	4.4	1.57	2.25	London Stadium (London)	1
87	1540044000	Oct 20 2018 - 2:00pm	complete	31144	Wolverhampton Wanderers	Watford	Lee Mason	9	2	1.33	1.79	1.21	0	2	2	2	0	2	None	20,21	8	2	3	0	1	0	1	2	0	1	8	6	2	4	6	2	23	13	44	56	1.06	0.95	2.46	59	88	29	29	0	29	46	44	94	11.33	3.17	1.77	3.6	5.5	1.31	1.95	3.5	7	1.87	1.8	Molineux Stadium (Wolverhampton- West Midlands)	1
88	1540053000	Oct 20 2018 - 4:30pm	complete	24263	Huddersfield Town	Liverpool	Michael Oliver	9	0.25	2.5	0.47	2.32	0	1	1	1	0	1	None	24	2	4	0	0	2	0	0	0	1	1	8	7	2	3	6	4	9	6	47	53	1.06	1	2	38	75	38	0	0	38	88	25	57	9	3	10.75	5.6	1.33	1.24	1.74	2.9	4.75	2.2	1.59	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
89	1540134000	Oct 21 2018 - 3:00pm	complete	38668	Everton	Crystal Palace	Anthony Taylor	9	1.75	1.5	1.79	1.53	2	0	2	0	0	0	87,89	None	10	5	2	0	1	0	1	1	0	1	14	8	5	4	9	4	13	17	59	41	1.8	1.12	2.63	63	88	63	13	0	38	75	44	82	9	3.75	1.83	3.55	4.85	1.31	1.95	3.5	6.5	1.87	1.83	Goodison Park (Liverpool)	1
90	1540234800	Oct 22 2018 - 7:00pm	complete	59886	Arsenal	Leicester City	Chris Kavanagh	9	2.25	1.5	2.37	1.32	3	1	4	2	1	1	45,63,66	31	6	4	2	0	2	0	2	0	0	2	18	6	7	3	11	3	10	10	69	31	2.13	0.89	3	50	100	50	25	13	25	63	63	94	10.75	3.25	1.51	4.6	6.5	1.16	1.51	2.3	4.25	1.61	2.15	Emirates Stadium (London)	1
91	1540648800	Oct 27 2018 - 2:00pm	complete	30654	Brighton & Hove Albion	Wolverhampton Wanderers	Anthony Taylor	10	1.75	1.75	1.21	1.21	1	0	1	0	0	0	48	None	1	10	3	0	0	0	0	3	0	0	7	16	2	8	5	8	11	8	39	61	0.82	2.16	2.38	50	63	38	25	13	25	75	33	73	9.25	4	3.2	3.15	2.5	1.47	2.4	4.7	9.5	2.05	1.69	The American Express Community Stadium (Falmer- East Sussex)	1
92	1540648800	Oct 27 2018 - 2:00pm	complete	25071	Fulham	AFC Bournemouth	Andre Marriner	10	1	1.5	1.11	0.84	0	3	3	1	0	1	None	14,72,85	5	5	3	1	1	0	1	3	0	1	11	12	2	6	9	6	16	3	52	48	1.14	1.67	3.63	50	100	63	50	25	50	88	62	95	12	3	2.95	3.7	2.35	1.16	1.53	2.3	4.2	1.47	2.5	Craven Cottage (London)	1
93	1540648800	Oct 27 2018 - 2:00pm	complete	53373	Liverpool	Cardiff City	Stuart Attwell	10	2.5	0.25	2.79	0.74	4	1	5	1	1	0	10,66,84,87	77	8	0	0	0	0	0	0	0	0	0	14	3	8	2	6	1	6	4	79	21	2.06	0.53	2	13	50	38	25	13	38	75	39	62	9.25	2	1.1	10.5	30	1.11	1.38	2	3.2	2.45	1.48	Anfield (Liverpool)	1
94	1540648800	Oct 27 2018 - 2:00pm	complete	30736	Southampton	Newcastle United	Chris Kavanagh	10	0.5	0.5	1.21	1.05	0	0	0	0	0	0	None	None	7	2	0	0	1	0	0	0	0	1	18	5	5	0	13	5	9	12	50	50	1.97	0.63	2.25	50	63	63	25	13	25	50	45	62	9.75	4.5	2.1	3.35	3.85	1.43	2.35	4.5	9.5	2.05	1.69	St. Mary:s Stadium (Southampton- Hampshire)	1
95	1540648800	Oct 27 2018 - 2:00pm	complete	20457	Watford	Huddersfield Town	Mike Dean	10	1.8	0.5	1.42	0.37	3	0	3	2	2	0	10,19,80	None	3	3	1	0	2	0	0	1	1	1	13	12	7	8	6	4	9	13	48	52	1.66	1.6	3.38	80	100	65	35	13	58	80	33	67	10.85	5	1.74	3.6	5.45	1.4	2.25	4.2	8.1	2.05	1.69	Vicarage Road (Watford)	1
96	1540657800	Oct 27 2018 - 4:30pm	complete	31848	Leicester City	West Ham United	Michael Oliver	10	1.5	0.75	1.42	1.11	1	1	2	1	0	1	89	30	8	0	1	0	1	1	0	1	1	1	19	10	8	4	11	6	17	5	64	36	2.5	1.16	3.13	63	88	75	50	0	88	100	50	78	6.75	6.25	2.2	3.35	3.4	1.29	1.91	3.3	7.6	1.77	1.95	King Power Stadium (Leicester- Leicestershire)	1
97	1540733400	Oct 28 2018 - 1:30pm	complete	21430	Burnley	Chelsea	Craig Pawson	10	1	2.5	1.21	1.58	0	4	4	1	0	1	None	22,57,62,90:2	4	4	4	0	2	0	1	3	2	0	6	18	2	9	4	9	14	10	30	70	0.81	2.06	2.63	38	88	63	25	0	50	75	50	84	10.25	2.5	10.5	4.95	1.36	1.23	1.71	2.8	6.6	2.05	1.67	Turf Moor (Burnley)	1
98	1540733400	Oct 28 2018 - 1:30pm	complete	25718	Crystal Palace	Arsenal	Martin Atkinson	10	0.25	2.25	1.05	1.32	2	2	4	1	1	0	45:1,83	51,56	6	4	1	0	2	0	1	0	0	2	15	6	4	3	11	3	10	16	42	58	1.62	0.9	3	50	75	50	38	38	38	50	61	89	11	3.5	4.85	4.2	1.71	1.18	1.57	2.45	3.8	1.61	2.2	Selhurst Park (London)	1
99	1540742400	Oct 28 2018 - 4:00pm	complete	74525	Manchester United	Everton	Jonathan Moss	10	1.75	1.25	1.89	1.05	2	1	3	1	1	0	27,49	77	8	4	2	0	1	0	2	0	1	0	14	14	11	7	3	7	15	12	53	47	1.94	1.67	3.25	75	100	75	38	13	38	63	56	89	12.25	4.25	1.74	3.9	5.05	1.24	1.74	2.9	5.1	1.74	1.95	Old Trafford (Manchester)	1
100	1540843200	Oct 29 2018 - 8:00pm	complete	56854	Tottenham Hotspur	Manchester City	Kevin Friend	10	2	2	2	2.32	0	1	1	1	0	1	None	6	3	6	2	0	2	0	1	1	0	2	5	9	2	7	3	2	13	13	48	52	0.73	1.53	2.46	46	71	46	29	13	13	75	50	73	13.58	3	5.35	4.25	1.65	1.19	1.61	2.5	4.9	1.62	2.15	Wembley Stadium (London)	1
101	1541248200	Nov 03 2018 - 12:30pm	complete	10792	AFC Bournemouth	Manchester United	Paul Tierney	11	2.2	1.4	1.53	1.58	1	2	3	2	1	1	11	35,90:2	9	5	4	0	3	0	0	4	0	3	11	15	8	9	3	6	12	12	48	52	1.62	1.95	3.3	70	90	70	50	20	50	80	65	90	11.2	5	3.9	3.65	2.05	1.24	1.74	2.9	6.6	1.67	2.1	Vitality Stadium (Bournemouth- Dorset)	1
102	1541257200	Nov 03 2018 - 3:00pm	complete	30877	Cardiff City	Leicester City	Lee Probert	11	0.8	1.2	1.05	1.32	0	1	1	0	0	0	None	55	6	12	2	0	2	0	1	1	1	1	11	10	3	6	8	4	13	12	40	60	1.34	1.49	3.7	70	90	80	50	40	50	70	55	80	10	3.6	3.4	3.3	2.35	1.33	2.05	3.65	8.4	1.83	1.87	Cardiff City Stadium (Cardiff (Caerdydd))	1
103	1541257200	Nov 03 2018 - 3:00pm	complete	38966	Everton	Brighton & Hove Albion	David Coote	11	2	0.8	1.79	0.68	3	1	4	2	1	1	26,50,77	33	6	4	0	0	1	0	0	0	1	0	13	4	4	4	9	0	9	17	61	39	1.67	0.74	2.4	40	80	40	20	0	30	80	45	80	9.6	3.6	1.61	4	6.95	1.31	1.95	3.5	8.2	2	1.71	Goodison Park (Liverpool)	1
104	1541257200	Nov 03 2018 - 3:00pm	complete	49157	Newcastle United	Watford	Craig Pawson	11	0	1.75	1.32	1.21	1	0	1	0	0	0	65	None	8	9	1	0	5	0	0	1	1	4	7	12	3	2	4	10	12	11	41	59	0.97	1.33	2.45	55	90	43	13	0	35	68	35	70	10.9	2.5	2.8	3.25	2.8	1.39	2.2	4.15	10	1.91	1.8	St. James: Park (Newcastle upon Tyne)	1
105	1541257200	Nov 03 2018 - 3:00pm	complete	56862	West Ham United	Burnley	Roger East	11	0.8	0.8	1.63	0.89	4	2	6	2	1	1	10,68,84,90:2	45,77	10	4	1	0	4	0	1	0	0	4	17	5	11	4	6	1	7	9	62	38	2.39	0.74	2.4	40	50	50	30	20	20	50	45	75	7.8	4.8	1.67	4	5.95	1.26	1.83	3.1	7.6	1.83	1.87	London Stadium (London)	1
106	1541266200	Nov 03 2018 - 5:30pm	complete	59993	Arsenal	Liverpool	Andre Marriner	11	2.4	2.6	2.37	2.32	1	1	2	0	0	0	82	61	5	8	1	0	1	0	0	1	0	1	10	10	5	5	5	5	7	7	61	39	1.48	1.29	2.5	50	90	40	20	0	30	80	55	80	9.8	3.2	4	3.95	1.95	1.15	1.5	2.25	4.2	1.49	2.45	Emirates Stadium (London)	1
107	1541274300	Nov 03 2018 - 7:45pm	complete	31185	Wolverhampton Wanderers	Tottenham Hotspur	Mike Dean	11	1.6	2.5	1.79	1.74	2	3	5	2	0	2	68,79	27,30,61	5	1	1	0	2	0	1	0	0	2	12	10	8	9	4	1	11	8	48	52	1.73	1.52	2.35	45	82	44	10	0	37	54	40	65	11.4	3.3	3.5	3.4	2.25	1.31	1.95	3.45	7.4	1.67	2.1	Molineux Stadium (Wolverhampton- West Midlands)	1
108	1541343600	Nov 04 2018 - 3:00pm	complete	53916	Manchester City	Southampton	Lee Mason	11	3	0.8	2.84	0.84	6	1	7	5	4	1	6,12,18,45:2,67,90:1	29	4	4	1	0	1	0	1	0	1	0	14	12	9	7	5	5	14	9	67	33	2.07	1.56	3	30	90	60	20	20	50	70	45	70	13.4	2.6	1.13	10.75	23.25	1.09	1.32	1.8	3.3	2.1	1.65	Etihad Stadium (Manchester)	1
109	1541347200	Nov 04 2018 - 4:00pm	complete	40407	Chelsea	Crystal Palace	Michael Oliver	11	2.2	1.2	2.21	1.53	3	1	4	1	1	0	32,65,70	53	4	2	0	0	1	0	0	0	0	1	12	5	7	3	5	2	6	13	73	27	1.79	0.76	2.9	60	90	50	30	20	20	70	55	85	9	3	1.32	5.85	10.5	1.17	1.56	2.4	4.8	1.83	1.83	Stamford Bridge (London)	1
110	1541448000	Nov 05 2018 - 8:00pm	complete	17082	Huddersfield Town	Fulham	Anthony Taylor	11	0.2	0.2	0.47	0.26	1	0	1	1	1	0	29	None	5	4	1	0	2	0	0	1	1	1	9	5	3	2	6	3	11	8	45	55	1.26	0.66	2.7	30	70	60	30	10	40	80	40	75	6.2	3.2	2.4	3.35	3.3	1.32	2	3.55	7	1.74	1.95	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
111	1541853000	Nov 10 2018 - 12:30pm	complete	29402	Cardiff City	Brighton & Hove Albion	Martin Atkinson	12	0.67	0.67	1.05	0.68	2	1	3	2	1	1	28,90	6	4	1	2	0	1	1	1	1	1	1	16	6	7	4	9	2	7	21	60	40	1.84	0.81	2.83	42	67	50	42	25	34	75	46	73	8.16	4	2.6	3.05	3.1	1.53	2.6	5.2	15	2.05	1.69	Cardiff City Stadium (Cardiff (Caerdydd))	1
112	1541862000	Nov 10 2018 - 3:00pm	complete	24069	Huddersfield Town	West Ham United	Chris Kavanagh	12	0.67	0.8	0.47	1.11	1	1	2	1	1	0	6	74	5	6	1	0	1	0	1	0	1	0	15	10	8	6	7	4	9	8	43	57	1.86	1.45	2.17	30	57	39	30	0	47	92	32	59	7.4	4.33	3.35	3.3	2.35	1.37	2.15	3.95	10	1.87	1.83	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
113	1541862000	Nov 10 2018 - 3:00pm	complete	32184	Leicester City	Burnley	Mike Dean	12	1.4	0.67	1.42	0.89	0	0	0	0	0	0	None	None	12	1	2	0	0	0	0	2	0	0	15	5	6	2	9	3	13	10	63	37	1.93	0.69	3.15	65	84	64	35	25	57	75	50	87	6.6	5.3	1.53	4.2	7	1.25	1.8	3	6.1	1.91	1.8	King Power Stadium (Leicester- Leicestershire)	1
114	1541862000	Nov 10 2018 - 3:00pm	complete	49266	Newcastle United	AFC Bournemouth	Lee Probert	12	0.5	1.8	1.32	0.84	2	1	3	3	2	1	7,39	45:6	7	10	2	0	1	0	1	1	0	1	15	10	7	5	8	5	9	11	39	61	1.78	1.41	2.69	35	84	65	20	0	29	65	46	73	12.67	2.2	3	3.35	2.5	1.31	1.95	3.5	7.4	1.71	2	St. James: Park (Newcastle upon Tyne)	1
115	1541862000	Nov 10 2018 - 3:00pm	complete	28153	Southampton	Watford	Simon Hooper	12	0.6	1.4	1.21	1.21	1	1	2	1	1	0	20	82	7	6	3	0	2	0	1	2	0	2	11	10	5	7	6	3	13	13	42	58	1.34	1.49	2.1	40	70	40	20	0	20	50	46	78	11.4	4.4	2.4	3.3	3.2	1.33	2	3.6	8.2	1.8	1.91	St. Mary:s Stadium (Southampton- Hampshire)	1
116	1541871000	Nov 10 2018 - 5:30pm	complete	25685	Crystal Palace	Tottenham Hotspur	Jonathan Moss	12	0.4	2.57	1.05	1.74	0	1	1	0	0	0	None	66	10	6	1	0	1	0	1	0	0	1	11	9	6	3	5	6	12	9	35	65	1.51	1.27	2.33	39	73	46	17	7	22	56	55	69	11.23	3.37	4.85	3.95	1.74	1.23	1.74	2.85	6.2	1.71	2	Selhurst Park (London)	1
117	1541937600	Nov 11 2018 - 12:00pm	complete	53128	Liverpool	Fulham	Paul Tierney	12	2.6	0.17	2.79	0.26	2	0	2	1	1	0	41,53	None	6	3	1	0	1	0	0	1	0	1	15	8	8	4	7	4	11	9	73	27	1.95	1.01	3.05	35	72	72	45	19	37	82	46	78	8.27	2.43	1.12	10.75	22.25	1.06	1.25	1.65	2.57	1.91	1.8	Anfield (Liverpool)	1
118	1541945700	Nov 11 2018 - 2:15pm	complete	40345	Chelsea	Everton	Kevin Friend	12	2.33	1	2.21	1.05	0	0	0	0	0	0	None	None	5	5	4	0	3	0	3	1	2	1	12	5	5	2	7	3	7	11	68	32	1.5	0.61	3.44	82	100	74	54	17	37	72	64	91	11.2	2.87	1.4	5.15	8.25	1.16	1.53	2.35	4.4	1.77	1.95	Stamford Bridge (London)	1
119	1541953800	Nov 11 2018 - 4:30pm	complete	60030	Arsenal	Wolverhampton Wanderers	Stuart Attwell	12	2.17	1.4	2.37	1.21	1	1	2	1	0	1	86	13	11	2	2	0	2	0	0	2	0	2	7	12	4	6	3	6	9	16	71	29	1.39	1.4	2.04	35	70	17	17	0	27	45	59	91	11.17	3.07	1.62	4.15	5.7	1.2	1.65	2.6	5.3	1.67	2.05	Emirates Stadium (London)	1
120	1541953800	Nov 11 2018 - 4:30pm	complete	54316	Manchester City	Manchester United	Anthony Taylor	12	3	1.67	2.84	1.58	3	1	4	1	1	0	12,48,86	58	5	1	1	0	1	0	1	0	1	0	12	3	6	2	6	1	12	12	64	36	1.69	0.63	4	67	100	83	50	34	75	100	50	87	13.83	3.5	1.4	5.2	8	1.14	1.47	2.2	3.9	1.71	2	Etihad Stadium (Manchester)	1
121	1543071600	Nov 24 2018 - 3:00pm	complete	30553	Brighton & Hove Albion	Leicester City	Chris Kavanagh	13	2	1.5	1.21	1.32	1	1	2	1	1	0	15	79	6	1	3	0	2	1	0	3	3	0	12	7	4	4	8	3	10	7	54	46	1.44	1.11	2.99	64	72	64	37	19	27	74	38	79	10.1	4.07	3.05	3.25	2.55	1.42	2.25	4.35	7.5	1.91	1.8	The American Express Community Stadium (Falmer- East Sussex)	1
122	1543071600	Nov 24 2018 - 3:00pm	complete	39139	Everton	Cardiff City	Paul Tierney	13	2.17	0.2	1.79	0.74	1	0	1	0	0	0	59	None	7	3	0	0	3	0	0	0	1	2	14	6	9	2	5	4	12	13	70	30	2.04	0.78	2.8	54	80	54	37	20	44	74	54	79	9.73	2.17	1.43	4.65	8.25	1.25	1.77	2.95	5	2	1.71	Goodison Park (Liverpool)	1
123	1543071600	Nov 24 2018 - 3:00pm	complete	24603	Fulham	Southampton	Michael Oliver	13	0.8	0.67	1.11	0.84	3	2	5	3	2	1	33,43,63	18,53	2	5	2	0	3	0	1	1	0	3	9	15	6	9	3	6	10	6	37	63	1.28	2.09	3.32	47	92	55	29	29	45	75	50	80	10.1	4.2	2.6	3.35	2.85	1.29	1.91	3.25	5.75	1.71	2	Craven Cottage (London)	1
124	1543071600	Nov 24 2018 - 3:00pm	complete	74516	Manchester United	Crystal Palace	Lee Mason	13	2	1	1.89	1.53	0	0	0	0	0	0	None	None	10	3	1	0	2	0	0	1	2	0	10	12	6	3	4	9	13	12	59	41	1.63	1.23	2.85	65	92	65	19	10	10	74	54	88	9.5	3.8	1.42	4.85	8.25	1.24	1.74	2.9	5.2	1.95	1.77	Old Trafford (Manchester)	1
125	1543071600	Nov 24 2018 - 3:00pm	complete	20540	Watford	Liverpool	Jonathan Moss	13	2	2.33	1.42	2.32	0	3	3	0	0	0	None	67,76,89	5	5	0	0	1	1	0	0	0	2	6	11	2	8	4	3	12	13	36	64	0.78	1.56	2.59	59	92	58	9	0	34	75	33	80	11.17	4	6.35	4.3	1.56	1.2	1.65	2.6	3.8	1.74	1.95	Vicarage Road (Watford)	1
126	1543071600	Nov 24 2018 - 3:00pm	complete	56886	West Ham United	Manchester City	Andre Marriner	13	1.17	2.2	1.63	2.32	0	4	4	3	0	3	None	11,19,34,90:3	8	1	0	0	0	0	0	0	0	0	7	9	2	7	5	2	6	3	30	70	0.97	1.42	2.25	35	55	35	27	19	27	64	46	79	13.63	4.33	12.5	6.35	1.26	1.13	1.43	2.1	2.95	1.83	1.87	London Stadium (London)	1
127	1543080600	Nov 24 2018 - 5:30pm	complete	55465	Tottenham Hotspur	Chelsea	Martin Atkinson	13	1.5	2.6	2	1.58	3	1	4	2	2	0	8,16,54	85	4	4	0	0	3	0	0	0	2	1	16	8	10	3	6	5	19	12	39	61	2.07	1.08	2.43	35	65	65	23	0	10	80	54	71	11.55	2.25	2.8	3.4	2.6	1.23	1.74	2.85	4.25	1.56	2.25	Wembley Stadium (London)	1
128	1543152600	Nov 25 2018 - 1:30pm	complete	10792	AFC Bournemouth	Arsenal	Craig Pawson	13	1.83	2	1.53	1.32	1	2	3	2	1	1	45:1	30,67	5	8	2	0	1	0	0	2	1	0	8	16	6	5	2	11	6	9	41	59	1.18	1.88	3.8	84	92	84	57	39	47	74	67	92	9.83	3.93	3.65	3.8	2	1.14	1.48	2.2	3.3	1.45	2.55	Vitality Stadium (Bournemouth- Dorset)	1
129	1543161600	Nov 25 2018 - 4:00pm	complete	30130	Wolverhampton Wanderers	Huddersfield Town	Kevin Friend	13	1.33	0.4	1.79	0.37	0	2	2	1	0	1	None	6,74	3	5	1	0	2	0	0	1	1	1	10	11	4	7	6	4	9	8	44	56	1.22	1.52	3.14	65	92	47	37	19	65	75	25	67	10.17	3.67	1.5	4.2	7.75	1.41	2.25	4.25	6.5	2.4	1.49	Molineux Stadium (Wolverhampton- West Midlands)	1
130	1543264200	Nov 26 2018 - 8:30pm	complete	20628	Burnley	Newcastle United	Anthony Taylor	13	0.8	0.6	1.21	1.05	1	2	3	3	1	2	40	4,23	5	5	0	0	1	0	0	0	0	1	13	12	5	4	8	8	6	11	56	44	1.52	1.29	2.4	40	70	50	40	10	50	70	38	63	6.6	3.8	3.05	3.15	2.6	1.43	2.3	4.4	7.5	1.95	1.77	Turf Moor (Burnley)	1
131	1543608000	Nov 30 2018 - 8:00pm	complete	30213	Cardiff City	Wolverhampton Wanderers	Andre Marriner	14	1	1.33	1.05	1.21	2	1	3	1	0	1	65,77	18	7	6	1	0	2	0	0	1	0	2	12	14	4	5	8	9	3	12	47	53	1.44	1.61	2.4	45	61	36	22	22	37	54	39	81	10.04	3.5	3.65	3.2	2.25	1.43	2.35	4.45	7.5	2	1.69	Cardiff City Stadium (Cardiff (Caerdydd))	1
132	1543676400	Dec 01 2018 - 3:00pm	complete	25098	Crystal Palace	Burnley	Lee Probert	14	0.33	0.71	1.05	0.89	2	0	2	1	1	0	16,77	None	10	2	1	0	1	0	0	1	1	0	21	3	10	0	11	3	9	10	58	42	2.61	0.6	2.34	30	54	37	30	22	15	38	46	73	10.04	3.81	1.57	3.75	6.6	1.33	2	3.6	5.75	2.05	1.67	Selhurst Park (London)	1
133	1543676400	Dec 01 2018 - 3:00pm	complete	22973	Huddersfield Town	Brighton & Hove Albion	Michael Oliver	14	0.71	0.57	0.47	0.68	1	2	3	2	1	1	1	45:4,69	2	6	0	1	2	0	1	0	1	1	6	10	3	7	3	3	10	12	32	68	0.86	1.5	1.93	29	57	29	15	0	29	93	23	66	7.14	3.43	2.4	2.9	3.4	1.57	2.75	5.65	9.25	2.25	1.57	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
134	1543676400	Dec 01 2018 - 3:00pm	complete	31353	Leicester City	Watford	Graham Scott	14	1.33	1.33	1.42	1.21	2	0	2	2	2	0	12,23	None	4	8	2	0	1	1	0	2	0	2	7	7	4	0	3	7	7	6	37	63	0.98	0.98	2.25	59	83	34	17	0	50	75	38	89	10.5	4.84	2.45	3.1	3.15	1.33	2	3.6	5.75	1.8	1.91	King Power Stadium (Leicester- Leicestershire)	1
135	1543676400	Dec 01 2018 - 3:00pm	complete	54409	Manchester City	AFC Bournemouth	Stuart Attwell	14	3	1.5	2.84	0.84	3	1	4	2	1	1	16,57,79	44	8	4	0	0	0	0	0	0	0	0	12	4	7	2	5	2	9	3	73	27	1.79	0.67	3.8	45	100	85	45	22	54	92	50	85	14.24	1.74	1.12	8.75	20.5	1.06	1.25	1.65	2.56	1.87	1.8	Etihad Stadium (Manchester)	1
136	1543676400	Dec 01 2018 - 3:00pm	complete	51853	Newcastle United	West Ham United	Paul Tierney	14	0.86	0.83	1.32	1.11	0	3	3	1	0	1	None	11,63,90:3	7	3	3	0	3	0	1	2	3	0	12	8	5	5	7	3	10	10	58	42	1.56	1.06	2.56	62	77	54	25	0	40	79	31	62	10.54	3.81	2.45	3.2	2.95	1.33	2	3.65	6.5	1.8	1.91	St. James: Park (Newcastle upon Tyne)	1
137	1543685400	Dec 01 2018 - 5:30pm	complete	30187	Southampton	Manchester United	Kevin Friend	14	0.67	1.43	1.21	1.58	2	2	4	4	2	2	13,20	33,39	3	5	4	0	4	0	1	3	2	2	13	10	7	6	6	4	12	13	40	60	1.67	1.34	2.79	68	84	68	37	7	36	75	54	77	11.31	5.04	4	3.3	2	1.31	1.95	3.45	5.25	1.77	1.95	St. Mary:s Stadium (Southampton- Hampshire)	1
138	1543752000	Dec 02 2018 - 12:00pm	complete	40551	Chelsea	Fulham	Craig Pawson	14	2.14	0.14	2.21	0.26	2	0	2	1	1	0	4,82	None	4	6	2	0	1	0	0	2	0	1	11	9	10	5	1	4	8	17	66	34	1.77	1.23	3.22	57	86	64	50	22	29	79	58	89	7.71	2.85	1.21	6.65	13.75	1.11	1.38	1.95	2.9	1.83	1.87	Stamford Bridge (London)	1
139	1543759500	Dec 02 2018 - 2:05pm	complete	59973	Arsenal	Tottenham Hotspur	Mike Dean	14	2	2.63	2.37	1.74	4	2	6	3	1	2	10,56,74,77	30,34	8	5	3	0	4	1	1	2	2	3	19	10	8	7	11	3	15	17	59	41	2.15	1.4	2.6	54	88	46	21	7	34	60	62	81	10.63	3.21	2.6	3.55	2.75	1.15	1.5	2.25	3.55	1.45	2.55	Emirates Stadium (London)	1
140	1543767300	Dec 02 2018 - 4:15pm	complete	51756	Liverpool	Everton	Chris Kavanagh	14	2.67	1	2.79	1.05	1	0	1	0	0	0	90:6	None	8	1	3	0	2	0	1	2	0	2	14	8	4	4	10	4	12	7	57	43	1.7	1.07	2.59	42	75	59	33	9	33	67	46	77	11.67	3	1.48	4.3	7	1.21	1.69	2.7	3.8	1.83	1.87	Anfield (Liverpool)	1
141	1543952700	Dec 04 2018 - 7:45pm	complete	9980	AFC Bournemouth	Huddersfield Town	Roger East	15	1.57	0.83	1.53	0.37	2	1	3	3	2	1	5,22	38	4	8	4	0	2	0	0	4	0	2	7	17	3	7	4	10	14	11	32	68	0.98	2.32	3.17	69	93	61	31	16	55	86	36	72	9.88	4.29	1.74	3.75	5.4	1.27	1.87	3.2	6.2	1.83	1.87	Vitality Stadium (Bournemouth- Dorset)	1
142	1543952700	Dec 04 2018 - 7:45pm	complete	29663	Brighton & Hove Albion	Crystal Palace	Kevin Friend	15	1.83	1	1.21	1.53	3	1	4	3	3	0	24,31,45:4	81	4	5	2	1	3	0	1	2	1	2	7	14	4	6	3	8	14	12	31	69	1	1.88	2.41	55	69	47	24	9	9	70	36	79	7.43	4.5	3	3.05	2.7	1.48	2.45	4.8	9.5	2	1.69	The American Express Community Stadium (Falmer- East Sussex)	1
143	1543952700	Dec 04 2018 - 7:45pm	complete	56811	West Ham United	Cardiff City	Graham Scott	15	1	0.17	1.63	0.74	3	1	4	0	0	0	49,54,61	90:5	10	4	1	0	2	0	1	0	1	1	15	8	12	6	3	2	10	10	61	39	2.07	1.18	2.52	38	54	45	38	24	30	69	47	79	9.47	3.33	1.67	3.95	5.65	1.24	1.74	2.9	5.2	1.74	2	London Stadium (London)	1
144	1543953600	Dec 04 2018 - 8:00pm	complete	20389	Watford	Manchester City	Paul Tierney	15	1.71	2.33	1.42	2.32	1	2	3	1	0	1	85	40,51	3	11	0	0	1	0	0	0	0	1	10	13	8	8	2	5	4	8	29	71	1.46	1.97	2.67	30	84	60	24	9	38	62	43	86	12.53	3.96	9	5.35	1.36	1.19	1.61	2.5	4.5	1.87	1.83	Vicarage Road (Watford)	1
145	1544039100	Dec 05 2018 - 7:45pm	complete	21741	Burnley	Liverpool	Stuart Attwell	15	0.67	2.43	1.21	2.32	1	3	4	0	0	0	54	62,69,90:1	5	9	1	0	0	0	0	1	0	0	10	15	7	13	3	2	10	3	25	75	1.4	2.23	2.73	54	93	55	25	0	41	86	40	71	8.47	3.26	12.25	5.95	1.28	1.13	1.5	2.3	4.6	2	1.65	Turf Moor (Burnley)	1
146	1544039100	Dec 05 2018 - 7:45pm	complete	22881	Fulham	Leicester City	David Coote	15	1.17	1.43	1.11	1.32	1	1	2	1	1	0	42	74	10	8	0	0	0	0	0	0	0	0	18	12	8	6	10	6	12	7	45	55	2.14	1.49	3.5	69	93	62	40	32	40	86	43	86	10.71	4.03	2.85	3.35	2.6	1.21	1.74	2.9	6.95	1.65	2	Craven Cottage (London)	1
147	1544039100	Dec 05 2018 - 7:45pm	complete	31300	Wolverhampton Wanderers	Chelsea	Jonathan Moss	15	1.14	2.17	1.79	1.58	2	1	3	1	0	1	59,63	18	1	5	4	0	4	0	1	3	0	4	6	14	3	4	3	10	18	10	29	71	0.84	1.56	2.7	38	85	56	31	7	38	62	47	86	12.04	2.9	5.55	3.8	1.71	1.22	1.77	2.95	6.15	1.77	1.87	Molineux Stadium (Wolverhampton- West Midlands)	1
148	1544039100	Dec 05 2018 - 7:45pm	complete	39350	Everton	Newcastle United	Lee Mason	15	2.29	1	1.79	1.05	1	1	2	2	1	1	38	19	14	2	0	0	5	0	0	0	0	5	12	9	4	6	8	3	7	18	76	24	1.78	1.13	2.27	54	68	54	23	9	54	54	40	68	10.26	2.5	1.51	4.2	7.5	1.19	1.67	2.7	5.3	1.87	1.77	Goodison Park (Liverpool)	1
149	1544040000	Dec 05 2018 - 8:00pm	complete	74507	Manchester United	Arsenal	Andre Marriner	15	1.83	2.17	1.89	1.32	2	2	4	2	1	1	30,69	26,68	4	4	3	0	3	0	3	0	2	1	8	7	8	5	0	2	13	10	44	56	1.34	1.12	3.5	84	92	84	42	34	42	75	61	90	11.34	3.17	2.35	3.55	3.1	1.14	1.51	2.35	4.7	1.49	2.3	Old Trafford (Manchester)	1
150	1544040000	Dec 05 2018 - 8:00pm	complete	33012	Tottenham Hotspur	Southampton	Anthony Taylor	15	1.8	0.57	2	0.84	3	1	4	1	1	0	9,51,55	90:3	8	6	0	0	0	0	0	0	0	0	12	15	9	6	3	9	7	5	52	48	1.65	1.78	2.87	52	73	59	35	15	39	79	54	64	9.17	3.14	1.36	5.25	9.75	1.11	1.45	2.15	4.5	1.74	1.91	Wembley Stadium (London)	1
151	1544272200	Dec 08 2018 - 12:30pm	complete	10752	AFC Bournemouth	Liverpool	Lee Mason	16	1.75	2.5	1.53	2.32	0	4	4	1	0	1	None	25,48,68,77	6	6	2	0	1	0	2	0	0	1	6	9	3	5	3	4	9	11	40	60	0.88	1.38	2.75	69	88	63	19	7	32	69	47	77	11.13	3.75	7	4.6	1.49	1.16	1.54	2.35	4.1	1.62	2.05	Vitality Stadium (Bournemouth- Dorset)	1
152	1544281200	Dec 08 2018 - 3:00pm	complete	59893	Arsenal	Huddersfield Town	Paul Tierney	16	2.13	0.71	2.37	0.37	1	0	1	0	0	0	83	None	7	1	5	0	4	0	4	1	3	1	11	6	3	0	8	6	13	20	61	39	1.3	0.66	3.15	67	100	48	34	14	55	82	43	77	10.96	3.88	1.28	5.9	12.5	1.17	1.57	2.4	4.45	1.95	1.69	Emirates Stadium (London)	1
153	1544281200	Dec 08 2018 - 3:00pm	complete	18497	Burnley	Brighton & Hove Albion	Martin Atkinson	16	0.57	0.88	1.21	0.68	1	0	1	1	1	0	40	None	2	7	2	0	0	0	0	2	0	0	9	14	5	2	4	12	11	11	37	63	1.16	1.39	2.9	54	88	61	41	0	48	93	37	77	6.95	3.84	2.9	3.05	2.8	1.45	2.4	4.6	9	1.91	1.71	Turf Moor (Burnley)	1
154	1544281200	Dec 08 2018 - 3:00pm	complete	30067	Cardiff City	Southampton	Jonathan Moss	16	1.25	0.5	1.05	0.84	1	0	1	0	0	0	74	None	7	7	2	0	2	0	1	1	1	1	13	8	5	2	8	6	9	10	36	64	1.54	1.03	3.25	57	82	69	38	32	50	63	53	74	9.75	3.76	3.15	3.25	2.45	1.35	2.05	3.75	7	1.8	1.83	Cardiff City Stadium (Cardiff (Caerdydd))	1
155	1544281200	Dec 08 2018 - 3:00pm	complete	74523	Manchester United	Fulham	Lee Probert	16	1.71	0.13	1.89	0.26	4	1	5	3	3	0	13,28,42,82	67	10	3	1	0	2	1	1	0	1	2	18	9	12	5	6	4	11	15	62	38	2.45	1.24	3	55	87	67	34	14	27	80	50	87	9.42	3.49	1.39	5.1	8.5	1.17	1.57	2.4	4.55	1.74	1.91	Old Trafford (Manchester)	1
156	1544281200	Dec 08 2018 - 3:00pm	complete	56995	West Ham United	Crystal Palace	Anthony Taylor	16	1.25	0.88	1.63	1.53	3	2	5	1	0	1	48,62,65	6,76	5	3	1	0	2	0	1	0	0	2	12	7	7	5	5	2	10	8	48	52	1.71	1.24	2.63	50	69	57	38	7	26	63	44	80	10.26	4.01	2.3	3.35	3.4	1.31	1.95	3.4	6.35	1.71	1.91	London Stadium (London)	1
157	1544290200	Dec 08 2018 - 5:30pm	complete	40571	Chelsea	Manchester City	Michael Oliver	16	2.25	2.43	2.21	2.32	2	0	2	1	1	0	45,78	None	1	13	2	0	0	0	0	2	0	0	7	11	6	5	1	6	12	11	38	62	1.01	1.58	2.72	46	80	47	40	20	27	73	57	87	12.17	2.82	3.65	3.55	2.1	1.21	1.67	2.7	5	1.56	2.15	Stamford Bridge (London)	1
158	1544298300	Dec 08 2018 - 7:45pm	complete	31957	Leicester City	Tottenham Hotspur	Craig Pawson	16	1.57	2.33	1.42	1.74	0	2	2	1	0	1	None	45:1,58	6	5	3	0	1	0	1	2	1	0	9	7	4	3	5	4	12	7	42	58	1.29	0.96	2.65	57	82	55	18	11	58	77	47	74	9.53	4.46	4.5	3.75	1.87	1.25	1.8	3	8	1.62	2	King Power Stadium (Leicester- Leicestershire)	1
159	1544371200	Dec 09 2018 - 4:00pm	complete	50223	Newcastle United	Wolverhampton Wanderers	Mike Dean	16	0.75	1.14	1.32	1.21	1	2	3	2	1	1	23	17,90:4	4	6	2	1	5	0	1	2	1	4	10	12	5	7	5	5	10	17	50	50	1.37	1.59	2.05	47	66	39	0	0	20	60	34	67	12.18	2.95	3	3.05	2.75	1.44	2.35	4.55	10	1.87	1.74	St. James: Park (Newcastle upon Tyne)	1
160	1544472000	Dec 10 2018 - 8:00pm	complete	38400	Everton	Watford	Kevin Friend	16	2.13	1.14	1.79	1.21	2	2	4	1	1	0	15,90:6	63,65	6	6	1	0	1	0	1	0	0	1	11	11	6	4	5	7	13	13	56	44	1.48	1.37	2.39	53	87	32	20	0	53	67	44	84	13.24	3.17	1.74	3.85	5.05	1.27	1.87	3.2	5.2	1.77	1.87	Goodison Park (Liverpool)	1
161	1544877000	Dec 15 2018 - 12:30pm	complete	54173	Manchester City	Everton	Craig Pawson	17	3	0.86	2.84	1.05	3	1	4	1	1	0	22,50,69	65	6	2	1	0	2	0	0	1	1	1	10	8	6	3	4	5	7	9	67	33	1.51	0.97	3.41	60	86	73	46	19	46	72	50	85	12.92	2.79	1.22	6.75	12.75	1.13	1.43	2.1	3.88	1.8	1.83	Etihad Stadium (Manchester)	1
162	1544886000	Dec 15 2018 - 3:00pm	complete	24738	Crystal Palace	Leicester City	Michael Oliver	17	0.71	1.38	1.05	1.32	1	0	1	1	1	0	39	None	4	4	2	0	1	0	1	1	0	1	7	10	2	3	5	7	10	8	43	57	0.91	1.27	2.3	45	73	32	20	7	13	59	38	81	13.71	3.2	2.8	3.1	2.8	1.42	2.25	4.3	8	1.87	1.77	Selhurst Park (London)	1
163	1544886000	Dec 15 2018 - 3:00pm	complete	24036	Huddersfield Town	Newcastle United	Anthony Taylor	17	0.63	1	0.47	1.05	0	1	1	0	0	0	None	55	10	1	1	0	1	0	0	1	1	0	13	8	6	6	7	2	5	13	73	27	1.94	1.1	1.75	41	54	34	7	7	48	73	19	53	7.45	3.38	2.6	2.95	3.15	1.53	2.6	5.2	9.9	2	1.65	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
164	1544886000	Dec 15 2018 - 3:00pm	complete	41645	Tottenham Hotspur	Burnley	Graham Scott	17	2	0.63	2	0.89	1	0	1	0	0	0	90:1	None	8	3	0	0	2	0	0	0	0	2	10	3	4	0	6	3	7	8	70	30	1.46	0.43	2.86	53	65	59	44	19	21	75	50	69	7.8	2.83	1.19	7	17.25	1.12	1.42	2.05	3.7	1.95	1.69	Wembley Stadium (London)	1
165	1544886000	Dec 15 2018 - 3:00pm	complete	20032	Watford	Cardiff City	Andy Madley	17	1.5	0.14	1.42	0.74	3	2	5	1	1	0	16,52,68	80,82	5	0	0	0	0	0	0	0	0	0	15	8	9	4	6	4	7	5	71	29	1.98	1.04	2.79	47	79	66	28	15	26	60	47	85	8.93	3.43	1.61	3.85	6.2	1.31	1.95	3.5	5.55	1.91	1.71	Vicarage Road (Watford)	1
166	1544886000	Dec 15 2018 - 3:00pm	complete	30997	Wolverhampton Wanderers	AFC Bournemouth	Simon Hooper	17	1.38	1.29	1.79	0.84	2	0	2	1	1	0	12,90:4	None	5	3	1	0	2	0	0	1	2	0	8	9	5	4	3	5	15	7	37	63	1.11	1.41	2.96	47	94	62	34	7	48	75	47	85	11.42	2.88	2.05	3.35	3.85	1.29	1.91	3.25	7	1.67	1.95	Molineux Stadium (Wolverhampton- West Midlands)	1
167	1544895000	Dec 15 2018 - 5:30pm	complete	24081	Fulham	West Ham United	Mike Dean	17	1.14	1.14	1.11	1.11	0	2	2	2	0	2	None	17,29	6	4	2	0	1	0	1	1	1	0	14	6	5	4	9	2	14	10	56	44	1.7	0.97	3.29	64	93	57	43	22	43	100	50	88	9.42	4.57	2.95	3.5	2.45	1.2	1.62	2.6	4.4	1.47	2.35	Craven Cottage (London)	1
168	1544967000	Dec 16 2018 - 1:30pm	complete	30645	Brighton & Hove Albion	Chelsea	Stuart Attwell	17	2	1.86	1.21	1.58	1	2	3	2	0	2	66	17,33	4	1	2	0	2	0	0	2	0	2	6	8	3	4	3	4	14	6	41	59	0.88	1.16	2.86	57	79	72	36	7	29	79	41	82	10.14	4.42	7.75	4.4	1.44	1.27	1.83	3.15	5.95	2	1.65	The American Express Community Stadium (Falmer- East Sussex)	1
169	1544967000	Dec 16 2018 - 1:30pm	complete	29497	Southampton	Arsenal	Chris Kavanagh	17	0.71	2	1.21	1.32	3	2	5	3	2	1	20,44,85	28,53	4	5	3	0	1	0	0	3	0	1	9	9	8	5	1	4	12	10	33	67	1.35	1.34	3.29	79	86	79	50	22	43	72	60	85	10.28	4.28	4.3	3.95	1.8	1.18	1.57	2.45	4.8	1.53	2.2	St. Mary:s Stadium (Southampton- Hampshire)	1
170	1544976000	Dec 16 2018 - 4:00pm	complete	52908	Liverpool	Manchester United	Martin Atkinson	17	2.71	1.38	2.79	1.58	3	1	4	2	1	1	24,73,80	33	13	2	0	0	2	0	0	0	2	0	23	6	12	3	11	3	6	14	64	36	2.99	0.8	2.96	51	79	66	46	14	52	86	50	78	11.13	3.88	1.56	4.15	6.35	1.22	1.69	2.75	5.1	1.74	1.87	Anfield (Liverpool)	1
171	1545422400	Dec 21 2018 - 8:00pm	complete	31358	Wolverhampton Wanderers	Liverpool	Craig Pawson	18	1.56	2.56	1.79	2.32	0	2	2	1	0	1	None	18,68	1	10	0	0	0	0	0	0	0	0	10	11	6	7	4	4	7	3	38	62	1.3	1.63	2.62	50	89	45	22	6	22	67	41	82	10.78	3	6.75	4.1	1.54	1.29	1.91	3.3	6.5	1.65	2.1	Molineux Stadium (Wolverhampton- West Midlands)	1
172	1545481800	Dec 22 2018 - 12:30pm	complete	59493	Arsenal	Burnley	Kevin Friend	18	2.22	0.56	2.37	0.89	3	1	4	1	1	0	14,48,90:1	63	1	3	2	0	5	0	1	1	1	4	8	6	7	3	1	3	10	14	60	40	1.31	0.93	2.73	45	73	39	33	22	28	50	56	86	9	4.22	1.21	6.85	15.25	1.11	1.38	2	3.32	1.83	1.8	Emirates Stadium (London)	1
173	1545490800	Dec 22 2018 - 3:00pm	complete	10491	AFC Bournemouth	Brighton & Hove Albion	Mike Dean	18	1.56	0.78	1.53	0.68	2	0	2	1	1	0	21,77	None	6	5	2	0	1	1	2	0	0	2	11	10	4	6	7	4	8	18	57	43	1.33	1.33	2.72	56	78	61	28	6	39	89	39	79	9.34	4.33	1.95	3.55	4.1	1.33	2	3.65	6.9	1.95	1.8	Vitality Stadium (Bournemouth- Dorset)	1
174	1545490800	Dec 22 2018 - 3:00pm	complete	40558	Chelsea	Leicester City	Lee Probert	18	2.33	1.22	2.21	1.32	0	1	1	0	0	0	None	51	9	5	0	0	2	0	0	0	1	1	14	6	6	4	8	2	10	9	72	28	2.07	1.04	2.78	62	84	44	33	17	22	78	41	82	10.22	2.89	1.34	5.15	9.5	1.23	1.71	2.8	5.2	2	1.65	Stamford Bridge (London)	1
175	1545490800	Dec 22 2018 - 3:00pm	complete	22394	Huddersfield Town	Southampton	Stuart Attwell	18	0.56	0.44	0.47	0.84	1	3	4	2	0	2	58	15,42,71	8	2	2	0	3	0	1	1	0	3	11	13	6	7	5	6	12	9	62	38	1.49	1.53	2.28	33	61	39	17	11	39	67	33	65	9.56	3.22	2.9	3	2.75	1.49	2.5	4.9	9.7	1.95	1.69	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
176	1545490800	Dec 22 2018 - 3:00pm	complete	54340	Manchester City	Crystal Palace	Andre Marriner	18	3	0.78	2.84	1.53	2	3	5	3	1	2	27,85	33,35,51	13	0	0	0	4	0	0	0	1	3	15	6	6	4	9	2	7	6	78	22	2.25	0.77	3.5	62	89	73	50	22	34	84	47	82	11	2.67	1.14	8.75	20.75	1.11	1.38	1.95	3.32	2.05	1.62	Etihad Stadium (Manchester)	1
177	1545490800	Dec 22 2018 - 3:00pm	complete	51237	Newcastle United	Fulham	Martin Atkinson	18	0.67	0.11	1.32	0.26	0	0	0	0	0	0	None	None	6	0	1	0	2	0	0	1	0	2	6	3	0	3	6	0	9	12	53	47	0.87	0.65	2.89	50	84	67	22	11	33	78	36	71	9.55	3.45	2.05	3.4	3.75	1.32	2	3.55	6.6	1.74	1.91	St. James: Park (Newcastle upon Tyne)	1
178	1545490800	Dec 22 2018 - 3:00pm	complete	56833	West Ham United	Watford	Lee Mason	18	1.44	1.13	1.63	1.21	0	2	2	1	0	1	None	30,87	10	4	3	0	2	0	1	2	0	2	13	7	8	6	5	1	9	11	51	49	1.92	1.28	2.75	53	78	46	41	11	36	71	47	82	12.32	3.91	2.35	3.45	3	1.26	1.83	3.1	5.5	1.61	2.05	London Stadium (London)	1
179	1545499800	Dec 22 2018 - 5:30pm	complete	33028	Cardiff City	Manchester United	Michael Oliver	18	1.44	1.22	1.05	1.58	1	5	6	4	1	3	38	3,29,41,57,90	4	7	2	0	1	0	0	2	1	0	9	14	4	10	5	4	13	13	25	75	1.17	1.88	3.34	73	84	78	50	22	61	78	56	82	10	4.67	6.35	4.15	1.56	1.24	1.74	2.9	5.15	1.8	1.83	Cardiff City Stadium (Cardiff (Caerdydd))	1
180	1545580800	Dec 23 2018 - 4:00pm	complete	39319	Everton	Tottenham Hotspur	Paul Tierney	18	2	2.4	1.79	1.74	2	6	8	4	1	3	21,51	27,35,42,48,61,74	2	1	0	0	2	0	0	0	1	1	9	16	4	9	5	7	13	9	41	59	1.24	1.83	2.84	59	85	58	27	10	48	69	53	77	11.92	2.69	3.2	3.5	2.25	1.23	1.71	2.8	4.95	1.53	2.2	Goodison Park (Liverpool)	1
181	1545827400	Dec 26 2018 - 12:30pm	complete	24382	Fulham	Wolverhampton Wanderers	Andre Marriner	19	1	1.38	1.11	1.21	1	1	2	0	0	0	74	85	2	0	2	0	1	0	2	0	1	0	11	13	6	6	5	7	9	6	29	71	1.34	1.76	2.69	57	82	38	19	19	38	82	39	86	11.25	3.88	2.95	3.1	2.65	1.45	2.4	4.6	8.5	1.87	1.77	Craven Cottage (London)	1
182	1545836400	Dec 26 2018 - 3:00pm	complete	21484	Burnley	Everton	Michael Oliver	19	0.88	0.75	1.21	1.05	1	5	6	4	1	3	36	2,13,22,71,90:3	5	7	2	0	4	0	2	0	2	2	11	10	5	7	6	3	11	19	49	51	1.49	1.41	2.82	57	82	63	44	0	38	69	50	78	8.26	4	4.2	3.55	1.91	1.33	2	3.6	6.8	1.8	1.83	Turf Moor (Burnley)	1
183	1545836400	Dec 26 2018 - 3:00pm	complete	25206	Crystal Palace	Cardiff City	Lee Probert	19	1	0.13	1.05	0.74	0	0	0	0	0	0	None	None	12	1	0	0	3	0	0	0	2	1	18	9	6	5	12	4	9	11	62	38	2.19	1.21	2.26	32	57	32	32	19	7	57	50	81	10.25	2.88	1.67	3.75	6.25	1.34	2.05	3.7	6.75	1.95	1.69	Selhurst Park (London)	1
184	1545836400	Dec 26 2018 - 3:00pm	complete	32090	Leicester City	Manchester City	Mike Dean	19	1.38	2.13	1.42	2.32	2	1	3	2	1	1	19,81	14	3	7	2	0	2	1	0	2	0	3	10	9	6	5	4	4	5	8	33	67	1.27	1.63	2.32	38	82	38	19	7	44	82	42	84	13	4.01	9.5	5.55	1.32	1.17	1.57	2.4	4.5	1.83	1.77	King Power Stadium (Leicester- Leicestershire)	1
185	1545836400	Dec 26 2018 - 3:00pm	complete	53318	Liverpool	Newcastle United	Graham Scott	19	2.75	1.25	2.79	1.05	4	0	4	1	1	0	11,47,79,85	None	10	2	0	0	0	0	0	0	0	0	13	7	9	3	4	4	7	10	75	25	1.97	0.87	2.13	38	57	44	26	13	44	63	33	64	10.13	2.76	1.17	7.75	18	1.15	1.5	2.25	3.4	2.3	1.48	Anfield (Liverpool)	1
186	1545836400	Dec 26 2018 - 3:00pm	complete	74523	Manchester United	Huddersfield Town	Jonathan Moss	19	1.88	0.63	1.89	0.37	3	1	4	1	1	0	28,64,78	88	5	3	1	0	1	0	1	0	1	0	13	10	11	3	2	7	9	13	64	36	1.96	1.11	3.07	69	88	63	32	19	51	82	39	72	11	4	1.33	5.8	9.75	1.21	1.69	2.7	4.55	2	1.67	Old Trafford (Manchester)	1
187	1545836400	Dec 26 2018 - 3:00pm	complete	45154	Tottenham Hotspur	AFC Bournemouth	Chris Kavanagh	19	2.14	1.13	2	0.84	5	0	5	3	3	0	16,23,35,61,70	None	3	4	2	0	1	0	0	2	1	0	10	11	8	5	2	6	5	8	56	44	1.46	1.38	2.85	48	79	66	41	0	32	87	53	78	11.45	1.84	1.34	5.35	9	1.15	1.5	2.25	3.78	1.74	1.91	Wembley Stadium (London)	1
188	1545844500	Dec 26 2018 - 5:15pm	complete	30608	Brighton & Hove Albion	Arsenal	Anthony Taylor	19	1.75	1.75	1.21	1.32	1	1	2	2	1	1	35	7	4	9	2	0	1	0	1	1	0	1	12	6	4	5	8	1	10	4	32	68	1.35	1.15	3.63	88	88	82	57	32	57	88	47	89	8.63	4.26	5.5	3.85	1.67	1.23	1.71	2.8	6	1.67	2	The American Express Community Stadium (Falmer- East Sussex)	1
189	1545852600	Dec 26 2018 - 7:30pm	complete	20415	Watford	Chelsea	Martin Atkinson	19	1.67	2	1.42	1.58	1	2	3	2	1	1	45:3	45:1,58	3	4	1	0	0	0	0	1	0	0	9	10	3	5	6	5	15	5	35	65	1.23	1.45	3.05	53	94	89	24	6	36	71	47	89	10.94	3.53	5.25	3.95	1.67	1.21	1.69	2.7	5.7	1.67	1.95	Vicarage Road (Watford)	1
190	1545939900	Dec 27 2018 - 7:45pm	complete	31654	Southampton	West Ham United	Craig Pawson	19	1	1.38	1.21	1.11	1	2	3	0	0	0	50	53,59	4	6	2	0	0	0	0	2	0	0	9	12	6	6	3	6	10	3	45	55	1.29	1.6	2.69	57	82	57	38	7	38	82	50	75	9.25	5.13	2.25	3.35	3.3	1.24	1.74	2.9	5.4	1.57	2.15	St. Mary:s Stadium (Southampton- Hampshire)	1
191	1546095600	Dec 29 2018 - 3:00pm	complete	30597	Brighton & Hove Albion	Everton	Andy Madley	20	1.67	1	1.21	1.05	1	0	1	0	0	0	59	None	6	6	0	0	2	0	0	0	0	2	7	11	4	5	3	6	10	11	44	56	1.09	1.47	2.89	73	78	62	39	11	39	73	40	79	9.11	5	3.35	3.15	2.35	1.4	2.2	4.15	8	1.83	1.8	The American Express Community Stadium (Falmer- East Sussex)	1
192	1546095600	Dec 29 2018 - 3:00pm	complete	24423	Fulham	Huddersfield Town	Kevin Friend	20	1	0.56	1.11	0.37	1	0	1	0	0	0	90:1	None	4	3	3	0	1	0	2	1	0	1	13	7	6	6	7	1	12	10	43	57	1.61	1.14	3.22	67	95	50	33	22	50	89	34	74	9.44	4	2	3.2	4.25	1.43	2.35	4.45	11.5	1.95	1.69	Craven Cottage (London)	1
193	1546095600	Dec 29 2018 - 3:00pm	complete	32047	Leicester City	Cardiff City	Simon Hooper	20	1.56	0.22	1.42	0.74	0	1	1	0	0	0	None	90:2	10	4	0	0	2	0	0	0	0	2	11	7	8	4	3	3	14	16	62	38	1.62	1.18	2.45	50	73	44	28	17	39	73	40	79	7.56	4	1.53	3.9	7.5	1.34	2.05	3.7	8	2	1.65	King Power Stadium (Leicester- Leicestershire)	1
194	1546095600	Dec 29 2018 - 3:00pm	complete	46356	Tottenham Hotspur	Wolverhampton Wanderers	Stuart Attwell	20	2.25	1.33	2	1.21	1	3	4	1	1	0	22	72,83,87	6	7	3	0	2	0	2	1	0	2	8	9	4	5	4	4	7	7	60	40	1.19	1.33	2.39	53	65	43	25	7	24	72	48	82	10.14	2.77	1.49	4.2	7.5	1.23	1.74	2.85	5.7	1.77	1.87	Wembley Stadium (London)	1
195	1546095600	Dec 29 2018 - 3:00pm	complete	20336	Watford	Newcastle United	Roger East	20	1.5	1.11	1.42	1.05	1	1	2	1	0	1	82	29	3	6	1	0	2	0	1	0	0	2	8	7	6	3	2	4	17	16	62	38	1.46	0.97	2.6	52	78	67	21	11	42	63	34	71	8.31	3.37	1.69	3.8	5.5	1.29	1.91	3.3	7.8	1.83	1.8	Vicarage Road (Watford)	1
196	1546104600	Dec 29 2018 - 5:30pm	complete	53326	Liverpool	Arsenal	Michael Oliver	20	2.78	1.67	2.79	1.32	5	1	6	5	4	1	14,16,32,45:2,65	11	5	3	1	0	2	0	1	0	1	1	14	6	11	3	3	3	8	13	47	53	2	0.9	3.39	61	84	73	56	28	56	84	58	87	12.33	2.34	1.39	5.15	7.75	1.13	1.44	2.1	3.9	1.61	2.05	Anfield (Liverpool)	1
197	1546171200	Dec 30 2018 - 12:00pm	complete	25781	Crystal Palace	Chelsea	Craig Pawson	20	1	2.11	1.05	1.58	0	1	1	0	0	0	None	51	3	4	0	0	1	0	0	0	1	0	3	9	0	5	3	4	11	8	34	66	0.46	1.57	2.17	34	67	50	17	0	22	61	45	82	13.11	3	5	3.75	1.74	1.24	1.74	2.9	5.75	1.65	2	Selhurst Park (London)	1
198	1546179300	Dec 30 2018 - 2:15pm	complete	20933	Burnley	West Ham United	David Coote	20	0.78	1.56	1.21	1.11	2	0	2	2	2	0	15,34	None	5	5	1	0	4	0	1	0	2	2	15	7	6	5	9	2	15	11	43	57	1.77	1.17	3.06	56	89	62	45	6	50	89	47	77	7.56	4	3.85	3.35	2.05	1.31	1.95	3.4	7	1.69	1.95	Turf Moor (Burnley)	1
199	1546179300	Dec 30 2018 - 2:15pm	complete	31381	Southampton	Manchester City	Paul Tierney	20	0.89	1.89	1.21	2.32	1	3	4	4	1	3	37	10,45,45:3	3	8	2	1	3	0	0	3	1	2	6	11	5	7	1	4	11	10	23	77	0.87	1.74	2.56	50	78	56	28	11	28	67	56	82	13.22	4.23	11.5	6.3	1.25	1.13	1.45	2.15	3.75	1.8	1.83	St. Mary:s Stadium (Southampton- Hampshire)	1
200	1546187400	Dec 30 2018 - 4:30pm	complete	74556	Manchester United	AFC Bournemouth	Lee Mason	20	2	1	1.89	0.84	4	1	5	4	3	1	5,33,45,72	45:2	4	5	2	1	0	0	1	2	0	0	9	6	9	4	0	2	10	7	64	36	1.58	1	3.28	56	95	78	44	17	45	84	58	84	12.23	2.78	1.43	5.3	7	1.16	1.53	2.3	4.4	1.71	1.91	Old Trafford (Manchester)	1
201	1546345800	Jan 01 2019 - 12:30pm	complete	39052	Everton	Leicester City	Martin Atkinson	21	1.8	1.4	1.79	1.32	0	1	1	0	0	0	None	58	6	5	3	0	1	0	0	3	0	1	10	8	3	5	7	3	5	8	59	41	1.52	1.19	2.9	65	80	50	30	10	40	70	40	83	12.4	2.4	2	3.45	4	1.3	1.95	3.35	7.6	1.71	1.91	Goodison Park (Liverpool)	1
202	1546354800	Jan 01 2019 - 3:00pm	complete	59887	Arsenal	Fulham	Graham Scott	21	2.3	0.2	2.37	0.26	4	1	5	1	1	0	25,55,79,83	69	8	3	0	0	1	0	0	0	0	1	14	9	10	5	4	4	7	12	59	41	2.14	1.17	2.95	50	85	50	40	15	30	70	55	90	8.6	4	1.35	5.3	8.75	1.15	1.5	2.25	3.9	1.69	1.95	Emirates Stadium (London)	1
203	1546363800	Jan 01 2019 - 5:30pm	complete	32485	Cardiff City	Tottenham Hotspur	Kevin Friend	21	1.3	2.45	1.05	1.74	0	3	3	3	0	3	None	3,12,26	5	3	1	0	0	0	0	1	0	0	6	11	4	5	2	6	6	6	26	74	0.92	1.32	3.33	58	76	67	34	34	48	67	55	78	9.46	3.72	8.5	4.85	1.39	1.2	1.65	2.6	5.3	1.83	1.77	Cardiff City Stadium (Cardiff (Caerdydd))	1
204	1546458300	Jan 02 2019 - 7:45pm	complete	40668	Chelsea	Southampton	Jonathan Moss	21	2.1	0.7	2.21	0.84	0	0	0	0	0	0	None	None	7	2	1	0	2	0	0	1	1	1	9	6	7	3	2	3	8	11	71	29	1.56	0.95	2.9	50	80	50	40	20	35	65	50	80	9.6	3.2	1.28	6.05	12	1.16	1.53	2.3	4	1.83	1.8	Stamford Bridge (London)	1
205	1546458300	Jan 02 2019 - 7:45pm	complete	23715	Huddersfield Town	Burnley	Mike Dean	21	0.5	0.5	0.47	0.89	1	2	3	2	1	1	33	40,74	5	2	1	1	4	1	2	0	2	3	6	16	3	9	3	7	11	9	42	58	0.87	2.08	2.3	35	55	40	25	15	30	65	33	68	7.6	3.7	2.3	3.1	3.55	1.5	2.5	5	9.7	2	1.65	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
206	1546458300	Jan 02 2019 - 7:45pm	complete	59870	West Ham United	Brighton & Hove Albion	Chris Kavanagh	21	1.3	0.7	1.63	0.68	2	2	4	0	0	0	66,68	56,58	1	5	0	0	1	0	0	0	0	1	13	9	7	7	6	2	9	11	54	46	1.61	1.35	2.65	45	70	50	35	10	30	85	33	75	10.7	3.8	2	3.55	3.95	1.31	1.95	3.4	6.5	1.74	1.87	London Stadium (London)	1
207	1546458300	Jan 02 2019 - 7:45pm	complete	30666	Wolverhampton Wanderers	Crystal Palace	Roger East	21	1.4	1	1.79	1.53	0	2	2	0	0	0	None	83,90:5	3	10	4	0	1	0	2	2	0	1	7	11	2	5	5	6	9	7	51	49	0.92	1.54	2.7	50	85	45	30	15	25	70	40	83	7.9	3.9	2.3	3.15	3.6	1.44	2.35	4.55	10	1.91	1.71	Molineux Stadium (Wolverhampton- West Midlands)	1
208	1546459200	Jan 02 2019 - 8:00pm	complete	10261	AFC Bournemouth	Watford	David Coote	21	1.7	1.33	1.53	1.21	3	3	6	6	3	3	34,37,40	14,27,38	4	2	1	0	4	0	0	1	2	2	21	10	13	4	8	6	9	15	57	43	2.58	1.18	2.67	52	90	46	26	5	37	79	45	88	11.27	4.51	2.65	3.5	2.7	1.22	1.69	2.75	4.75	1.53	2.2	Vitality Stadium (Bournemouth- Dorset)	1
209	1546459200	Jan 02 2019 - 8:00pm	complete	52217	Newcastle United	Manchester United	Andre Marriner	21	0.7	1.4	1.32	1.58	0	2	2	0	0	0	None	64,80	1	2	1	0	2	0	1	0	0	2	12	14	4	8	8	6	10	9	34	66	1.29	1.77	3.05	70	85	75	35	10	55	80	43	70	11.4	4.2	5.55	4.15	1.65	1.25	1.77	2.95	5.3	1.74	1.87	St. James: Park (Newcastle upon Tyne)	1
210	1546545600	Jan 03 2019 - 8:00pm	complete	54511	Manchester City	Liverpool	Anthony Taylor	21	2.7	2.6	2.84	2.32	2	1	3	1	1	0	40,72	64	2	1	4	0	2	0	2	2	2	0	9	8	5	6	4	2	12	7	49	51	1.27	1.2	3.5	60	95	70	45	20	35	85	48	83	14.1	1.6	2	3.85	3.9	1.2	1.65	2.6	4.5	1.54	2.2	Etihad Stadium (Manchester)	1
211	1547296200	Jan 12 2019 - 12:30pm	complete	59946	West Ham United	Arsenal	Jonathan Moss	22	1.27	1.5	1.63	1.32	1	0	1	0	0	0	48	None	7	3	0	0	2	0	0	0	0	2	11	11	4	3	7	8	7	10	41	59	1.37	1.2	3.7	78	87	77	63	34	54	77	58	86	11.17	3.33	3.55	3.85	2.05	1.15	1.5	2.25	3.5	1.43	2.45	London Stadium (London)	1
212	1547305200	Jan 12 2019 - 3:00pm	complete	30862	Brighton & Hove Albion	Liverpool	Kevin Friend	22	1.8	2.36	1.21	2.32	0	1	1	0	0	0	None	50	2	7	0	0	0	0	0	0	0	0	6	9	0	4	6	5	15	5	29	71	0.61	1.29	2.62	63	81	53	24	5	25	77	36	79	9.84	3.48	10.25	5.1	1.36	1.23	1.71	2.8	5	1.95	1.69	The American Express Community Stadium (Falmer- East Sussex)	1
213	1547305200	Jan 12 2019 - 3:00pm	complete	19316	Burnley	Fulham	Martin Atkinson	22	1	0.18	1.21	0.26	2	1	3	3	2	1	20,23	2	2	6	1	0	2	0	0	1	1	1	7	9	2	5	5	4	5	9	41	59	0.87	1.37	3.19	48	86	62	48	19	44	86	46	79	6.52	3.43	2.4	3.3	3.2	1.34	2.05	3.7	7	1.77	1.83	Turf Moor (Burnley)	1
214	1547305200	Jan 12 2019 - 3:00pm	complete	30725	Cardiff City	Huddersfield Town	Lee Mason	22	1.18	0.5	1.05	0.37	0	0	0	0	0	0	None	None	3	10	3	0	1	0	1	2	1	0	0	7	0	3	0	4	12	14	38	62	0.32	1.05	3.09	58	77	62	33	23	53	72	34	72	9.09	3.82	2.2	3.2	3.8	1.45	2.4	4.65	10	1.95	1.67	Cardiff City Stadium (Cardiff (Caerdydd))	1
215	1547305200	Jan 12 2019 - 3:00pm	complete	25010	Crystal Palace	Watford	Paul Tierney	22	0.9	1.3	1.05	1.21	1	2	3	1	1	0	38	67,74	7	7	1	0	4	0	0	1	0	4	13	12	7	3	6	9	11	11	55	45	1.9	1.37	2.05	30	65	20	20	5	20	60	41	81	12.6	3.6	2.35	3.35	3.25	1.31	1.95	3.4	6	1.69	1.95	Selhurst Park (London)	1
216	1547305200	Jan 12 2019 - 3:00pm	complete	31491	Leicester City	Southampton	Michael Oliver	22	1.4	0.73	1.42	0.84	1	2	3	2	0	2	58	11,45:2	10	3	2	0	2	1	2	0	2	1	15	7	7	4	8	3	7	9	71	29	2.24	0.89	2.51	48	77	48	23	9	53	68	38	74	9.75	4.3	1.95	3.4	4.5	1.4	2.2	4.2	8	1.95	1.71	King Power Stadium (Leicester- Leicestershire)	1
217	1547314200	Jan 12 2019 - 5:30pm	complete	40491	Chelsea	Newcastle United	Chris Kavanagh	22	2	1.1	2.21	1.05	2	1	3	2	1	1	9,57	40	8	5	1	0	1	0	0	1	1	0	9	9	7	3	2	6	6	13	65	35	1.53	1.01	2.23	48	67	38	28	14	29	62	36	72	8.49	2.88	1.21	6.8	17.5	1.21	1.67	2.65	4.5	2.45	1.43	Stamford Bridge (London)	1
218	1547388900	Jan 13 2019 - 2:15pm	complete	38113	Everton	AFC Bournemouth	Anthony Taylor	22	1.64	0.9	1.79	0.84	2	0	2	0	0	0	61,90:5	None	5	9	5	0	0	0	1	4	0	0	12	15	4	8	8	7	17	8	50	50	1.41	1.98	3.3	52	91	68	43	15	58	77	50	84	12.24	2	1.71	4.05	5	1.2	1.65	2.6	4.5	1.62	2.05	Goodison Park (Liverpool)	1
219	1547397000	Jan 13 2019 - 4:30pm	complete	80062	Tottenham Hotspur	Manchester United	Mike Dean	22	2	1.55	2	1.58	0	1	1	1	0	1	None	44	7	4	1	0	2	0	0	1	0	2	18	12	12	9	6	3	8	8	61	39	2.43	1.64	3.37	69	84	75	60	15	48	90	60	79	10.06	3.66	2.1	3.5	3.8	1.21	1.67	2.7	4.5	1.53	2.25	Wembley Stadium (London)	1
220	1547496000	Jan 14 2019 - 8:00pm	complete	54171	Manchester City	Wolverhampton Wanderers	Craig Pawson	22	2.73	1.5	2.84	1.21	3	0	3	2	2	0	10,39,78	None	12	1	1	0	0	1	1	0	1	0	17	2	10	0	7	2	6	3	76	24	2.68	0.2	3.19	67	85	61	37	18	38	80	48	88	12.55	2.72	1.18	7.75	18.25	1.14	1.49	2.2	3.75	2.15	1.56	Etihad Stadium (Manchester)	1
221	1547901000	Jan 19 2019 - 12:30pm	complete	31278	Wolverhampton Wanderers	Leicester City	Chris Kavanagh	23	1.27	1.55	1.79	1.32	4	3	7	2	2	0	4,12,64,90:3	47,51,87	5	9	3	0	3	0	2	1	2	1	11	12	8	7	3	5	11	10	45	55	1.5	1.79	2.41	46	78	32	18	9	23	64	32	87	10.19	3.37	2.3	3.15	3.55	1.48	2.45	4.8	10	1.95	1.67	Molineux Stadium (Wolverhampton- West Midlands)	1
222	1547910000	Jan 19 2019 - 3:00pm	complete	10495	AFC Bournemouth	West Ham United	Simon Hooper	23	1.64	1.4	1.53	1.11	2	0	2	0	0	0	53,90:1	None	2	3	0	0	1	0	0	0	1	0	10	8	5	2	5	6	6	10	38	62	1.42	1.1	2.99	57	91	62	33	9	48	86	48	80	9.55	4.67	2.15	3.55	3.45	1.21	1.69	2.7	4.33	1.53	2.25	Vitality Stadium (Bournemouth- Dorset)	1
223	1547910000	Jan 19 2019 - 3:00pm	complete	53171	Liverpool	Crystal Palace	Jonathan Moss	23	2.8	1.18	2.79	1.53	4	3	7	1	0	1	46,53,75,90:3	34,65,90:5	8	3	1	1	1	0	0	2	1	0	17	7	10	4	7	3	6	8	70	30	2.49	0.9	2.91	43	76	58	43	19	29	72	45	80	10.82	2.98	1.22	6.85	15.75	1.15	1.5	2.25	3.75	1.95	1.69	Anfield (Liverpool)	1
224	1547910000	Jan 19 2019 - 3:00pm	complete	74532	Manchester United	Brighton & Hove Albion	Paul Tierney	23	2.1	0.73	1.89	0.68	2	1	3	2	2	0	27,42	72	6	5	1	0	0	0	0	1	0	0	15	7	6	4	9	3	11	11	56	44	1.71	1.04	2.93	63	82	63	39	15	34	86	41	80	10.3	3.72	1.42	5.05	8.25	1.23	1.71	2.8	5	1.95	1.69	Old Trafford (Manchester)	1
225	1547910000	Jan 19 2019 - 3:00pm	complete	49864	Newcastle United	Cardiff City	Stuart Attwell	23	0.64	0.5	1.32	0.74	3	0	3	1	1	0	24,63,90:3	None	7	10	0	0	1	0	0	0	0	1	12	7	7	2	5	5	11	6	53	47	1.65	0.98	2.29	43	62	48	20	15	19	53	36	66	8.81	3.05	2.1	3.15	4.25	1.4	2.2	4.2	9	1.83	1.77	St. James: Park (Newcastle upon Tyne)	1
226	1547910000	Jan 19 2019 - 3:00pm	complete	29989	Southampton	Everton	Graham Scott	23	0.8	0.9	1.21	1.05	2	1	3	0	0	0	50,64	90:1	7	6	2	0	1	0	0	2	0	1	9	4	5	3	4	1	12	11	39	61	1.24	0.93	2.8	65	75	65	40	10	30	55	53	77	10.3	5.1	2.85	3.35	2.6	1.29	1.91	3.3	6	1.65	2	St. Mary:s Stadium (Southampton- Hampshire)	1
227	1547910000	Jan 19 2019 - 3:00pm	complete	19510	Watford	Burnley	Michael Oliver	23	1.45	0.73	1.42	0.89	0	0	0	0	0	0	None	None	1	7	1	0	2	0	0	1	0	2	8	11	5	4	3	7	14	9	54	46	1.15	1.41	2.96	55	82	69	27	18	32	64	41	77	7.64	4.28	1.65	4	5.7	1.25	1.77	2.95	5.5	1.71	1.91	Vicarage Road (Watford)	1
228	1547919000	Jan 19 2019 - 5:30pm	complete	59979	Arsenal	Chelsea	Anthony Taylor	23	2.36	2.2	2.37	1.58	2	0	2	2	2	0	14,39	None	5	6	0	0	2	0	0	0	1	1	13	11	6	2	7	9	13	15	35	65	1.64	1.52	2.9	57	86	63	33	9	34	67	53	91	11.2	3.5	3.2	3.55	2.3	1.26	1.83	3.1	4.25	1.61	2.05	Emirates Stadium (London)	1
229	1547991000	Jan 20 2019 - 1:30pm	complete	24190	Huddersfield Town	Manchester City	Andre Marriner	23	0.45	2	0.47	2.32	0	3	3	1	0	1	None	18,54,56	1	4	2	0	2	0	2	0	1	1	6	11	3	5	3	6	10	9	32	68	0.85	1.36	2.26	38	68	43	20	5	43	81	34	75	12.81	3.25	22	8.25	1.15	1.13	1.44	2.1	3.2	2.25	1.5	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
230	1548000000	Jan 20 2019 - 4:00pm	complete	24807	Fulham	Tottenham Hotspur	Craig Pawson	23	1.2	2.5	1.11	1.74	1	2	3	1	1	0	17	51,90:3	7	10	2	0	3	0	0	2	0	3	10	12	5	6	5	6	10	8	26	74	1.17	1.79	3.22	55	87	54	28	28	45	78	50	75	9.45	3.67	5.65	3.8	1.71	1.26	1.83	3.1	5.5	1.69	1.95	Craven Cottage (London)	1
231	1548791100	Jan 29 2019 - 7:45pm	complete	59933	Arsenal	Cardiff City	Mike Dean	24	2.42	0.45	2.37	0.74	2	1	3	0	0	0	66,83	90:3	4	7	3	0	3	0	2	1	1	2	10	12	5	3	5	9	14	12	70	30	1.5	1.29	2.73	47	74	44	39	22	21	61	55	83	9.47	3.28	1.23	6.9	14.25	1.11	1.4	2	3.2	1.77	1.87	Emirates Stadium (London)	1
232	1548791100	Jan 29 2019 - 7:45pm	complete	22008	Fulham	Brighton & Hove Albion	Lee Probert	24	1.09	0.67	1.11	0.68	4	2	6	2	0	2	47,58,74,79	3,17	10	1	2	0	3	0	1	1	2	1	18	11	9	7	9	4	10	5	61	39	2.35	1.58	2.8	57	83	48	26	14	35	87	35	81	9.44	3.67	2.45	3.2	3.1	1.43	2.35	4.5	9	1.91	1.71	Craven Cottage (London)	1
233	1548791100	Jan 29 2019 - 7:45pm	complete	23699	Huddersfield Town	Everton	Stuart Attwell	24	0.42	0.82	0.47	1.05	0	1	1	1	0	1	None	3	3	4	1	0	4	1	0	1	2	3	9	10	3	6	6	4	13	10	58	42	1.22	1.24	2.41	49	66	53	22	5	35	64	40	76	9.85	3.77	3.85	3.25	2.15	1.4	2.2	4.15	7.75	1.87	1.77	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
234	1548791100	Jan 29 2019 - 7:45pm	complete	31122	Wolverhampton Wanderers	West Ham United	David Coote	24	1.42	1.27	1.79	1.11	3	0	3	0	0	0	66,80,86	None	5	1	4	0	1	0	1	3	1	0	14	4	10	0	4	4	8	10	54	46	1.97	0.56	2.74	44	92	39	26	9	39	75	46	85	8.58	4.19	2.05	3.5	3.9	1.31	1.95	3.4	6.45	1.71	1.91	Molineux Stadium (Wolverhampton- West Midlands)	1
235	1548792000	Jan 29 2019 - 8:00pm	complete	74529	Manchester United	Burnley	Jonathan Moss	24	2.18	0.75	1.89	0.89	2	2	4	0	0	0	87,90:2	51,81	11	3	1	0	3	0	0	1	0	3	21	5	10	5	11	0	10	9	74	26	2.76	0.86	2.97	62	75	66	39	26	35	66	48	74	9.27	4.4	1.31	5.95	10	1.18	1.59	2.45	4.45	1.95	1.69	Old Trafford (Manchester)	1
236	1548792000	Jan 29 2019 - 8:00pm	complete	50861	Newcastle United	Manchester City	Paul Tierney	24	0.83	2.09	1.32	2.32	2	1	3	1	0	1	66,80	1	1	8	2	0	3	0	0	2	2	1	6	8	3	5	3	3	9	7	23	77	0.76	1.45	2.45	39	79	57	14	5	31	70	41	74	13.55	3.24	16.25	7.75	1.19	1.15	1.5	2.25	3.5	2.2	1.53	St. James: Park (Newcastle upon Tyne)	1
237	1548877500	Jan 30 2019 - 7:45pm	complete	10227	AFC Bournemouth	Chelsea	Roger East	24	1.75	2	1.53	1.58	4	0	4	0	0	0	47,63,74,90:5	None	3	7	1	0	0	0	0	1	0	0	10	10	8	8	2	2	8	6	32	68	1.36	1.89	2.91	52	87	70	26	9	44	74	46	83	10.44	3.63	5.35	4.15	1.67	1.22	1.69	2.75	4.75	1.71	2.1	Vitality Stadium (Bournemouth- Dorset)	1
238	1548877500	Jan 30 2019 - 7:45pm	complete	28339	Southampton	Crystal Palace	Andre Marriner	24	1	1.08	1.21	1.53	1	1	2	1	0	1	77	41	3	8	2	0	3	1	1	1	1	3	10	13	5	4	5	9	11	8	58	42	1.47	1.42	3	66	83	66	39	17	22	61	50	74	9.02	4.72	2.45	3.3	3.05	1.33	2	3.6	7	1.77	2	St. Mary:s Stadium (Southampton- Hampshire)	1
239	1548878400	Jan 30 2019 - 8:00pm	complete	53092	Liverpool	Leicester City	Martin Atkinson	24	2.82	1.42	2.79	1.32	1	1	2	2	1	1	3	45:2	7	1	1	0	3	0	1	0	1	2	9	5	4	3	5	2	13	6	72	28	1.51	0.79	3.06	47	70	53	40	22	31	75	37	83	13.01	2.58	1.25	6.55	12	1.16	1.53	2.3	3.85	2	1.77	Anfield (Liverpool)	1
240	1548878400	Jan 30 2019 - 8:00pm	complete	29164	Tottenham Hotspur	Watford	Graham Scott	24	1.8	1.45	2	1.21	2	1	3	1	0	1	80,87	38	9	5	0	0	4	0	0	0	0	4	10	7	4	2	6	5	6	9	68	32	1.54	0.82	2.77	53	76	48	39	10	28	86	48	77	10.95	3.55	1.67	3.9	5.6	1.23	1.74	2.85	4.75	1.71	2.05	Wembley Stadium (London)	1
241	1549110600	Feb 02 2019 - 12:30pm	complete	41219	Tottenham Hotspur	Newcastle United	Andre Marriner	25	1.91	1	2	1.05	1	0	1	0	0	0	83	None	6	3	0	0	1	0	0	0	0	1	13	6	5	3	8	3	6	6	71	29	1.86	0.78	2.46	55	64	55	32	9	32	78	46	67	9.37	2.64	1.43	4.55	9	1.27	1.87	3.2	5.75	2.1	1.71	Wembley Stadium (London)	1
242	1549119600	Feb 02 2019 - 3:00pm	complete	30414	Brighton & Hove Albion	Watford	Simon Hooper	25	1.64	1.33	1.21	1.21	0	0	0	0	0	0	None	None	7	0	1	0	0	0	1	0	0	0	18	6	5	0	13	6	15	10	55	45	2.1	0.63	2.6	61	78	44	26	9	35	78	34	81	9.42	4.67	2.5	3.3	3	1.35	2.1	3.8	8	1.83	1.95	The American Express Community Stadium (Falmer- East Sussex)	1
243	1549119600	Feb 02 2019 - 3:00pm	complete	19787	Burnley	Southampton	Anthony Taylor	25	1.18	0.92	1.21	0.84	1	1	2	0	0	0	90:4	55	4	2	3	0	1	0	2	1	0	1	10	8	7	5	3	3	10	9	54	46	1.61	1.14	3.01	53	83	61	39	13	57	75	46	69	7.88	3.72	2.5	3.3	3	1.34	2.05	3.75	7.25	1.8	1.95	Turf Moor (Burnley)	1
244	1549119600	Feb 02 2019 - 3:00pm	complete	40626	Chelsea	Huddersfield Town	Paul Tierney	25	2.08	0.55	2.21	0.37	5	0	5	2	2	0	16,45:1,66,69,86	None	11	2	0	0	0	0	0	0	0	0	16	4	8	3	8	1	8	5	65	35	2.14	0.76	2.57	53	74	44	30	13	35	70	32	73	9.88	3.08	1.26	6.15	14	1.22	1.71	2.8	4.6	2.25	1.62	Stamford Bridge (London)	1
245	1549119600	Feb 02 2019 - 3:00pm	complete	25355	Crystal Palace	Fulham	Michael Oliver	25	0.82	0.17	1.05	0.26	2	0	2	1	1	0	25,87	None	11	1	2	0	3	0	1	1	2	1	12	8	7	0	5	8	9	12	37	63	1.61	0.88	2.36	34	64	43	26	13	17	64	48	81	10.35	3.02	1.91	3.6	4.25	1.3	1.95	3.35	6.45	1.8	2	Selhurst Park (London)	1
246	1549119600	Feb 02 2019 - 3:00pm	complete	39380	Everton	Wolverhampton Wanderers	Lee Mason	25	1.75	1.36	1.79	1.21	1	3	4	3	1	2	27	7,45,66	3	1	3	0	1	0	2	1	0	1	7	7	5	5	2	2	12	14	64	36	1.19	1.01	2.59	57	78	43	21	4	39	61	50	88	11.23	3.24	2.6	3.3	2.85	1.34	2.05	3.7	7.25	1.8	1.95	Goodison Park (Liverpool)	1
247	1549128600	Feb 02 2019 - 5:30pm	complete	31939	Cardiff City	AFC Bournemouth	Jonathan Moss	25	1.17	0.82	1.05	0.84	2	0	2	1	1	0	5,46	None	6	7	1	0	2	0	0	1	0	2	6	8	6	3	0	5	17	14	26	74	1.07	1.2	3.18	43	84	70	39	26	53	70	52	79	10.83	2.83	3.35	3.45	2.25	1.28	1.87	3.25	5.85	1.71	2.1	Cardiff City Stadium (Cardiff (Caerdydd))	1
248	1549202700	Feb 03 2019 - 2:05pm	complete	32148	Leicester City	Manchester United	Mike Dean	25	1.27	1.67	1.42	1.58	0	1	1	1	0	1	None	9	7	2	4	0	4	0	2	2	2	2	15	9	7	7	8	2	14	9	44	56	1.9	1.42	2.89	65	87	60	34	9	66	87	42	81	10.4	4.77	3.75	3.55	2.05	1.24	1.74	2.9	5.45	1.65	2.2	King Power Stadium (Leicester- Leicestershire)	1
249	1549211400	Feb 03 2019 - 4:30pm	complete	54483	Manchester City	Arsenal	Martin Atkinson	25	2.75	1.36	2.84	1.32	3	1	4	3	2	1	1,44,61	11	4	2	1	0	1	0	0	1	1	0	16	3	13	3	3	0	11	8	58	42	2.42	0.55	4.09	79	96	87	61	39	66	91	59	90	12.56	2.47	1.26	7	10.5	1.09	1.32	1.8	2.95	1.69	2.1	Etihad Stadium (Manchester)	1
250	1549310400	Feb 04 2019 - 8:00pm	complete	59903	West Ham United	Liverpool	Kevin Friend	25	1.42	2.42	1.63	2.32	1	1	2	2	1	1	28	22	2	5	1	0	1	0	0	1	0	1	10	10	3	7	7	3	9	11	26	74	1.09	1.59	2.71	50	75	54	34	9	17	63	48	79	12.08	2.66	9	5.4	1.36	1.17	1.54	2.35	3.75	1.87	1.91	London Stadium (London)	1
251	1549482300	Feb 06 2019 - 7:45pm	complete	39322	Everton	Manchester City	Craig Pawson	27	1.62	1.92	1.79	2.32	0	2	2	1	0	1	None	45:2,90:7	5	6	1	0	1	0	0	1	0	1	2	9	2	5	0	4	12	6	38	62	0.77	1.43	2.88	52	84	56	32	8	44	73	52	86	13.81	3.38	9.75	6	1.31	1.15	1.5	2.25	3.74	1.83	1.95	Goodison Park (Liverpool)	1
252	1549715400	Feb 09 2019 - 12:30pm	complete	25001	Fulham	Manchester United	Paul Tierney	26	1.25	1.77	1.11	1.58	0	3	3	2	0	2	None	14,23,65	5	4	3	0	2	0	2	1	1	1	11	12	4	8	7	4	14	9	51	49	1.42	1.79	3.32	68	89	60	44	24	52	88	52	82	10.21	4.62	5.3	4.15	1.67	1.22	1.69	2.75	4.7	1.74	2.05	Craven Cottage (London)	1
253	1549724400	Feb 09 2019 - 3:00pm	complete	25552	Crystal Palace	West Ham United	Craig Pawson	26	1	1.17	1.05	1.11	1	1	2	1	0	1	76	27	10	4	3	0	0	0	3	0	0	0	16	5	6	5	10	0	12	9	57	43	1.98	1.07	2.13	30	71	34	17	0	21	63	46	78	11.33	3.5	2.15	3.45	3.55	1.3	1.95	3.35	6.1	1.77	2	Selhurst Park (London)	1
254	1549724400	Feb 09 2019 - 3:00pm	complete	24182	Huddersfield Town	Arsenal	Jonathan Moss	26	0.38	1.25	0.47	1.32	1	2	3	2	0	2	90:3	16,44	5	0	3	0	2	0	1	2	0	2	14	9	8	5	6	4	17	12	54	46	1.92	1.09	2.96	62	73	61	38	21	57	84	42	78	8.96	3.04	5.1	3.85	1.74	1.26	1.8	3.05	5.85	1.77	2	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
255	1549724400	Feb 09 2019 - 3:00pm	complete	53178	Liverpool	AFC Bournemouth	Anthony Taylor	26	2.67	0.75	2.79	0.84	3	0	3	2	2	0	24,34,48	None	8	5	2	0	2	0	0	2	2	0	16	8	10	3	6	5	14	6	65	35	2.29	1	3.25	38	88	63	46	21	46	83	48	80	13.08	1.92	1.19	7.75	16.5	1.11	1.4	2	3.2	2	1.77	Anfield (Liverpool)	1
256	1549724400	Feb 09 2019 - 3:00pm	complete	31438	Southampton	Cardiff City	Martin Atkinson	26	1	0.42	1.21	0.74	1	2	3	0	0	0	90:1	69,90:3	8	2	3	0	3	0	1	2	0	3	13	7	8	4	5	3	15	12	66	34	1.86	1.01	2.63	59	71	59	33	17	17	54	50	74	8.91	4.16	1.8	3.6	5.05	1.35	2.05	3.75	7	1.91	1.87	St. Mary:s Stadium (Southampton- Hampshire)	1
257	1549724400	Feb 09 2019 - 3:00pm	complete	20333	Watford	Everton	Lee Probert	26	1.42	1	1.42	1.05	1	0	1	0	0	0	65	None	8	2	2	0	1	1	0	2	0	2	6	9	3	5	3	4	21	10	44	56	0.96	1.29	2.75	58	80	67	25	8	29	59	45	83	9.84	4.16	2.45	3.3	3.1	1.31	1.95	3.4	6.3	1.74	2.05	Vicarage Road (Watford)	1
258	1549733400	Feb 09 2019 - 5:30pm	complete	29323	Brighton & Hove Albion	Burnley	Stuart Attwell	26	1.58	0.77	1.21	0.89	1	3	4	1	0	1	76	26,61,74	9	3	1	0	1	0	0	1	0	1	11	8	7	6	4	2	8	7	68	32	1.81	1.14	2.47	52	60	48	32	16	28	57	34	72	7.25	4.62	2.05	3.25	4.2	1.44	2.35	4.55	9.25	2.05	1.74	The American Express Community Stadium (Falmer- East Sussex)	1
259	1549805400	Feb 10 2019 - 1:30pm	complete	44154	Tottenham Hotspur	Leicester City	Michael Oliver	26	2	1.38	2	1.32	3	1	4	1	1	0	33,63,90:1	76	2	9	3	0	1	0	3	0	0	1	8	19	6	10	2	9	11	4	53	47	1.21	2.32	2.68	56	64	48	33	12	24	76	40	74	11.37	2.69	1.69	3.8	5.7	1.26	1.83	3.1	6.1	1.83	1.95	Wembley Stadium (London)	1
260	1549814400	Feb 10 2019 - 4:00pm	complete	54452	Manchester City	Chelsea	Mike Dean	26	2.77	1.83	2.84	1.58	6	0	6	4	4	0	4,13,19,25,56,80	None	2	2	1	0	2	0	0	1	0	2	15	8	10	5	5	3	9	13	55	45	1.98	1.24	3.45	56	92	84	44	16	52	84	47	86	12.96	2.27	1.57	4.3	6.3	1.2	1.65	2.6	4.6	1.74	2.05	Etihad Stadium (Manchester)	1
261	1549915200	Feb 11 2019 - 8:00pm	complete	30687	Wolverhampton Wanderers	Newcastle United	Graham Scott	26	1.54	0.92	1.79	1.05	1	1	2	0	0	0	90:5	56	13	1	1	0	3	0	0	1	1	2	15	6	7	4	8	2	7	9	59	41	1.96	0.85	2.43	44	75	40	20	12	37	60	38	78	8.12	3.66	1.83	3.45	5.2	1.41	2.25	4.25	8.4	2.05	1.74	Molineux Stadium (Wolverhampton- West Midlands)	1
262	1550864700	Feb 22 2019 - 7:45pm	complete	30387	Cardiff City	Watford	Simon Hooper	27	1.31	1.31	1.05	1.21	1	5	6	1	0	1	82	18,61,63,73,90:1	3	3	1	0	2	0	0	1	1	1	12	12	7	8	5	4	10	11	35	65	1.57	1.62	2.73	50	77	50	27	20	39	70	44	79	10	4.23	3.15	3.35	2.4	1.36	2.1	3.85	7	1.87	1.91	Cardiff City Stadium (Cardiff (Caerdydd))	1
263	1550864700	Feb 22 2019 - 7:45pm	complete	59950	West Ham United	Fulham	Lee Mason	27	1.38	0.15	1.63	0.26	3	1	4	3	2	1	29,40,90:1	3	12	0	1	0	1	0	0	1	1	0	17	8	8	6	9	2	11	11	55	45	2.15	1.15	2.97	50	77	58	42	19	31	74	46	81	8.92	3.39	1.87	3.8	4.3	1.21	1.69	2.7	4.75	1.62	2.2	London Stadium (London)	1
264	1550925000	Feb 23 2019 - 12:30pm	complete	21338	Burnley	Tottenham Hotspur	Mike Dean	27	1.17	2.54	1.21	1.74	2	1	3	0	0	0	57,83	65	7	6	1	0	3	0	0	1	0	3	8	12	5	7	3	5	9	12	30	70	1.28	1.75	3.2	56	89	64	33	16	52	80	52	71	8.27	3.52	5.55	3.9	1.71	1.25	1.8	3	5.25	1.83	1.95	Turf Moor (Burnley)	1
265	1550934000	Feb 23 2019 - 3:00pm	complete	10671	AFC Bournemouth	Wolverhampton Wanderers	Roger East	27	1.85	1.5	1.53	1.21	1	1	2	1	1	0	14	83	9	8	4	0	5	0	1	3	2	3	9	8	4	3	5	5	10	15	44	56	1.29	1.11	2.78	56	84	56	28	8	36	68	48	89	9.42	3.83	2.9	3.25	2.65	1.33	2.05	3.65	7.2	1.8	2	Vitality Stadium (Bournemouth- Dorset)	1
266	1550934000	Feb 23 2019 - 3:00pm	complete	52174	Newcastle United	Huddersfield Town	Kevin Friend	27	1	0.5	1.32	0.37	2	0	2	0	0	0	46,52	None	12	0	2	0	0	1	1	1	1	0	24	2	13	0	11	2	11	7	54	46	2.99	0.37	2.57	48	76	56	17	9	37	69	29	65	9.95	3.21	1.95	3.3	4.8	1.49	2.5	4.9	9.6	2.2	1.65	St. James: Park (Newcastle upon Tyne)	1
267	1550943000	Feb 23 2019 - 5:30pm	complete	31778	Leicester City	Crystal Palace	Anthony Taylor	27	1.17	1.08	1.42	1.53	1	4	5	1	0	1	64	40,70,81,90:3	8	3	2	0	1	0	1	1	0	1	16	8	6	6	10	2	7	14	65	35	2.06	1.15	2.63	56	80	48	23	12	37	76	35	79	9.91	4.65	2.25	3.35	3.55	1.36	2.1	3.85	7.5	1.83	1.91	King Power Stadium (Leicester- Leicestershire)	1
268	1551017100	Feb 24 2019 - 2:05pm	complete	59877	Arsenal	Southampton	Graham Scott	27	2.46	0.92	2.37	0.84	2	0	2	2	2	0	6,17	None	6	4	0	0	0	0	0	0	0	0	9	8	5	5	4	3	7	14	62	38	1.4	1.28	2.89	58	85	50	35	15	39	58	56	83	9.92	3.92	1.57	4.3	6.3	1.21	1.67	2.65	4.9	1.74	2	Emirates Stadium (London)	1
269	1551017100	Feb 24 2019 - 2:05pm	complete	74519	Manchester United	Liverpool	Michael Oliver	27	2.08	2.31	1.89	2.32	0	0	0	0	0	0	None	None	3	7	1	0	3	0	0	1	1	2	5	6	4	2	1	4	15	17	35	65	0.76	1.07	2.94	69	89	65	33	13	29	72	48	79	12.36	2.83	3.5	3.35	2.25	1.24	1.77	2.95	5.05	1.62	2.25	Old Trafford (Manchester)	1
270	1551210300	Feb 26 2019 - 7:45pm	complete	31849	Cardiff City	Everton	Kevin Friend	28	1.21	0.92	1.05	1.05	0	3	3	1	0	1	None	41,66,90:3	3	4	3	0	1	0	2	1	0	1	6	10	0	5	6	5	12	12	32	68	0.85	1.35	2.84	52	67	59	34	22	33	55	50	82	9.78	4.33	3.9	3.3	2.1	1.4	2.2	4.2	6.9	1.95	1.83	Cardiff City Stadium (Cardiff (Caerdydd))	1
271	1551210300	Feb 26 2019 - 7:45pm	complete	22714	Huddersfield Town	Wolverhampton Wanderers	David Coote	28	0.36	1.46	0.47	1.21	1	0	1	0	0	0	90:1	None	3	5	2	0	2	0	1	1	1	1	13	6	4	0	9	6	10	10	49	51	1.44	0.77	2.16	49	67	41	11	0	37	78	35	80	9.19	3.65	4.95	3.45	1.83	1.5	2.5	5	10.25	2.3	1.61	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
272	1551210300	Feb 26 2019 - 7:45pm	complete	30558	Leicester City	Brighton & Hove Albion	Lee Probert	28	1.08	0.62	1.42	0.68	2	1	3	1	1	0	10,63	66	4	8	1	0	1	0	0	1	1	0	13	13	4	4	9	9	6	4	49	51	1.44	1.58	2.58	54	77	50	23	8	46	89	29	78	9.85	4.15	1.83	3.45	4.95	1.39	2.2	4.1	7.9	2	1.77	King Power Stadium (Leicester- Leicestershire)	1
273	1551211200	Feb 26 2019 - 8:00pm	complete	48323	Newcastle United	Burnley	Craig Pawson	28	1.14	0.93	1.32	0.89	2	0	2	2	2	0	24,38	None	4	7	1	0	3	0	1	0	1	2	13	9	4	3	9	6	8	8	54	46	1.36	1.21	2.54	47	72	57	22	11	21	54	43	69	9.07	4	2.15	3.15	3.85	1.43	2.35	4.5	7.9	2	1.77	St. James: Park (Newcastle upon Tyne)	1
274	1551296700	Feb 27 2019 - 7:45pm	complete	59618	Arsenal	AFC Bournemouth	Chris Kavanagh	28	2.5	0.69	2.37	0.84	5	1	6	3	2	1	4,27,47,59,78	30	9	4	2	0	2	0	1	1	1	1	12	9	8	6	4	3	11	9	64	36	1.82	1.25	3.08	44	97	56	37	15	45	75	52	87	11.71	2.87	1.44	5.3	6.85	1.13	1.44	2.1	3.5	1.65	2.2	Emirates Stadium (London)	1
275	1551296700	Feb 27 2019 - 7:45pm	complete	27597	Southampton	Fulham	Anthony Taylor	28	0.92	0.14	1.21	0.26	2	0	2	2	2	0	23,40	None	7	4	0	0	1	0	0	0	0	1	12	9	5	5	7	4	15	13	40	60	1.49	1.19	2.96	64	86	67	37	15	30	70	48	78	8.02	4.41	2	3.4	4	1.29	1.91	3.25	6.25	1.74	2.05	St. Mary:s Stadium (Southampton- Hampshire)	1
276	1551297600	Feb 27 2019 - 8:00pm	complete	25754	Crystal Palace	Manchester United	Martin Atkinson	28	1	1.86	1.05	1.58	1	3	4	1	0	1	66	33,52,83	5	6	2	0	3	0	1	1	0	3	14	10	3	5	11	5	8	9	45	55	1.48	1.32	2.46	44	70	43	29	7	32	74	48	80	12.2	4.03	3.25	3.2	2.35	1.36	2.1	3.9	7.5	1.87	1.91	Selhurst Park (London)	1
277	1551297600	Feb 27 2019 - 8:00pm	complete	40542	Chelsea	Tottenham Hotspur	Andre Marriner	28	2.15	2.36	2.21	1.74	2	0	2	0	0	0	57,84	None	2	2	1	0	1	0	0	1	0	1	10	6	2	0	8	6	7	14	46	54	1.05	0.82	2.99	52	82	59	30	22	37	70	53	80	10.56	2.94	2.3	3.35	3.35	1.27	1.87	3.2	5.7	1.67	2.15	Stamford Bridge (London)	1
278	1551297600	Feb 27 2019 - 8:00pm	complete	53316	Liverpool	Watford	Graham Scott	28	2.69	1.43	2.79	1.21	5	0	5	2	2	0	9,20,66,79,82	None	6	4	0	0	2	0	0	0	0	2	15	5	11	4	4	1	5	7	61	39	2.31	0.83	3.01	48	82	53	38	19	38	82	41	78	12.01	3.36	1.29	5.6	11.5	1.18	1.59	2.45	4.33	2	1.77	Anfield (Liverpool)	1
279	1551297600	Feb 27 2019 - 8:00pm	complete	53528	Manchester City	West Ham United	Stuart Attwell	28	2.79	1.15	2.84	1.11	1	0	1	0	0	0	59	None	13	2	0	0	2	0	0	0	1	1	18	3	8	2	10	1	2	6	75	25	2.51	0.48	3.46	55	96	70	44	18	51	89	48	84	10.91	2.86	1.14	8.75	19	1.09	1.32	1.8	2.75	2	1.77	Etihad Stadium (Manchester)	1
280	1551529800	Mar 02 2019 - 12:30pm	complete	81332	Tottenham Hotspur	Arsenal	Anthony Taylor	29	2.08	1.38	2	1.32	1	1	2	1	0	1	74	16	3	4	3	0	2	1	0	3	0	3	11	7	4	5	7	2	15	14	60	40	1.32	1.1	3.35	73	77	74	54	23	46	85	59	82	9.69	2.7	2.05	3.55	3.65	1.19	1.61	2.5	4.5	1.53	2.45	Wembley Stadium (London)	1
281	1551538800	Mar 02 2019 - 3:00pm	complete	10699	AFC Bournemouth	Manchester City	Kevin Friend	29	1.79	2	1.53	2.32	0	1	1	0	0	0	None	55	0	14	1	0	2	0	0	1	0	2	0	18	0	8	0	10	7	7	18	82	0.11	2.36	2.88	48	89	59	30	11	34	78	50	88	12.75	3.99	12.75	7	1.22	1.11	1.4	2	3.15	1.87	1.87	Vitality Stadium (Bournemouth- Dorset)	1
282	1551538800	Mar 02 2019 - 3:00pm	complete	30182	Brighton & Hove Albion	Huddersfield Town	Mike Dean	29	1.46	0.46	1.21	0.37	1	0	1	0	0	0	79	None	6	3	2	0	2	0	1	1	0	2	11	5	5	5	6	0	11	6	52	48	1.53	0.87	2.58	54	70	46	31	12	39	69	28	73	8.62	3.69	1.8	3.35	5.2	1.49	2.5	4.9	10.25	2.25	1.62	The American Express Community Stadium (Falmer- East Sussex)	1
283	1551538800	Mar 02 2019 - 3:00pm	complete	19223	Burnley	Crystal Palace	Lee Probert	29	1.31	1.21	1.21	1.53	1	3	4	1	0	1	90	15,48,76	8	5	1	0	2	0	1	0	0	2	15	9	5	5	10	4	9	9	56	44	1.86	1.19	3.15	63	89	60	41	19	34	74	46	75	7.85	3.83	2.85	3.2	2.65	1.34	2.05	3.75	7.25	1.8	1.95	Turf Moor (Burnley)	1
284	1551538800	Mar 02 2019 - 3:00pm	complete	74459	Manchester United	Southampton	Stuart Attwell	29	2	0.86	1.89	0.84	3	2	5	1	0	1	53,59,88	26,75	9	7	2	0	1	0	0	2	1	0	16	8	7	4	9	4	7	10	64	36	1.88	1.16	2.93	64	82	64	38	19	44	63	52	74	10.52	3.55	1.48	4.35	7.25	1.23	1.71	2.8	5.2	1.87	1.91	Old Trafford (Manchester)	1
285	1551538800	Mar 02 2019 - 3:00pm	complete	31309	Wolverhampton Wanderers	Cardiff City	Andre Marriner	29	1.5	0.62	1.79	0.74	2	0	2	2	2	0	16,18	None	7	8	1	0	2	0	1	0	1	1	12	9	7	5	5	4	11	6	56	44	1.49	1.54	2.67	45	78	45	26	19	19	52	49	86	8.9	3.69	1.56	3.9	6.95	1.34	2.05	3.75	8	2.05	1.71	Molineux Stadium (Wolverhampton- West Midlands)	1
286	1551547800	Mar 02 2019 - 5:30pm	complete	59910	West Ham United	Newcastle United	Chris Kavanagh	29	1.5	0.92	1.63	1.05	2	0	2	2	2	0	7,42	None	1	6	3	0	4	0	1	2	2	2	8	9	5	3	3	6	8	14	55	45	1.17	1.05	2.47	56	67	48	33	11	37	59	40	72	9.74	3.19	2.2	3.3	3.5	1.34	2.05	3.7	6.85	1.83	1.95	London Stadium (London)	1
287	1551614400	Mar 03 2019 - 12:00pm	complete	20062	Watford	Leicester City	Jonathan Moss	29	1.54	1.29	1.42	1.32	2	1	3	1	1	0	5,90:2	75	1	5	5	0	1	0	1	4	0	1	6	9	6	3	0	6	15	12	39	61	1.09	1.29	2.74	59	78	56	22	11	30	67	38	81	10.71	3.33	2.65	3.3	2.75	1.29	1.91	3.3	6	1.71	2.1	Vicarage Road (Watford)	1
288	1551621900	Mar 03 2019 - 2:05pm	complete	24900	Fulham	Chelsea	Graham Scott	29	1.15	1.69	1.11	1.58	1	2	3	3	1	2	27	20,31	5	4	2	0	1	0	1	1	0	1	10	13	6	8	4	5	11	10	36	64	1.43	1.79	3.16	50	89	66	31	20	46	77	46	84	10.84	3.54	6.75	4.45	1.49	1.23	1.71	2.8	4.8	1.87	1.91	Craven Cottage (London)	1
289	1551629700	Mar 03 2019 - 4:15pm	complete	39335	Everton	Liverpool	Martin Atkinson	29	1.5	2.21	1.79	2.32	0	0	0	0	0	0	None	None	3	7	1	0	2	0	1	0	0	2	7	7	4	4	3	3	12	10	42	58	1.14	1.09	2.65	54	83	47	25	4	32	64	47	81	11.93	2.64	6.2	4	1.59	1.27	1.83	3.15	6	1.91	1.87	Goodison Park (Liverpool)	1
290	1552134600	Mar 09 2019 - 12:30pm	complete	24972	Crystal Palace	Brighton & Hove Albion	Craig Pawson	30	0.93	0.57	1.05	0.68	1	2	3	1	0	1	50	19,74	8	0	1	0	5	0	0	1	2	3	9	5	4	4	5	1	8	18	62	38	1.4	0.87	2.29	43	68	39	22	4	18	75	39	81	11.71	3.21	1.91	3.35	4.85	1.45	2.4	4.65	9.25	2.15	1.69	Selhurst Park (London)	1
291	1552143600	Mar 09 2019 - 3:00pm	complete	32458	Cardiff City	West Ham United	Graham Scott	30	1.13	1.07	1.05	1.11	2	0	2	1	1	0	4,52	None	7	5	2	0	1	0	1	1	1	0	14	8	8	3	6	5	7	12	29	71	1.8	1.08	2.82	45	80	55	27	17	38	69	47	76	8.37	3.87	3.25	3.4	2.3	1.27	1.87	3.2	6.1	1.69	2.1	Cardiff City Stadium (Cardiff (Caerdydd))	1
292	1552143600	Mar 09 2019 - 3:00pm	complete	22304	Huddersfield Town	AFC Bournemouth	Anthony Taylor	30	0.53	0.64	0.47	0.84	0	2	2	1	0	1	None	20,66	6	5	3	0	1	0	1	2	0	1	5	9	2	6	3	3	14	9	56	44	0.9	1.3	2.68	35	77	56	25	11	49	83	36	78	10.19	2.74	3.25	3.25	2.4	1.37	2.15	3.9	8	1.87	1.91	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
293	1552143600	Mar 09 2019 - 3:00pm	complete	32017	Leicester City	Fulham	David Coote	30	1.21	0.13	1.42	0.26	3	1	4	1	1	0	21,78,86	51	6	5	0	0	2	0	0	0	0	2	17	5	9	4	8	1	9	13	52	48	2.06	0.82	2.75	52	83	55	27	14	45	87	38	79	8.66	4.02	1.57	4.4	6.05	1.21	1.67	2.65	4.65	1.74	2.05	King Power Stadium (Leicester- Leicestershire)	1
294	1552143600	Mar 09 2019 - 3:00pm	complete	52242	Newcastle United	Everton	Lee Mason	30	1.27	1.07	1.32	1.05	3	2	5	2	0	2	65,81,84	18,32	8	2	3	0	1	0	1	2	0	1	15	6	8	4	7	2	13	10	45	55	1.86	1.1	2.42	45	72	55	15	4	24	55	41	73	10.79	3.9	2.8	3.1	2.85	1.43	2.35	4.5	9	2	1.8	St. James: Park (Newcastle upon Tyne)	1
295	1552143600	Mar 09 2019 - 3:00pm	complete	31890	Southampton	Tottenham Hotspur	Kevin Friend	30	1.07	2.2	1.21	1.74	2	1	3	1	0	1	76,81	26	1	10	4	0	2	0	2	2	0	2	9	15	5	6	4	9	16	9	36	64	1.27	1.78	2.96	62	87	66	25	14	35	62	56	73	10.03	4.23	4.5	3.85	1.83	1.26	1.8	3.05	5.5	1.74	2.05	St. Mary:s Stadium (Southampton- Hampshire)	1
296	1552152600	Mar 09 2019 - 5:30pm	complete	54104	Manchester City	Watford	Paul Tierney	30	2.8	1.33	2.84	1.21	3	1	4	0	0	0	46,50,59	66	9	1	1	0	1	0	1	0	1	0	17	2	10	2	7	0	11	7	71	29	2.41	0.37	3.5	57	90	67	47	27	47	87	47	87	12.33	3.13	1.11	11.25	24.5	1.08	1.31	1.8	2.8	2.3	1.59	Etihad Stadium (Manchester)	1
297	1552219200	Mar 10 2019 - 12:00pm	complete	53310	Liverpool	Burnley	Andre Marriner	30	2.71	0.87	2.79	0.89	4	2	6	3	2	1	19,29,67,90:3	6,90:1	7	3	2	0	0	0	1	1	0	0	14	3	6	3	8	0	4	7	68	32	1.88	0.75	3.05	42	73	59	45	25	39	70	45	71	10.34	3.46	1.17	7.75	19.75	1.14	1.48	2.2	3.75	2.3	1.59	Anfield (Liverpool)	1
298	1552226700	Mar 10 2019 - 2:05pm	complete	40692	Chelsea	Wolverhampton Wanderers	Michael Oliver	30	2.21	1.36	2.21	1.21	1	1	2	0	0	0	90:2	56	13	0	1	0	4	0	0	1	1	3	9	3	7	2	2	1	8	14	75	25	1.96	0.44	2.43	50	75	40	25	11	29	64	44	86	10.21	3.14	1.54	4.1	7	1.29	1.91	3.3	6.2	2	1.77	Stamford Bridge (London)	1
299	1552235400	Mar 10 2019 - 4:30pm	complete	60000	Arsenal	Manchester United	Jonathan Moss	30	2.53	1.93	2.37	1.58	2	0	2	1	1	0	12,69	None	5	2	2	0	2	0	1	1	0	2	11	12	4	5	7	7	12	18	46	54	1.36	1.46	3.23	64	90	60	47	17	50	80	55	85	10.53	4.4	2.4	3.5	3	1.21	1.67	2.65	4.65	1.54	2.4	Emirates Stadium (London)	1
300	1552748400	Mar 16 2019 - 3:00pm	complete	10625	AFC Bournemouth	Newcastle United	Mike Dean	31	1.67	0.86	1.53	1.05	2	2	4	1	0	1	48,81	45:5,90:4	6	6	3	0	2	0	2	1	1	1	11	9	4	5	7	4	9	12	48	52	1.32	1.26	2.5	52	76	48	24	10	38	62	42	75	8.43	3.93	2.1	3.45	3.55	1.29	1.91	3.25	6.05	1.74	2.05	Vitality Stadium (Bournemouth- Dorset)	1
301	1552748400	Mar 16 2019 - 3:00pm	complete	20719	Burnley	Leicester City	Michael Oliver	31	1.21	1.2	1.21	1.32	1	2	3	2	1	1	38	33,90	9	3	1	0	1	1	1	0	2	0	10	5	3	5	7	0	9	10	62	38	1.41	0.9	2.97	66	83	56	35	10	39	76	44	75	9.87	3.31	3.05	3.25	2.45	1.31	1.95	3.5	6.5	1.74	2.05	Turf Moor (Burnley)	1
302	1552748400	Mar 16 2019 - 3:00pm	complete	59931	West Ham United	Huddersfield Town	Jonathan Moss	31	1.6	0.43	1.63	0.37	4	3	7	3	1	2	15,75,84,90:1	17,30,65	5	8	0	0	2	0	0	0	0	2	11	12	6	6	5	6	7	15	64	36	1.61	1.36	2.76	48	72	48	38	14	42	66	32	74	10	3.39	1.59	3.95	6.35	1.34	2.05	3.7	6	2.05	1.71	London Stadium (London)	1
303	1552832100	Mar 17 2019 - 2:15pm	complete	25043	Fulham	Liverpool	Craig Pawson	31	1.07	2.13	1.11	2.32	1	2	3	1	0	1	74	26,81	1	10	2	0	1	0	0	2	1	0	5	14	3	7	2	7	11	7	37	63	0.7	2.01	2.71	56	83	49	21	15	32	73	43	77	11.51	3.34	3.9	4.85	1.51	1.15	1.44	2.2	4	2	1.74	Craven Cottage (London)	1
304	1552840200	Mar 17 2019 - 4:30pm	complete	39356	Everton	Chelsea	Anthony Taylor	31	1.47	1.79	1.79	1.58	2	0	2	0	0	0	49,72	None	3	4	1	0	2	0	0	1	1	1	13	11	9	6	4	5	17	9	32	68	1.73	1.65	2.9	48	83	63	31	7	49	66	49	83	11	2.83	4.3	3.6	1.87	1.3	1.95	3.35	6.5	1.8	1.95	Goodison Park (Liverpool)	1
305	1553949000	Mar 30 2019 - 12:30pm	complete	25001	Fulham	Manchester City	Kevin Friend	32	1	2.07	1.11	2.32	0	2	2	2	0	2	None	5,27	0	11	2	0	0	0	0	2	0	0	4	16	0	8	4	8	4	12	34	66	0.46	2.09	2.89	52	86	55	24	17	38	83	48	86	13.26	3.93	19.5	11.25	1.12	1.07	1.26	1.69	2.45	2	1.77	Craven Cottage (London)	1
306	1553958000	Mar 30 2019 - 3:00pm	complete	30636	Brighton & Hove Albion	Southampton	Michael Oliver	32	1.57	0.8	1.21	0.84	0	1	1	0	0	0	None	53	6	5	1	0	2	0	1	0	0	2	11	7	2	3	9	4	8	10	60	40	1.23	0.99	2.58	55	69	48	31	14	38	62	42	75	9.04	3.73	2.55	3.1	3.1	1.44	2.35	4.55	8.5	2	1.8	The American Express Community Stadium (Falmer- East Sussex)	1
307	1553958000	Mar 30 2019 - 3:00pm	complete	20990	Burnley	Wolverhampton Wanderers	Chris Kavanagh	32	1.13	1.33	1.21	1.21	2	0	2	1	1	0	2,77	None	1	5	1	0	1	0	0	1	0	1	5	5	2	2	3	3	12	10	37	63	0.66	0.89	2.67	64	83	50	27	4	40	70	46	81	8.87	3.8	3.15	3.15	2.5	1.44	2.35	4.55	8.75	2	1.8	Turf Moor (Burnley)	1
308	1553958000	Mar 30 2019 - 3:00pm	complete	25193	Crystal Palace	Huddersfield Town	Lee Probert	32	0.87	0.4	1.05	0.37	2	0	2	0	0	0	76,88	None	5	5	0	0	0	0	0	0	0	0	12	13	6	6	6	7	10	7	48	52	1.53	1.58	2.4	40	67	37	23	10	24	64	38	77	11.8	3.27	1.51	4.1	7.75	1.36	2.1	3.85	6.05	2.2	1.65	Selhurst Park (London)	1
309	1553958000	Mar 30 2019 - 3:00pm	complete	31530	Leicester City	AFC Bournemouth	Lee Mason	32	1.33	0.8	1.42	0.84	2	0	2	1	1	0	11,82	None	6	1	0	0	2	0	0	0	0	2	14	7	5	3	9	4	6	12	58	42	1.66	0.98	2.93	47	90	60	30	14	50	87	42	84	11.6	3.26	1.8	3.9	4.6	1.21	1.67	2.65	4.55	1.65	2.2	King Power Stadium (Leicester- Leicestershire)	1
310	1553958000	Mar 30 2019 - 3:00pm	complete	74543	Manchester United	Watford	Stuart Attwell	32	2.07	1.25	1.89	1.21	2	1	3	1	1	0	28,72	90	3	5	1	0	2	0	0	1	1	1	7	15	6	9	1	6	14	9	51	49	1.23	2.13	3.15	68	87	65	44	24	34	73	50	82	11.13	3.96	1.44	4.75	7.5	1.2	1.62	2.6	4.45	1.8	2	Old Trafford (Manchester)	1
311	1553967000	Mar 30 2019 - 5:30pm	complete	59988	West Ham United	Everton	Paul Tierney	32	1.69	1	1.63	1.05	0	2	2	2	0	2	None	5,33	4	9	1	0	1	0	0	1	1	0	4	14	2	10	2	4	7	14	49	51	0.77	1.99	2.93	55	71	58	42	16	36	61	47	81	10.67	3.83	2.55	3.4	2.9	1.25	1.77	2.95	5.4	1.62	2.25	London Stadium (London)	1
312	1554037500	Mar 31 2019 - 1:05pm	complete	32657	Cardiff City	Chelsea	Craig Pawson	32	1.25	1.67	1.05	1.58	1	2	3	0	0	0	46	84,90:1	2	7	2	0	3	0	0	2	1	2	8	13	4	4	4	9	8	14	28	72	1.03	1.47	3	42	81	68	29	19	43	68	50	80	9.88	3.35	9.25	4.9	1.39	1.24	1.77	2.95	5.3	2.05	1.71	Cardiff City Stadium (Cardiff (Caerdydd))	1
313	1554046200	Mar 31 2019 - 3:30pm	complete	53322	Liverpool	Tottenham Hotspur	Martin Atkinson	32	2.73	2.06	2.79	1.74	2	1	3	1	1	0	16,90	70	10	3	0	0	1	0	0	0	0	1	12	10	4	3	8	7	5	8	48	52	1.4	1.15	3.36	48	84	68	36	26	46	78	53	76	12.01	2.81	1.59	4.25	6.1	1.21	1.67	2.65	4.35	1.71	2.05	Anfield (Liverpool)	1
314	1554145200	Apr 01 2019 - 7:00pm	complete	59869	Arsenal	Newcastle United	Anthony Taylor	32	2.56	0.87	2.37	1.05	2	0	2	1	1	0	30,83	None	6	2	2	0	0	0	0	2	0	0	6	4	5	2	1	2	11	10	70	30	1.15	0.58	2.6	55	81	42	29	13	39	65	46	78	9.61	3.68	1.39	5.2	9	1.17	1.54	2.35	4.25	1.74	2.05	Emirates Stadium (London)	1
315	1554230700	Apr 02 2019 - 6:45pm	complete	17301	Watford	Fulham	Roger East	33	1.64	0.13	1.42	0.26	4	1	5	2	1	1	23,63,69,75	33	6	4	3	0	2	0	1	2	0	2	9	11	8	8	1	3	12	5	46	54	1.6	1.63	2.92	54	87	67	29	13	34	76	46	81	7.58	3.61	1.77	3.85	5.2	1.24	1.77	2.95	5.3	1.74	2.05	Vicarage Road (Watford)	1
316	1554230700	Apr 02 2019 - 6:45pm	complete	31302	Wolverhampton Wanderers	Manchester United	Mike Dean	33	1.6	1.81	1.79	1.58	2	1	3	2	1	1	25,77	13	3	5	1	0	3	1	0	1	2	2	8	12	3	5	5	7	5	11	49	51	0.97	1.48	2.99	52	91	51	35	13	45	77	49	86	9.71	4.49	4	3.55	2.05	1.33	2.05	3.65	8.25	1.87	1.91	Molineux Stadium (Wolverhampton- West Midlands)	1
317	1554317100	Apr 03 2019 - 6:45pm	complete	38593	Chelsea	Brighton & Hove Albion	Graham Scott	27	2.13	0.73	2.21	0.68	3	0	3	1	1	0	38,60,63	None	7	1	0	0	0	0	0	0	0	0	13	4	5	2	8	2	5	9	68	32	1.84	0.59	2.7	54	80	50	30	14	30	77	41	82	9.87	3	1.3	5.55	12.5	1.26	1.8	3.05	5.65	2.35	1.56	Stamford Bridge (London)	1
318	1554317100	Apr 03 2019 - 6:45pm	complete	59215	Tottenham Hotspur	Crystal Palace	Andre Marriner	31	2	1.33	2	1.53	2	0	2	0	0	0	55,80	None	8	2	1	0	0	0	1	0	0	0	20	6	11	2	9	4	8	5	65	35	2.71	0.71	2.99	62	76	59	45	17	14	80	57	81	9.43	3.34	1.5	4.45	6.95	1.2	1.62	2.6	4.5	1.74	2.05	Tottenham Hotspur Stadium (London)	1
319	1554317100	Apr 03 2019 - 6:45pm	complete	53559	Manchester City	Cardiff City	Jonathan Moss	33	2.81	0.57	2.84	0.74	2	0	2	2	2	0	6,44	None	17	4	0	0	3	0	0	0	2	1	26	4	12	2	14	2	3	7	78	22	3.07	0.51	3.28	53	79	69	46	26	35	69	50	82	11.63	2.52	1.07	15.75	31	1.05	1.22	1.57	2.3	2.4	1.54	Etihad Stadium (Manchester)	1
320	1554490800	Apr 05 2019 - 7:00pm	complete	31797	Southampton	Liverpool	Paul Tierney	33	1.2	2.19	1.21	2.32	1	3	4	2	1	1	9	36,80,86	7	5	2	0	4	0	0	2	0	4	8	13	2	6	6	7	8	7	33	67	0.95	1.69	2.46	62	81	56	20	4	20	62	50	73	11.26	3.78	9	5.3	1.38	1.21	1.67	2.65	4.55	2	1.8	St. Mary:s Stadium (Southampton- Hampshire)	1
321	1554559200	Apr 06 2019 - 2:00pm	complete	10446	AFC Bournemouth	Burnley	Martin Atkinson	33	1.63	0.81	1.53	0.89	1	3	4	3	1	2	4	18,20,56	3	6	2	0	3	0	1	1	2	1	8	8	3	4	5	4	12	16	59	41	1.04	1.21	3	53	79	60	41	19	31	63	47	80	8.25	4.51	2.1	3.5	3.65	1.25	1.8	3	5.75	1.67	2.15	Vitality Stadium (Bournemouth- Dorset)	1
322	1554559200	Apr 06 2019 - 2:00pm	complete	24126	Huddersfield Town	Leicester City	David Coote	33	0.5	1.31	0.47	1.32	1	4	5	1	0	1	52	24,48,79,84	8	5	3	0	0	0	2	1	0	0	8	17	5	10	3	7	13	11	44	56	1.16	2.05	2.38	50	66	44	16	7	35	78	31	77	10.06	3.44	5.55	4	1.65	1.31	1.95	3.5	5.55	2	1.77	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
323	1554559200	Apr 06 2019 - 2:00pm	complete	51926	Newcastle United	Crystal Palace	Stuart Attwell	33	1.38	1.25	1.32	1.53	0	1	1	0	0	0	None	81	9	4	1	0	2	0	0	1	1	1	15	4	6	2	9	2	12	13	53	47	1.83	0.67	2.82	54	85	56	25	16	22	66	46	75	10	3.56	2.55	3.15	3	1.42	2.25	4.3	7.5	1.95	1.83	St. James: Park (Newcastle upon Tyne)	1
324	1554642300	Apr 07 2019 - 1:05pm	complete	39400	Everton	Arsenal	Kevin Friend	33	1.56	1.36	1.79	1.32	1	0	1	1	1	0	10	None	9	6	1	0	4	0	0	1	2	2	16	6	7	3	9	3	8	9	42	58	1.97	0.98	3.27	72	87	62	44	21	58	71	51	86	9.89	3.17	3.05	3.5	2.3	1.21	1.69	2.7	4.8	1.57	2.35	Goodison Park (Liverpool)	1
325	1554750000	Apr 08 2019 - 7:00pm	complete	40537	Chelsea	West Ham United	Chris Kavanagh	33	2.19	1	2.21	1.11	2	0	2	1	1	0	24,90	None	7	4	2	0	1	0	0	2	1	0	14	6	8	3	6	3	8	7	54	46	1.94	0.96	2.55	42	84	42	26	10	29	68	47	80	9.79	2.93	1.28	6.25	12.75	1.16	1.54	2.35	3.75	2	1.77	Stamford Bridge (London)	1
326	1555095600	Apr 12 2019 - 7:00pm	complete	32108	Leicester City	Newcastle United	Chris Kavanagh	34	1.44	0.81	1.42	1.05	0	1	1	1	0	1	None	32	2	3	2	0	3	0	1	1	0	3	12	11	6	6	6	5	6	10	71	29	1.54	1.27	2.32	53	75	44	19	6	41	76	36	75	9.44	3.75	1.69	3.7	5.5	1.3	1.95	3.35	7	1.87	1.91	King Power Stadium (Leicester- Leicestershire)	1
327	1555155000	Apr 13 2019 - 11:30am	complete	58308	Tottenham Hotspur	Huddersfield Town	Lee Mason	34	2.07	0.38	2	0.37	4	0	4	2	2	0	24,27,87,90:3	None	4	2	2	0	2	0	0	2	1	1	14	7	6	2	8	5	10	12	70	30	1.69	0.83	2.78	49	71	49	36	13	29	72	47	76	9.78	2.89	1.24	6.3	15.5	1.2	1.65	2.6	5	2.2	1.65	Tottenham Hotspur Stadium (London)	1
328	1555164000	Apr 13 2019 - 2:00pm	complete	30460	Brighton & Hove Albion	AFC Bournemouth	Kevin Friend	34	1.47	0.75	1.21	0.84	0	5	5	1	0	1	None	33,55,74,82,90:2	4	1	2	1	4	0	0	3	1	3	5	12	2	8	3	4	10	6	50	50	0.87	1.59	2.73	42	77	52	33	13	39	74	39	85	10.24	3.06	2.25	3.25	3.5	1.34	2.05	3.75	7	1.83	1.95	The American Express Community Stadium (Falmer- East Sussex)	1
329	1555164000	Apr 13 2019 - 2:00pm	complete	21480	Burnley	Cardiff City	Mike Dean	34	1.25	0.53	1.21	0.74	2	0	2	1	1	0	31,90:2	None	8	4	2	0	4	0	2	0	1	3	14	10	8	3	6	7	7	10	46	54	1.85	1.17	2.77	52	81	55	33	13	35	67	48	74	8.25	3.36	1.87	3.6	4.55	1.33	2	3.6	8	1.87	1.87	Turf Moor (Burnley)	1
330	1555164000	Apr 13 2019 - 2:00pm	complete	24971	Fulham	Everton	Lee Probert	34	0.94	1.13	1.11	1.05	2	0	2	0	0	0	46,69	None	7	3	2	0	1	0	0	2	1	0	13	8	6	2	7	6	8	10	40	60	1.49	1.18	2.94	57	82	56	28	19	41	72	47	79	9.94	4.31	4.85	4.1	1.71	1.2	1.65	2.6	5	1.67	2.15	Craven Cottage (London)	1
331	1555164000	Apr 13 2019 - 2:00pm	complete	31708	Southampton	Wolverhampton Wanderers	Jonathan Moss	34	1.13	1.25	1.21	1.21	3	1	4	3	2	1	2,30,71	28	4	9	1	0	3	0	0	1	2	1	11	11	7	3	4	8	13	8	30	70	1.41	1.39	2.5	66	82	50	22	3	28	63	47	82	9.69	4.63	2.6	3.15	3.05	1.43	2.3	4.4	11	1.95	1.8	St. Mary:s Stadium (Southampton- Hampshire)	1
332	1555173000	Apr 13 2019 - 4:30pm	complete	74478	Manchester United	West Ham United	Graham Scott	34	2.13	0.94	1.89	1.11	2	1	3	1	1	0	19,80	49	3	11	1	0	1	0	1	0	0	1	10	11	5	5	5	6	14	5	42	58	1.37	1.56	2.86	59	88	59	33	14	32	74	46	79	10.08	3.55	1.42	4.95	7.75	1.16	1.51	2.3	4	1.69	2.1	Old Trafford (Manchester)	1
333	1555247100	Apr 14 2019 - 1:05pm	complete	25721	Crystal Palace	Manchester City	Martin Atkinson	34	1	2.13	1.05	2.32	1	3	4	1	0	1	81	15,63,90	2	9	0	0	0	0	0	0	0	0	6	14	4	7	2	7	5	11	27	73	0.85	2.05	2.18	32	72	36	17	4	17	68	50	85	15.57	3.11	10	5.6	1.33	1.17	1.56	2.4	3.75	1.83	1.95	Selhurst Park (London)	1
334	1555255800	Apr 14 2019 - 3:30pm	complete	53279	Liverpool	Chelsea	Michael Oliver	34	2.75	1.75	2.79	1.58	2	0	2	0	0	0	51,53	None	9	2	0	0	1	0	0	0	1	0	11	6	8	4	3	2	5	9	61	39	1.87	0.96	3.22	44	85	72	38	19	47	76	50	81	12.38	2.5	1.77	3.8	5.25	1.28	1.87	3.25	5.5	1.83	1.95	Anfield (Liverpool)	1
335	1555354800	Apr 15 2019 - 7:00pm	complete	20480	Watford	Arsenal	Craig Pawson	34	1.73	1.27	1.42	1.32	0	1	1	1	0	1	None	10	6	4	2	1	0	0	1	2	0	0	7	12	4	6	3	6	12	8	34	66	1.07	1.61	3.24	74	87	73	37	23	50	77	50	86	9	3.86	3.35	3.75	2.15	1.19	1.61	2.5	4.33	1.54	2.4	Vicarage Road (Watford)	1
336	1555440300	Apr 16 2019 - 6:45pm	complete	30226	Brighton & Hove Albion	Cardiff City	Andre Marriner	31	1.38	0.5	1.21	0.74	0	2	2	1	0	1	None	22,50	5	4	0	0	1	0	0	0	0	1	11	7	3	4	8	3	11	13	63	37	1.46	0.97	2.41	44	63	44	28	16	22	60	41	79	8.75	3.94	1.95	3.25	4.65	1.42	2.3	4.35	9	2	1.77	The American Express Community Stadium (Falmer- East Sussex)	1
337	1555759800	Apr 20 2019 - 11:30am	complete	54489	Manchester City	Tottenham Hotspur	Michael Oliver	35	2.82	1.94	2.84	1.74	1	0	1	1	1	0	5	None	4	4	1	0	2	0	0	1	0	2	11	8	5	5	6	3	11	11	60	40	1.58	1.06	3.56	59	91	77	39	24	47	80	56	82	13	2.52	1.25	6.55	11.25	1.12	1.42	2.05	3.4	1.77	2	Etihad Stadium (Manchester)	1
338	1555768800	Apr 20 2019 - 2:00pm	complete	10511	AFC Bournemouth	Fulham	David Coote	35	1.53	0.12	1.53	0.26	0	1	1	0	0	0	None	53	3	7	1	0	3	0	0	1	0	3	12	12	6	6	6	6	11	18	49	51	1.49	1.6	3.18	56	88	65	44	18	38	80	47	84	7.88	3.88	1.69	4.15	4.75	1.17	1.56	2.4	4.33	1.59	2.3	Vitality Stadium (Bournemouth- Dorset)	1
339	1555768800	Apr 20 2019 - 2:00pm	complete	23957	Huddersfield Town	Watford	Roger East	35	0.47	1.18	0.47	1.21	1	2	3	1	0	1	90:3	5,80	2	2	2	0	2	0	2	0	1	1	9	11	4	7	5	4	15	9	45	55	1.15	1.47	2.56	47	74	47	24	12	32	79	40	78	9.3	4	4.1	3.6	1.91	1.28	1.87	3.25	6	1.77	2	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
340	1555768800	Apr 20 2019 - 2:00pm	complete	59960	West Ham United	Leicester City	Lee Probert	35	1.59	1.41	1.63	1.32	2	2	4	1	1	0	37,82	67,90:2	6	8	2	0	0	0	0	2	0	0	9	11	4	6	5	5	8	9	49	51	1.34	1.51	3	62	76	53	38	18	38	74	38	78	11.41	3.12	3.1	3.45	2.3	1.21	1.69	2.7	5	1.56	2.35	London Stadium (London)	1
341	1555768800	Apr 20 2019 - 2:00pm	complete	31096	Wolverhampton Wanderers	Brighton & Hove Albion	Craig Pawson	35	1.69	0.69	1.79	0.68	0	0	0	0	0	0	None	None	14	1	0	0	1	0	0	0	1	0	20	5	6	0	14	5	0	8	68	32	2.45	0.5	2.78	50	88	51	22	10	35	79	36	87	8.88	3.69	1.77	3.4	5.6	1.44	2.35	4.55	10	2.15	1.67	Molineux Stadium (Wolverhampton- West Midlands)	1
342	1555777800	Apr 20 2019 - 4:30pm	complete	52191	Newcastle United	Southampton	Anthony Taylor	35	1.29	0.94	1.32	0.84	3	1	4	2	2	0	27,31,86	59	4	11	0	0	2	0	0	0	1	1	11	11	7	4	4	7	5	11	43	57	1.45	1.37	2.55	46	76	52	19	13	37	58	44	69	10.62	3.34	2.5	3.05	3.15	1.42	2.25	4.3	8.25	1.91	1.83	St. James: Park (Newcastle upon Tyne)	1
343	1555849800	Apr 21 2019 - 12:30pm	complete	39395	Everton	Manchester United	Paul Tierney	35	1.65	1.71	1.79	1.58	4	0	4	2	2	0	13,28,56,64	None	10	2	1	0	1	0	1	0	0	1	12	7	9	2	3	5	11	7	48	52	1.7	0.95	2.95	56	82	56	38	9	50	77	53	81	10.35	4	3.15	3.4	2.35	1.27	1.87	3.2	5.5	1.69	2.1	Goodison Park (Liverpool)	1
344	1555858800	Apr 21 2019 - 3:00pm	complete	59929	Arsenal	Crystal Palace	Jonathan Moss	35	2.59	1.35	2.37	1.53	2	3	5	1	0	1	47,77	17,61,69	8	3	4	0	1	0	1	3	0	1	11	13	6	8	5	5	15	12	72	28	1.83	1.67	3.03	56	88	47	38	21	24	68	51	85	9.88	3.82	1.48	4.65	6.55	1.17	1.54	2.35	4	1.67	2.15	Emirates Stadium (London)	1
345	1555858800	Apr 21 2019 - 3:00pm	complete	33082	Cardiff City	Liverpool	Martin Atkinson	35	1.18	2.24	1.05	2.32	0	2	2	0	0	0	None	57,81	5	10	1	0	1	0	0	1	0	1	5	15	3	7	2	8	6	5	23	77	0.71	1.89	2.68	50	76	56	24	15	27	65	49	76	10.77	3.29	15.5	7.25	1.19	1.16	1.53	2.3	4	2.2	1.65	Cardiff City Stadium (Cardiff (Caerdydd))	1
346	1555959600	Apr 22 2019 - 7:00pm	complete	40642	Chelsea	Burnley	Kevin Friend	35	2.24	0.94	2.21	0.89	2	2	4	4	2	2	12,14	8,24	10	1	2	0	1	0	0	2	1	0	18	6	10	4	8	2	9	4	76	24	2.7	0.84	2.8	47	77	50	38	21	30	62	49	80	9.53	3.47	1.23	6.6	15	1.19	1.61	2.5	4.33	2.3	1.59	Stamford Bridge (London)	1
347	1556045100	Apr 23 2019 - 6:45pm	complete	19170	Watford	Southampton	Mike Dean	31	1.63	0.88	1.42	0.84	1	1	2	1	0	1	90	1	3	4	5	0	2	0	2	3	2	0	8	8	5	5	3	3	10	14	62	38	1.26	1.23	2.79	55	79	61	27	16	39	64	52	78	9.57	3.88	2.3	3.45	3.35	1.26	1.83	3.1	5.5	1.67	2.15	Vicarage Road (Watford)	1
348	1556045100	Apr 23 2019 - 6:45pm	complete	56251	Tottenham Hotspur	Brighton & Hove Albion	Chris Kavanagh	33	2.13	0.71	2	0.68	1	0	1	0	0	0	88	None	6	3	1	0	2	0	0	1	1	1	18	6	6	2	12	4	7	13	78	22	2.33	0.69	2.7	52	73	58	34	6	24	85	47	78	8.97	3.01	1.29	5.7	13.5	1.22	1.71	2.8	5.15	2.2	1.62	Tottenham Hotspur Stadium (London)	1
349	1556131500	Apr 24 2019 - 6:45pm	complete	31436	Wolverhampton Wanderers	Arsenal	Stuart Attwell	31	1.65	1.38	1.79	1.32	3	1	4	3	3	0	28,37,45:2	80	5	5	2	0	3	0	1	1	3	0	9	6	4	2	5	4	12	9	29	71	1.01	1.03	3.02	61	85	52	34	22	49	74	44	87	9.96	3.57	2.85	3.45	2.6	1.3	1.95	3.35	6	1.74	2.05	Molineux Stadium (Wolverhampton- West Midlands)	1
350	1556132400	Apr 24 2019 - 7:00pm	complete	74431	Manchester United	Manchester City	Andre Marriner	31	2.19	2.19	1.89	2.32	0	2	2	0	0	0	None	54,66	1	1	2	0	2	0	1	1	2	0	8	9	2	6	6	3	10	10	36	64	0.93	1.36	2.91	60	85	66	35	16	31	78	52	82	14.32	3.26	6.75	4.7	1.5	1.19	1.62	2.55	4.5	1.71	2.05	Old Trafford (Manchester)	1
351	1556305200	Apr 26 2019 - 7:00pm	complete	53249	Liverpool	Huddersfield Town	Kevin Friend	36	2.76	0.35	2.79	0.37	5	0	5	3	3	0	1,23,45:1,66,83	None	4	4	0	0	0	0	0	0	0	0	20	4	8	2	12	2	5	14	70	30	2.11	0.62	3.18	41	79	56	41	24	47	74	43	76	11.47	2.59	1.07	14.5	42.75	1.07	1.26	1.67	2.5	2.65	1.45	Anfield (Liverpool)	1
352	1556364600	Apr 27 2019 - 11:30am	complete	60043	Tottenham Hotspur	West Ham United	Anthony Taylor	36	2.18	0.88	2	1.11	0	1	1	0	0	0	None	67	2	7	0	0	2	0	0	0	1	1	9	13	5	8	4	5	3	8	63	37	1.39	1.74	2.56	44	77	47	30	3	24	76	52	77	9.65	3.06	1.42	5.15	7.5	1.17	1.56	2.4	4	1.77	2	Tottenham Hotspur Stadium (London)	1
353	1556373600	Apr 27 2019 - 2:00pm	complete	25789	Crystal Palace	Everton	Lee Mason	36	0.94	1.06	1.05	1.05	0	0	0	0	0	0	None	None	5	10	2	0	0	0	1	1	0	0	6	12	0	4	6	8	9	15	36	64	0.69	1.68	2.33	41	68	41	24	6	15	56	53	83	11.94	3.47	2.75	3.35	2.7	1.29	1.91	3.3	6	1.71	2.1	Selhurst Park (London)	1
354	1556373600	Apr 27 2019 - 2:00pm	complete	23822	Fulham	Cardiff City	Chris Kavanagh	36	1.06	0.65	1.11	0.74	1	0	1	0	0	0	79	None	10	3	0	0	0	0	0	0	0	0	8	11	3	9	5	2	10	8	73	27	1.06	1.67	2.77	47	83	47	24	21	33	71	48	79	9.12	3.94	2.4	3.6	3	1.24	1.77	2.95	5	1.62	2.2	Craven Cottage (London)	1
355	1556373600	Apr 27 2019 - 2:00pm	complete	31310	Southampton	AFC Bournemouth	Graham Scott	36	1.24	0.88	1.21	0.84	3	3	6	3	1	2	12,55,67	20,32,86	9	3	2	0	1	0	2	0	1	0	17	10	8	6	9	4	8	9	44	56	2.11	1.32	3.12	53	94	68	38	15	41	77	49	82	10.36	3.76	1.95	3.75	4.05	1.22	1.71	2.8	4.5	1.65	2.2	St. Mary:s Stadium (Southampton- Hampshire)	1
356	1556373600	Apr 27 2019 - 2:00pm	complete	20323	Watford	Wolverhampton Wanderers	Simon Hooper	36	1.59	1.18	1.42	1.21	1	2	3	1	0	1	49	41,77	4	5	3	0	2	0	0	3	0	2	7	8	2	5	5	3	10	11	56	44	1	1.23	2.5	59	79	50	18	6	29	68	43	86	9.42	4.42	2.65	3.25	2.85	1.37	2.15	3.9	9	1.87	1.91	Vicarage Road (Watford)	1
357	1556382600	Apr 27 2019 - 4:30pm	complete	30587	Brighton & Hove Albion	Newcastle United	Mike Dean	36	1.29	0.94	1.21	1.05	1	1	2	1	0	1	75	18	7	4	2	0	3	0	1	1	2	1	8	5	3	2	5	3	7	10	49	51	1.19	0.66	2.21	47	62	38	24	9	30	65	34	73	8.29	3.7	2.25	3.2	3.6	1.44	2.35	4.55	10	2	1.77	The American Express Community Stadium (Falmer- East Sussex)	1
358	1556449200	Apr 28 2019 - 11:00am	complete	32037	Leicester City	Arsenal	Michael Oliver	36	1.35	1.29	1.42	1.32	3	0	3	0	0	0	59,86,90:5	None	8	6	3	0	2	1	1	2	2	1	19	5	13	2	6	3	13	13	67	33	2.68	0.74	2.94	68	79	59	36	18	53	88	43	83	9.94	3.88	2.7	3.55	2.6	1.19	1.61	2.5	4.5	1.51	2.5	King Power Stadium (Leicester- Leicestershire)	1
359	1556456700	Apr 28 2019 - 1:05pm	complete	21605	Burnley	Manchester City	Paul Tierney	36	1.35	2.24	1.21	2.32	0	1	1	0	0	0	None	63	0	6	1	0	1	0	0	1	0	1	3	12	0	8	3	4	5	7	30	70	0.39	1.87	2.77	47	88	53	30	6	38	79	46	77	12.23	3.24	17.5	8.25	1.17	1.14	1.47	2.2	3.5	2.25	1.61	Turf Moor (Burnley)	1
360	1556465400	Apr 28 2019 - 3:30pm	complete	74526	Manchester United	Chelsea	Martin Atkinson	36	2.06	1.65	1.89	1.58	1	1	2	2	1	1	11	43	6	6	3	0	2	0	1	2	0	2	8	11	6	4	2	7	9	14	51	49	1.34	1.43	3.03	59	88	74	33	15	35	65	54	83	10.76	3.18	2.65	3.35	2.8	1.29	1.91	3.3	6	1.71	2.1	Old Trafford (Manchester)	1
361	1556910000	May 03 2019 - 7:00pm	complete	39303	Everton	Burnley	Chris Kavanagh	37	1.72	0.94	1.79	0.89	2	0	2	2	2	0	17,20	None	8	1	0	0	2	0	0	0	1	1	16	6	7	2	9	4	8	9	60	40	1.99	0.87	2.89	50	75	53	42	14	42	61	46	75	9.45	3.66	1.69	3.95	5.65	1.25	1.8	3	5.5	1.77	2	Goodison Park (Liverpool)	1
362	1556969400	May 04 2019 - 11:30am	complete	10630	AFC Bournemouth	Tottenham Hotspur	Craig Pawson	37	1.44	1.83	1.53	1.74	1	0	1	0	0	0	90:1	None	10	6	1	0	5	2	0	1	4	3	14	9	7	6	7	3	11	12	53	47	1.93	1.31	3.03	56	83	64	28	14	33	70	53	84	9.56	3.84	5.5	4.45	1.61	1.16	1.54	2.35	3.8	1.62	2.25	Vitality Stadium (Bournemouth- Dorset)	1
363	1556978400	May 04 2019 - 2:00pm	complete	59961	West Ham United	Southampton	Stuart Attwell	37	1.56	0.89	1.63	0.84	3	0	3	1	1	0	16,69,72	None	2	7	1	0	1	0	0	1	0	1	13	5	7	2	6	3	2	11	56	44	1.68	0.8	2.95	56	78	53	42	17	44	67	48	77	10.61	3.33	2.3	3.55	3.15	1.21	1.69	2.7	4.5	1.57	2.35	London Stadium (London)	1
364	1556978400	May 04 2019 - 2:00pm	complete	30456	Wolverhampton Wanderers	Fulham	Jonathan Moss	37	1.72	0.28	1.79	0.26	1	0	1	0	0	0	75	None	7	1	1	0	3	0	1	0	2	1	16	6	7	3	9	3	10	15	39	61	1.89	0.79	2.89	47	86	50	33	17	39	72	42	85	8.89	3.61	1.5	4.35	7.25	1.25	1.8	3	5.5	1.95	1.83	Molineux Stadium (Wolverhampton- West Midlands)	1
365	1556987400	May 04 2019 - 4:30pm	complete	32133	Cardiff City	Crystal Palace	Michael Oliver	37	1.11	1.44	1.05	1.53	2	3	5	3	1	2	31,90	28,39,70	10	5	0	0	0	0	0	0	0	0	15	15	9	8	6	7	14	11	39	61	1.93	1.89	3.09	53	81	59	36	28	22	64	50	81	8.61	3.77	2.55	3.6	2.75	1.27	1.87	3.2	5	1.71	2.1	Cardiff City Stadium (Cardiff (Caerdydd))	1
366	1556995500	May 04 2019 - 6:45pm	complete	52206	Newcastle United	Liverpool	Andre Marriner	37	1.39	2.28	1.32	2.32	2	3	5	3	1	2	20,54	13,28,86	2	3	1	0	1	0	1	0	0	1	11	11	8	5	3	6	10	4	30	70	1.46	1.36	2.36	47	78	50	14	3	25	61	45	73	12.39	2.83	9	5.15	1.37	1.24	1.77	2.95	4.65	2.1	1.69	St. James: Park (Newcastle upon Tyne)	1
367	1557061200	May 05 2019 - 1:00pm	complete	40650	Chelsea	Watford	Paul Tierney	37	2.17	1.28	2.21	1.21	3	0	3	0	0	0	48,51,75	None	6	6	0	0	1	0	0	0	0	1	16	14	10	4	6	10	6	12	58	42	2.2	1.54	2.84	53	86	50	33	17	28	73	50	82	10.77	3.33	1.3	6.05	10.5	1.16	1.51	2.3	3.74	1.87	1.91	Stamford Bridge (London)	1
368	1557061200	May 05 2019 - 1:00pm	complete	24263	Huddersfield Town	Manchester United	Lee Mason	37	0.44	1.61	0.47	1.58	1	1	2	1	0	1	60	8	3	7	1	0	1	0	0	1	1	0	6	17	4	8	2	9	10	10	35	65	0.9	2.05	2.73	50	75	58	31	9	47	89	46	78	8.84	4.34	10.75	5.9	1.3	1.19	1.61	2.5	5	2.1	1.69	John Smith:s Stadium (Huddersfield- West Yorkshire)	1
369	1557070200	May 05 2019 - 3:30pm	complete	59965	Arsenal	Brighton & Hove Albion	Anthony Taylor	37	2.44	0.67	2.37	0.68	1	1	2	1	1	0	9	61	16	3	5	0	2	0	1	4	1	1	14	10	9	6	5	4	9	14	70	30	2.25	1.34	2.84	53	83	50	31	14	31	78	41	84	9.56	3.72	1.29	5.8	12.25	1.2	1.62	2.6	4.25	2.1	1.69	Emirates Stadium (London)	1
370	1557169200	May 06 2019 - 7:00pm	complete	54506	Manchester City	Leicester City	Mike Dean	37	2.83	1.39	2.84	1.32	1	0	1	0	0	0	70	None	11	0	3	0	2	0	2	1	1	1	16	5	6	3	10	2	12	5	61	39	2.09	0.73	3.39	64	84	67	45	23	42	84	43	82	13.61	2.34	1.19	7.75	14.5	1.09	1.34	1.87	2.75	1.8	1.95	Etihad Stadium (Manchester)	1
371	1557669600	May 12 2019 - 2:00pm	complete	30662	Brighton & Hove Albion	Manchester City	Michael Oliver	38	1.28	2.28	1.21	2.32	1	4	5	3	1	2	27	28,38,63,72	2	6	0	0	0	0	0	0	0	0	6	13	3	10	3	3	12	8	23	77	0.68	2.16	2.39	42	70	42	25	9	25	70	38	83	12.56	3.5	15.25	7.5	1.18	1.14	1.47	2.15	4.33	2.1	1.71	The American Express Community Stadium (Falmer- East Sussex)	1
372	1557669600	May 12 2019 - 2:00pm	complete	21461	Burnley	Arsenal	Mike Dean	38	1.28	1.22	1.21	1.32	1	3	4	0	0	0	65	52,63,90:4	4	5	5	0	1	0	3	2	0	1	12	11	6	7	6	4	11	3	39	61	1.57	1.63	3.17	67	86	64	42	17	53	81	45	78	8.61	3.5	3.15	3.75	2.2	1.17	1.54	2.35	5	1.49	2.55	Turf Moor (Burnley)	1
373	1557669600	May 12 2019 - 2:00pm	complete	25433	Crystal Palace	AFC Bournemouth	Roger East	38	0.94	0.89	1.05	0.84	5	3	8	4	3	1	24,32,37,65,80	45,56,73	4	4	3	0	0	0	0	3	0	0	16	15	9	9	7	6	11	8	45	55	1.97	2.07	2.7	33	81	48	31	14	25	73	50	87	12.06	2.66	1.87	4.05	3.85	1.16	1.51	2.3	3.9	1.5	2.5	Selhurst Park (London)	1
374	1557669600	May 12 2019 - 2:00pm	complete	24979	Fulham	Newcastle United	Kevin Friend	38	1.17	0.94	1.11	1.05	0	4	4	2	0	2	None	9,11,61,90	5	5	1	0	0	0	0	1	0	0	11	13	3	7	8	6	6	8	68	32	1.5	1.47	2.53	53	78	42	20	14	39	73	41	75	8.95	3.83	2.6	3.5	2.65	1.22	1.69	2.75	6	1.57	2.35	Craven Cottage (London)	1
375	1557669600	May 12 2019 - 2:00pm	complete	32140	Leicester City	Chelsea	Anthony Taylor	38	1.44	1.61	1.42	1.58	0	0	0	0	0	0	None	None	4	5	0	0	1	0	0	0	1	0	8	12	4	5	4	7	9	8	46	54	1.16	1.5	2.64	47	84	59	20	6	42	72	45	81	10.78	3.62	2.45	3.6	2.8	1.21	1.67	2.65	5.5	1.56	2.4	King Power Stadium (Leicester- Leicestershire)	1
376	1557669600	May 12 2019 - 2:00pm	complete	53331	Liverpool	Wolverhampton Wanderers	Martin Atkinson	38	2.78	1.28	2.79	1.21	2	0	2	1	1	0	17,81	None	4	1	0	0	2	0	0	0	0	2	11	7	6	3	5	4	3	11	59	41	1.4	0.92	2.92	50	81	53	34	17	39	75	46	84	11.89	3	1.32	5.8	9	1.18	1.57	2.45	4.75	1.95	1.83	Anfield (Liverpool)	1
377	1557669600	May 12 2019 - 2:00pm	complete	74457	Manchester United	Cardiff City	Jonathan Moss	38	2	0.61	1.89	0.74	0	2	2	1	0	1	None	23,54	11	2	3	0	3	0	1	2	1	2	21	11	11	5	10	6	9	6	73	27	2.67	1.31	2.72	56	78	56	31	20	25	64	52	80	9.77	3.5	1.28	6.2	10	1.12	1.41	2	3.6	1.74	2.05	Old Trafford (Manchester)	1
378	1557669600	May 12 2019 - 2:00pm	complete	30367	Southampton	Huddersfield Town	Lee Probert	38	1.22	0.33	1.21	0.37	1	1	2	1	1	0	41	55	4	3	0	0	1	0	0	0	0	1	7	8	4	4	3	4	8	6	53	47	1.15	1.04	3.06	59	84	61	39	17	45	67	45	76	9.5	4	1.41	4.9	7.5	1.19	1.61	2.5	4.75	1.8	2	St. Mary:s Stadium (Southampton- Hampshire)	1
379	1557669600	May 12 2019 - 2:00pm	complete	60124	Tottenham Hotspur	Everton	Andre Marriner	38	2.06	1.06	2	1.05	2	2	4	1	1	0	3,75	69,72	7	4	0	0	2	0	0	0	0	2	9	13	4	10	5	3	10	13	55	45	1.23	1.8	2.53	44	64	50	34	9	23	61	53	77	10.39	3.23	2.1	3.5	3.55	1.22	1.71	2.8	6	1.59	2.3	Tottenham Hotspur Stadium (London)	1
380	1557669600	May 12 2019 - 2:00pm	complete	20067	Watford	West Ham United	Chris Kavanagh	38	1.5	1	1.42	1.11	1	4	5	2	0	2	46	15,39,71,78	7	2	1	1	0	0	0	2	0	0	11	15	9	10	2	5	10	10	48	52	1.81	2.01	2.56	50	83	53	17	6	28	72	47	81	9	4.11	2.2	3.7	3.1	1.16	1.54	2.35	4	1.48	2.55	Vicarage Road (Watford)	1
\.


                                                                                                                                                   2872.dat                                                                                            0000600 0004000 0002000 00000035445 13774640454 0014305 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Kimberly Lee	2016-01-25	2021-02-24	641712
2	2	Jamie Luna	2016-08-14	2023-04-14	511440
3	3	Nancy Wilson	2017-05-22	2022-07-12	279546
4	4	Vanessa Mccarthy	2017-12-06	2023-12-04	930895
5	5	Alexander Solis	2018-11-17	2021-09-08	380491
6	6	Derek Jackson	2017-01-30	2022-11-27	944996
7	7	Michelle Anderson	2016-03-24	2023-07-30	921125
8	8	Patrick George	2016-10-08	2022-11-29	793131
9	9	Jill Williams	2017-11-16	2023-07-12	754149
10	10	Christopher Bush	2018-03-20	2021-03-10	221632
11	11	David Khan	2018-09-26	2022-06-19	389452
12	12	Donna Smith	2016-04-28	2021-03-30	948245
13	13	Derek Lee	2016-12-23	2021-02-20	114511
14	14	Joe Williams	2018-08-11	2022-11-07	34397
15	15	Timothy Gates	2018-06-18	2023-04-11	241841
16	16	Ethan Hayden	2017-11-22	2021-01-19	903192
17	17	Mr. Ryan Evans DDS	2018-02-15	2023-09-30	414250
18	18	Michael Salinas	2018-03-17	2023-02-16	489421
19	19	Melissa George	2018-04-28	2021-12-12	177512
20	20	Kathy Randolph	2017-12-19	2021-05-14	61752
21	21	Valerie Silva	2017-11-06	2022-12-15	885611
22	22	Jennifer Rivera	2018-05-23	2022-05-21	591459
23	23	Tracey Chavez	2016-08-18	2021-06-29	864376
24	24	Amy Larson	2017-10-09	2022-12-22	18085
25	25	Lisa Ortiz	2017-09-04	2021-08-22	936142
26	26	Katherine Butler	2017-10-15	2022-11-15	682055
27	27	Joseph Smith	2018-02-01	2023-09-28	771474
28	28	Andrew Caldwell	2017-09-24	2021-12-01	504861
29	29	Mr. Bobby Hall DVM	2018-03-02	2023-09-16	698812
30	30	Jennifer Taylor	2016-08-18	2022-01-19	216297
31	31	David Patrick	2018-01-04	2023-02-16	672089
32	32	Elizabeth Garcia	2018-09-05	2022-07-05	448756
33	33	Patrick Wright	2017-11-17	2022-06-26	794119
34	34	James Guzman	2017-06-17	2023-10-17	673724
35	35	Stacey Shepherd	2016-07-07	2023-07-15	577295
36	36	Brooke Rice	2016-11-17	2023-05-19	596683
37	37	Sarah Chandler	2018-03-29	2021-06-29	207986
38	38	Antonio Levy	2016-10-03	2023-06-12	79821
39	39	Michael Charles	2017-03-25	2021-05-26	622730
40	40	Ian Davis	2016-08-09	2023-10-28	107946
41	41	Lauren Smith	2016-06-05	2022-06-11	451502
42	42	Anthony Bush	2018-11-19	2022-09-17	480488
43	43	Michael Perez	2016-01-04	2023-10-29	463326
44	44	Haley Hunt	2016-11-03	2023-11-28	272638
45	45	Michelle Richards	2016-08-17	2023-09-01	615681
46	46	April Pope DDS	2017-07-06	2022-03-23	643793
47	47	Olivia Kramer	2016-03-30	2022-06-11	58599
48	48	Denise Schultz	2017-03-13	2022-09-15	477024
49	49	Beth Kennedy	2017-11-14	2021-06-17	723475
50	50	Maria Pierce	2016-07-10	2021-07-15	123824
51	51	Michelle Moss	2017-02-26	2022-03-07	130842
52	52	Richard Tucker	2017-06-22	2022-05-07	492054
53	53	Bruce Carr	2018-08-19	2023-03-17	878018
54	54	Patrick Stein	2018-12-06	2021-10-21	262464
55	55	Donna Serrano	2016-12-17	2023-11-22	770460
56	56	Sharon Ruiz	2016-11-27	2023-06-30	979684
57	57	Olivia Kline	2018-05-31	2021-12-08	221903
58	58	Charles Green	2017-05-23	2023-12-22	355709
59	59	Daniel Strickland	2017-03-02	2021-11-08	577251
60	60	Ian Bean	2016-09-21	2021-06-22	574343
61	61	Pamela Smith	2018-04-05	2023-09-02	467869
62	62	Dawn Webb	2016-06-07	2023-05-20	155343
63	63	Kyle Jackson	2016-05-11	2021-12-30	362831
64	64	Margaret Dunlap	2017-12-15	2023-11-21	723363
65	65	Stephen Smith	2018-10-10	2022-09-12	689707
66	66	Donna Smith	2017-09-06	2021-09-07	481607
67	67	Kathryn Wright	2016-11-09	2023-03-15	570935
68	68	Linda Alexander	2018-04-25	2022-08-25	934726
69	69	Jonathan Guzman	2018-05-21	2021-05-28	871844
70	70	Gregory Peterson	2018-06-25	2022-02-26	176041
71	71	Katherine Coleman	2017-03-22	2023-01-28	81684
72	72	Carlos Patel	2017-11-29	2023-08-08	331538
73	73	Kathleen Shaffer	2017-05-01	2021-07-09	335218
74	74	Corey Wilkins	2017-09-30	2023-10-30	979007
75	75	Hannah Lewis	2018-07-22	2023-11-23	378046
76	76	Adam Jones	2016-05-23	2023-03-02	937928
77	77	Kevin Mullins	2018-08-13	2022-04-10	532372
78	78	Maureen Mccoy	2016-09-26	2023-03-10	327723
79	79	Timothy Guzman	2017-06-28	2021-07-16	319898
80	80	Karen Fuller	2017-07-23	2022-02-25	230376
81	81	Patricia Ramirez	2016-07-02	2023-11-28	591617
82	82	Jason Murray	2016-06-08	2022-05-11	994401
83	83	Veronica Bray	2017-05-30	2022-08-03	391446
84	84	Leroy Smith	2018-07-04	2023-03-13	959816
85	85	Briana Hart	2017-03-10	2023-01-03	985304
86	86	Kristine Weaver	2018-11-17	2023-05-22	136283
87	87	Michele Schmitt	2018-06-11	2022-12-01	155052
88	88	Daniel Ford	2016-07-23	2022-02-21	881401
89	89	Natalie Graham	2016-06-16	2023-04-20	620182
90	90	Tracy White	2017-06-15	2022-01-07	611537
91	91	Emily Stephens	2016-04-15	2023-12-26	105926
92	92	Daniel Wade	2018-05-26	2021-11-28	740583
93	93	Dawn Smith	2017-09-30	2022-02-15	975301
94	94	Melanie Jones	2018-03-28	2021-11-02	238378
95	95	Timothy Smith	2018-09-11	2023-09-06	386261
96	96	Pamela Parks	2016-01-27	2022-06-24	197903
97	97	Patricia Anderson	2017-06-14	2023-07-12	232192
98	98	Jason Rodriguez	2017-07-08	2022-04-07	434172
99	99	Leroy Caldwell PhD	2016-05-09	2022-09-11	623818
100	100	Mary Barnett MD	2017-07-22	2021-07-13	752709
101	101	Angela Jackson	2017-08-16	2022-08-19	468654
102	102	James Davis	2016-12-19	2022-08-20	100137
103	103	Barry Nguyen	2016-05-12	2022-03-25	903234
104	104	Melissa Barnett	2016-10-21	2021-06-11	980438
105	105	Nicole Bennett	2018-12-02	2023-12-10	210712
106	106	Lori Garcia	2018-11-19	2023-03-18	711078
107	107	Richard Gallegos	2017-11-13	2022-07-10	867621
108	108	Amanda Arroyo	2018-10-31	2023-07-17	502555
109	109	Shannon Barnes	2017-08-28	2022-08-31	442456
110	110	Jeremiah Good	2018-03-13	2022-02-26	344309
111	111	Michelle Olson	2016-08-13	2022-06-28	465450
112	112	Maria Jefferson	2017-11-21	2022-02-06	356208
113	113	Joel Williams	2017-05-11	2023-08-20	992396
114	114	Bobby Harvey MD	2016-09-14	2023-04-21	962500
115	115	William Howe	2018-03-23	2021-08-27	368776
116	116	Carol Delacruz	2017-09-05	2022-09-24	325302
117	117	Andrew Bell	2016-10-19	2023-11-21	801696
118	118	Jamie West	2016-10-03	2023-06-25	656580
119	119	Steve Molina	2016-08-25	2023-10-06	856741
120	120	Grace Williams	2018-09-14	2021-08-13	795486
121	121	Robert Mccoy	2017-12-24	2021-07-27	955766
122	122	Amy Ayala	2018-12-09	2022-07-28	124979
123	123	Theresa Cruz	2016-11-10	2021-07-26	998154
124	124	Amanda Graham	2017-08-14	2021-06-01	709226
125	125	Dawn Lopez	2018-10-19	2023-10-03	823658
126	126	Eugene Johnson	2017-09-06	2021-04-17	329034
127	127	Karen Perez	2018-12-01	2022-02-21	497231
128	128	Leslie Huff	2017-12-08	2022-01-25	453629
129	129	Ashley Gibson	2018-08-24	2021-10-23	804577
130	130	Donald Garcia	2016-01-19	2022-09-23	288228
131	131	Jason Wolfe	2018-10-08	2022-01-25	284004
132	132	Susan Mcfarland	2018-01-23	2022-09-24	777948
133	133	Justin Francis	2017-11-30	2021-06-07	751395
134	134	Justin Jackson	2018-08-14	2021-12-10	468756
135	135	Andrea Johnson	2018-02-18	2021-02-14	581599
136	136	Jennifer Franklin	2016-07-13	2022-07-03	948948
137	137	Robert Brown	2017-10-07	2021-12-16	492111
138	138	Dr. Mark Russell	2016-03-26	2021-03-23	779171
139	139	Cheyenne Watson	2017-02-26	2022-03-08	551456
140	140	Alexander Knox	2017-04-10	2022-10-24	467702
141	141	Gregory Roberson	2016-11-04	2023-11-03	205540
142	142	Linda Aguirre	2017-02-18	2021-02-11	655809
143	143	Alison Stewart	2017-08-11	2023-05-11	995541
144	144	Chelsea French	2018-03-22	2021-06-21	592953
145	145	Stephanie Lane	2018-09-21	2023-01-01	690442
146	146	Sean Dillon	2016-08-22	2022-04-03	190435
147	147	Tina Martinez	2016-07-20	2022-07-25	707141
148	148	Ronald Cooper	2018-05-03	2022-12-18	608191
149	149	Joseph Hurley	2018-02-17	2021-05-15	456201
150	150	Travis Collins	2018-12-16	2021-09-08	699393
151	151	Stanley Buchanan	2017-11-04	2021-12-31	82004
152	152	Victoria Buchanan	2016-02-03	2022-10-27	836311
153	153	Daniel Espinoza	2016-01-17	2022-01-07	636080
154	154	Beth Ward	2017-04-25	2021-08-20	419641
155	155	Mr. Randy Thomas	2017-08-09	2022-07-11	405644
156	156	Natalie Graves	2016-09-19	2022-05-04	270795
157	157	Edward Olsen	2017-01-17	2022-01-15	487993
158	158	Charlene Gallegos	2016-09-18	2022-02-23	133398
159	159	Robert Bennett	2017-10-07	2021-08-03	273921
160	160	Michelle Peters	2017-10-10	2023-10-25	950887
161	161	Amanda Dickerson	2016-04-26	2023-01-18	199935
162	162	Ashley Burgess	2016-06-26	2021-10-25	950736
163	163	Laura Moran	2018-09-15	2023-10-01	189081
164	164	Mathew Barry	2017-05-18	2023-12-16	579559
165	165	Richard Tran	2018-01-23	2022-09-23	99163
166	166	Jason Young	2018-02-25	2023-05-22	932050
167	167	Randall Morales	2016-06-29	2021-09-08	519428
168	168	Donald Aguilar	2018-12-20	2021-10-24	164459
169	169	Jennifer Dean	2016-11-28	2023-06-16	737707
170	170	Chelsea Watson	2016-01-03	2021-04-19	171288
171	171	Jesse Bishop	2017-06-21	2021-05-27	439561
172	172	Michael Maldonado	2018-07-17	2022-08-05	324584
173	173	Peter Wilcox	2015-12-29	2021-05-22	613079
174	174	Jason Fisher	2016-03-04	2022-08-07	895294
175	175	William Schultz	2018-12-05	2023-03-09	713907
176	176	Tina Nelson	2018-06-17	2021-12-23	553072
177	177	Michael Weber	2018-11-05	2022-06-30	385264
178	178	James Martinez	2016-08-03	2023-08-26	946934
179	179	Ralph Rodriguez	2017-02-02	2023-02-10	199782
180	180	Matthew Weaver	2017-03-12	2022-06-18	87195
181	181	Jessica Rogers	2016-12-04	2023-09-05	396857
182	182	Matthew White	2017-06-24	2021-07-30	162723
183	183	Michael Jones	2018-07-04	2021-03-21	290275
184	184	Alexandra Love	2016-07-29	2023-03-10	158612
185	185	Yvonne Lewis	2018-07-11	2021-11-03	138836
186	186	Karen Frank	2018-12-17	2023-07-18	680478
187	187	Latasha Peterson	2018-08-12	2021-10-10	320797
188	188	Dwayne Johnson	2016-08-23	2021-01-09	181272
189	189	Whitney Diaz	2016-08-13	2022-07-12	529948
190	190	Cathy Adams	2018-08-02	2022-08-30	666199
191	191	Benjamin Thomas	2017-09-29	2021-12-04	935707
192	192	Melissa Porter	2016-10-21	2021-11-01	481914
193	193	Sharon Galloway	2018-10-03	2021-01-31	303324
194	194	Mario Lee	2016-02-24	2022-10-20	56634
195	195	David Lopez	2016-09-26	2023-11-30	455245
196	196	Taylor Guerrero	2018-07-30	2023-08-19	64086
197	197	Charles Orozco	2016-01-02	2023-01-17	466051
198	198	Jennifer Krueger	2018-10-06	2021-04-08	703266
199	199	Charles Hardy	2017-04-04	2023-12-27	551884
200	200	Matthew Newton	2018-08-16	2022-03-22	289857
201	201	Stephen Shaw MD	2016-07-30	2023-07-30	697378
202	202	Nicole Smith	2016-07-22	2021-10-13	665507
203	203	Daniel Blankenship	2016-11-21	2022-12-27	361374
204	204	Mr. Alejandro Kerr	2016-09-13	2023-09-09	782549
205	205	Gregory Horn	2016-10-25	2021-03-02	224165
206	206	Michael Montgomery	2017-11-29	2023-03-14	378942
207	207	David Cooper	2018-05-11	2021-09-26	669605
208	208	Wendy Williams	2017-03-06	2023-01-17	45732
209	209	Eric Espinoza	2016-12-10	2021-07-13	951360
210	210	David Simmons	2017-01-20	2021-12-07	195406
211	211	Stephanie Fleming	2018-10-19	2020-12-30	157127
212	212	Emily Roberson	2017-12-03	2021-10-31	948439
213	213	Debra Atkins	2017-06-23	2021-09-19	723527
214	214	Kenneth Franklin	2017-03-22	2023-05-05	633463
215	215	Brian Mcdonald	2018-09-24	2021-12-02	264463
216	216	William Hopkins	2016-09-11	2022-10-01	630795
217	217	Kathleen Mcdaniel	2018-08-12	2021-01-04	361984
218	218	Luke Romero	2017-09-11	2023-10-04	367596
219	219	Jessica Moon	2017-10-02	2023-03-12	415054
220	220	Jeremy Washington	2016-05-05	2021-07-11	241568
221	221	Chase Lambert	2016-09-29	2022-12-05	654650
222	222	Michael Wall	2016-01-27	2023-05-16	162957
223	223	Adam Rogers	2016-03-22	2022-08-28	434838
224	224	Carlos Hayes	2016-09-21	2023-09-10	810145
225	225	Amy Martinez	2016-03-16	2021-07-14	360493
226	226	Mark Peterson	2018-06-07	2021-01-26	44763
227	227	Angela Petty	2018-09-03	2023-12-13	637994
228	228	Amy Malone	2017-03-16	2022-08-27	606233
229	229	James Jackson	2018-11-03	2022-11-11	314735
230	230	Cynthia Taylor	2018-03-12	2022-11-26	335953
231	231	Ronald Jenkins	2018-05-25	2021-09-04	64849
232	232	Sandra Howard	2018-10-08	2023-01-31	706066
233	233	Melanie Hammond	2017-12-23	2021-01-02	896836
234	234	Jared Young	2016-05-17	2023-10-22	958485
235	235	Tammy Phillips	2017-09-07	2021-04-14	91881
236	236	Sara Hicks	2016-10-17	2021-10-22	852152
237	237	Justin Thomas	2016-07-05	2021-11-11	448295
238	238	Ricky Herman	2017-02-18	2021-05-29	782455
239	239	Ryan Bailey	2018-12-21	2022-12-25	583283
240	240	Jennifer Phillips	2018-11-30	2022-10-08	748839
241	241	Tara Miller	2016-11-20	2023-12-19	89905
242	242	Joseph Barber	2016-09-19	2021-08-08	634278
243	243	Michelle Marshall	2016-02-24	2021-03-04	636484
244	244	Willie Robinson	2016-10-06	2023-11-18	84621
245	245	Paul Griffin MD	2016-10-23	2021-04-28	316610
246	246	Paul Love	2018-08-31	2023-03-02	617956
247	247	Lori Smith	2017-08-11	2023-09-28	995255
248	248	Martha Rose	2017-10-23	2021-05-14	360391
249	249	Jeremy Terry	2016-05-14	2022-04-04	350660
250	250	Richard Mason	2018-06-24	2023-09-07	160998
251	251	Carlos Sharp	2016-12-18	2022-12-22	986111
252	252	Brian Mosley	2017-07-04	2022-07-10	300387
253	253	Andrew Flores	2017-09-24	2023-10-05	262691
254	254	Jennifer Meyer	2018-06-04	2021-03-20	937597
255	255	Richard Jacobs	2017-04-21	2022-06-30	430956
256	256	William Clark	2016-05-13	2023-06-17	118322
257	257	Crystal Graham	2017-09-16	2021-08-12	375688
258	258	Elizabeth Nixon	2017-01-09	2022-03-05	235807
259	259	Jody Davis	2018-04-01	2023-10-07	233099
260	260	Diana Boyer	2018-11-29	2021-11-03	166861
261	261	Susan Austin	2016-12-25	2022-10-28	666382
262	262	Kathy Leonard	2018-06-15	2022-02-23	931876
263	263	Mrs. Susan Brennan DVM	2016-11-24	2022-01-28	715731
264	264	Morgan Sims	2018-10-22	2022-12-01	224568
265	265	Samantha Banks	2017-10-19	2022-10-17	146253
266	266	Levi Vance	2017-11-29	2022-01-21	753378
267	267	Tyler Valdez	2016-03-20	2022-02-03	223153
268	268	Erika Harrison	2016-07-19	2022-08-04	778993
269	269	Roy Santana	2016-05-24	2023-08-22	583152
270	270	Linda Carter	2017-04-26	2022-08-02	567164
271	271	Crystal Lamb	2018-02-24	2023-03-10	680171
272	272	Eric Trevino	2017-02-13	2021-05-09	812663
273	273	Benjamin Edwards	2016-06-14	2023-09-14	456245
274	274	Eric Flores	2017-03-23	2023-09-01	456556
275	275	Jonathan Stewart	2017-04-08	2021-08-01	954243
276	276	Joseph Lewis	2017-02-21	2022-04-15	613531
277	277	Jennifer Bolton	2016-09-11	2023-10-08	570022
278	278	Elizabeth Williams	2016-12-08	2021-07-23	591357
279	279	Lori Smith	2017-02-10	2021-05-03	326331
280	280	Christopher Zimmerman	2018-10-06	2021-06-15	453532
281	281	Nathaniel Garcia	2017-07-15	2023-10-15	46371
282	282	Matthew Fox	2016-10-23	2021-10-23	687858
283	283	Kathy Blanchard	2018-11-28	2022-05-31	320166
284	284	Julian Kent	2017-11-15	2023-10-31	842057
285	285	Gregg Porter	2017-04-26	2021-05-08	132254
286	286	Eric Clay	2015-12-30	2021-09-27	969624
287	287	Ruth White	2016-01-21	2022-12-19	625368
288	288	Allen Anderson	2016-03-05	2023-06-19	983972
289	289	Lori Small	2018-01-11	2023-09-13	395532
290	290	Nathan Silva	2017-07-19	2021-03-11	625766
291	291	William Sutton	2018-03-19	2022-04-16	101139
292	292	Donna Hall	2016-06-02	2022-03-08	64328
293	293	Daniel Hamilton	2017-05-23	2023-12-15	413808
294	294	Cody Gonzalez	2017-12-31	2023-10-19	910879
295	295	Michelle Cain	2017-06-14	2023-11-03	650605
296	296	Tony Owens	2017-10-16	2022-12-25	528140
297	297	John Mccormick	2017-02-06	2023-10-09	683485
298	298	Sandra May	2018-12-03	2021-01-11	763630
299	299	Ashley Wright	2018-02-07	2022-10-11	648949
300	300	Grant Hernandez	2016-11-05	2021-08-21	676451
\.


                                                                                                                                                                                                                           2873.dat                                                                                            0000600 0004000 0002000 00000020243 13774640454 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        James Garcia	1	1	role 1
David Skinner	2	1	role 11
Patrick Jackson	3	1	role 2
Debra Lee	4	1	role 12
Emily Wells	5	1	role 8
Ronald Williams	6	1	role 11
John Phillips	7	1	role 0
Shaun Thompson	8	1	role 8
Kathy Thompson	9	1	role 5
James Herrera	10	1	role 1
Angela Thompson	11	1	role 9
Mrs. Victoria Mcgee	12	1	role 4
Corey Buchanan	13	1	role 8
Isabella Romero	14	1	role 2
Patrick Miller	15	1	role 14
Brian Vincent	16	2	role 11
Chad Koch	17	2	role 2
Daniel Brewer	18	2	role 6
Christopher Wood	19	2	role 9
Christina Peterson MD	20	2	role 11
Chad Cooper	21	2	role 3
Elizabeth Howe	22	2	role 12
Oscar Taylor	23	2	role 9
William Mendez MD	24	2	role 13
Stephanie Nelson	25	2	role 1
Kathleen Carroll	26	2	role 6
Katrina Flores	27	2	role 5
Joseph Keller	28	2	role 8
Christopher Ortiz	29	2	role 11
Kimberly Montoya	30	2	role 11
Tracy Turner	31	3	role 9
Tara Owens	32	3	role 2
Brian Carlson MD	33	3	role 10
Travis Bowen	34	3	role 4
Cynthia Mclean	35	3	role 2
Cynthia Murphy	36	3	role 5
Kari Sullivan	37	3	role 13
Nicholas Edwards	38	3	role 5
Lauren Campbell	39	3	role 5
Nicole Jennings	40	3	role 13
Jennifer Burke	41	3	role 11
Stephen Smith	42	3	role 5
Kathy Martin	43	3	role 3
Marco Huerta	44	3	role 6
Julie Knight	45	3	role 1
Patricia Anderson	46	4	role 14
Dave Rosario	47	4	role 10
Kristine Frost	48	4	role 1
Dominique Davis	49	4	role 13
Hunter Smith	50	4	role 1
Rebecca Acosta	51	4	role 10
Robert Leonard	52	4	role 8
Nicholas Jones	53	4	role 0
Christian Clark	54	4	role 12
Cathy Gallagher	55	4	role 13
David Maldonado	56	4	role 2
Patrick Powell	57	4	role 9
Brandon Mejia	58	4	role 1
Alicia Parks	59	4	role 11
Thomas Baker	60	4	role 6
Emma Tran	61	5	role 10
Renee Garrett	62	5	role 6
Frank Johnson	63	5	role 0
Alexander Wallace	64	5	role 5
Anthony Howard	65	5	role 2
Adam Clark	66	5	role 6
Joseph Freeman	67	5	role 7
Sarah Santos	68	5	role 13
James Rush	69	5	role 4
Kevin Simpson	70	5	role 11
Willie Hatfield	71	5	role 8
Miss Cindy Simmons	72	5	role 2
Wendy Willis	73	5	role 14
Amanda Swanson	74	5	role 2
Dana Lopez	75	5	role 1
Darryl Thomas	76	6	role 9
Jamie Williams	77	6	role 2
Diane Sanford	78	6	role 13
John Ross	79	6	role 0
Jamie Ramos	80	6	role 12
Richard Wagner	81	6	role 9
Emma Mccormick	82	6	role 1
Matthew Patterson	83	6	role 1
Joanna Duncan	84	6	role 0
Kathleen Vasquez	85	6	role 11
Christopher Freeman	86	6	role 3
John Martinez	87	6	role 0
Anthony Valentine	88	6	role 8
Shane Moody	89	6	role 12
Ryan Brown	90	6	role 0
Rebecca Taylor	91	7	role 4
Craig Watson	92	7	role 14
Ricardo Knox	93	7	role 7
Harold Haas	94	7	role 10
Paula Clark	95	7	role 14
Kelly Nash	96	7	role 11
Ian Mckinney	97	7	role 11
Warren Page	98	7	role 6
Donald Schultz	99	7	role 11
Evan Wood	100	7	role 10
John Warner	101	7	role 8
Teresa Reed	102	7	role 13
Kyle Park	103	7	role 11
Mr. Anthony Diaz	104	7	role 10
Carla Combs	105	7	role 4
Daniel Perkins	106	8	role 10
Erika Smith	107	8	role 1
Rebecca Klein	108	8	role 7
Amanda Dalton	109	8	role 0
Brandon Williams	110	8	role 4
Christopher Harris	111	8	role 14
Allison Shannon	112	8	role 13
Ashley Wiley	113	8	role 8
Emily Yang	114	8	role 10
Fred Montgomery	115	8	role 4
Kimberly Vargas	116	8	role 13
Cheyenne Hahn	117	8	role 12
Danielle Harris	118	8	role 3
Charles Brooks	119	8	role 0
Richard Bishop MD	120	8	role 14
Mrs. Amy Shaffer	121	9	role 2
Matthew Ellis	122	9	role 12
Lori Gilbert	123	9	role 1
Michelle Black	124	9	role 10
Ashley Mitchell	125	9	role 12
Patrick Smith	126	9	role 3
Amanda Garcia	127	9	role 7
Amy Bass	128	9	role 8
Jenna Turner	129	9	role 13
Zachary Haynes	130	9	role 0
Angela Myers	131	9	role 13
Christopher Tran	132	9	role 4
Nancy Mitchell	133	9	role 6
Eric Gutierrez	134	9	role 5
Tracy Kennedy	135	9	role 9
Jasmine Walker	136	10	role 4
Kaylee Rice	137	10	role 14
Bradley Hicks	138	10	role 6
Jessica Anderson	139	10	role 12
Latoya Blake	140	10	role 3
Paul Washington	141	10	role 0
Jennifer Proctor	142	10	role 5
Troy Campbell	143	10	role 3
Michael Kelly	144	10	role 2
Michael Washington	145	10	role 10
Eddie Lewis	146	10	role 14
Scott Shelton	147	10	role 5
Dr. Cory Berry MD	148	10	role 7
Leslie Adams	149	10	role 1
Courtney Russell	150	10	role 5
Tina Cline	151	11	role 5
Daniel Ellis	152	11	role 13
Donna Mendoza	153	11	role 12
Christopher Martin	154	11	role 3
Gary Boyd	155	11	role 1
Melanie Nguyen	156	11	role 11
Jasmine Reeves	157	11	role 14
Michelle Garcia	158	11	role 12
Alexis Smith	159	11	role 6
Douglas Brown	160	11	role 4
Erica Waller	161	11	role 8
Lisa Robertson	162	11	role 6
Stephen Lewis	163	11	role 5
David Russell	164	11	role 1
Anne Lewis	165	11	role 4
Michelle Young	166	12	role 2
Lisa Lowe	167	12	role 7
Linda Howard	168	12	role 2
Kristine White DDS	169	12	role 11
Kristine Vargas	170	12	role 4
Cody Patton	171	12	role 11
Diane Good	172	12	role 4
James Taylor	173	12	role 7
Heather Roach	174	12	role 4
Madison Williams	175	12	role 12
Troy Allen	176	12	role 10
Crystal Lee	177	12	role 5
Glenn Allen	178	12	role 14
Monica Haynes	179	12	role 9
Natasha Nelson	180	12	role 12
Mary Robertson	181	13	role 6
Jessica Elliott	182	13	role 2
Mitchell Brown	183	13	role 13
Christina Taylor	184	13	role 11
Michael Chavez	185	13	role 0
Erik Wang	186	13	role 5
Lawrence Hernandez	187	13	role 9
Anthony Jones	188	13	role 8
Charles Allen	189	13	role 6
Andrew Mckinney	190	13	role 10
Cynthia Hunt	191	13	role 7
Sherry Norris	192	13	role 8
Charles Duncan	193	13	role 6
Jacob Cortez	194	13	role 2
Joseph Brown	195	13	role 3
John Lewis	196	14	role 8
Johnny Bell	197	14	role 8
Holly Buchanan	198	14	role 12
Steven Petersen	199	14	role 10
Keith Alvarado	200	14	role 9
Crystal Schmitt	201	14	role 9
Jillian Nash	202	14	role 8
Jose Cooper	203	14	role 0
David Harris	204	14	role 12
Matthew Peterson	205	14	role 7
David Dawson	206	14	role 0
Jason Miller	207	14	role 10
Jillian Johnson	208	14	role 14
Helen Wolf	209	14	role 0
Sara Ellis	210	14	role 8
Antonio Stein	211	15	role 13
Laura Baker	212	15	role 0
Kristin Smith	213	15	role 8
Joseph Benjamin	214	15	role 11
Nicole Sutton	215	15	role 6
Phyllis Frost	216	15	role 12
Christian Mcmahon	217	15	role 10
Tina Garcia	218	15	role 14
Zachary Roy	219	15	role 3
Jeffrey Crawford	220	15	role 6
Colton Wood	221	15	role 1
Paula Carroll	222	15	role 3
Ms. Brandi Miller MD	223	15	role 14
Christopher Bell	224	15	role 11
Jermaine Cox	225	15	role 9
Jamie Donovan	226	16	role 6
Joseph Moore	227	16	role 12
Susan Jones	228	16	role 9
Lonnie Johnson	229	16	role 9
Christina Roberts	230	16	role 5
Christina Moss	231	16	role 6
Phillip Davis	232	16	role 7
Sara Williams	233	16	role 3
Gary Lester	234	16	role 10
Samantha Williams	235	16	role 5
Brandon Barnes	236	16	role 10
Jeffrey Martin	237	16	role 6
Donald Young	238	16	role 8
Kevin Petty	239	16	role 5
Don Neal	240	16	role 7
Joan Ryan	241	17	role 12
Jennifer Smith	242	17	role 5
Crystal Hunt	243	17	role 2
Joseph Salinas	244	17	role 11
Lisa White	245	17	role 0
Cassandra Byrd	246	17	role 2
Ellen Huerta	247	17	role 1
Matthew David	248	17	role 2
Robert Aguilar	249	17	role 5
Dawn Price	250	17	role 1
Dr. Scott Chandler	251	17	role 2
Martha Walker	252	17	role 5
Teresa Jordan DDS	253	17	role 1
Samuel Young	254	17	role 1
Kenneth Graham	255	17	role 8
Jason Flores	256	18	role 12
Karen Brown	257	18	role 8
Randy Noble	258	18	role 11
Diana Weaver	259	18	role 9
Grant Robinson	260	18	role 12
Ethan Wilson	261	18	role 8
Patricia Ramos	262	18	role 12
Jeffrey Hernandez	263	18	role 14
Cody Brown	264	18	role 7
Kelly Lee	265	18	role 11
Robert Stewart	266	18	role 10
Crystal Wolfe	267	18	role 11
Katherine Bailey	268	18	role 0
James Hernandez	269	18	role 13
Theresa Coleman	270	18	role 11
Heidi Bridges	271	19	role 6
Christopher Scott	272	19	role 13
Mark Bishop	273	19	role 5
Thomas Matthews	274	19	role 12
Laura Johnson	275	19	role 5
Nicholas Blackburn	276	19	role 3
Pamela Allen	277	19	role 7
Veronica Williams	278	19	role 10
Dylan Lewis	279	19	role 4
Samantha Brooks	280	19	role 12
Joshua Rogers	281	19	role 7
Mr. Brian Moore	282	19	role 2
Joshua Bullock	283	19	role 5
Alexis Colon	284	19	role 4
Gina Young	285	19	role 11
Taylor Reynolds	286	20	role 3
Briana Hardy	287	20	role 6
Laura Stephens	288	20	role 0
Amber Deleon	289	20	role 12
Chad Serrano	290	20	role 7
Wendy Hensley	291	20	role 13
Ashley Miller	292	20	role 2
Tyler Allen	293	20	role 2
Michael Anderson	294	20	role 1
Keith Martin	295	20	role 11
Maria Cooper	296	20	role 13
Kristina Harmon	297	20	role 3
Marcus Shelton	298	20	role 9
Crystal Hall	299	20	role 6
Diane Lewis	300	20	role 9
\.


                                                                                                                                                                                                                                                                                                                                                             2874.dat                                                                                            0000600 0004000 0002000 00000067037 13774640454 0014311 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	12	2018-11-04	2021-07-10	16468	91	Leicester City
2	6	2017-04-22	2023-11-20	97037	82	AFC Bournemouth
3	18	2016-07-26	2022-06-30	31774	38	Huddersfield Town
5	18	2016-10-30	2023-12-24	748495	50	Watford
6	4	2017-03-12	2021-03-12	534851	34	Cardiff City
7	18	2017-11-15	2022-09-24	559051	66	West Ham United
8	13	2016-07-31	2022-12-08	340887	33	Tottenham Hotspur
9	16	2017-03-08	2022-10-03	283422	31	Everton
10	13	2017-03-08	2021-03-17	100250	22	Liverpool
11	10	2017-12-28	2023-01-23	379302	36	Crystal Palace
12	13	2016-08-19	2022-01-20	342947	25	Tottenham Hotspur
13	8	2018-09-13	2022-01-09	880695	49	Arsenal
14	18	2016-03-16	2021-03-13	655223	55	Cardiff City
15	19	2017-05-24	2022-01-15	501783	72	Liverpool
16	5	2016-11-26	2022-03-26	76438	49	Everton
17	13	2018-07-09	2021-09-21	687811	50	AFC Bournemouth
18	12	2017-01-30	2023-08-07	542455	56	Fulham
19	3	2017-01-31	2023-06-24	33103	83	Chelsea
21	10	2017-04-10	2022-06-09	717655	32	Brighton & Hove Albion
22	16	2018-01-07	2022-06-20	243686	11	Burnley
24	7	2016-03-14	2021-01-22	156839	50	Liverpool
25	10	2016-03-01	2023-03-03	159353	54	Chelsea
26	18	2018-10-01	2023-07-24	366519	12	Manchester United
27	15	2017-06-07	2022-04-23	887347	26	Newcastle United
28	4	2017-05-09	2023-10-01	712665	11	Liverpool
30	12	2016-04-20	2022-08-15	457190	42	Tottenham Hotspur
31	9	2016-08-03	2023-09-02	904658	69	Leicester City
32	7	2018-10-30	2021-01-09	126162	33	Liverpool
33	16	2018-08-28	2023-12-12	841255	75	Manchester City
34	1	2018-02-18	2021-12-13	591498	86	Manchester United
35	6	2016-07-08	2022-01-21	904186	64	Arsenal
36	17	2016-09-02	2021-08-07	386689	73	Wolverhampton Wanderers
37	10	2017-06-21	2022-07-10	143899	41	Burnley
38	11	2016-10-31	2023-03-21	863306	23	Cardiff City
39	9	2018-04-03	2021-10-13	829548	49	West Ham United
40	5	2016-03-06	2021-08-14	838751	37	Leicester City
41	13	2017-05-30	2023-09-17	443894	44	Newcastle United
42	16	2017-06-11	2022-05-27	124860	58	Leicester City
43	16	2016-10-10	2022-04-02	869774	23	Brighton & Hove Albion
44	11	2016-08-10	2021-09-08	977571	98	Southampton
45	9	2016-08-18	2023-06-30	539471	37	Tottenham Hotspur
46	10	2018-12-12	2021-01-26	461399	53	Tottenham Hotspur
47	8	2017-11-09	2022-03-10	496074	56	Wolverhampton Wanderers
48	12	2017-06-21	2022-02-11	813772	34	Leicester City
49	4	2017-03-05	2021-06-23	224154	92	Fulham
50	12	2016-02-09	2023-02-27	373316	69	Newcastle United
51	9	2017-10-16	2021-08-13	174387	54	Newcastle United
52	12	2018-11-24	2023-08-26	372860	59	Everton
53	7	2016-08-11	2022-01-30	721423	100	Burnley
54	6	2018-07-04	2021-08-16	746738	52	Newcastle United
55	17	2017-10-04	2023-12-07	138215	27	West Ham United
56	9	2017-07-11	2023-12-19	565536	21	Chelsea
57	14	2018-02-14	2021-05-31	899899	32	Crystal Palace
58	11	2017-01-25	2022-09-25	472167	48	Arsenal
59	9	2018-05-07	2023-07-16	876787	44	Liverpool
60	2	2017-07-02	2021-03-11	166751	52	Arsenal
61	15	2017-12-18	2023-05-05	96368	11	Manchester United
62	12	2016-11-05	2023-04-22	797378	76	Newcastle United
63	8	2018-05-07	2022-03-09	864329	23	Tottenham Hotspur
64	6	2018-04-10	2021-06-11	818642	100	Manchester City
65	6	2017-04-22	2023-03-28	363200	23	Liverpool
66	9	2018-07-03	2021-11-20	945684	66	Chelsea
67	8	2017-04-16	2022-11-16	758679	98	Manchester City
68	2	2018-07-03	2023-01-24	311795	15	Manchester United
69	14	2016-11-24	2022-08-05	592186	32	AFC Bournemouth
70	4	2016-05-21	2022-07-09	279277	13	Wolverhampton Wanderers
72	3	2017-10-10	2021-09-17	736569	54	Manchester City
73	1	2017-09-03	2022-02-27	118525	61	Tottenham Hotspur
74	13	2017-09-15	2021-07-22	521597	98	AFC Bournemouth
75	6	2018-09-24	2022-05-17	154256	93	Huddersfield Town
76	18	2017-06-18	2021-07-16	698231	98	Newcastle United
77	6	2018-08-11	2021-09-22	381790	69	West Ham United
78	17	2018-09-21	2023-05-29	661310	68	Cardiff City
79	13	2017-12-06	2021-05-22	985408	63	Liverpool
80	12	2018-04-11	2021-02-05	133808	34	Chelsea
81	2	2018-10-23	2022-08-05	364639	72	Brighton & Hove Albion
82	17	2016-10-01	2021-07-09	693399	36	Burnley
83	5	2017-07-01	2023-10-01	120301	20	AFC Bournemouth
84	17	2016-04-16	2023-09-18	38425	68	Burnley
85	2	2018-10-14	2021-03-05	549221	91	Brighton & Hove Albion
87	15	2017-10-19	2021-12-23	782593	79	Watford
88	15	2017-10-04	2021-07-22	983506	13	Arsenal
89	19	2016-02-03	2023-06-30	588102	83	Crystal Palace
90	15	2018-03-04	2022-10-01	947450	80	AFC Bournemouth
91	17	2016-11-29	2022-11-29	615687	85	Burnley
92	3	2016-08-06	2023-01-08	43487	66	West Ham United
93	11	2018-12-21	2021-08-30	773914	34	Liverpool
94	15	2018-04-25	2023-06-21	289581	29	Manchester United
95	14	2018-04-24	2023-11-08	416501	87	Wolverhampton Wanderers
96	7	2017-07-10	2021-09-07	486975	85	Arsenal
97	8	2016-07-03	2022-10-13	788053	38	West Ham United
98	16	2017-07-11	2022-04-22	370364	60	Cardiff City
99	19	2018-09-24	2023-10-13	667910	49	Cardiff City
101	12	2018-10-20	2022-03-03	593094	91	Leicester City
102	7	2016-01-27	2021-12-07	642956	67	Brighton & Hove Albion
103	5	2017-12-31	2023-12-19	146642	97	Wolverhampton Wanderers
104	11	2016-12-15	2022-01-13	154065	80	Everton
105	11	2017-06-28	2022-10-03	996387	61	Cardiff City
106	7	2016-01-10	2021-01-23	482640	86	Manchester City
107	8	2017-08-01	2021-09-26	592233	30	Manchester United
108	6	2017-07-01	2022-01-20	915669	15	Watford
109	4	2017-07-26	2022-04-16	502308	28	Manchester City
110	18	2016-05-06	2022-01-03	359175	97	Crystal Palace
111	8	2016-10-30	2023-09-02	693995	61	Newcastle United
112	9	2017-08-22	2021-11-16	206266	22	West Ham United
113	6	2018-07-11	2021-08-27	171053	98	Newcastle United
114	14	2016-12-16	2023-12-02	377656	73	Brighton & Hove Albion
115	4	2018-12-14	2022-11-16	665415	68	Southampton
116	1	2016-11-25	2021-01-11	456718	52	Burnley
117	3	2017-10-17	2021-07-29	633382	28	Crystal Palace
118	13	2018-11-26	2021-03-07	47302	46	Southampton
119	18	2016-04-19	2023-03-24	775973	30	Southampton
120	14	2016-03-29	2021-04-01	99207	35	Manchester City
121	2	2017-08-12	2023-12-23	456282	60	Tottenham Hotspur
122	18	2017-06-19	2023-08-07	77257	22	Cardiff City
123	4	2016-11-06	2022-03-27	664644	94	Watford
124	19	2018-10-19	2022-08-10	393736	56	Southampton
125	12	2018-11-12	2023-09-02	280976	54	Tottenham Hotspur
126	13	2017-01-20	2021-01-15	407486	21	Burnley
127	10	2018-04-22	2023-03-12	326910	57	Arsenal
128	16	2018-02-25	2023-04-17	785733	80	Manchester City
129	17	2016-05-09	2021-01-03	303726	88	West Ham United
131	17	2016-10-27	2021-04-14	741117	36	Chelsea
132	8	2016-03-30	2021-03-31	931605	99	Watford
133	3	2017-12-24	2021-11-17	215873	23	Crystal Palace
134	10	2017-07-03	2021-02-23	530330	69	Newcastle United
135	7	2017-07-09	2022-06-19	763542	97	Arsenal
136	18	2017-08-21	2021-09-17	599409	15	Tottenham Hotspur
137	2	2018-10-15	2022-03-18	560396	84	Wolverhampton Wanderers
138	11	2017-09-08	2023-05-29	893307	38	Manchester United
139	1	2017-01-23	2022-05-23	602246	11	Everton
140	3	2017-07-24	2022-01-24	725661	41	Burnley
141	3	2018-02-12	2022-05-06	676424	30	Newcastle United
142	15	2018-07-25	2021-10-28	363434	32	Manchester United
144	13	2016-05-05	2021-11-25	637459	36	West Ham United
145	8	2016-12-19	2021-06-24	589831	71	Watford
146	17	2016-12-25	2021-08-27	832786	63	Liverpool
147	9	2018-05-05	2022-06-19	603466	58	Manchester United
148	15	2017-06-03	2022-05-26	323710	15	Cardiff City
149	11	2016-03-16	2023-11-13	375355	63	Southampton
150	2	2018-06-22	2023-09-30	669232	18	Brighton & Hove Albion
151	11	2018-06-09	2023-10-14	23244	44	Huddersfield Town
152	1	2017-03-11	2021-10-20	790081	35	Liverpool
153	17	2018-11-05	2021-03-25	137557	30	Leicester City
154	14	2017-01-31	2022-01-31	810224	90	West Ham United
155	12	2018-06-11	2021-07-05	60987	86	AFC Bournemouth
156	10	2018-09-02	2021-01-18	649920	65	Manchester United
157	1	2017-10-18	2022-05-29	638098	88	Leicester City
158	3	2017-07-25	2023-01-23	758676	93	Fulham
159	18	2017-04-09	2023-04-25	428020	36	Liverpool
160	16	2017-09-13	2021-08-15	301809	27	Everton
162	8	2017-02-25	2021-09-06	524527	28	West Ham United
163	19	2017-04-13	2022-01-30	475481	49	Wolverhampton Wanderers
164	10	2018-10-29	2023-07-16	720795	76	AFC Bournemouth
165	13	2017-07-04	2021-01-05	447839	79	Tottenham Hotspur
166	5	2018-05-09	2021-09-23	65152	51	Tottenham Hotspur
167	8	2016-04-13	2023-07-20	451371	66	Liverpool
168	6	2018-12-10	2022-05-24	710730	75	Newcastle United
169	11	2017-10-16	2023-03-27	859621	21	Arsenal
170	2	2018-08-21	2022-11-21	748315	10	Huddersfield Town
172	18	2018-12-28	2022-07-29	38528	92	Tottenham Hotspur
173	8	2017-03-11	2023-12-17	21076	48	Liverpool
174	11	2017-06-22	2021-09-26	321276	64	Crystal Palace
176	9	2017-10-08	2023-09-10	452778	23	Watford
177	1	2016-04-19	2021-09-10	637408	40	Manchester United
178	18	2017-03-11	2023-11-30	111210	72	Arsenal
179	1	2018-05-23	2023-06-15	971863	15	Leicester City
180	11	2017-01-04	2021-04-30	518082	30	Manchester City
181	13	2018-10-16	2022-03-07	794787	42	Manchester United
182	12	2018-02-05	2023-05-14	338813	15	Fulham
183	2	2016-07-03	2023-02-03	811484	68	AFC Bournemouth
184	14	2018-04-22	2021-06-10	698545	93	Newcastle United
185	10	2017-05-17	2023-01-24	100290	31	Everton
186	16	2016-03-04	2022-10-12	802591	74	Cardiff City
187	9	2016-11-30	2021-12-26	302038	17	Burnley
188	14	2017-10-28	2022-02-06	803744	20	Cardiff City
189	12	2018-03-26	2023-11-23	534616	49	Liverpool
190	1	2017-07-28	2022-09-10	424722	18	Chelsea
191	2	2016-06-21	2021-12-02	652185	55	Newcastle United
192	18	2017-02-27	2021-10-27	478321	100	Huddersfield Town
193	14	2016-01-26	2021-05-03	967989	87	Watford
194	17	2016-01-14	2023-04-13	915849	26	Southampton
195	16	2017-03-03	2022-08-06	499507	61	Everton
196	3	2018-11-26	2022-08-29	722517	29	Leicester City
197	13	2016-03-28	2021-05-13	23991	12	Chelsea
198	7	2016-11-23	2022-10-12	500472	88	Chelsea
199	14	2016-06-15	2022-10-29	800565	46	Leicester City
200	9	2018-08-28	2021-08-18	937250	12	Crystal Palace
201	2	2017-08-07	2023-01-03	316922	48	AFC Bournemouth
202	17	2016-09-17	2021-08-11	988976	60	Brighton & Hove Albion
203	11	2017-09-17	2022-12-21	201614	90	Chelsea
204	15	2018-07-20	2021-08-21	330288	30	Chelsea
205	1	2017-05-17	2021-05-20	867757	44	Newcastle United
206	1	2018-04-24	2023-06-16	952663	13	Watford
207	10	2016-10-14	2023-11-18	84041	28	Southampton
208	13	2016-10-18	2021-07-28	874010	78	Huddersfield Town
209	17	2017-06-25	2021-02-14	41953	37	Leicester City
210	11	2017-08-25	2021-01-01	478098	70	Watford
211	12	2017-12-10	2023-09-11	17578	74	AFC Bournemouth
213	15	2018-07-26	2023-08-05	832839	10	Everton
214	5	2016-02-26	2023-11-24	502034	35	Liverpool
215	3	2018-09-26	2023-08-26	295023	36	Chelsea
216	15	2016-01-05	2023-10-18	202716	48	AFC Bournemouth
217	1	2017-04-26	2021-07-08	413975	20	Manchester City
218	3	2016-02-27	2022-10-17	117961	44	Watford
219	1	2018-05-12	2023-10-16	889126	45	Arsenal
220	16	2017-07-04	2023-11-20	704474	44	Crystal Palace
221	3	2017-09-20	2023-07-11	592375	88	Huddersfield Town
222	16	2017-11-25	2021-05-14	168864	30	Wolverhampton Wanderers
224	19	2017-05-09	2023-11-29	910193	75	Huddersfield Town
226	1	2017-10-17	2021-02-14	873676	49	AFC Bournemouth
227	13	2018-11-15	2021-11-23	205975	95	Liverpool
228	1	2018-01-06	2021-12-28	768934	57	Everton
229	16	2017-01-02	2023-09-19	864232	17	Liverpool
230	5	2018-06-19	2022-09-14	209095	23	Everton
231	2	2016-08-13	2021-06-07	713164	93	Manchester United
232	13	2017-05-12	2022-03-25	273537	89	Burnley
233	14	2017-04-08	2021-09-18	509405	21	Brighton & Hove Albion
234	18	2016-10-17	2023-07-11	20761	11	Southampton
235	12	2016-01-23	2022-05-26	628194	30	Liverpool
236	19	2018-10-14	2021-01-09	599256	19	Newcastle United
237	6	2017-08-01	2023-02-25	164726	10	Newcastle United
238	8	2017-12-28	2021-05-19	681623	40	AFC Bournemouth
239	7	2018-07-15	2022-11-15	305120	49	Watford
240	12	2016-06-19	2023-11-06	738698	66	Leicester City
241	14	2016-04-23	2022-07-15	163562	62	Wolverhampton Wanderers
242	4	2016-10-12	2021-01-04	423241	37	Newcastle United
243	14	2018-04-16	2021-08-24	186934	59	Watford
244	9	2018-02-23	2022-09-26	208689	37	AFC Bournemouth
245	3	2016-12-25	2021-12-08	495710	80	Huddersfield Town
246	4	2017-05-29	2023-09-13	148186	63	Liverpool
247	5	2016-05-14	2021-12-14	281978	75	Leicester City
248	10	2016-01-27	2022-06-25	767990	86	Tottenham Hotspur
249	6	2016-10-30	2021-12-21	61573	25	Burnley
250	4	2018-03-05	2023-12-27	347148	59	Manchester City
251	7	2017-02-02	2021-04-10	31028	51	Burnley
252	14	2017-10-21	2021-11-09	439236	63	Tottenham Hotspur
253	3	2017-02-24	2021-01-13	639896	47	Manchester United
254	7	2018-05-21	2021-10-08	78467	41	Everton
255	1	2018-10-28	2021-06-15	991785	33	Tottenham Hotspur
256	7	2018-09-07	2021-05-28	665552	44	Arsenal
257	18	2017-10-28	2022-03-27	562485	78	AFC Bournemouth
258	17	2018-10-11	2021-12-24	275540	73	Chelsea
259	12	2017-10-23	2022-03-29	857403	79	Fulham
260	14	2018-02-12	2021-10-12	563568	43	Manchester City
261	17	2016-12-12	2023-01-02	952587	78	Southampton
262	15	2018-09-20	2022-04-11	665402	93	West Ham United
263	16	2018-04-14	2021-10-08	454707	80	Arsenal
264	6	2016-04-10	2021-12-16	622691	37	Crystal Palace
265	8	2016-10-04	2021-03-01	123285	71	AFC Bournemouth
266	4	2016-11-19	2021-05-08	394075	57	Newcastle United
267	8	2018-08-24	2023-07-07	478252	63	Cardiff City
268	9	2016-04-11	2023-09-07	452816	18	Wolverhampton Wanderers
269	19	2017-02-25	2022-11-22	239033	48	Huddersfield Town
270	15	2017-02-12	2023-11-11	468692	70	Southampton
271	16	2016-11-20	2022-11-15	670182	94	Crystal Palace
272	4	2018-07-02	2023-08-02	312120	31	Watford
273	10	2016-08-19	2021-05-27	963082	24	AFC Bournemouth
274	6	2018-08-02	2021-04-12	80715	94	Watford
275	12	2018-11-29	2022-07-02	141859	61	Leicester City
276	15	2016-04-10	2023-06-06	482676	24	Southampton
277	18	2017-08-30	2023-06-10	846216	26	Wolverhampton Wanderers
278	10	2018-04-24	2022-07-19	683514	30	Brighton & Hove Albion
279	4	2018-02-22	2022-08-31	932544	45	Chelsea
280	6	2018-04-03	2021-04-06	649625	51	Burnley
281	19	2018-05-09	2023-09-14	459365	35	Huddersfield Town
282	2	2016-11-14	2023-03-23	738145	67	AFC Bournemouth
283	18	2017-02-15	2023-12-01	250760	75	Manchester City
284	18	2017-02-10	2023-07-18	809908	90	Wolverhampton Wanderers
285	18	2017-10-16	2022-12-17	683393	47	Liverpool
286	6	2018-11-18	2022-08-18	833120	53	Manchester United
287	14	2018-02-26	2021-11-20	676534	34	Crystal Palace
288	5	2018-05-15	2022-01-10	54239	41	Burnley
289	19	2018-12-17	2021-09-12	385002	26	Southampton
290	3	2016-07-18	2021-11-29	156001	73	Watford
291	4	2016-09-08	2021-04-30	999376	12	Newcastle United
292	10	2018-01-09	2022-05-10	682899	35	Burnley
293	5	2017-12-03	2021-12-13	257358	70	Burnley
294	8	2017-10-17	2022-09-09	281967	97	Cardiff City
295	11	2016-03-09	2022-07-17	517969	46	West Ham United
296	9	2017-08-26	2021-06-29	170200	29	Leicester City
297	13	2016-09-12	2023-02-07	502857	99	Crystal Palace
298	17	2018-10-20	2021-10-17	453597	15	Huddersfield Town
299	14	2018-08-23	2022-06-28	388895	71	Liverpool
301	6	2016-06-15	2023-11-01	825119	38	Cardiff City
302	3	2017-03-14	2021-06-13	902775	58	Everton
303	15	2018-07-20	2021-05-21	631251	75	Arsenal
304	8	2016-04-18	2021-08-24	443148	14	Manchester United
305	7	2018-06-30	2021-03-29	340160	16	Everton
306	1	2017-01-24	2021-12-21	643020	73	Arsenal
307	9	2016-07-29	2021-09-07	723648	48	Huddersfield Town
308	4	2017-07-06	2021-11-25	234469	23	Crystal Palace
309	18	2016-07-30	2021-02-09	638454	44	Brighton & Hove Albion
310	8	2018-05-15	2022-11-21	152406	96	Watford
311	17	2016-12-29	2023-07-01	582822	20	Huddersfield Town
312	15	2016-08-26	2021-04-16	981602	73	Crystal Palace
313	14	2017-12-26	2023-12-16	348379	24	Brighton & Hove Albion
314	18	2018-04-16	2022-08-31	291355	58	Tottenham Hotspur
315	3	2018-07-19	2021-12-29	804691	63	Watford
316	7	2017-04-07	2022-01-16	478605	14	Cardiff City
317	1	2017-11-04	2022-05-17	224300	43	AFC Bournemouth
318	3	2018-12-24	2021-01-04	701985	80	Tottenham Hotspur
319	14	2016-01-04	2021-12-15	677706	25	Chelsea
320	13	2018-06-22	2021-06-07	721117	96	Crystal Palace
321	15	2018-06-13	2023-08-13	136787	100	Fulham
322	11	2016-10-13	2023-10-02	546264	20	Huddersfield Town
323	2	2017-03-19	2021-10-29	684975	75	Arsenal
324	6	2018-03-31	2023-03-13	426453	88	AFC Bournemouth
325	16	2017-03-11	2023-09-21	463353	87	Huddersfield Town
326	5	2016-08-28	2022-05-04	155238	15	Cardiff City
327	1	2017-11-20	2022-02-23	85927	67	Brighton & Hove Albion
329	19	2017-11-14	2021-01-26	413744	58	AFC Bournemouth
330	5	2018-05-23	2022-12-29	916352	62	Manchester United
331	8	2017-03-30	2023-03-10	927127	23	Tottenham Hotspur
332	2	2017-07-14	2023-11-27	321427	80	AFC Bournemouth
333	1	2018-01-31	2022-06-16	607561	27	Leicester City
334	18	2017-08-20	2021-09-15	648163	22	Manchester City
336	16	2017-08-17	2022-06-04	32247	48	Leicester City
337	19	2017-07-25	2023-06-21	741479	34	Wolverhampton Wanderers
338	15	2018-11-26	2022-01-22	206647	54	Leicester City
339	9	2017-01-23	2021-10-15	240199	12	Burnley
340	15	2018-06-29	2023-07-05	255047	60	West Ham United
341	5	2018-03-20	2023-07-31	986414	98	Cardiff City
342	17	2017-02-22	2023-06-24	824499	100	Huddersfield Town
343	19	2016-10-10	2023-10-25	382505	76	Fulham
344	2	2017-08-04	2023-10-24	868944	29	Manchester City
345	14	2018-03-26	2022-09-09	492487	20	Huddersfield Town
346	8	2017-11-03	2021-01-17	327936	13	Liverpool
347	17	2017-08-22	2022-06-05	196738	65	West Ham United
348	15	2016-03-30	2023-01-24	443025	95	AFC Bournemouth
349	10	2018-07-16	2021-07-23	386758	45	Chelsea
350	16	2017-03-30	2022-10-12	871424	14	Watford
351	5	2017-07-26	2021-05-06	581452	57	Burnley
352	12	2018-08-11	2022-11-19	748131	42	Arsenal
353	1	2017-02-27	2023-07-25	526110	77	Brighton & Hove Albion
355	16	2016-07-17	2021-02-21	489862	50	Watford
356	4	2017-02-25	2021-01-19	762903	39	Manchester United
357	1	2018-02-11	2022-07-07	520286	82	Liverpool
358	4	2016-01-21	2022-07-23	369259	69	Wolverhampton Wanderers
359	9	2018-07-22	2021-10-13	898358	41	Chelsea
360	8	2016-12-08	2022-05-13	85685	29	Manchester United
361	5	2016-02-14	2021-10-10	139160	90	Wolverhampton Wanderers
362	4	2016-04-20	2021-01-17	396767	68	Everton
363	7	2017-03-25	2022-11-23	150861	48	Cardiff City
364	12	2016-03-30	2023-05-31	825939	59	Cardiff City
365	3	2018-12-23	2023-11-15	360752	49	Liverpool
366	11	2018-08-02	2022-01-09	802902	13	Everton
367	13	2017-09-25	2021-05-19	758340	82	Southampton
368	8	2017-07-30	2023-11-27	486982	73	Brighton & Hove Albion
369	11	2017-02-14	2021-10-29	136882	60	Burnley
370	16	2016-03-01	2023-04-29	477422	17	Wolverhampton Wanderers
371	9	2016-05-06	2021-11-17	441213	62	Everton
372	7	2016-08-24	2023-10-29	940421	64	Huddersfield Town
373	12	2016-04-09	2021-02-03	398314	43	Newcastle United
374	8	2017-04-05	2023-03-30	949889	61	Everton
375	12	2017-06-18	2021-10-01	84998	43	Huddersfield Town
376	17	2016-03-26	2021-07-06	139586	67	Burnley
377	9	2016-07-07	2023-09-27	316260	32	Huddersfield Town
378	14	2017-03-11	2022-09-28	576027	28	Arsenal
379	4	2017-08-13	2022-08-09	886374	70	Burnley
380	17	2017-05-21	2021-04-27	679059	36	Crystal Palace
381	9	2018-10-13	2021-04-02	836742	64	Tottenham Hotspur
382	5	2018-09-03	2022-05-09	762623	51	Manchester City
383	6	2017-07-03	2022-09-18	882551	91	Burnley
384	11	2017-08-06	2023-09-28	873300	19	Burnley
385	17	2016-09-14	2021-03-09	222145	54	Manchester United
386	18	2017-06-13	2021-11-14	927583	68	Tottenham Hotspur
387	8	2017-05-23	2022-02-19	710544	11	Cardiff City
388	19	2016-01-08	2023-08-29	11514	90	Watford
389	14	2017-06-16	2021-09-07	11074	66	AFC Bournemouth
390	7	2016-11-06	2021-12-24	138853	23	Liverpool
391	9	2018-12-08	2022-09-20	754190	66	Leicester City
393	15	2017-03-19	2023-08-16	975187	77	AFC Bournemouth
394	6	2016-11-10	2021-09-28	504427	12	Crystal Palace
395	18	2018-02-11	2023-09-29	649168	56	Everton
396	17	2016-04-23	2023-09-26	867518	43	Crystal Palace
397	19	2017-05-14	2021-06-24	862661	55	Manchester United
398	4	2016-10-24	2023-01-22	940678	59	Crystal Palace
399	16	2018-10-31	2021-02-20	630776	13	Crystal Palace
400	7	2017-01-12	2021-07-02	105668	79	Cardiff City
402	5	2018-04-02	2023-07-20	614892	63	Burnley
403	7	2017-12-27	2023-12-13	430663	35	Manchester City
404	12	2017-07-16	2021-02-15	186227	23	Crystal Palace
405	1	2018-02-10	2023-08-30	482608	51	West Ham United
406	4	2016-06-27	2022-07-08	973940	76	Burnley
407	14	2016-01-14	2023-07-27	234402	46	Cardiff City
408	13	2017-06-16	2021-07-17	43147	52	Burnley
409	14	2016-09-28	2022-07-31	241305	70	Cardiff City
411	7	2017-10-31	2023-03-16	893704	11	Watford
412	10	2017-12-13	2023-10-24	800947	47	Brighton & Hove Albion
413	19	2017-09-18	2022-05-04	975788	69	Tottenham Hotspur
414	5	2018-06-10	2022-02-09	873977	88	Southampton
415	1	2017-08-22	2022-06-09	281830	86	Newcastle United
416	1	2015-12-29	2023-03-01	152232	40	Manchester United
417	11	2017-01-14	2022-07-06	343069	13	Crystal Palace
418	10	2017-11-07	2023-02-25	585533	93	Huddersfield Town
420	3	2017-09-05	2023-04-02	989522	100	Brighton & Hove Albion
421	8	2016-07-30	2023-03-08	304606	81	Watford
422	12	2017-12-29	2021-07-24	40245	99	Arsenal
423	7	2016-06-16	2021-09-18	672925	77	Southampton
424	13	2018-08-03	2022-01-14	559357	20	Everton
425	8	2017-06-17	2023-05-31	927411	16	Liverpool
426	15	2018-05-26	2022-05-19	745837	47	Everton
427	16	2016-11-10	2023-01-01	502702	62	Newcastle United
428	15	2018-04-21	2023-02-02	624491	73	Tottenham Hotspur
429	9	2016-02-06	2023-09-21	850530	28	Fulham
430	2	2017-12-09	2023-01-25	116750	57	Newcastle United
431	4	2016-09-17	2021-12-08	381571	19	Crystal Palace
432	8	2016-06-19	2022-03-04	236673	59	Liverpool
433	2	2017-06-21	2023-01-24	774850	34	Fulham
434	1	2017-05-27	2021-05-05	52926	69	Crystal Palace
435	11	2016-12-12	2021-02-03	218275	95	Manchester City
436	3	2016-01-07	2022-09-05	839102	15	West Ham United
437	7	2018-08-26	2022-11-16	220414	52	Everton
438	15	2018-01-09	2022-10-31	212674	11	AFC Bournemouth
439	12	2017-05-07	2021-05-31	79346	50	Everton
440	4	2017-09-19	2023-10-11	443927	46	Everton
441	17	2018-02-08	2023-01-18	832586	48	Brighton & Hove Albion
442	4	2016-12-18	2021-02-06	546021	30	Newcastle United
443	14	2018-10-19	2022-01-26	529664	53	Watford
444	9	2017-09-06	2021-05-02	163694	38	Leicester City
445	1	2018-04-22	2022-05-15	632078	82	Watford
446	12	2017-09-23	2023-05-12	593736	55	Tottenham Hotspur
447	11	2016-11-26	2023-04-20	598934	11	Brighton & Hove Albion
448	6	2018-07-03	2023-12-07	165498	82	Wolverhampton Wanderers
450	6	2016-10-25	2021-02-04	285837	31	Cardiff City
451	5	2018-11-24	2022-08-30	935586	56	Huddersfield Town
452	9	2016-03-05	2023-08-12	731872	38	Liverpool
453	18	2016-07-29	2022-02-26	911825	99	Burnley
454	2	2017-10-11	2023-07-09	942208	43	Arsenal
455	2	2017-12-24	2022-06-02	574975	97	West Ham United
457	7	2016-08-20	2023-12-14	77204	81	Manchester City
458	3	2016-08-06	2022-10-12	739677	79	Southampton
459	10	2018-01-12	2021-12-14	666624	34	Fulham
460	2	2016-08-29	2023-09-22	821833	50	Southampton
461	18	2017-09-02	2022-09-06	61437	70	Wolverhampton Wanderers
462	18	2016-09-22	2023-12-24	337692	42	Chelsea
463	19	2018-05-15	2022-06-13	434207	42	Manchester United
464	15	2016-02-14	2023-08-09	974961	27	Manchester City
465	3	2017-03-03	2023-01-30	140008	73	Newcastle United
466	5	2016-08-13	2023-02-02	826687	91	Brighton & Hove Albion
467	2	2016-06-11	2022-05-07	402685	54	AFC Bournemouth
469	6	2018-02-08	2022-10-14	297120	68	Chelsea
470	14	2016-12-05	2022-09-03	750323	15	Tottenham Hotspur
471	12	2018-05-07	2021-08-18	151016	44	Everton
472	10	2016-12-14	2022-03-11	959857	35	Brighton & Hove Albion
473	13	2016-05-12	2023-11-22	183145	23	Brighton & Hove Albion
474	19	2016-07-26	2022-05-17	631646	21	Huddersfield Town
475	9	2017-08-10	2023-04-17	410735	96	Cardiff City
476	14	2017-08-08	2023-12-19	944712	45	Wolverhampton Wanderers
477	11	2018-11-10	2023-02-18	575517	71	Everton
478	19	2017-02-26	2022-05-30	384055	56	Crystal Palace
479	19	2018-05-02	2023-12-25	709951	43	Southampton
480	11	2018-05-08	2022-12-26	598114	37	Chelsea
481	19	2016-07-03	2021-05-18	566115	39	Watford
482	19	2017-06-09	2022-06-05	845123	12	Burnley
483	7	2017-06-21	2023-05-06	280530	10	Watford
484	8	2018-06-30	2021-02-21	937468	46	Watford
485	12	2018-08-24	2022-11-14	691665	37	Manchester United
486	19	2018-04-24	2022-01-26	35053	79	Arsenal
487	16	2016-10-11	2021-11-09	450610	35	Manchester United
488	18	2018-01-13	2021-07-09	849603	38	Leicester City
489	16	2018-06-26	2023-09-16	896927	87	West Ham United
490	10	2017-01-19	2023-03-05	692328	46	Southampton
491	7	2016-02-06	2022-10-13	706352	74	Huddersfield Town
492	8	2018-11-17	2021-05-08	37315	86	Newcastle United
493	6	2018-02-11	2023-07-24	773207	21	Manchester United
494	4	2017-03-17	2021-09-18	982214	79	Leicester City
495	12	2018-08-01	2023-11-22	437671	34	Southampton
496	5	2016-01-24	2023-04-11	584691	12	Watford
497	4	2016-04-04	2022-11-15	381083	46	Leicester City
498	9	2018-01-17	2021-11-16	635284	53	Fulham
500	5	2017-11-18	2023-08-08	962967	54	Manchester City
501	14	2016-06-02	2023-11-23	941653	73	Arsenal
502	15	2018-09-16	2023-03-01	875724	57	Arsenal
503	13	2018-01-29	2023-06-25	170072	34	Watford
504	1	2018-02-25	2023-11-18	976912	51	Liverpool
505	2	2016-03-19	2023-04-03	392438	21	Chelsea
506	9	2016-09-12	2022-04-05	649855	68	Fulham
507	16	2017-02-26	2022-03-16	276528	33	Leicester City
508	17	2016-07-17	2022-03-01	890845	41	Newcastle United
509	7	2016-05-23	2023-06-07	658869	52	Tottenham Hotspur
510	3	2018-06-19	2023-12-08	188595	73	Burnley
512	8	2018-03-26	2023-05-23	53378	89	Manchester City
513	10	2017-05-23	2021-07-23	913062	55	Leicester City
515	17	2016-04-17	2023-08-01	461534	25	Cardiff City
516	15	2018-02-06	2021-10-29	516863	63	Chelsea
517	16	2018-10-14	2021-11-01	20609	74	Tottenham Hotspur
518	13	2017-11-21	2021-04-25	816125	34	Everton
520	6	2016-01-26	2023-06-06	885786	53	Manchester United
521	8	2016-03-15	2021-11-10	157250	71	Wolverhampton Wanderers
522	18	2016-04-08	2021-12-15	214942	41	Chelsea
523	7	2018-03-02	2022-01-11	234012	94	Burnley
524	6	2016-03-03	2023-06-19	22497	32	Fulham
525	7	2018-06-07	2021-12-16	316235	96	Cardiff City
526	4	2017-09-07	2023-03-13	278300	40	Watford
527	14	2016-03-11	2021-06-24	677911	23	Wolverhampton Wanderers
528	9	2016-09-29	2021-02-05	706620	11	Wolverhampton Wanderers
529	18	2018-04-12	2022-11-20	541191	78	Arsenal
530	5	2018-08-23	2021-10-02	28767	24	Leicester City
531	16	2018-12-01	2021-04-24	503083	79	Tottenham Hotspur
532	1	2016-07-19	2023-03-31	17278	98	Southampton
533	16	2016-01-08	2023-08-02	562337	41	Crystal Palace
534	1	2017-12-29	2021-11-18	853988	47	Manchester United
535	16	2017-04-06	2021-01-30	367770	55	Huddersfield Town
536	13	2018-09-26	2022-10-30	394263	38	Tottenham Hotspur
537	5	2016-12-20	2021-03-14	643678	25	Huddersfield Town
538	6	2017-02-24	2022-08-29	272384	88	Fulham
539	18	2016-07-31	2021-05-27	326192	78	Southampton
540	10	2016-04-16	2022-06-17	755101	28	Manchester United
541	13	2018-04-01	2023-02-04	804194	68	Brighton & Hove Albion
542	5	2016-11-03	2023-08-29	235033	15	AFC Bournemouth
543	7	2018-06-15	2022-02-06	671022	38	Chelsea
544	8	2018-03-28	2021-04-11	82900	74	Liverpool
545	4	2017-06-15	2023-10-17	910884	84	Chelsea
546	3	2017-05-22	2023-04-24	963489	70	Liverpool
547	15	2017-10-30	2023-05-30	10993	85	Liverpool
548	11	2018-06-30	2023-12-16	119121	16	Arsenal
549	9	2016-02-11	2023-08-14	693914	42	Tottenham Hotspur
550	1	2017-05-17	2022-09-27	60167	27	Wolverhampton Wanderers
551	17	2016-12-11	2021-01-16	987921	67	West Ham United
552	1	2016-11-06	2022-01-19	410814	25	Liverpool
553	2	2016-07-31	2021-03-17	437033	94	Manchester City
554	10	2016-11-08	2022-04-06	409600	59	Burnley
555	4	2016-05-04	2021-07-27	702507	71	Cardiff City
556	3	2018-01-17	2023-03-16	133841	34	Newcastle United
557	7	2015-12-29	2022-01-10	425024	91	Chelsea
558	11	2018-10-31	2023-01-06	758733	76	Everton
559	4	2016-11-18	2022-08-31	193825	41	Brighton & Hove Albion
560	13	2017-06-18	2021-10-13	689752	16	AFC Bournemouth
561	19	2018-05-22	2021-06-05	278085	32	AFC Bournemouth
562	11	2018-04-06	2023-02-02	347058	89	Crystal Palace
563	19	2016-06-20	2023-10-13	936536	37	Manchester City
564	10	2017-11-17	2023-03-08	594098	10	Watford
565	7	2018-09-15	2022-02-04	742056	27	Liverpool
566	5	2018-10-04	2023-01-24	965168	58	Manchester City
567	14	2018-05-29	2022-08-08	451603	80	Crystal Palace
568	3	2016-07-31	2023-10-02	75222	31	Arsenal
569	17	2018-09-08	2023-08-20	662267	23	Tottenham Hotspur
571	16	2017-03-16	2021-05-15	516210	72	Manchester City
572	12	2016-11-06	2021-01-21	463402	62	Leicester City
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 2875.dat                                                                                            0000600 0004000 0002000 00000076617 13774640454 0014316 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20	236	224	86	298
4	511	223	64	299
4	143	511	87	299
10	66	51	53	299
10	307	391	74	299
13	432	512	32	300
13	387	265	73	300
13	346	346	85	300
15	409	114	5	300
15	319	114	19	300
15	319	252	8	300
2	108	264	77	301
2	301	324	77	301
4	221	510	45	301
4	215	158	30	301
4	318	140	70	301
1	211	189	8	302
1	235	62	41	302
1	259	404	86	302
19	284	462	45	302
19	76	285	37	302
9	325	128	72	303
9	186	336	5	303
9	186	370	6	303
11	472	25	55	303
11	273	248	6	303
16	537	166	38	304
16	351	451	46	304
16	230	230	89	304
12	480	417	47	304
12	477	169	49	304
9	336	33	71	305
9	195	98	11	305
3	121	68	19	305
3	323	81	11	305
3	85	137	14	305
36	91	569	21	306
36	261	129	17	306
36	146	261	50	306
8	102	403	75	306
8	32	53	48	306
2	75	383	9	307
2	448	168	13	307
2	75	448	75	307
20	281	479	81	307
20	89	89	60	307
6	379	440	22	308
6	109	358	88	308
6	70	279	15	308
19	309	192	84	308
19	136	395	77	308
19	133	420	7	309
19	245	436	45	309
9	145	346	44	309
9	521	111	38	309
9	310	145	54	309
31	452	268	46	310
31	381	296	23	310
31	66	429	46	310
14	79	536	29	310
14	541	181	32	310
14	408	10	81	310
1	1	52	46	311
1	182	125	62	311
1	189	101	10	311
6	361	330	55	311
6	293	293	33	311
6	341	382	80	311
27	516	27	89	312
27	547	270	90	312
12	366	210	63	312
12	562	558	72	312
12	477	151	69	312
11	292	21	62	313
11	564	540	15	313
2	190	255	70	313
2	177	177	9	313
4	20	335	61	314
4	300	511	78	314
15	252	287	67	314
15	233	287	90	314
15	233	287	8	314
8	79	17	9	315
8	297	118	79	315
8	518	541	0	315
17	325	370	9	315
17	160	271	40	315
17	160	531	26	315
15	329	482	19	316
15	99	269	60	316
10	268	381	33	316
10	187	307	72	316
38	477	447	5	317
38	435	477	56	317
18	78	153	73	317
18	55	84	30	317
18	209	347	59	317
34	139	226	41	318
34	353	152	48	318
5	308	442	35	318
5	406	272	80	318
60	430	85	16	319
60	60	467	77	319
60	150	191	22	319
16	262	262	21	319
16	393	340	62	319
24	305	557	73	320
24	525	305	6	320
24	372	316	11	320
11	37	349	69	320
11	156	278	76	320
11	21	21	21	320
13	63	304	50	321
13	67	265	64	321
13	492	492	49	321
7	77	2	28	321
7	35	538	7	321
3	159	309	27	322
3	285	192	27	322
3	284	285	59	322
4	556	158	8	322
4	92	465	36	322
4	420	133	47	322
57	389	95	21	323
57	199	501	83	323
5	109	440	19	323
5	272	526	87	323
5	279	555	69	323
16	103	500	86	324
16	341	402	0	324
16	530	530	25	324
1	468	499	8	324
1	410	401	3	324
1	354	354	6	324
38	180	151	31	325
38	435	149	88	325
13	211	1	81	325
13	375	155	74	325
19	92	302	21	326
19	218	72	31	326
15	527	443	34	326
31	475	549	16	1
31	112	307	20	1
4	245	458	49	1
4	196	315	83	1
57	243	57	64	2
57	260	287	29	2
57	95	260	14	2
2	116	353	40	2
2	152	504	56	2
2	416	532	12	2
13	432	107	22	3
13	304	346	19	3
13	421	521	72	3
16	464	502	90	3
16	270	547	1	3
16	276	502	27	3
9	43	195	47	4
9	229	370	67	4
9	195	263	77	4
5	70	559	49	4
5	123	279	87	4
5	356	362	13	4
3	314	257	8	5
3	122	192	76	5
12	295	548	79	5
12	384	558	88	5
8	41	79	87	6
8	208	12	13	6
8	536	41	19	6
18	209	441	36	6
18	129	396	79	6
18	311	551	39	6
15	99	337	37	7
15	269	486	53	7
6	351	402	90	7
6	341	103	30	7
6	451	451	59	7
11	156	540	63	8
11	564	25	21	8
11	349	412	72	8
13	80	80	38	8
13	352	189	83	8
24	372	32	53	9
24	372	254	18	9
24	24	239	46	9
7	469	286	34	9
7	394	538	53	9
7	524	64	41	9
4	449	392	47	10
4	4	456	88	10
4	130	71	63	10
3	170	201	2	10
3	81	68	29	10
27	338	438	71	11
27	90	426	16	11
15	409	443	18	11
15	443	193	85	11
16	326	83	74	12
16	166	230	40	12
8	557	372	29	12
8	102	525	49	12
8	509	523	54	12
19	158	556	15	13
19	215	92	40	13
20	486	236	5	13
20	329	236	11	13
20	479	99	1	13
34	416	327	63	14
34	190	327	35	14
17	98	9	29	14
17	42	43	67	14
17	33	350	50	14
1	1	211	45	15
1	422	235	25	15
1	48	495	66	15
9	167	544	1	15
9	97	346	6	15
38	295	151	4	16
38	548	366	69	16
1	499	392	77	16
1	161	354	68	16
2	280	280	17	17
2	493	113	37	17
14	197	165	10	17
14	17	227	9	17
60	85	183	26	18
60	231	85	63	18
60	137	430	43	18
19	522	159	42	18
19	539	192	4	18
19	277	522	90	18
36	441	91	27	19
36	131	129	14	19
10	391	381	28	19
10	429	359	70	19
10	66	56	77	19
6	246	279	24	20
6	379	250	22	20
11	207	418	4	20
11	540	248	22	20
15	124	397	65	21
15	99	329	73	21
15	343	563	28	21
3	455	81	62	21
3	455	454	18	21
3	150	137	84	21
13	267	265	84	22
13	162	67	0	22
6	496	40	48	22
6	466	402	36	22
6	247	414	11	22
4	300	449	18	23
4	514	456	5	23
4	225	499	81	23
13	182	1	57	23
13	352	422	67	23
3	284	462	65	24
3	159	395	17	24
3	309	277	50	24
16	438	213	50	24
16	88	262	7	24
24	316	565	34	25
24	24	411	78	25
24	565	102	5	25
4	19	72	21	25
4	221	436	62	25
11	418	472	87	26
11	127	134	28	26
18	396	91	36	26
18	91	347	7	26
8	41	74	14	27
8	208	232	44	27
5	497	242	62	27
5	431	555	0	27
5	246	250	20	27
9	186	370	61	28
9	507	263	85	28
7	249	65	86	28
7	280	64	53	28
57	241	69	53	29
57	260	154	88	29
12	295	151	58	29
12	38	548	76	29
31	31	296	40	30
31	391	56	62	30
2	552	217	0	30
2	333	353	18	30
2	116	333	75	30
19	158	556	12	31
19	117	420	41	31
19	92	133	76	31
11	490	46	90	31
11	46	459	45	31
36	396	569	87	32
36	91	202	46	32
17	427	325	18	32
17	489	533	58	32
17	160	220	79	32
38	104	151	88	33
38	203	480	39	33
9	97	167	85	33
9	425	346	90	33
9	265	13	56	33
6	123	279	61	34
6	442	555	39	34
8	390	557	57	34
8	96	251	49	34
16	293	40	77	35
16	566	500	81	35
16	542	83	22	35
19	529	234	36	35
19	178	14	74	35
1	189	211	52	36
1	373	182	24	36
20	289	99	30	36
20	163	397	73	36
60	454	344	38	37
60	150	282	3	37
60	85	191	34	37
15	114	199	85	37
15	193	527	6	37
15	407	184	53	37
27	262	338	65	38
27	547	438	84	38
27	464	502	79	38
1	499	29	27	38
1	514	354	78	38
1	100	354	56	38
2	448	286	40	39
2	493	264	27	39
10	498	444	78	39
10	371	377	10	39
8	560	79	0	40
8	79	10	24	40
2	357	353	4	40
2	552	550	32	40
2	534	445	65	40
34	116	177	70	41
34	357	434	49	41
11	207	273	47	41
11	248	278	89	41
13	111	238	90	42
13	107	544	29	42
4	458	318	85	42
4	218	221	32	42
38	369	417	43	43
38	322	435	36	43
16	27	276	4	43
16	216	204	5	43
3	334	284	32	44
3	314	136	44	44
5	379	494	11	44
5	6	250	21	44
60	454	467	30	45
60	85	60	52	45
17	22	350	1	45
17	222	195	42	45
17	42	220	51	45
57	114	407	75	46
57	443	154	52	46
1	392	143	29	46
1	4	401	66	46
1	511	212	80	46
8	165	518	57	47
8	165	536	52	47
8	79	541	41	47
10	176	506	20	47
10	444	452	57	47
15	478	463	55	48
15	481	337	81	48
7	301	64	18	48
7	65	448	8	48
7	65	280	51	48
16	537	83	88	49
16	566	496	35	49
13	125	235	42	49
13	80	182	14	49
24	96	400	25	50
24	254	423	10	50
18	385	55	76	50
18	342	209	58	50
9	128	325	59	51
9	427	531	13	51
14	541	424	44	51
14	536	473	1	51
14	424	41	33	51
2	450	280	34	52
2	301	65	84	52
9	374	162	26	52
9	374	267	33	52
9	107	512	32	52
27	87	276	39	53
27	428	393	10	53
3	553	81	50	53
3	85	183	34	53
3	323	150	43	53
6	250	250	57	54
6	526	356	89	54
6	431	398	36	54
15	501	501	29	54
15	470	252	26	54
15	114	501	87	54
19	315	315	63	55
19	245	436	12	55
19	76	283	47	55
19	14	257	77	55
11	207	472	51	56
11	21	156	56	56
8	523	363	67	56
8	135	32	68	56
8	523	254	36	56
31	147	549	29	57
31	452	31	20	57
20	561	15	8	57
20	561	388	9	57
20	486	397	41	57
36	441	380	78	58
36	385	202	65	58
36	131	515	21	58
2	152	405	54	58
2	177	116	39	58
1	471	101	86	59
1	404	125	64	59
1	211	422	36	59
12	558	322	67	59
12	477	149	9	59
12	384	322	72	59
4	175	419	68	60
4	328	514	58	60
6	288	16	77	60
6	361	466	84	60
1	189	439	55	61
1	439	275	23	61
1	471	155	51	61
10	498	59	76	61
10	506	528	26	61
4	143	401	6	62
4	29	4	12	62
4	456	419	11	62
14	8	208	37	62
14	227	118	29	62
14	118	320	40	62
16	466	341	0	63
16	500	566	84	63
16	537	166	73	63
17	271	33	15	63
17	22	370	81	63
17	487	98	56	63
3	462	26	14	64
3	488	26	89	64
3	192	539	3	64
2	532	139	75	64
2	416	206	3	64
60	150	150	8	65
60	332	231	44	65
18	515	202	65	65
18	131	569	75	65
57	188	407	28	66
57	313	567	74	66
4	218	133	54	66
4	302	315	6	66
4	253	215	73	66
15	224	563	77	67
15	281	224	83	67
15	224	482	76	67
8	543	483	43	67
8	239	390	80	67
38	417	149	87	68
38	138	369	75	68
11	554	134	2	68
11	564	11	21	68
27	270	94	87	69
27	148	426	35	69
27	321	547	12	69
7	2	538	57	69
7	301	286	56	69
13	360	544	26	70
13	67	132	73	70
5	442	440	72	70
5	555	358	44	70
36	146	202	44	71
36	515	261	26	71
13	495	259	32	71
13	182	375	60	71
13	50	240	57	71
2	237	469	60	72
2	493	64	39	72
19	284	461	24	72
19	522	3	62	72
19	462	539	26	72
6	356	266	5	73
6	406	115	31	73
6	6	272	49	73
20	329	163	2	73
20	89	482	21	73
20	269	482	26	73
19	510	92	14	74
19	133	510	18	74
19	290	215	90	74
6	451	330	8	74
6	288	166	80	74
6	496	103	49	74
34	552	205	89	75
34	73	415	79	75
34	73	179	10	75
16	213	502	60	75
16	87	270	49	75
16	438	464	38	75
8	297	541	17	76
8	79	181	55	76
8	12	560	18	76
9	63	544	83	76
9	107	294	0	76
9	492	294	61	76
31	147	377	66	77
31	444	296	32	77
15	252	567	87	77
15	409	188	26	77
9	98	355	15	78
9	263	195	51	78
9	427	507	87	78
1	511	86	84	78
1	392	86	9	78
24	53	525	72	79
24	491	24	59	79
12	180	435	56	79
12	369	180	13	79
11	185	540	1	80
11	490	513	10	80
11	127	459	63	80
3	282	231	8	80
3	201	68	55	80
38	58	366	32	81
38	104	169	6	81
10	475	200	23	81
10	339	268	88	81
10	31	176	27	81
13	310	387	90	82
13	304	173	41	82
8	565	557	65	82
8	32	32	70	82
8	256	96	6	82
27	303	426	4	83
27	438	88	74	83
17	489	195	86	83
17	531	33	84	83
60	191	454	1	84
60	201	191	5	84
7	264	324	80	84
7	274	469	10	84
7	113	520	14	84
57	470	476	30	85
57	389	299	3	85
18	129	441	71	85
18	84	385	45	85
1	375	446	13	86
1	259	364	57	86
1	211	48	59	86
2	317	255	56	86
2	179	179	53	86
15	343	124	24	87
15	15	329	62	87
14	518	297	11	87
14	79	10	81	87
3	461	26	62	88
3	386	285	34	88
11	273	459	23	88
11	418	21	65	88
16	103	530	37	89
16	351	40	20	89
16	402	326	43	89
5	379	431	76	89
5	442	555	15	89
4	514	23	3	90
4	4	71	12	90
4	175	175	30	90
4	221	140	73	90
4	245	556	3	90
4	458	92	13	90
36	396	376	12	91
36	194	131	55	91
20	397	343	80	91
20	329	281	62	91
9	325	128	7	92
9	128	43	38	92
9	521	173	47	92
9	360	360	40	92
11	127	513	50	93
11	564	349	84	93
11	134	564	49	93
16	262	142	3	93
16	87	213	88	93
24	53	400	27	94
24	254	491	53	94
15	199	199	42	94
15	252	199	14	94
15	470	345	26	94
8	208	144	9	95
8	144	424	78	95
8	297	41	27	95
19	462	529	31	95
19	119	453	45	95
19	546	92	53	96
19	318	141	51	96
19	158	158	54	96
13	62	52	25	96
13	189	1	33	96
2	35	520	0	97
2	383	274	90	97
12	44	105	40	97
12	169	477	32	97
12	548	210	82	97
6	442	266	85	98
6	440	115	20	98
1	419	328	65	98
1	143	212	86	98
1	328	392	71	98
31	187	268	36	99
31	56	66	27	99
31	31	296	39	99
6	83	341	80	99
6	40	230	33	99
34	327	157	31	100
34	353	434	49	100
34	205	73	11	100
3	454	332	47	100
3	553	170	25	100
13	512	374	5	101
13	97	145	0	101
10	112	268	14	101
10	45	444	37	101
27	312	148	85	102
27	338	516	34	102
27	464	426	75	102
4	302	318	50	102
4	245	221	42	102
4	215	568	47	102
16	83	382	48	103
16	103	351	79	103
18	78	441	15	103
18	515	131	16	103
18	311	91	10	103
57	527	501	63	104
57	407	389	57	104
57	233	120	56	104
14	518	560	65	104
14	10	424	31	104
1	155	125	65	105
1	101	125	67	105
1	62	18	49	105
7	394	2	58	105
7	2	77	65	105
4	468	130	24	106
4	328	354	8	106
11	185	540	28	106
11	554	513	43	106
11	418	278	78	106
15	329	337	73	107
15	479	482	35	107
15	89	479	61	107
2	445	327	8	107
2	177	190	32	107
2	306	179	19	107
60	150	68	90	108
60	344	460	8	108
60	68	231	13	108
8	457	457	30	108
8	102	390	86	108
38	548	548	28	109
38	295	180	22	109
5	242	555	55	109
5	246	356	22	109
5	358	362	41	109
3	257	462	84	110
3	159	284	10	110
17	43	43	67	110
17	9	517	67	110
27	88	393	33	111
27	90	502	75	111
18	385	376	60	111
18	342	146	16	111
18	342	131	55	111
3	14	159	31	112
3	395	5	49	112
3	529	386	65	112
13	375	101	76	112
13	189	52	18	112
19	196	141	74	113
19	510	117	48	113
7	75	113	38	113
7	168	448	32	113
57	57	252	2	114
57	527	409	22	114
9	294	132	39	114
9	360	310	8	114
9	145	294	1	114
24	423	491	15	115
24	96	102	74	115
14	227	74	82	115
14	232	503	12	115
6	555	70	71	116
6	398	440	74	116
6	49	358	29	116
2	552	255	26	116
2	226	206	89	116
11	207	292	5	117
11	418	472	78	117
17	195	427	8	117
17	427	531	26	117
17	229	535	45	117
38	447	105	43	118
38	104	295	20	118
6	330	330	10	118
6	326	247	9	118
4	161	410	23	119
4	100	130	89	119
4	401	23	46	119
20	124	563	44	119
20	482	89	2	119
60	332	137	32	120
60	85	183	6	120
60	467	460	3	120
10	381	31	10	120
10	31	244	46	120
10	59	31	35	120
36	441	84	20	121
36	298	202	36	121
36	129	569	45	121
4	218	19	46	121
4	196	318	44	121
4	365	158	82	121
16	402	351	67	122
16	530	288	46	122
16	270	27	53	122
16	438	216	3	122
9	535	325	88	123
9	263	487	22	123
9	43	489	41	123
8	411	437	2	123
8	106	543	45	123
8	135	198	27	123
31	307	391	3	124
31	147	549	76	124
5	494	246	29	124
5	362	406	88	124
8	12	208	71	125
8	17	424	52	125
8	227	503	73	125
11	540	490	67	125
11	21	46	85	125
1	125	373	26	126
1	352	189	90	126
3	282	455	39	126
3	137	170	59	126
3	460	191	83	126
34	73	255	24	127
34	532	255	86	127
34	333	179	90	127
12	562	435	55	127
12	322	44	80	127
12	203	93	83	127
13	304	265	86	128
13	63	267	66	128
13	544	512	61	128
1	175	143	47	128
1	20	175	88	128
1	392	354	44	128
15	99	269	7	129
15	463	15	64	129
19	314	334	33	129
19	395	3	16	129
19	110	462	66	129
2	450	324	5	130
2	237	75	18	130
2	448	2	2	130
15	95	69	41	130
15	470	470	71	130
15	567	407	28	130
27	428	464	83	131
27	338	338	30	131
27	213	428	55	131
20	482	99	78	131
20	163	388	81	131
20	224	236	36	131
6	356	242	80	132
6	28	356	35	132
6	279	545	27	132
7	280	450	45	132
7	286	448	36	132
7	54	301	5	132
3	529	119	36	133
3	5	386	2	133
3	14	110	71	133
18	146	78	66	133
18	441	84	61	133
19	458	218	16	134
19	302	458	17	134
14	541	503	86	134
14	227	118	85	134
60	85	455	11	135
60	191	81	79	135
9	374	374	60	135
9	167	294	78	135
57	501	241	18	136
57	378	184	5	136
57	470	120	83	136
13	485	62	41	136
13	189	189	9	136
13	48	1	19	136
24	198	437	74	137
24	483	198	43	137
24	483	411	36	137
10	498	39	67	137
10	112	381	48	137
10	39	45	68	137
38	149	369	0	138
38	548	138	88	138
17	229	263	69	138
17	42	325	50	138
4	392	130	77	139
4	23	468	50	139
4	499	161	63	139
2	177	333	83	139
2	353	73	59	139
11	156	156	11	140
11	490	278	77	140
11	156	127	31	140
6	293	83	60	140
6	230	103	34	140
13	167	145	85	141
13	310	265	87	141
13	484	132	6	141
19	539	14	47	141
19	386	314	42	141
36	129	82	17	142
36	347	569	1	142
5	358	559	45	142
5	115	6	81	142
5	497	545	71	142
1	52	48	56	143
1	275	30	19	143
16	348	547	43	143
16	303	426	68	143
16	213	90	15	143
8	408	232	85	144
8	208	297	39	144
3	455	454	82	144
3	332	121	16	144
2	168	469	52	145
2	324	274	15	145
2	524	77	12	145
11	349	564	81	145
11	248	472	26	145
9	325	98	43	146
9	263	350	59	146
9	571	160	14	146
4	92	158	77	146
4	215	196	1	146
15	563	463	12	147
15	479	289	85	147
15	289	463	69	147
12	558	447	41	147
12	203	169	64	147
12	477	562	89	147
16	16	83	27	148
16	414	166	32	148
16	566	566	56	148
15	233	345	38	148
15	243	378	60	148
31	296	200	89	149
31	51	176	73	149
1	300	401	47	149
1	300	100	74	149
34	226	219	33	150
34	416	228	84	150
8	411	239	46	150
8	53	557	39	150
13	304	294	51	151
13	67	360	30	151
11	25	564	44	151
11	278	513	67	151
11	278	46	40	151
4	300	143	85	152
4	71	335	44	152
19	462	136	61	152
19	5	277	60	152
2	324	394	84	153
2	2	493	41	153
2	324	280	32	153
18	78	261	11	153
18	380	129	30	153
18	209	396	89	153
27	502	88	60	154
27	204	270	21	154
27	303	312	31	154
8	523	390	29	154
8	491	400	15	154
8	24	372	69	154
31	498	506	23	155
31	187	59	73	155
31	187	39	89	155
17	229	571	62	155
17	42	33	32	155
1	275	275	11	156
1	471	62	35	156
1	373	446	86	156
5	559	49	64	156
5	308	545	76	156
5	246	379	46	156
38	369	44	50	157
38	322	58	51	157
38	322	417	82	157
3	430	68	69	157
3	505	68	79	157
19	318	436	6	158
19	546	221	12	158
2	179	333	66	158
2	532	34	32	158
2	416	317	85	158
57	389	120	50	159
57	409	188	48	159
57	95	188	64	159
20	236	561	44	159
20	124	337	47	159
20	329	486	16	159
16	382	361	2	160
16	351	103	4	160
16	247	466	77	160
14	320	41	2	160
14	12	41	78	160
14	227	560	43	160
60	455	467	27	161
60	85	60	37	161
60	170	323	17	161
6	326	341	51	161
6	530	214	74	161
6	542	382	2	161
6	266	272	52	162
6	555	115	29	162
4	568	302	73	162
4	218	133	33	162
3	529	334	3	163
3	453	257	37	163
15	260	69	89	163
15	299	470	87	163
15	443	188	37	163
34	504	327	62	164
34	157	116	53	164
34	152	353	44	164
7	538	77	40	164
7	524	113	0	164
8	541	17	81	165
8	41	17	36	165
8	518	232	43	165
16	393	61	29	165
16	502	516	43	165
16	204	142	8	165
15	561	281	51	166
15	479	269	20	166
9	67	294	80	166
9	368	13	46	166
9	98	336	57	167
9	98	571	42	167
13	18	125	27	167
13	404	404	82	167
36	569	385	61	168
36	82	55	42	168
36	82	202	64	168
12	180	58	28	168
12	558	210	83	168
24	198	400	55	169
24	557	543	80	169
1	71	328	61	169
1	354	410	13	169
11	418	273	39	170
11	273	349	13	170
10	200	371	8	170
10	200	147	79	170
10	112	296	81	170
15	163	99	56	171
15	99	337	0	171
15	99	481	33	171
11	472	472	45	171
11	564	554	69	171
11	459	513	72	171
4	419	20	67	172
4	29	449	58	172
7	237	538	87	172
7	168	237	4	172
13	521	310	43	173
13	512	310	84	173
13	267	310	83	173
18	380	146	55	173
18	376	508	70	173
18	129	258	51	173
38	174	369	56	174
38	562	44	1	174
4	556	365	45	174
4	221	117	13	174
3	529	3	18	175
3	522	26	82	175
8	411	390	11	175
8	523	363	69	175
60	201	553	76	176
60	201	170	72	176
5	559	115	81	176
5	545	398	56	176
5	442	308	14	176
57	470	476	70	177
57	389	114	76	177
57	501	154	76	177
17	195	271	17	177
17	33	355	44	177
1	495	259	26	178
1	375	275	72	178
1	404	373	2	178
14	181	408	45	178
14	126	74	59	178
14	126	408	41	178
27	88	27	59	179
27	216	502	59	179
27	94	262	64	179
10	187	506	32	179
10	377	549	89	179
10	66	56	61	179
16	16	351	24	180
16	83	542	78	180
2	179	306	23	180
2	34	534	51	180
9	370	42	28	181
9	43	160	72	181
9	517	271	57	181
20	478	124	4	181
20	124	474	39	181
20	479	269	78	181
2	54	108	8	182
2	249	54	21	182
6	361	330	70	182
6	500	214	20	182
6	272	291	37	183
6	406	242	29	183
16	426	303	40	183
16	438	547	8	183
16	547	148	34	183
19	458	221	67	184
19	215	141	77	184
3	460	170	59	184
3	60	282	69	184
3	323	85	74	184
11	164	540	71	185
11	248	156	1	185
15	501	188	2	185
15	389	527	3	185
15	120	95	31	185
31	506	371	53	186
31	59	31	12	186
31	200	429	45	186
19	192	314	5	186
19	14	539	83	186
34	532	228	2	187
34	116	177	30	187
9	238	331	38	187
9	432	346	36	187
9	310	521	14	187
36	91	129	0	188
36	131	385	60	188
1	514	519	43	188
1	570	335	28	188
8	232	536	83	189
8	17	541	33	189
8	118	197	84	189
12	151	322	55	189
12	435	548	19	189
12	210	104	27	189
24	254	96	29	190
24	32	106	49	190
24	106	254	49	190
13	50	48	39	190
13	352	352	62	190
36	569	129	79	191
36	131	153	40	191
36	441	78	17	191
6	496	103	25	191
6	214	414	34	191
6	402	103	25	191
9	229	9	24	192
9	271	336	44	192
9	263	263	35	192
19	192	7	59	192
19	234	7	71	192
19	556	133	25	193
19	365	510	88	193
19	221	365	51	193
16	94	90	19	193
16	270	276	59	193
16	61	321	22	193
34	152	219	28	194
34	317	550	77	194
20	388	561	65	194
20	15	563	29	194
8	227	503	67	195
8	503	367	68	195
15	345	199	42	195
15	199	389	53	195
15	319	389	29	195
11	127	37	42	196
11	540	248	78	196
1	499	570	23	196
1	449	100	22	196
1	392	410	15	196
6	28	545	36	197
6	28	49	62	197
6	497	70	66	197
12	44	180	60	197
12	104	417	84	197
12	93	562	5	197
2	2	280	6	198
2	520	324	26	198
13	373	485	71	198
13	50	125	37	198
13	62	446	2	198
24	403	53	6	199
24	198	102	6	199
3	170	60	34	199
3	454	344	7	199
3	121	85	37	199
31	147	66	76	200
31	45	187	0	200
31	391	59	1	200
9	67	47	67	200
9	432	304	2	200
16	451	293	64	201
16	361	288	27	201
4	420	465	66	201
4	568	315	76	201
4	141	245	32	201
4	468	86	1	202
4	86	499	75	202
4	511	29	24	202
17	43	507	56	202
17	42	336	54	202
27	464	142	42	203
27	393	438	87	203
2	217	206	90	203
2	226	504	5	203
2	333	416	23	203
38	548	369	32	204
38	105	322	49	204
38	558	558	32	204
8	400	403	74	204
8	565	372	1	204
8	457	254	77	204
3	178	110	68	205
3	234	26	29	205
3	314	529	37	205
7	280	249	22	205
7	524	520	45	205
1	446	352	72	206
1	235	275	64	206
18	298	129	86	206
18	82	261	62	206
15	478	89	28	207
15	388	99	73	207
15	289	289	56	207
5	70	362	31	207
5	279	291	73	207
5	494	494	78	207
13	145	97	42	208
13	512	484	73	208
14	144	320	38	208
14	424	79	51	208
57	319	199	38	209
57	319	389	76	209
10	112	452	57	209
10	506	244	12	209
10	498	147	46	209
60	137	121	45	210
60	460	170	33	210
60	68	201	47	210
11	418	207	10	210
11	46	127	20	210
1	62	375	84	211
1	375	52	3	211
1	182	572	0	211
1	143	514	39	211
1	225	514	68	211
1	511	511	85	211
36	202	261	46	212
36	153	298	53	212
11	11	21	58	212
11	127	25	24	212
11	46	273	0	212
2	383	113	32	213
2	108	2	14	213
17	533	22	62	213
17	271	229	79	213
17	355	517	84	213
27	94	276	55	214
27	262	61	51	214
27	27	547	29	214
19	119	234	18	214
19	122	462	43	214
6	494	115	52	215
6	28	272	82	215
14	473	79	76	215
14	424	126	70	215
19	215	92	75	216
19	221	117	67	216
19	215	253	46	216
8	53	372	5	216
8	400	198	28	216
38	480	477	0	217
38	44	105	29	217
38	203	295	38	217
15	470	114	26	217
15	313	69	82	217
15	57	184	29	217
16	83	530	54	218
16	351	537	61	218
16	414	247	2	218
9	267	425	68	218
9	346	432	19	218
34	306	416	4	219
34	190	139	73	219
10	371	429	30	219
10	475	268	35	219
10	31	187	16	219
60	332	150	58	220
60	455	85	1	220
20	479	561	54	220
20	236	388	41	220
15	289	224	80	221
15	478	388	12	221
4	436	72	63	221
4	215	465	76	221
13	13	132	40	222
13	265	132	59	222
13	238	387	14	222
13	30	125	12	222
13	485	275	66	222
13	275	189	54	222
11	472	37	77	223
11	156	292	37	223
11	564	37	20	223
5	497	358	59	223
5	109	49	14	223
5	555	356	87	223
31	498	31	81	224
31	296	549	40	224
18	36	385	26	224
18	347	146	85	224
57	527	57	63	225
57	260	527	28	225
57	313	188	17	225
16	312	27	32	225
16	348	148	25	225
24	53	372	62	226
24	565	390	65	226
24	437	24	90	226
6	402	451	11	226
6	382	341	75	226
8	79	536	36	227
8	118	165	21	227
7	301	324	61	227
7	301	113	90	227
7	168	65	83	227
4	392	392	42	228
4	328	86	80	228
12	44	138	44	228
12	174	58	0	228
3	395	192	84	229
3	122	539	44	229
3	183	231	19	229
3	68	430	77	229
3	201	455	28	229
9	43	229	81	230
9	222	427	7	230
9	489	160	73	230
2	139	190	61	230
2	532	116	81	230
4	335	171	3	231
4	354	449	47	231
4	223	511	85	231
16	276	428	52	231
16	464	348	1	231
16	321	303	28	231
9	263	9	8	232
9	399	222	52	232
9	186	186	81	232
18	129	380	61	232
18	551	347	18	232
3	529	3	86	233
3	334	5	55	233
6	330	103	58	233
6	230	103	44	233
6	500	414	69	233
15	89	563	57	234
15	474	337	37	234
15	224	479	79	234
13	373	259	72	234
13	572	422	10	234
31	59	339	47	235
31	51	452	89	235
31	59	187	48	235
7	280	450	85	235
7	469	237	73	235
57	233	57	7	236
57	199	154	63	236
3	433	460	35	236
3	454	231	67	236
13	294	167	25	237
13	360	132	82	237
12	322	447	64	237
12	322	562	72	237
12	558	366	37	237
24	423	102	8	238
24	135	53	35	238
24	483	543	52	238
5	279	356	13	238
5	440	6	68	238
11	11	273	5	239
11	164	490	65	239
11	156	564	13	239
4	245	158	22	239
4	302	253	12	239
34	217	217	85	240
34	405	552	19	240
34	532	219	45	240
14	518	518	42	240
14	165	297	44	240
34	317	333	8	241
34	353	416	51	241
15	252	120	52	241
15	313	252	4	241
36	342	551	51	242
36	84	258	39	242
14	518	473	51	242
14	367	297	40	242
2	301	286	84	243
2	77	301	46	243
2	35	65	6	243
8	198	254	89	243
8	525	251	56	243
8	135	24	59	243
38	435	369	77	244
38	480	174	4	244
38	295	369	72	244
19	314	488	27	244
19	314	119	47	244
6	555	398	9	245
6	545	49	46	245
17	186	195	3	245
17	325	186	78	245
17	33	263	39	245
16	230	288	77	246
16	330	341	27	246
20	15	563	54	246
20	474	397	11	246
20	289	474	45	246
27	338	464	30	247
27	312	502	24	247
9	387	13	16	247
9	374	132	18	247
9	544	67	22	247
19	546	117	45	248
19	315	458	69	248
19	302	72	19	248
10	187	296	59	248
10	147	176	62	248
60	68	467	74	249
60	231	121	11	249
60	183	150	54	249
1	570	570	90	249
1	449	175	0	249
1	23	171	61	249
1	101	375	41	250
1	259	572	76	250
1	373	125	71	250
11	185	564	43	250
11	207	207	8	250
11	21	11	37	250
16	382	496	69	251
16	414	330	32	251
3	191	191	26	251
3	150	454	4	251
3	344	505	37	251
9	42	370	49	252
9	222	571	72	252
10	307	359	44	252
10	112	244	53	252
10	391	296	79	252
6	494	555	5	253
6	545	431	13	253
6	109	242	67	253
13	101	471	65	253
13	62	572	45	253
13	240	446	10	253
3	76	14	47	254
3	136	539	51	254
3	172	334	24	254
1	456	419	44	254
1	29	20	55	254
11	46	490	22	255
11	207	185	38	255
11	248	490	76	255
9	521	492	45	255
9	47	97	70	255
24	239	390	46	256
24	53	24	17	256
24	256	557	55	256
16	464	428	22	256
16	516	426	76	256
16	338	61	82	256
8	181	320	57	257
8	424	41	20	257
6	537	402	40	257
6	500	451	68	257
6	230	293	87	257
36	551	376	34	258
36	129	36	84	258
36	131	36	60	258
7	538	249	46	258
7	168	524	65	258
7	237	54	29	258
34	534	190	17	259
34	317	73	10	259
4	318	245	16	259
4	315	218	48	259
60	344	505	82	260
60	183	433	51	260
60	433	201	54	260
12	38	180	31	260
12	369	295	84	260
12	44	149	49	260
15	89	281	74	261
15	486	474	70	261
15	154	409	2	261
15	299	260	18	261
15	233	241	47	261
27	348	61	22	262
27	348	27	18	262
27	348	502	38	262
14	10	367	81	262
14	232	473	47	262
1	18	352	21	263
1	471	422	51	263
17	531	42	25	263
17	531	571	81	263
2	324	280	8	264
2	65	280	73	264
2	504	206	81	264
2	552	532	3	264
2	416	317	87	264
13	484	167	76	265
13	107	107	8	265
13	173	111	26	265
20	329	486	24	265
20	397	482	68	265
57	243	476	69	266
57	193	95	43	266
57	260	241	35	266
19	234	7	59	266
19	334	26	61	266
19	122	314	34	266
19	218	458	58	267
19	141	158	13	267
19	318	141	62	267
5	109	379	54	267
5	555	272	72	267
4	401	410	15	268
4	499	29	16	268
4	328	225	72	268
8	96	256	27	268
8	423	53	22	268
31	475	475	40	269
31	147	339	86	269
11	292	273	72	269
11	248	248	36	269
27	338	204	20	270
27	276	61	83	270
27	348	148	24	270
6	566	496	0	270
6	530	566	77	270
6	537	288	3	270
3	76	522	31	271
3	192	488	35	271
20	388	281	84	271
20	224	388	61	271
20	281	481	45	271
19	436	140	45	272
19	365	556	17	272
19	556	196	79	272
18	153	298	46	272
18	515	441	20	272
18	209	515	78	272
57	199	184	5	273
57	470	114	63	273
7	286	65	43	273
7	324	520	75	273
4	175	354	75	274
4	171	449	43	274
4	29	449	74	274
9	374	97	38	274
9	162	492	47	274
24	135	106	43	275
24	457	53	60	275
24	400	363	87	275
17	98	9	76	275
17	350	325	5	275
17	517	43	74	275
6	406	526	87	276
6	28	49	26	276
6	555	358	47	276
10	444	187	70	276
10	377	377	50	276
38	295	169	26	277
38	384	44	21	277
2	34	353	8	277
2	177	317	27	277
11	37	554	60	278
11	164	554	4	278
14	536	297	11	278
14	560	536	69	278
14	536	227	81	278
60	191	121	69	279
60	332	81	52	279
13	80	404	26	279
13	235	48	50	279
34	152	190	67	280
34	552	357	83	280
34	219	405	7	280
1	143	570	59	280
1	171	519	83	280
1	225	328	78	280
13	387	331	55	281
13	421	544	34	281
13	421	331	62	281
3	282	231	45	281
3	467	430	33	281
3	170	460	59	281
36	396	441	1	282
36	385	342	45	282
19	395	76	56	282
19	172	26	57	282
19	522	14	22	282
2	264	469	8	283
2	35	108	10	283
5	555	123	41	283
5	28	272	63	283
5	242	362	14	283
31	359	307	66	284
31	268	45	44	284
8	53	557	27	284
8	254	400	79	284
8	400	543	41	284
15	479	481	23	285
15	478	236	75	285
15	478	329	32	285
16	340	27	89	285
16	338	303	73	285
16	426	148	25	285
1	404	50	57	286
1	375	189	42	286
1	352	182	4	286
15	287	313	22	286
15	57	57	39	286
8	536	165	40	287
8	79	503	75	287
4	568	245	68	287
4	19	420	8	287
4	365	556	60	287
9	535	571	88	288
9	22	427	3	288
9	98	128	78	288
12	384	93	13	288
12	93	435	61	288
12	366	58	29	288
16	166	293	84	289
16	247	214	62	289
16	293	466	31	289
11	513	540	30	289
11	207	490	27	289
6	266	559	13	290
6	545	497	69	290
6	291	398	46	290
18	82	261	25	290
18	380	508	50	290
18	258	347	75	290
27	340	61	13	291
27	216	438	88	291
13	48	18	82	291
13	373	189	13	291
13	446	235	54	291
3	172	453	79	292
3	522	178	90	292
9	432	97	62	292
9	331	47	29	292
19	218	253	83	293
19	568	140	77	293
19	19	141	46	293
17	9	33	25	293
17	220	43	89	293
57	154	407	47	294
57	233	233	63	294
57	69	567	22	294
6	542	542	58	294
6	496	500	66	294
6	214	530	81	294
24	96	509	59	295
24	106	106	42	295
24	363	363	44	295
2	116	255	63	295
2	139	217	79	295
60	191	150	33	296
60	121	344	58	296
14	8	227	57	296
14	473	8	21	296
14	518	8	45	296
11	156	248	76	297
11	490	46	14	297
11	46	11	72	297
7	394	249	31	297
7	54	35	25	297
38	366	44	9	298
38	435	44	34	298
38	38	180	19	298
20	163	124	38	298
20	481	482	82	298
15	69	476	87	326
15	243	527	39	326
34	219	139	67	327
34	219	306	59	327
34	179	219	88	327
19	462	462	73	327
19	234	159	68	327
19	314	7	49	327
36	551	515	90	328
36	261	298	26	328
36	508	131	38	328
9	512	167	10	328
9	132	368	67	328
9	13	97	24	328
2	524	77	3	329
2	301	394	61	329
16	303	262	7	329
16	204	27	17	329
9	350	263	31	330
9	489	533	88	330
9	489	263	7	330
6	16	230	87	330
6	414	166	16	330
24	251	251	43	331
24	483	400	67	331
24	251	106	85	331
20	89	413	1	331
20	289	289	70	331
20	397	343	42	331
31	39	359	43	332
31	528	359	87	332
13	125	572	68	332
13	50	211	80	332
6	272	526	50	333
6	109	123	53	333
3	430	332	30	333
3	344	454	5	333
11	459	554	17	334
11	207	564	67	334
11	134	459	56	334
12	138	558	88	334
12	435	44	71	334
8	197	126	0	335
8	408	10	68	335
8	74	408	30	335
1	519	143	74	335
1	514	100	67	335
36	131	441	44	336
36	194	380	26	336
16	61	216	28	336
16	61	303	67	336
60	85	81	25	337
60	323	433	55	337
60	460	81	14	337
2	532	415	20	337
2	353	157	11	337
13	167	387	74	338
13	47	331	37	338
17	186	487	3	338
17	325	350	9	338
3	5	285	87	339
3	7	172	42	339
3	5	5	80	339
14	181	367	37	339
14	503	560	62	339
1	125	80	49	340
1	364	373	85	340
4	19	218	6	340
4	141	510	39	340
15	482	388	48	341
15	281	474	43	341
18	569	311	2	341
18	258	261	41	341
18	515	396	24	341
57	184	287	88	342
57	69	243	12	342
57	299	443	9	342
8	400	390	51	342
8	135	483	84	342
16	496	326	66	343
16	330	330	72	343
16	496	496	31	343
10	56	371	27	343
10	528	429	69	343
10	475	31	86	343
4	86	4	84	344
4	419	86	44	344
4	468	300	81	344
5	49	358	65	344
5	431	70	77	344
5	272	545	20	344
27	270	428	64	345
27	321	90	67	345
27	438	393	15	345
11	292	472	12	345
11	248	164	86	345
11	273	412	67	345
38	180	548	54	346
38	477	558	73	346
7	394	65	84	346
7	538	450	50	346
8	367	424	49	347
8	118	144	85	347
8	32	106	57	347
8	102	483	20	347
8	400	256	23	347
34	532	552	56	348
34	504	504	62	348
34	532	255	25	348
18	551	146	49	348
18	258	36	58	348
18	209	342	33	348
15	397	481	46	349
15	479	343	72	349
15	388	281	64	349
1	23	225	25	349
1	392	175	78	349
1	20	328	30	349
31	359	39	1	350
31	307	31	69	350
3	137	81	26	350
3	430	201	67	350
3	121	231	47	350
11	21	564	2	351
11	21	134	63	351
11	134	540	25	351
19	234	122	31	351
19	5	453	6	351
19	529	76	44	351
34	416	226	19	352
34	34	353	1	352
13	189	101	27	352
13	62	101	7	352
6	250	291	11	353
6	279	494	70	353
6	358	308	83	353
6	361	542	58	353
6	451	402	21	353
9	355	98	70	354
9	399	128	8	354
16	464	312	85	354
16	428	216	48	354
24	457	565	24	355
24	509	316	38	355
9	387	63	36	355
9	167	368	32	355
8	181	560	56	356
8	79	503	27	356
20	236	561	50	356
20	224	561	65	356
20	15	482	14	356
36	376	202	15	357
36	82	441	21	357
15	154	184	28	357
15	188	233	33	357
19	458	245	71	358
19	218	221	53	358
19	318	290	28	358
1	223	335	2	358
1	175	511	28	358
2	274	64	9	359
2	493	383	33	359
2	469	64	24	359
3	332	323	30	359
3	455	68	73	359
3	191	467	49	359
31	200	475	74	360
31	452	475	44	360
31	200	498	70	360
12	138	548	8	360
12	44	322	43	360
16	293	214	76	361
16	402	382	13	361
7	448	35	63	361
7	65	450	3	361
13	162	173	15	362
13	360	13	35	362
13	167	294	55	362
2	534	157	58	362
2	206	415	77	362
1	101	352	73	363
1	62	18	21	363
8	372	198	61	363
8	423	96	3	363
8	135	198	6	363
15	329	486	70	364
15	463	478	68	364
15	388	388	32	364
17	487	42	20	364
17	535	355	43	364
17	220	507	75	364
27	502	348	43	365
27	547	270	12	365
27	142	204	79	365
5	115	250	49	365
5	6	28	55	365
57	120	188	68	366
57	476	184	49	366
57	299	188	24	366
11	134	412	33	366
11	185	134	42	366
11	278	25	77	366
38	562	295	67	367
38	417	435	70	367
14	320	297	41	367
14	408	144	53	367
14	144	408	12	367
3	529	110	56	368
3	257	309	90	368
10	268	444	77	368
10	391	549	8	368
10	296	371	90	368
4	300	23	37	369
4	130	20	62	369
4	449	449	38	369
18	202	55	72	369
18	376	385	69	369
18	508	36	57	369
60	137	505	66	370
60	170	433	5	370
4	117	72	5	370
4	221	290	19	370
4	215	140	67	370
36	209	258	18	371
36	84	131	43	371
36	78	342	71	371
3	121	460	63	371
3	85	231	3	371
3	467	150	19	371
2	77	54	26	372
2	538	2	54	372
2	65	469	44	372
1	212	143	36	372
1	335	225	78	372
6	431	28	39	373
6	559	70	86	373
6	497	308	80	373
9	484	544	28	373
9	512	111	78	373
9	267	267	42	373
9	222	336	83	374
9	195	195	36	374
9	517	399	3	374
15	199	188	8	374
15	470	120	48	374
15	443	260	15	374
19	19	510	57	375
19	215	568	37	375
12	366	138	40	375
12	366	38	55	375
12	480	58	26	375
11	164	185	33	376
11	564	490	0	376
11	273	46	38	376
20	563	463	33	376
20	563	163	2	376
20	329	289	75	376
31	66	475	63	377
31	59	452	49	377
31	452	39	67	377
16	90	270	84	377
16	393	547	44	377
16	338	94	43	377
24	102	400	90	378
24	239	135	2	378
24	523	305	20	378
19	334	334	80	378
19	110	257	13	378
34	157	116	52	379
34	179	333	82	379
34	333	152	1	379
6	361	382	88	379
6	402	542	48	379
6	103	103	61	379
8	541	208	11	380
8	503	503	50	380
8	473	503	85	380
13	352	155	85	380
13	422	439	55	380
13	422	155	56	380
\.


                                                                                                                 2876.dat                                                                                            0000600 0004000 0002000 00000336526 13774640454 0014315 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	12	Aaron Cresswell	30	629712000	Premier League	2018/2019	Defender	West Ham United	1589	888	701	England	20	11	9	0	0	0	1	1	0	0	0	3	2	1	22	12	10	1	0	0.06	0.06	0	0	0	0	1.25	72	79	1589	1589	0.06	290	191	80	20
2	6	Aaron Lennon	33	545554800	Premier League	2018/2019	Midfielder	Burnley	1217	487	730	England	16	7	9	1	1	0	1	1	0	0	0	4	2	2	20	8	12	1	0	0.15	0.07	0.07	0.18	0	1217	1.48	61	76	1217	1217	0.07	199	187	-1	10
3	18	Aaron Mooy	30	653382000	Premier League	2018/2019	Midfielder	Huddersfield Town	2327	1190	1137	Australia	29	15	14	3	1	2	1	0	1	1	0	4	3	1	46	20	26	4	0	0.15	0.04	0.12	0.08	0.16	776	1.78	51	80	582	2327	0.15	147	233	-1	3
4	0	Aaron Ramsey	29	662198400	Premier League	2018/2019	Midfielder	Arsenal	1327	689	638	Wales	28	14	14	4	2	2	6	5	1	0	0	7	6	1	12	2	10	0	0	0.68	0.41	0.27	0.26	0.28	332	0.81	111	47	0	221	0	69	8	-1	5
5	18	Aaron Rowe	20	968310000	Premier League	2018/2019	Forward	Huddersfield Town	69	14	55	England	2	1	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	1.3	69	35	0	0	0	-1	-1	-1	31
6	4	Aaron Wan-Bissaka	22	880531200	Premier League	2018/2019	Midfielder	Crystal Palace	3135	1605	1530	England	35	18	17	0	0	0	3	1	2	0	0	12	7	5	41	17	24	5	1	0.09	0.09	0	0	0	0	1.18	76	90	523	1045	0.17	312	160	-1	22
7	18	Abdelhamid Sabiri	23	849168000	Premier League	2018/2019	Midfielder	Huddersfield Town	49	0	49	Morocco	2	0	2	0	0	0	0	0	0	0	0	0	0	0	3	0	3	0	0	0	0	0	0	0	0	5.51	16	25	0	0	0	-1	-1	-1	22
8	13	Abdoulaye Doucour├⌐	27	725875200	Premier League	2018/2019	Midfielder	Watford	3062	1566	1496	France	35	18	17	5	3	2	6	2	4	0	0	5	3	2	54	27	27	7	0	0.32	0.18	0.15	0.17	0.12	612	1.59	57	87	437	510	0.21	118	80	-1	5
9	16	Aboubakar Kamara	25	794563200	Premier League	2018/2019	Forward	Fulham	687	468	219	France	13	8	5	3	1	2	0	0	0	1	1	2	1	1	16	9	7	2	0	0.39	0	0.39	0.19	0.82	229	2.1	43	53	344	0	0.26	37	412	-1	4
10	13	Adalberto Pe├▒aranda Maestre	23	865062000	Premier League	2018/2019	Forward	Watford	0	0	0	Venezuela	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
11	10	Adam David Lallana	32	579250800	Premier League	2018/2019	Midfielder	Liverpool	465	189	276	England	13	6	7	0	0	0	0	0	0	0	0	6	1	5	2	1	1	1	0	0	0	0	0	0	0	0.39	233	36	465	0	0.19	379	344	-1	18
12	13	Adam Masina	26	757497600	Premier League	2018/2019	Defender	Watford	1003	463	540	Italy	14	7	7	0	0	0	1	1	0	0	0	2	1	1	19	8	11	5	0	0.09	0.09	0	0	0	0	1.7	53	72	201	1003	0.45	397	155	143	20
13	8	Adam Smith	29	672908400	Premier League	2018/2019	Defender	AFC Bournemouth	2073	1051	1022	England	25	12	13	1	1	0	1	0	1	0	0	9	5	4	30	10	20	6	1	0.09	0.04	0.04	0.09	0	2073	1.3	69	83	296	2073	0.3	237	228	85	10
14	18	Adama Diakhaby	24	836550000	Premier League	2018/2019	Forward	Huddersfield Town	551	345	206	France	12	8	4	0	0	0	0	0	0	0	0	1	1	0	16	7	9	1	0	0	0	0	0	0	0	2.61	34	46	551	0	0.16	332	359	-1	26
15	19	Adama Traor├⌐ Diarra	24	822556800	Premier League	2018/2019	Midfielder	Wolverhampton Wanderers	890	315	575	Spain	29	12	17	1	0	1	1	1	0	0	0	6	4	2	11	2	9	1	0	0.2	0.1	0.1	0	0.16	890	1.11	81	31	890	890	0.1	169	152	-1	13
16	5	Ademola Lookman	23	877330800	Premier League	2018/2019	Forward	Everton	601	334	267	England	21	11	10	0	0	0	2	2	0	0	0	8	5	3	7	2	5	0	0	0.3	0.3	0	0	0	0	1.05	86	29	0	301	0	292	20	-1	17
17	13	Adrian Mariappa	34	528706800	Premier League	2018/2019	Defender	Watford	1921	841	1080	Jamaica	26	12	14	0	0	0	0	0	0	0	0	6	3	3	29	10	19	3	0	0	0	0	0	0	0	1.36	66	74	640	0	0.14	396	414	94	21
18	12	Adri├ín San Miguel del Castillo	33	536659200	Premier League	2018/2019	Goalkeeper	West Ham United	0	0	0	Spain	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
19	3	Adrien Sebastian Perruchet Silva	31	605952000	Premier League	2018/2019	Midfielder	Leicester City	88	8	80	Portugal	2	1	1	0	0	0	0	0	0	0	0	1	1	0	1	0	1	0	0	0	0	0	0	0	0	1.02	88	44	0	0	0	-1	-1	-1	15
20	0	Ainsley Maitland-Niles	23	872838000	Premier League	2018/2019	Midfielder	Arsenal	985	462	523	England	16	7	9	1	0	1	1	0	1	0	0	4	3	1	16	5	11	3	1	0.18	0.09	0.09	0	0.17	985	1.46	62	62	328	985	0.27	173	167	-1	15
21	10	Alberto Moreno	28	710319600	Premier League	2018/2019	Defender	Liverpool	155	90	65	Spain	2	1	1	0	0	0	0	0	0	0	0	0	0	0	2	1	1	0	0	0	0	0	0	0	0	1.16	78	78	0	0	0	-1	-1	-1	17
22	16	Aleksandar Mitrovi─ç	26	779698800	Premier League	2018/2019	Forward	Fulham	3282	1616	1666	Serbia	37	18	19	11	8	3	3	2	1	1	0	5	3	2	74	31	43	7	0	0.38	0.08	0.3	0.45	0.16	298	2.03	44	89	469	1094	0.19	62	176	-1	1
23	0	Alex Iwobi	24	831106800	Premier League	2018/2019	Forward	Arsenal	1972	742	1230	Nigeria	35	18	17	3	1	2	6	3	3	0	0	8	7	1	31	8	23	0	0	0.41	0.27	0.14	0.12	0.15	657	1.41	64	56	0	329	0	125	31	-1	8
24	7	Alex McCarthy	30	628675200	Premier League	2018/2019	Goalkeeper	Southampton	2250	1170	1080	England	25	13	12	0	0	0	0	0	0	0	0	4	2	2	37	16	21	1	0	0	0	0	0	0	0	1.48	61	90	2250	0	0.04	372	365	114	21
25	10	Alex Oxlade-Chamberlain	27	745398000	Premier League	2018/2019	Midfielder	Liverpool	19	19	0	England	2	2	0	0	0	0	0	0	0	0	0	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	10	0	0	0	-1	-1	-1	21
26	18	Alex Pritchard	27	736412400	Premier League	2018/2019	Midfielder	Huddersfield Town	2092	992	1100	England	30	14	16	2	1	1	0	0	0	0	0	4	2	2	39	16	23	2	0	0.09	0	0.09	0.09	0.08	1046	1.68	54	70	1046	0	0.09	176	373	-1	5
27	15	Alex Smithies	30	636624000	Premier League	2018/2019	Goalkeeper	Cardiff City	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
28	4	Alexander S├╕rloth	24	818150400	Premier League	2018/2019	Forward	Crystal Palace	173	121	52	Norway	12	8	4	0	0	0	0	0	0	0	0	4	3	1	1	0	1	0	0	0	0	0	0	0	0	0.52	173	14	0	0	0	-1	-1	-1	17
29	0	Alexandre Lacazette	29	675414000	Premier League	2018/2019	Forward	Arsenal	2503	1403	1100	France	35	19	16	13	9	4	8	4	4	0	0	7	7	0	28	10	18	2	0	0.76	0.29	0.47	0.58	0.33	193	1.01	89	72	1252	313	0.07	24	25	-1	2
30	12	Alexandre Nascimento Costa Silva	23	858499200	Premier League	2018/2019	Forward	West Ham United	17	0	17	Portugal	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	17	0	0	0	-1	-1	-1	16
31	9	Alexis Sanchez	31	598521600	Premier League	2018/2019	Forward	Manchester United	877	387	490	Chile	20	10	10	1	1	0	3	0	3	0	0	6	2	4	8	4	4	3	0	0.41	0.31	0.1	0.23	0	877	0.82	110	44	292	292	0.31	166	17	-1	10
32	7	Alfie Jones	23	876207600	Premier League	2018/2019	Defender	Southampton	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
33	16	Alfie Mawson	26	758966400	Premier League	2018/2019	Defender	Fulham	1131	547	584	England	15	8	7	0	0	0	0	0	0	0	0	3	2	1	25	10	15	2	0	0	0	0	0	0	0	1.99	45	75	566	0	0.16	302	258	161	11
34	1	Alfie Whiteman	22	907311600	Premier League	2018/2019	Goalkeeper	Tottenham Hotspur	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
35	6	Ali Koiki	20	966927600	Premier League	2018/2019	Defender	Burnley	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
36	17	Alireza Jahanbakhsh	27	745052400	Premier League	2018/2019	Forward	Brighton & Hove Albion	1022	494	528	Iran	19	9	10	0	0	0	0	0	0	0	0	4	3	1	16	8	8	2	0	0	0	0	0	0	0	1.41	64	54	511	0	0.18	403	270	-1	16
37	10	Alisson Becker	28	718009200	Premier League	2018/2019	Goalkeeper	Liverpool	3420	1710	1710	Brazil	38	19	19	0	0	0	0	0	0	0	0	21	12	9	19	8	11	1	0	0	0	0	0	0	0	0.5	180	90	3420	0	0.03	417	387	3	16
38	11	Alvaro Morata	28	719823600	Premier League	2018/2019	Forward	Chelsea	943	530	413	Spain	16	8	8	5	3	2	0	0	0	0	0	9	4	5	11	6	5	3	0	0.48	0	0.48	0.51	0.44	189	1.05	86	59	314	0	0.29	19	338	-1	4
39	9	Ander Herrera	31	619081200	Premier League	2018/2019	Midfielder	Manchester United	1404	617	787	Spain	22	10	12	2	0	2	3	3	0	0	0	6	1	5	17	9	8	4	0	0.32	0.19	0.13	0	0.23	702	1.09	83	64	351	468	0.26	135	68	-1	7
40	5	Andr├⌐ Filipe Tavares Gomes	27	744015600	Premier League	2018/2019	Midfielder	Everton	1986	972	1014	Portugal	27	13	14	1	1	0	1	1	0	0	0	10	6	4	27	13	14	7	0	0.09	0.05	0.05	0.09	0	1986	1.22	74	74	284	1986	0.32	222	213	-1	11
41	13	Andre Gray	29	677919600	Premier League	2018/2019	Forward	Watford	1358	809	549	England	29	15	14	7	5	2	2	2	0	0	0	5	3	2	23	16	7	2	0	0.6	0.13	0.46	0.56	0.33	194	1.52	59	47	679	679	0.13	25	109	-1	3
42	16	Andr├⌐ Sch├╝rrle	29	657878400	Premier League	2018/2019	Midfielder	Fulham	1650	829	821	Germany	24	12	12	6	3	3	0	0	0	0	0	1	0	1	42	20	22	2	0	0.33	0	0.33	0.33	0.33	275	2.29	39	69	825	0	0.11	54	417	-1	2
43	16	Andr├⌐-Frank Zambo Anguissa	24	816508800	Premier League	2018/2019	Midfielder	Fulham	1518	587	931	Cameroon	22	10	12	0	0	0	0	0	0	0	0	3	2	1	30	10	20	3	1	0	0	0	0	0	0	1.78	51	69	506	0	0.18	288	285	-1	19
44	11	Andreas Christensen	24	829119600	Premier League	2018/2019	Defender	Chelsea	615	360	255	Denmark	8	4	4	0	0	0	0	0	0	0	0	3	3	0	7	2	5	1	0	0	0	0	0	0	0	1.02	88	77	615	0	0.15	338	346	35	21
45	9	Andreas Pereira	24	820483200	Premier League	2018/2019	Midfielder	Manchester United	595	521	74	Brazil	15	10	5	1	1	0	1	1	0	0	0	1	1	0	10	7	3	5	0	0.3	0.15	0.15	0.17	0	595	1.51	60	40	119	595	0.76	120	93	-1	16
46	10	Andrew Robertson	26	763372800	Premier League	2018/2019	Defender	Liverpool	3219	1599	1620	Scotland	36	18	18	0	0	0	11	9	2	0	0	21	12	9	17	7	10	4	0	0.31	0.31	0	0	0	0	0.48	189	89	805	293	0.11	418	19	2	20
47	8	Andrew Surman	34	524905200	Premier League	2018/2019	Midfielder	AFC Bournemouth	1438	526	912	England	18	7	11	0	0	0	0	0	0	0	0	5	3	2	35	7	28	2	0	0	0	0	0	0	0	2.19	41	80	719	0	0.13	359	379	-1	27
48	12	Andriy Yarmolenko	31	625129200	Premier League	2018/2019	Forward	West Ham United	459	269	190	Ukraine	9	5	4	2	0	2	0	0	0	0	0	1	1	0	4	1	3	2	0	0.39	0	0.39	0	0.95	230	0.78	115	51	230	0	0.39	38	361	-1	7
49	4	Andros Townsend	29	679647600	Premier League	2018/2019	Midfielder	Crystal Palace	3018	1571	1447	England	38	19	19	6	2	4	4	2	2	0	0	12	7	5	44	20	24	1	0	0.3	0.12	0.18	0.11	0.25	503	1.31	69	79	3018	755	0.03	102	127	-1	3
50	12	Andy Carroll	31	600076800	Premier League	2018/2019	Forward	West Ham United	454	180	274	England	12	6	6	0	0	0	0	0	0	0	0	2	1	1	6	2	4	2	0	0	0	0	0	0	0	1.19	76	38	227	0	0.4	270	326	-1	17
51	9	Angel Gomes	20	967705200	Premier League	2018/2019	Midfielder	Manchester United	25	25	0	England	2	2	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	3.6	25	13	0	0	0	-1	-1	-1	19
52	12	Angelo Ogbonna	32	580374000	Premier League	2018/2019	Defender	West Ham United	1870	956	914	Italy	24	12	12	1	1	0	1	1	0	0	0	3	2	1	32	13	19	2	0	0.1	0.05	0.05	0.09	0	1870	1.54	58	78	935	1870	0.1	225	207	124	13
53	7	Angus Gunn	24	822297600	Premier League	2018/2019	Goalkeeper	Southampton	1080	540	540	England	12	6	6	0	0	0	0	0	0	0	0	3	1	2	17	9	8	0	0	0	0	0	0	0	0	1.42	64	90	0	0	0	376	339	104	25
54	6	Anthony Driscoll-Glennon	20	943603200	Premier League	2018/2019	Defender	Burnley	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
55	17	Anthony Knockaert	28	690624000	Premier League	2018/2019	Midfielder	Brighton & Hove Albion	1832	982	850	France	30	16	14	2	1	1	6	5	1	0	0	3	3	0	36	17	19	5	1	0.39	0.29	0.1	0.09	0.11	916	1.77	51	61	305	305	0.29	161	27	-1	6
56	9	Anthony Martial	24	818150400	Premier League	2018/2019	Forward	Manchester United	1623	743	880	France	27	11	16	10	4	6	2	1	1	1	0	5	1	4	25	8	17	2	0	0.67	0.11	0.55	0.48	0.61	162	1.39	65	60	812	812	0.11	12	137	-1	4
57	14	Antonio Barreca	25	795513600	Premier League	2018/2019	Defender	Newcastle United	4	0	4	Italy	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4	0	0	0	-1	-1	-1	16
58	11	Antonio R├╝diger	27	731145600	Premier League	2018/2019	Defender	Chelsea	2874	1350	1524	Germany	33	15	18	1	1	0	0	0	0	0	0	12	7	5	34	10	24	7	0	0.03	0	0.03	0.07	0	2874	1.06	85	87	411	0	0.22	259	374	38	13
59	9	Antonio Valencia	35	491986800	Premier League	2018/2019	Defender	Manchester United	466	196	270	Ecuador	6	3	3	0	0	0	0	0	0	0	0	2	0	2	5	4	1	2	0	0	0	0	0	0	0	0.97	93	78	233	0	0.39	300	256	29	23
60	2	Arijanet Muric	22	910425600	Premier League	2018/2019	Goalkeeper	Manchester City	0	0	0	Montenegro	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
61	15	Aron Einar Gunnarsson	31	609231600	Premier League	2018/2019	Midfielder	Cardiff City	2274	1240	1034	Iceland	28	14	14	1	1	0	1	1	0	0	0	8	4	4	37	20	17	5	0	0.08	0.04	0.04	0.07	0	2274	1.46	61	81	455	2274	0.2	241	234	-1	9
62	12	Arthur Masuaku	26	752659200	Premier League	2018/2019	Defender	West Ham United	1756	822	934	France	23	11	12	0	0	0	1	1	0	0	0	6	3	3	26	11	15	2	0	0.05	0.05	0	0	0	0	1.33	68	76	878	1756	0.1	368	203	89	25
63	8	Artur Boruc	40	319881600	Premier League	2018/2019	Goalkeeper	AFC Bournemouth	1080	540	540	Poland	12	6	6	0	0	0	0	0	0	0	0	4	2	2	17	4	13	2	0	0	0	0	0	0	0	1.42	64	90	540	0	0.17	361	394	100	20
64	6	Ashley Barnes	31	625737600	Premier League	2018/2019	Forward	Burnley	2400	1307	1093	England	37	19	18	12	6	6	2	1	1	2	0	8	5	3	34	16	18	8	0	0.53	0.08	0.45	0.41	0.49	200	1.28	71	65	300	1200	0.3	27	172	-1	1
65	6	Ashley Westwood	30	638956800	Premier League	2018/2019	Midfielder	Burnley	2822	1530	1292	England	34	18	16	2	0	2	7	2	5	0	0	7	5	2	44	22	22	5	0	0.29	0.22	0.06	0	0.14	1411	1.4	64	83	564	403	0.16	208	55	-1	8
66	9	Ashley Young	35	489740400	Premier League	2018/2019	Midfielder	Manchester United	2568	1207	1361	England	30	14	16	2	1	1	2	2	0	0	0	4	2	2	41	16	25	10	1	0.14	0.07	0.07	0.07	0.07	1284	1.44	63	86	257	1284	0.35	191	181	-1	9
67	8	Asmir Begovi─ç	33	551170800	Premier League	2018/2019	Goalkeeper	AFC Bournemouth	2160	1080	1080	Bosnia and Herzegovina	24	12	12	0	0	0	0	0	0	0	0	5	3	2	44	19	25	0	0	0	0	0	0	0	0	1.83	49	90	0	0	0	358	273	154	19
68	2	Aymeric Laporte	26	770022000	Premier League	2018/2019	Defender	Manchester City	3057	1526	1531	France	35	17	18	3	0	3	3	3	0	0	0	18	8	10	21	11	10	3	0	0.18	0.09	0.09	0	0.18	1019	0.62	146	87	1019	1019	0.09	177	158	14	9
69	14	Ayoze Perez	27	743929200	Premier League	2018/2019	Forward	Newcastle United	2929	1526	1403	Spain	37	19	18	12	9	3	2	1	1	0	0	11	5	6	34	21	13	2	0	0.43	0.06	0.37	0.53	0.19	244	1.04	86	79	1465	1465	0.06	43	197	-1	1
70	4	Bakary Sako	32	578041200	Premier League	2018/2019	Midfielder	Crystal Palace	25	8	17	Mali	4	3	1	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	0	0	0	-1	-1	-1	23
71	0	Bakayo Sako	0	0	Premier League	2018/2019	Midfielder	Arsenal	7	7	0	England	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	7	0	0	0	-1	-1	-1	17
72	3	Ben Chilwell	23	851155200	Premier League	2018/2019	Defender	Leicester City	3240	1620	1620	England	36	18	18	0	0	0	4	1	3	0	0	10	6	4	39	15	24	4	0	0.11	0.11	0	0	0	0	1.08	83	90	810	810	0.11	344	142	44	16
73	1	Ben Davies	27	735634800	Premier League	2018/2019	Defender	Tottenham Hotspur	1839	916	923	Wales	27	13	14	0	0	0	0	0	0	0	0	10	6	4	24	10	14	2	0	0	0	0	0	0	0	1.17	77	68	920	0	0.1	353	274	60	26
74	13	Ben Foster	37	418204800	Premier League	2018/2019	Goalkeeper	Watford	3420	1710	1710	England	38	19	19	0	0	0	0	0	0	0	0	7	4	3	57	28	29	1	0	0	0	0	0	0	0	1.5	60	90	3420	0	0.03	365	353	116	18
75	6	Ben Gibson	27	727084800	Premier League	2018/2019	Defender	Burnley	63	63	0	England	1	1	0	1	1	0	0	0	0	0	0	0	0	0	3	3	0	1	0	1.43	0	1.43	1.43	0	63	4.29	21	63	63	0	1.43	-1	-1	-1	9
76	18	Ben Hamer	32	564393600	Premier League	2018/2019	Goalkeeper	Huddersfield Town	553	283	270	England	7	4	3	0	0	0	0	0	0	0	0	1	1	0	20	9	11	0	0	0	0	0	0	0	0	3.25	28	79	0	0	0	327	348	175	14
77	6	Ben Mee	31	622364400	Premier League	2018/2019	Defender	Burnley	3420	1710	1710	England	38	19	19	0	0	0	2	1	1	0	0	8	5	3	57	27	30	9	0	0.05	0.05	0	0	0	0	1.5	60	90	380	1710	0.24	380	211	118	21
78	17	Ben White	23	876294000	Premier League	2018/2019	Defender	Brighton & Hove Albion	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
79	13	Ben Wilmot	21	941702400	Premier League	2018/2019	Defender	Watford	26	0	26	England	2	0	2	0	0	0	0	0	0	0	0	1	0	1	2	0	2	0	0	0	0	0	0	0	0	6.92	13	13	0	0	0	-1	-1	-1	17
80	12	Benjamin Johnson	20	948700800	Premier League	2018/2019	Forward	West Ham United	63	0	63	England	1	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	1.43	63	63	0	0	0	-1	-1	-1	26
81	2	Benjamin Mendy	26	774428400	Premier League	2018/2019	Defender	Manchester City	900	450	450	France	10	5	5	0	0	0	5	3	2	0	0	4	1	3	6	4	2	1	0	0.5	0.5	0	0	0	0	0.6	150	90	900	180	0.1	311	3	12	18
82	17	Beram Kayal	32	578559600	Premier League	2018/2019	Midfielder	Brighton & Hove Albion	934	494	440	Israel	18	9	9	1	0	1	1	1	0	0	0	5	3	2	15	8	7	4	0	0.19	0.1	0.1	0	0.2	934	1.45	62	52	234	934	0.39	159	146	-1	8
83	5	Bernard An├¡cio Caldeira Duarte	28	715935600	Premier League	2018/2019	Midfielder	Everton	2128	960	1168	Brazil	34	16	18	1	0	1	3	1	2	0	0	14	9	5	19	5	14	5	0	0.17	0.13	0.04	0	0.08	2128	0.8	112	63	426	709	0.21	246	120	-1	12
84	17	Bernardo	25	800434800	Premier League	2018/2019	Defender	Brighton & Hove Albion	1750	990	760	Brazil	22	11	11	0	0	0	1	1	0	0	0	4	2	2	28	17	11	4	0	0.05	0.05	0	0	0	0	1.44	63	80	438	1750	0.21	400	200	107	20
85	2	Bernardo Silva	26	776502000	Premier League	2018/2019	Midfielder	Manchester City	2853	1470	1383	Portugal	36	18	18	7	2	5	7	4	3	0	0	18	8	10	22	11	11	3	0	0.44	0.22	0.22	0.12	0.33	408	0.69	130	79	951	408	0.09	85	58	-1	5
86	0	Bernd Leno	28	699696000	Premier League	2018/2019	Goalkeeper	Arsenal	2835	1395	1440	Germany	32	16	16	0	0	0	0	0	0	0	0	7	6	1	39	12	27	0	0	0	0	0	0	0	0	1.24	73	89	0	0	0	390	413	76	23
87	15	Bobby Reid	27	728640000	Premier League	2018/2019	Midfielder	Cardiff City	1422	725	697	England	27	11	16	5	4	1	2	1	1	1	0	6	2	4	27	19	8	0	0	0.44	0.13	0.32	0.5	0.13	284	1.71	53	53	0	711	0	57	115	-1	2
88	15	Brian Murphy	37	421138800	Premier League	2018/2019	Goalkeeper	Cardiff City	0	0	0	Republic of Ireland	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
89	19	Bright Enobakhare	22	886924800	Premier League	2018/2019	Forward	Wolverhampton Wanderers	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
90	15	Bruno ├ëcu├⌐l├⌐ Manga	32	585039600	Premier League	2018/2019	Defender	Cardiff City	3375	1710	1665	Gabon	38	19	19	0	0	0	1	1	0	0	0	10	5	5	59	34	25	0	0	0.03	0.03	0	0	0	0	1.57	57	89	0	3375	0	337	242	126	24
91	17	Bruno Saltor Grau	40	339231600	Premier League	2018/2019	Defender	Brighton & Hove Albion	1136	534	602	Spain	14	6	8	0	0	0	1	1	0	0	0	4	2	2	17	8	9	2	0	0.08	0.08	0	0	0	0	1.35	67	81	568	1136	0.16	399	175	92	19
92	3	Caglar S├╢y├╝nc├╝	24	832834800	Premier League	2018/2019	Defender	Leicester City	371	191	180	Turkey	6	4	2	0	0	0	0	0	0	0	0	2	2	0	3	1	2	1	0	0	0	0	0	0	0	0.73	124	62	371	0	0.24	267	330	16	20
93	11	Callum Hudson-Odoi	20	973584000	Premier League	2018/2019	Midfielder	Chelsea	391	267	124	England	10	6	4	0	0	0	1	1	0	0	0	3	3	0	5	2	3	0	0	0.23	0.23	0	0	0	0	1.15	78	39	0	391	0	277	54	-1	16
94	15	Callum Paterson	26	782031600	Premier League	2018/2019	Defender	Cardiff City	1996	1024	972	Scotland	27	14	13	4	3	1	1	0	1	0	0	7	5	2	37	18	19	4	0	0.23	0.05	0.18	0.26	0.09	499	1.67	54	74	499	1996	0.18	108	202	137	3
95	14	Callum Roberts	23	861001200	Premier League	2018/2019	Forward	Newcastle United	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
96	7	Callum Slattery	21	918460800	Premier League	2018/2019	Midfielder	Southampton	110	6	104	England	3	1	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	37	0	0	0	-1	-1	-1	18
97	8	Callum Wilson	28	699177600	Premier League	2018/2019	Forward	AFC Bournemouth	2535	1324	1211	England	30	15	15	14	5	9	9	4	5	1	1	9	5	4	44	17	27	3	0	0.82	0.32	0.5	0.34	0.67	181	1.56	58	85	845	282	0.11	17	16	-1	1
98	16	Calum Chambers	25	790588800	Premier League	2018/2019	Defender	Fulham	2587	1458	1129	England	31	17	14	2	2	0	0	0	0	0	0	5	3	2	49	24	25	9	0	0.07	0	0.07	0.12	0	1294	1.7	53	83	287	0	0.31	198	399	144	5
99	19	Cameron John	21	935478000	Premier League	2018/2019	Defender	Wolverhampton Wanderers	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
100	0	Carl Jenkinson	28	697536000	Premier League	2018/2019	Defender	Arsenal	166	166	0	England	3	3	0	0	0	0	0	0	0	0	0	0	0	0	2	2	0	0	0	0	0	0	0	0	0	1.08	83	55	0	0	0	-1	-1	-1	18
101	12	Carlos S├ínchez	34	508060800	Premier League	2018/2019	Midfielder	West Ham United	240	120	120	Colombia	7	4	3	0	0	0	0	0	0	0	0	2	2	0	2	0	2	0	0	0	0	0	0	0	0	0.75	120	34	0	0	0	-1	-1	-1	21
102	7	Cedric Soares	29	683622000	Premier League	2018/2019	Defender	Southampton	1494	651	843	Portugal	18	8	10	1	1	0	2	0	2	0	0	5	2	3	26	7	19	4	0	0.18	0.12	0.06	0.14	0	1494	1.57	57	83	374	747	0.24	206	123	127	15
103	5	Cenk Tosun	29	676278000	Premier League	2018/2019	Forward	Everton	1050	536	514	Turkey	25	13	12	3	2	1	3	1	2	0	0	7	4	3	16	9	7	3	0	0.51	0.26	0.26	0.34	0.18	350	1.37	66	42	350	350	0.26	77	37	-1	6
104	11	Cesar Azpilicueta	31	620290800	Premier League	2018/2019	Defender	Chelsea	3403	1693	1710	Spain	38	19	19	1	0	1	5	3	2	0	0	16	10	6	38	12	26	4	0	0.16	0.13	0.03	0	0.05	3403	1	90	90	851	681	0.11	260	116	33	14
105	11	Cesc Fabregas	33	547110000	Premier League	2018/2019	Midfielder	Chelsea	175	73	102	Spain	6	4	2	0	0	0	0	0	0	0	0	3	2	1	2	0	2	1	0	0	0	0	0	0	0	1.03	88	29	175	0	0.51	-1	-1	-1	18
106	7	Charlie Austin	31	615625200	Premier League	2018/2019	Forward	Southampton	980	454	526	England	25	13	12	2	1	1	2	1	1	0	1	6	3	3	14	6	8	1	0	0.37	0.18	0.18	0.2	0.17	490	1.29	70	39	980	490	0.09	105	73	-1	8
107	8	Charlie Daniels	34	526460400	Premier League	2018/2019	Defender	AFC Bournemouth	1583	803	780	England	21	11	10	1	1	0	0	0	0	0	0	6	4	2	32	14	18	4	0	0.06	0	0.06	0.11	0	1583	1.82	49	75	396	0	0.23	203	254	152	12
108	6	Charlie Taylor	27	748335600	Premier League	2018/2019	Defender	Burnley	3240	1636	1604	England	38	19	19	0	0	0	1	1	0	0	0	8	5	3	53	24	29	2	0	0.03	0.03	0	0	0	0	1.47	61	85	1620	3240	0.06	381	239	111	19
109	4	Cheikhou Kouyat├⌐	30	630230400	Premier League	2018/2019	Midfielder	Crystal Palace	1897	865	1032	Senegal	31	14	17	0	0	0	2	1	1	0	0	11	6	5	24	7	17	3	0	0.09	0.09	0	0	0	0	1.14	79	61	632	949	0.14	323	161	-1	20
110	18	Chris L├╢we	31	608713200	Premier League	2018/2019	Defender	Huddersfield Town	2056	932	1124	Germany	29	15	14	0	0	0	2	1	1	0	0	1	1	0	52	19	33	2	0	0.09	0.09	0	0	0	0	2.28	40	71	1028	1028	0.09	328	163	169	30
111	8	Chris Mepham	23	878716800	Premier League	2018/2019	Defender	AFC Bournemouth	849	436	413	Wales	13	6	7	0	0	0	1	0	1	0	0	3	1	2	16	7	9	1	0	0.11	0.11	0	0	0	0	1.7	53	65	849	849	0.11	279	140	142	17
112	9	Chris Smalling	30	627724800	Premier League	2018/2019	Defender	Manchester United	2128	1138	990	England	24	13	11	1	0	1	0	0	0	0	0	4	2	2	34	16	18	1	0	0.04	0	0.04	0	0.09	2128	1.44	63	89	2128	0	0.04	242	294	106	15
113	6	Chris Wood	28	692092800	Premier League	2018/2019	Forward	Burnley	2582	1330	1252	New Zealand	38	19	19	10	4	6	2	0	2	0	0	8	5	3	43	21	22	2	0	0.42	0.07	0.35	0.27	0.43	258	1.5	60	68	1291	1291	0.07	50	188	-1	2
114	14	Christian Atsu Twasam	28	695030400	Premier League	2018/2019	Midfielder	Newcastle United	1487	710	777	Ghana	28	13	15	1	1	0	0	0	0	0	0	8	3	5	16	10	6	2	0	0.06	0	0.06	0.13	0	1487	0.97	93	53	744	0	0.12	207	271	-1	7
115	4	Christian Benteke	29	660211200	Premier League	2018/2019	Forward	Crystal Palace	813	526	287	Belgium	16	10	6	1	0	1	1	0	1	0	0	5	3	2	10	6	4	1	0	0.22	0.11	0.11	0	0.31	813	1.11	81	51	813	813	0.11	149	141	-1	10
116	1	Christian Eriksen	28	698054400	Premier League	2018/2019	Midfielder	Tottenham Hotspur	2772	1457	1315	Denmark	35	18	17	8	6	2	12	8	4	0	0	10	6	4	34	14	20	3	0	0.65	0.39	0.26	0.37	0.14	347	1.1	82	79	924	231	0.1	75	10	-1	4
117	3	Christian Fuchs	34	513244800	Premier League	2018/2019	Defender	Leicester City	206	90	116	Austria	3	1	2	0	0	0	0	0	0	0	0	0	0	0	4	3	1	0	0	0	0	0	0	0	0	1.75	52	69	0	0	0	-1	-1	-1	17
118	13	Christian Kabasele	29	667382400	Premier League	2018/2019	Defender	Watford	1587	957	630	Belgium	21	14	7	0	0	0	0	0	0	0	0	4	3	1	25	15	10	4	1	0	0	0	0	0	0	1.42	63	76	397	0	0.23	393	402	101	24
119	18	Christopher Schindler	30	641372400	Premier League	2018/2019	Defender	Huddersfield Town	3262	1642	1620	Germany	37	19	18	1	0	1	0	0	0	0	0	5	3	2	69	30	39	6	1	0.03	0	0.03	0	0.06	3262	1.9	47	88	544	0	0.17	252	345	157	9
120	14	Ciaran Clark	31	622796400	Premier League	2018/2019	Defender	Newcastle United	857	416	441	Republic of Ireland	11	6	5	3	1	2	0	0	0	0	0	2	0	2	14	9	5	1	0	0.32	0	0.32	0.22	0.41	286	1.47	61	78	857	0	0.11	59	315	113	4
121	2	Claudio Andr├⌐s Bravo Mu├▒oz	37	419068800	Premier League	2018/2019	Goalkeeper	Manchester City	0	0	0	Chile	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
122	18	Collin Quaner	29	677228400	Premier League	2018/2019	Forward	Huddersfield Town	37	9	28	Germany	2	1	1	0	0	0	0	0	0	0	0	0	0	0	2	0	2	0	0	0	0	0	0	0	0	4.86	19	19	0	0	0	-1	-1	-1	15
123	4	Connor Wickham	27	733564800	Premier League	2018/2019	Forward	Crystal Palace	61	49	12	England	6	3	3	0	0	0	1	0	1	0	0	2	1	1	0	0	0	0	0	1.48	1.48	0	0	0	0	0	0	10	0	61	0	-1	-1	-1	16
124	19	Conor Coady	27	730627200	Premier League	2018/2019	Midfielder	Wolverhampton Wanderers	3420	1710	1710	England	38	19	19	0	0	0	0	0	0	0	0	9	7	2	43	20	23	5	0	0	0	0	0	0	0	1.13	80	90	684	0	0.13	394	415	-1	18
125	12	Conor Coventry	20	953971200	Premier League	2018/2019	Midfielder	West Ham United	0	0	0	Republic of Ireland	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
126	13	Craig Cathcart	31	602755200	Premier League	2018/2019	Defender	Watford	3099	1561	1538	Northern Ireland	36	18	18	3	1	2	0	0	0	0	0	6	3	3	52	28	24	2	0	0.09	0	0.09	0.06	0.12	1033	1.51	60	86	1550	0	0.06	175	400	119	6
127	10	Curtis Jones	19	980841600	Premier League	2018/2019	Midfielder	Liverpool	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
128	16	Cyrus Christie	28	717836400	Premier League	2018/2019	Defender	Fulham	1943	1053	890	Republic of Ireland	28	15	13	0	0	0	1	1	0	0	0	5	3	2	40	20	20	7	0	0.05	0.05	0	0	0	0	1.85	49	69	278	1943	0.32	315	205	155	27
129	17	Dale Stephens	31	613638000	Premier League	2018/2019	Midfielder	Brighton & Hove Albion	2487	1191	1296	England	30	14	16	1	0	1	1	0	1	0	0	5	3	2	43	18	25	7	1	0.07	0.04	0.04	0	0.07	2487	1.56	58	83	311	2487	0.29	247	224	-1	9
130	0	Dami├ín Emiliano Mart├¡nez	28	715417200	Premier League	2018/2019	Goalkeeper	Arsenal	0	0	0	Argentina	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
131	17	Dan Burn	28	705394800	Premier League	2018/2019	Defender	Brighton & Hove Albion	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
132	8	Dan Gosling	30	633859200	Premier League	2018/2019	Midfielder	AFC Bournemouth	1737	911	826	England	25	13	12	2	0	2	1	0	1	0	0	7	4	3	31	14	17	8	0	0.16	0.05	0.1	0	0.22	869	1.61	56	69	217	1737	0.41	162	206	-1	8
133	3	Daniel Amartey	25	787996800	Premier League	2018/2019	Midfielder	Leicester City	640	307	333	Ghana	9	5	4	0	0	0	0	0	0	0	0	2	1	1	9	4	5	2	0	0	0	0	0	0	0	1.27	71	71	320	0	0.28	343	313	-1	24
134	10	Daniel Sturridge	31	620636400	Premier League	2018/2019	Forward	Liverpool	496	152	344	England	18	9	9	2	1	1	1	1	0	0	0	10	7	3	3	0	3	1	0	0.54	0.18	0.36	0.59	0.26	248	0.54	165	28	496	496	0.18	47	79	-1	10
135	7	Daniel William John Ings	28	711874800	Premier League	2018/2019	Forward	Southampton	1668	922	746	England	24	13	11	7	3	4	3	3	0	3	0	6	2	4	26	13	13	1	0	0.54	0.16	0.38	0.29	0.48	238	1.4	64	70	1668	556	0.05	41	87	-1	2
136	18	Daniel Williams	31	605347200	Premier League	2018/2019	Midfielder	Huddersfield Town	93	13	80	USA	5	1	4	0	0	0	0	0	0	0	0	1	0	1	1	0	1	1	0	0	0	0	0	0	0	0.97	93	19	93	0	0.97	-1	-1	-1	21
137	2	Danilo	29	679561200	Premier League	2018/2019	Defender	Manchester City	806	450	356	Brazil	11	5	6	1	0	1	0	0	0	0	0	5	3	2	7	2	5	1	0	0.11	0	0.11	0	0.25	806	0.78	115	73	806	0	0.11	148	318	18	13
138	11	Danny Drinkwater	30	636624000	Premier League	2018/2019	Midfielder	Chelsea	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
139	1	Danny Rose	30	646902000	Premier League	2018/2019	Defender	Tottenham Hotspur	1806	969	837	England	26	13	13	0	0	0	3	1	2	0	0	10	7	3	12	6	6	5	0	0.15	0.15	0	0	0	0	0.6	151	69	361	602	0.25	287	95	11	17
140	3	Danny Simpson	33	536745600	Premier League	2018/2019	Defender	Leicester City	291	26	265	England	6	2	4	0	0	0	0	0	0	0	0	3	1	2	4	0	4	0	0	0	0	0	0	0	0	1.24	73	49	0	0	0	269	333	73	21
141	3	Danny Ward	27	740732400	Premier League	2018/2019	Goalkeeper	Leicester City	0	0	0	Wales	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
142	15	Danny Ward	29	660729600	Premier League	2018/2019	Forward	Cardiff City	440	246	194	England	14	6	8	1	1	0	0	0	0	0	0	2	0	2	11	8	3	0	0	0.2	0	0.2	0.37	0	440	2.25	40	31	0	0	0	94	382	-1	10
143	0	Danny Welbeck	29	659606400	Premier League	2018/2019	Forward	Arsenal	147	47	100	England	8	4	4	1	1	0	1	0	1	0	0	2	2	0	2	0	2	0	0	1.22	0.61	0.61	1.91	0	147	1.22	74	18	0	147	0	-1	-1	-1	13
144	13	Daryl Janmaat	31	617094000	Premier League	2018/2019	Defender	Watford	1521	836	685	Netherlands	18	10	8	0	0	0	2	2	0	0	0	3	2	1	22	8	14	3	0	0.12	0.12	0	0	0	0	1.3	69	85	507	761	0.18	395	128	84	23
145	8	David Brooks	23	868345200	Premier League	2018/2019	Forward	AFC Bournemouth	2278	1289	989	England	30	17	13	7	4	3	5	3	2	0	0	9	5	4	39	17	22	3	0	0.47	0.2	0.28	0.28	0.27	325	1.54	58	76	759	456	0.12	68	66	-1	4
146	17	David Button	31	604569600	Premier League	2018/2019	Goalkeeper	Brighton & Hove Albion	360	180	180	England	4	2	2	0	0	0	0	0	0	0	0	1	1	0	5	1	4	0	0	0	0	0	0	0	0	1.25	72	90	0	0	0	404	327	79	14
147	9	David de Gea	29	657964800	Premier League	2018/2019	Goalkeeper	Manchester United	3420	1710	1710	Spain	38	19	19	0	0	0	0	0	0	0	0	7	2	5	51	23	28	1	0	0	0	0	0	0	0	1.34	67	90	3420	0	0.03	310	419	91	18
148	15	David Junior Hoilett	30	644569200	Premier League	2018/2019	Forward	Cardiff City	2142	1008	1134	Canada	32	17	15	3	2	1	1	0	1	0	0	9	5	4	42	20	22	4	0	0.17	0.04	0.13	0.18	0.08	714	1.76	51	67	536	2142	0.17	138	220	-1	7
149	11	David Luiz	33	546073200	Premier League	2018/2019	Defender	Chelsea	3239	1709	1530	Brazil	36	19	17	3	3	0	2	1	1	0	0	16	10	6	35	12	23	3	0	0.14	0.06	0.08	0.16	0	1080	0.97	93	90	1080	1620	0.08	187	198	27	9
150	2	David Silva	34	505555200	Premier League	2018/2019	Midfielder	Manchester City	2411	1088	1323	Spain	33	16	17	6	4	2	8	3	5	0	0	17	8	9	14	7	7	3	0	0.52	0.3	0.22	0.33	0.14	402	0.52	172	73	804	301	0.11	88	22	-1	7
151	11	Davide Zappacosta	28	708246000	Premier League	2018/2019	Defender	Chelsea	125	35	90	Italy	4	3	1	0	0	0	0	0	0	0	0	3	2	1	0	0	0	0	0	0	0	0	0	0	0	0	0	31	0	0	0	-1	-1	-1	22
152	1	Davinson S├ínchez Mina	24	834562800	Premier League	2018/2019	Defender	Tottenham Hotspur	1943	873	1070	Colombia	23	10	13	1	1	0	1	0	1	0	0	6	3	3	21	9	12	2	0	0.09	0.05	0.05	0.1	0	1943	0.97	93	84	972	1943	0.09	217	208	26	13
153	17	Davy Pr├╢pper	29	683794800	Premier League	2018/2019	Midfielder	Brighton & Hove Albion	2551	1371	1180	Netherlands	30	16	14	1	0	1	1	0	1	0	0	5	4	1	44	19	25	2	0	0.07	0.04	0.04	0	0.08	2551	1.55	58	85	1276	2551	0.07	243	226	-1	10
154	14	DeAndre Yedlin	27	742201200	Premier League	2018/2019	Defender	Newcastle United	2475	1313	1162	USA	29	16	13	1	0	1	2	1	1	0	0	6	4	2	37	19	18	7	1	0.11	0.07	0.04	0	0.08	2475	1.35	67	85	309	1238	0.29	232	177	93	13
155	12	Declan Rice	21	916300800	Premier League	2018/2019	Midfielder	West Ham United	3005	1440	1565	Republic of Ireland	34	16	18	2	2	0	0	0	0	0	0	6	3	3	42	21	21	4	0	0.06	0	0.06	0.13	0	1503	1.26	72	88	751	0	0.12	205	362	-1	9
156	10	Dejan Lovren	31	615625200	Premier League	2018/2019	Defender	Liverpool	985	540	445	Croatia	13	7	6	1	1	0	0	0	0	0	0	6	3	3	7	3	4	1	0	0.09	0	0.09	0.17	0	985	0.64	141	76	985	0	0.09	170	324	15	12
157	1	Dele Alli	24	829206000	Premier League	2018/2019	Midfielder	Tottenham Hotspur	1827	755	1072	England	25	11	14	5	1	4	3	2	1	0	0	7	3	4	17	4	13	4	0	0.39	0.15	0.25	0.12	0.34	365	0.84	107	73	457	609	0.2	82	97	-1	5
158	3	Demarai Gray	24	835945200	Premier League	2018/2019	Midfielder	Leicester City	1992	1069	923	England	34	17	17	4	1	3	1	1	0	0	0	8	5	3	26	10	16	2	0	0.23	0.05	0.18	0.08	0.29	498	1.17	77	59	996	1992	0.09	103	212	-1	3
159	18	Demeaco Duhaney	22	908262000	Premier League	2018/2019	Defender	Huddersfield Town	46	46	0	England	1	1	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	46	0	0	0	-1	-1	-1	17
160	16	Denis Odoi	32	580719600	Premier League	2018/2019	Defender	Fulham	2593	1153	1440	Belgium	31	15	16	0	0	0	1	0	1	0	0	5	3	2	59	23	36	4	0	0.03	0.03	0	0	0	0	2.05	44	84	648	2593	0.14	286	244	165	17
161	0	Denis Su├írez	26	757843200	Premier League	2018/2019	Midfielder	Arsenal	67	29	38	Spain	4	2	2	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	17	0	0	0	-1	-1	-1	28
162	8	Diego Rico	27	730454400	Premier League	2018/2019	Defender	AFC Bournemouth	607	148	459	Spain	12	4	8	0	0	0	0	0	0	0	0	0	0	0	18	3	15	1	0	0	0	0	0	0	0	2.67	34	51	607	0	0.15	303	259	172	21
163	19	Diogo Jos├⌐ Teixeira da Silva	23	849686400	Premier League	2018/2019	Midfielder	Wolverhampton Wanderers	2371	1210	1161	Portugal	33	16	17	9	7	2	5	3	2	0	0	9	7	2	29	11	18	11	0	0.53	0.19	0.34	0.52	0.16	263	1.1	82	72	216	474	0.42	52	71	-1	2
164	10	Divock Origi	25	798188400	Premier League	2018/2019	Forward	Liverpool	366	176	190	Belgium	12	5	7	3	2	1	1	0	1	0	0	7	4	3	2	0	2	0	0	0.98	0.25	0.74	1.02	0.47	122	0.49	183	31	0	366	0	2	42	-1	7
165	13	Domingos Quina	20	942912000	Premier League	2018/2019	Midfielder	Watford	335	217	118	Portugal	8	5	3	1	1	0	0	0	0	0	0	1	0	1	5	3	2	0	0	0.27	0	0.27	0.41	0	335	1.34	67	42	0	0	0	72	316	-1	13
166	5	Dominic Calvert-Lewin	23	858499200	Premier League	2018/2019	Forward	Everton	1774	1023	751	England	35	18	17	6	3	3	2	2	0	0	0	13	8	5	24	12	12	3	0	0.41	0.1	0.3	0.26	0.36	296	1.22	74	51	591	887	0.15	65	145	-1	3
167	8	Dominic Solanke	23	874220400	Premier League	2018/2019	Forward	AFC Bournemouth	341	165	176	England	10	4	6	0	0	0	1	1	0	0	0	2	0	2	4	1	3	0	0	0.26	0.26	0	0	0	0	1.06	85	34	0	341	0	280	38	-1	16
168	6	Dwight McNeil	20	943257600	Premier League	2018/2019	Forward	Burnley	1599	941	658	England	21	12	9	3	3	0	5	3	2	0	0	4	3	1	22	12	10	2	0	0.45	0.28	0.17	0.29	0	533	1.24	73	76	800	320	0.11	113	29	-1	7
169	11	Eden Hazard	29	663235200	Premier League	2018/2019	Midfielder	Chelsea	2926	1527	1399	Belgium	37	19	18	16	11	5	15	10	5	4	0	15	10	5	34	9	25	2	0	0.95	0.46	0.49	0.65	0.32	183	1.05	86	79	1463	195	0.06	18	5	-1	1
170	2	Ederson	27	745570800	Premier League	2018/2019	Goalkeeper	Manchester City	3420	1710	1710	Brazil	38	19	19	0	0	0	1	1	0	0	0	20	9	11	23	12	11	2	0	0.03	0.03	0	0	0	0	0.61	149	90	1710	3420	0.05	366	240	13	21
171	0	Edward Nketiah	21	928047600	Premier League	2018/2019	Forward	Arsenal	62	4	58	England	5	1	4	1	0	1	0	0	0	0	0	1	1	0	2	0	2	0	0	1.45	0	1.45	0	1.55	62	2.9	31	12	0	0	0	-1	-1	-1	14
172	18	Elias Kachunga	28	703926000	Premier League	2018/2019	Forward	Huddersfield Town	1181	611	570	Congo DR	20	9	11	0	0	0	0	0	0	0	0	2	1	1	28	14	14	2	0	0	0	0	0	0	0	2.13	42	59	591	0	0.15	306	261	-1	12
173	8	Emerson Hyndman	24	829033200	Premier League	2018/2019	Midfielder	AFC Bournemouth	37	0	37	USA	1	0	1	0	0	0	0	0	0	0	0	0	0	0	2	0	2	0	0	0	0	0	0	0	0	4.86	19	37	0	0	0	-1	-1	-1	14
174	11	Emerson Palmieri dos Santos	26	775897200	Premier League	2018/2019	Defender	Chelsea	660	360	300	Italy	10	4	6	0	0	0	0	0	0	0	0	3	2	1	10	3	7	0	0	0	0	0	0	0	0	1.36	66	66	0	0	0	274	296	96	17
175	0	Emile Smith Rowe	20	964767600	Premier League	2018/2019	Midfielder	Arsenal	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
176	9	Eric Bertrand Bailly	26	766134000	Premier League	2018/2019	Defender	Manchester United	637	349	288	qhorve	12	5	7	0	0	0	0	0	0	0	0	3	0	3	12	6	6	1	1	0	0	0	0	0	0	1.7	53	53	319	0	0.28	340	310	141	26
177	1	Eric Dier	26	758620800	Premier League	2018/2019	Midfielder	Tottenham Hotspur	1510	674	836	England	20	9	11	3	2	1	0	0	0	0	0	6	2	4	16	8	8	4	0	0.18	0	0.18	0.27	0.11	503	0.95	94	76	378	0	0.24	107	278	-1	7
178	18	Erik Durm	28	705654000	Premier League	2018/2019	Defender	Huddersfield Town	2052	869	1183	Germany	28	13	15	0	0	0	1	0	1	0	0	3	1	2	43	17	26	0	0	0.04	0.04	0	0	0	0	1.89	48	73	0	2052	0	307	232	156	13
179	1	Erik Lamela	28	699696000	Premier League	2018/2019	Midfielder	Tottenham Hotspur	971	493	478	Argentina	19	11	8	4	1	3	2	1	1	0	0	5	3	2	11	5	6	2	0	0.56	0.19	0.37	0.18	0.56	243	1.02	88	51	486	486	0.19	46	69	-1	6
180	11	Ethan Ampadu	20	968914800	Premier League	2018/2019	Midfielder	Chelsea	0	0	0	Wales	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
181	13	Etienne Capoue	32	584607600	Premier League	2018/2019	Midfielder	Watford	2947	1518	1429	France	33	17	16	1	0	1	3	2	1	0	0	7	4	3	47	24	23	15	1	0.12	0.09	0.03	0	0.06	2947	1.44	63	89	184	982	0.49	253	153	-1	9
182	12	Fabi├ín Cornelio Balbuena Gonz├ílez	29	682930800	Premier League	2018/2019	Defender	West Ham United	2014	934	1080	Paraguay	23	11	12	1	0	1	0	0	0	0	0	5	2	3	27	13	14	2	0	0.04	0	0.04	0	0.08	2014	1.21	75	88	1007	0	0.09	230	356	66	10
183	2	Fabian Delph	30	627638400	Premier League	2018/2019	Midfielder	Manchester City	725	266	459	England	11	5	6	0	0	0	1	1	0	0	0	4	1	3	9	4	5	2	1	0.12	0.12	0	0	0	0	1.12	81	66	242	725	0.37	295	125	-1	19
184	14	Fabian Sch├ñr	28	693216000	Premier League	2018/2019	Defender	Newcastle United	2002	1173	829	Switzerland	24	14	10	4	3	1	1	0	1	0	0	8	5	3	21	14	7	12	0	0.22	0.04	0.18	0.23	0.11	501	0.94	95	83	167	2002	0.54	110	230	23	3
185	10	Fabinho	27	751359600	Premier League	2018/2019	Midfielder	Liverpool	2013	1051	962	Brazil	28	14	14	1	1	0	2	1	1	0	0	15	7	8	13	6	7	6	0	0.13	0.09	0.04	0.09	0	2013	0.58	155	72	336	1007	0.27	235	166	-1	15
186	16	Fabricio Mart├¡n Agosto Ram├¡rez	32	567936000	Premier League	2018/2019	Goalkeeper	Fulham	180	90	90	Spain	2	1	1	0	0	0	0	0	0	0	0	0	0	0	5	2	3	0	0	0	0	0	0	0	0	2.5	36	90	0	0	0	-1	-1	-1	13
187	9	Faustino Marcos Alberto Rojo	30	637920000	Premier League	2018/2019	Defender	Manchester United	211	211	0	Argentina	5	5	0	0	0	0	0	0	0	0	0	0	0	0	4	4	0	2	0	0	0	0	0	0	0	1.71	53	42	106	0	0.85	-1	-1	-1	21
188	14	Federico Fern├índez	31	604051200	Premier League	2018/2019	Defender	Newcastle United	1484	607	877	Argentina	19	8	11	0	0	0	1	1	0	0	0	4	1	3	22	9	13	2	0	0.06	0.06	0	0	0	0	1.33	67	78	742	1484	0.12	297	194	90	15
189	12	Felipe Anderson Pereira Gomes	27	734857200	Premier League	2018/2019	Midfielder	West Ham United	3054	1439	1615	Brazil	36	17	19	9	4	5	4	2	2	0	0	6	3	3	43	21	22	3	0	0.38	0.12	0.27	0.25	0.28	339	1.27	71	85	1018	764	0.09	70	122	-1	2
190	1	Fernando Llorente Torres	35	478252800	Premier League	2018/2019	Forward	Tottenham Hotspur	683	508	175	Spain	20	11	9	1	1	0	4	4	0	0	0	7	5	2	8	5	3	2	0	0.66	0.53	0.13	0.18	0	683	1.05	85	34	342	171	0.26	136	2	-1	8
191	2	Fernando Luiz Rosa	35	484038000	Premier League	2018/2019	Midfielder	Manchester City	2381	1286	1095	Brazil	29	15	14	1	1	0	3	3	0	0	0	16	7	9	15	8	7	5	0	0.15	0.11	0.04	0.07	0	2381	0.57	159	82	476	794	0.19	229	139	-1	15
192	18	Florent Hadergjonaj	26	775638000	Premier League	2018/2019	Defender	Huddersfield Town	1840	1011	829	Switzerland	24	12	12	0	0	0	0	0	0	0	0	4	2	2	34	15	19	1	0	0	0	0	0	0	0	1.66	54	77	1840	0	0.05	329	376	135	29
193	14	Florian Lejeune	29	674722800	Premier League	2018/2019	Defender	Newcastle United	1055	515	540	France	12	6	6	0	0	0	0	0	0	0	0	3	3	0	12	3	9	0	0	0	0	0	0	0	0	1.02	88	88	0	0	0	278	301	36	14
194	17	Florin Andone	27	734511600	Premier League	2018/2019	Forward	Brighton & Hove Albion	874	416	458	Romania	23	12	11	3	2	1	0	0	0	0	0	3	3	0	13	5	8	5	0	0.31	0	0.31	0.43	0.2	291	1.34	67	38	175	0	0.51	60	289	-1	3
195	16	Floyd Ayit├⌐	31	598176000	Premier League	2018/2019	Midfielder	Fulham	465	296	169	Togo	16	7	9	1	0	1	0	0	0	0	0	3	1	2	13	7	6	0	0	0.19	0	0.19	0	0.53	465	2.52	36	29	0	0	0	101	268	-1	9
196	3	Fousseni Diabat├⌐	25	813999600	Premier League	2018/2019	Midfielder	Leicester City	55	0	55	Mali	1	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	1.64	55	55	0	0	0	-1	-1	-1	22
197	13	Francisco Femen├¡a Far	29	665481600	Premier League	2018/2019	Midfielder	Watford	2045	1011	1034	Spain	29	14	15	1	1	0	1	1	0	0	0	5	3	2	38	21	17	1	0	0.09	0.04	0.04	0.09	0	2045	1.67	54	71	2045	2045	0.04	238	216	-1	12
198	7	Fraser Forster	32	574588800	Premier League	2018/2019	Goalkeeper	Southampton	90	0	90	England	1	0	1	0	0	0	0	0	0	0	0	0	0	0	3	0	3	0	0	0	0	0	0	0	0	3	30	90	0	0	0	-1	-1	-1	29
199	14	Freddie Woodman	23	857462400	Premier League	2018/2019	Goalkeeper	Newcastle United	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
200	9	Frederico Rodrigues Santos	27	731318400	Premier League	2018/2019	Midfielder	Manchester United	1045	577	468	Brazil	17	9	8	1	1	0	1	0	1	0	0	0	0	0	19	8	11	2	0	0.17	0.09	0.09	0.16	0	1045	1.64	55	61	523	1045	0.17	179	156	-1	12
201	2	Gabriel Jesus	23	860054400	Premier League	2018/2019	Forward	Manchester City	1019	702	317	Brazil	29	14	15	7	5	2	3	1	2	1	0	16	7	9	11	7	4	1	0	0.88	0.26	0.62	0.64	0.57	146	0.97	93	35	1019	340	0.09	6	33	-1	4
202	17	Ga├½tan Bong Songo	32	577954800	Premier League	2018/2019	Defender	Brighton & Hove Albion	1805	720	1085	Cameroon	22	8	14	0	0	0	0	0	0	0	0	5	3	2	32	9	23	0	0	0	0	0	0	0	0	1.6	56	82	0	0	0	401	336	132	18
203	11	Gary Cahill	34	503827200	Premier League	2018/2019	Defender	Chelsea	22	1	21	England	2	1	1	0	0	0	0	0	0	0	0	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	11	0	0	0	-1	-1	-1	15
204	15	Gary Madine	30	651481200	Premier League	2018/2019	Forward	Cardiff City	32	17	15	England	5	3	2	0	0	0	0	0	0	0	0	0	0	0	2	0	2	0	0	0	0	0	0	0	0	5.63	16	6	0	0	0	-1	-1	-1	20
205	1	George Marsh	22	910252800	Premier League	2018/2019	Midfielder	Tottenham Hotspur	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
206	1	Georges-Kevin 	25	792662400	Premier League	2018/2019	Forward	Tottenham Hotspur	4	0	4	France	1	0	1	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	22.5	22.5	0	0	0	0	0	0	4	0	4	0	-1	-1	-1	18
207	10	Georginio Wijnaldum	29	658310400	Premier League	2018/2019	Midfielder	Liverpool	2735	1413	1322	Netherlands	35	18	17	3	1	2	0	0	0	0	0	21	12	9	15	6	9	3	0	0.1	0	0.1	0.06	0.14	912	0.49	182	78	912	0	0.1	157	416	-1	8
208	13	Gerard Deulofeu	26	763545600	Premier League	2018/2019	Forward	Watford	2082	949	1133	Spain	30	14	16	10	3	7	5	3	2	0	0	6	3	3	28	11	17	3	0	0.65	0.22	0.43	0.28	0.56	208	1.21	74	69	694	416	0.13	29	59	-1	1
209	17	Glenn Murray	37	433321200	Premier League	2018/2019	Forward	Brighton & Hove Albion	2513	1383	1130	England	38	19	19	13	8	5	1	1	0	4	0	7	5	2	44	22	22	5	0	0.5	0.04	0.47	0.52	0.4	193	1.58	57	66	503	2513	0.18	22	227	-1	1
210	11	Gonzalo Higuain	32	566121600	Premier League	2018/2019	Forward	Chelsea	1092	496	596	Argentina	14	6	8	5	4	1	0	0	0	0	0	5	4	1	15	3	12	0	0	0.41	0	0.41	0.73	0.15	218	1.24	73	78	0	0	0	33	306	-1	5
211	12	Grady Diangana	22	892969200	Premier League	2018/2019	Midfielder	West Ham United	604	326	278	England	17	9	8	0	0	0	1	1	0	0	0	2	1	1	11	8	3	0	0	0.15	0.15	0	0	0	0	1.64	55	36	0	604	0	298	89	-1	18
212	0	Granit Xhaka	28	717577200	Premier League	2018/2019	Midfielder	Arsenal	2502	1317	1185	Switzerland	29	15	14	4	2	2	2	0	2	0	0	7	6	1	35	11	24	10	0	0.22	0.07	0.14	0.14	0.15	626	1.26	71	86	250	1251	0.36	126	183	-1	6
213	15	Greg Cunningham	29	665308800	Premier League	2018/2019	Defender	Cardiff City	630	450	180	Republic of Ireland	7	5	2	0	0	0	0	0	0	0	0	1	0	1	16	15	1	3	0	0	0	0	0	0	0	2.29	39	90	210	0	0.43	313	381	170	19
214	5	Gylfi Sigurdsson	31	621241200	Premier League	2018/2019	Midfielder	Everton	3134	1602	1532	Iceland	38	19	19	13	7	6	6	2	4	2	3	14	9	5	40	19	21	3	0	0.55	0.17	0.37	0.39	0.35	241	1.15	78	82	1045	522	0.09	45	86	-1	2
215	3	Hamza Choudhury	23	875689200	Premier League	2018/2019	Midfielder	Leicester City	596	308	288	England	9	4	5	0	0	0	0	0	0	0	0	4	2	2	4	3	1	0	0	0	0	0	0	0	0	0.6	149	66	0	0	0	275	297	-1	23
216	15	Harry Arter	30	630835200	Premier League	2018/2019	Midfielder	Cardiff City	2008	1186	822	Republic of Ireland	25	14	11	0	0	0	1	1	0	0	0	7	4	3	37	25	12	10	0	0.04	0.04	0	0	0	0	1.66	54	80	201	2008	0.45	304	221	-1	16
217	1	Harry Kane	27	743842800	Premier League	2018/2019	Forward	Tottenham Hotspur	2427	1066	1361	England	28	12	16	17	6	11	4	2	2	4	0	10	4	6	28	10	18	5	0	0.78	0.15	0.63	0.51	0.73	143	1.04	87	87	485	607	0.19	5	94	-1	1
218	3	Harry Maguire	27	731318400	Premier League	2018/2019	Defender	Leicester City	2599	1350	1249	England	31	15	16	3	0	3	0	0	0	0	0	7	3	4	36	16	20	7	1	0.1	0	0.1	0	0.22	866	1.25	72	84	325	0	0.28	168	298	78	5
219	1	Harry Winks	24	823248000	Premier League	2018/2019	Midfielder	Tottenham Hotspur	1591	832	759	England	26	13	13	1	0	1	0	0	0	0	0	10	4	6	16	8	8	4	0	0.06	0	0.06	0	0.12	1591	0.91	99	61	398	0	0.23	204	335	-1	9
220	16	Harvey Elliot	0	0	Premier League	2018/2019	Forward	Fulham	18	16	2	England	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	9	0	0	0	-1	-1	-1	28
221	3	Harvey Lewis Barnes	22	881654400	Premier League	2018/2019	Midfielder	Leicester City	1007	601	406	England	16	9	7	1	0	1	2	2	0	0	0	3	3	0	16	7	9	0	0	0.27	0.18	0.09	0	0.22	1007	1.43	63	63	0	504	0	178	78	-1	10
222	16	H├Ñvard Nordtveit	30	645951600	Premier League	2018/2019	Midfielder	Fulham	361	90	271	Norway	5	1	4	0	0	0	1	0	1	0	0	1	0	1	9	2	7	0	0	0.25	0.25	0	0	0	0	2.24	40	72	0	361	0	419	41	-1	15
223	0	Hector Bellerin	25	795600000	Premier League	2018/2019	Defender	Arsenal	1535	882	653	Spain	19	10	9	0	0	0	5	4	1	0	0	4	4	0	20	8	12	3	0	0.29	0.29	0	0	0	0	1.17	77	81	512	307	0.18	385	26	61	27
224	19	H├⌐lder Wander Sousa Azevedo Costa	26	758361600	Premier League	2018/2019	Midfielder	Wolverhampton Wanderers	1345	657	688	Portugal	25	11	14	1	0	1	2	1	1	0	0	5	3	2	18	10	8	3	0	0.2	0.13	0.07	0	0.13	1345	1.2	75	54	448	673	0.2	195	113	-1	9
225	0	Henrikh Mkhitaryan	31	601372800	Premier League	2018/2019	Midfielder	Arsenal	1643	650	993	Armenia	25	11	14	6	3	3	4	3	1	0	0	4	3	1	25	9	16	1	0	0.55	0.22	0.33	0.42	0.27	274	1.37	66	66	1643	411	0.05	53	56	-1	3
226	1	Heung-Min Son	28	710578800	Premier League	2018/2019	Forward	Tottenham Hotspur	2048	1161	887	South Korea	31	16	15	12	8	4	6	2	4	0	0	11	7	4	20	8	12	3	1	0.79	0.26	0.53	0.62	0.41	171	0.88	102	66	512	341	0.18	14	34	-1	2
227	13	Heurelho da Silva Gomes	39	351072000	Premier League	2018/2019	Goalkeeper	Watford	0	0	0	Brazil	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
228	1	Hugo Lloris	33	535968000	Premier League	2018/2019	Goalkeeper	Tottenham Hotspur	2970	1620	1350	France	33	18	15	0	0	0	0	0	0	0	0	12	7	5	30	13	17	0	0	0	0	0	0	0	0	0.91	99	90	0	0	0	339	284	21	19
229	16	Ibrahima Ciss├⌐	26	762422400	Premier League	2018/2019	Midfielder	Fulham	87	9	78	Belgium	3	1	2	0	0	0	0	0	0	0	0	0	0	0	3	0	3	0	0	0	0	0	0	0	0	3.1	29	29	0	0	0	-1	-1	-1	20
230	5	Idrissa Gana Gueye	31	622796400	Premier League	2018/2019	Midfielder	Everton	2825	1407	1418	Senegal	33	16	17	0	0	0	2	1	1	0	0	13	9	4	29	10	19	6	0	0.06	0.06	0	0	0	0	0.92	97	86	471	1413	0.19	413	193	-1	19
231	2	─░lkay G├╝ndo─ƒan	30	656751600	Premier League	2018/2019	Midfielder	Manchester City	2135	985	1150	Germany	31	15	16	6	4	2	3	0	3	0	0	15	6	9	15	8	7	3	0	0.38	0.13	0.25	0.37	0.16	356	0.63	142	69	712	712	0.13	78	119	-1	8
232	13	Isaac Ajayi Success	24	821001600	Premier League	2018/2019	Forward	Watford	1037	461	576	Nigeria	30	15	15	1	1	0	1	0	1	0	0	5	3	2	20	8	12	4	0	0.17	0.09	0.09	0.2	0	1037	1.74	52	35	259	1037	0.35	180	154	-1	10
233	14	Isaac Hayden	25	795859200	Premier League	2018/2019	Midfielder	Newcastle United	1886	904	982	England	25	11	14	1	0	1	4	4	0	0	0	7	3	4	25	12	13	4	1	0.24	0.19	0.05	0	0.09	1886	1.19	75	75	377	472	0.24	221	67	-1	10
234	18	Isaac Mbenza	24	826272000	Premier League	2018/2019	Forward	Huddersfield Town	981	589	392	Belgium	22	13	9	1	1	0	1	1	0	0	0	4	2	2	25	15	10	1	0	0.18	0.09	0.09	0.15	0	981	2.29	39	45	981	981	0.09	174	165	-1	11
235	12	Issa Diop	23	852796800	Premier League	2018/2019	Defender	West Ham United	2970	1530	1440	France	33	17	16	1	1	0	0	0	0	0	0	7	4	3	38	20	18	4	0	0.03	0	0.03	0.06	0	2970	1.15	78	90	743	0	0.12	249	364	55	14
236	19	Ivan Ricardo Neves Abreu Cavaleiro	27	750927600	Premier League	2018/2019	Forward	Wolverhampton Wanderers	683	331	352	Portugal	23	13	10	3	2	1	1	0	1	0	0	5	4	1	10	7	3	1	0	0.53	0.13	0.4	0.54	0.26	228	1.32	68	30	683	683	0.13	34	117	-1	6
237	6	Jack Cork	31	614761200	Premier League	2018/2019	Midfielder	Burnley	3313	1693	1620	England	37	19	18	1	1	0	2	1	1	0	0	8	5	3	54	27	27	6	0	0.08	0.05	0.03	0.05	0	3313	1.47	61	90	552	1657	0.16	248	204	-1	11
238	8	Jack Simpson	23	850896000	Premier League	2018/2019	Defender	AFC Bournemouth	403	240	163	England	6	3	3	0	0	0	0	0	0	0	0	2	1	1	9	2	7	0	0	0	0	0	0	0	0	2.01	45	67	0	0	0	272	314	163	18
239	7	Jack Stephens	26	759657600	Premier League	2018/2019	Defender	Southampton	1697	816	881	England	24	10	14	1	1	0	0	0	0	0	0	5	2	3	30	11	19	4	0	0.05	0	0.05	0.11	0	1697	1.59	57	71	424	0	0.21	223	369	130	14
240	12	Jack Wilshere	28	694252800	Premier League	2018/2019	Midfielder	West Ham United	389	181	208	England	8	4	4	0	0	0	1	0	1	0	0	2	1	1	8	2	6	2	0	0.23	0.23	0	0	0	0	1.85	49	49	195	389	0.46	369	48	-1	24
241	14	Jacob Murphy	25	793612800	Premier League	2018/2019	Midfielder	Newcastle United	300	167	133	England	9	3	6	0	0	0	1	0	1	0	0	1	0	1	7	3	4	0	0	0.3	0.3	0	0	0	0	2.1	43	33	0	300	0	301	21	-1	17
242	4	Ja├»ro Riedewald	24	842252400	Premier League	2018/2019	Defender	Crystal Palace	0	0	0	Netherlands	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
243	14	Jamal Lascelles	26	753004800	Premier League	2018/2019	Defender	Newcastle United	2748	1308	1440	England	32	16	16	0	0	0	1	1	0	0	0	11	5	6	33	16	17	4	0	0.03	0.03	0	0	0	0	1.08	83	86	687	2748	0.13	346	245	41	23
244	9	James Garner	19	984470400	Premier League	2018/2019	Defender	Manchester United	0	0	0	England	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
245	3	James Maddison	23	848736000	Premier League	2018/2019	Midfielder	Leicester City	2850	1535	1315	England	36	18	18	7	3	4	7	4	3	1	1	8	5	3	39	18	21	5	1	0.44	0.22	0.22	0.18	0.27	407	1.23	73	79	570	407	0.16	83	60	-1	2
246	4	James McArthur	33	560588400	Premier League	2018/2019	Midfielder	Crystal Palace	3071	1506	1565	Scotland	38	19	19	3	1	2	6	1	5	0	0	12	7	5	44	19	25	7	0	0.26	0.18	0.09	0.06	0.12	1024	1.29	70	81	439	512	0.21	172	74	-1	7
247	5	James McCarthy	29	658396800	Premier League	2018/2019	Midfielder	Everton	14	14	0	Republic of Ireland	1	1	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	14	0	0	0	-1	-1	-1	22
248	10	James Milner	34	505209600	Premier League	2018/2019	Midfielder	Liverpool	1785	646	1139	England	31	12	19	5	0	5	4	2	2	3	0	18	9	9	11	4	7	7	1	0.45	0.2	0.25	0	0.4	357	0.55	162	58	255	446	0.35	81	65	-1	5
249	6	James Tarkowski	27	722160000	Premier League	2018/2019	Defender	Burnley	3087	1620	1467	England	35	18	17	3	2	1	1	1	0	0	0	7	5	2	52	25	27	8	0	0.12	0.03	0.09	0.11	0.06	1029	1.52	59	88	386	3087	0.23	181	238	121	4
250	4	James Tomkins	31	607161600	Premier League	2018/2019	Defender	Crystal Palace	2563	1140	1423	England	29	13	16	1	0	1	1	0	1	0	0	10	5	5	34	12	22	6	0	0.07	0.04	0.04	0	0.06	2563	1.19	75	88	427	2563	0.21	234	215	63	9
251	7	James Ward-Prowse	26	783676800	Premier League	2018/2019	Midfielder	Southampton	1942	942	1000	England	26	13	13	7	5	2	0	0	0	1	0	4	2	2	36	15	21	4	0	0.32	0	0.32	0.48	0.18	277	1.67	54	75	486	0	0.19	55	347	-1	1
252	14	Jamie Sterry	24	816940800	Premier League	2018/2019	Defender	Newcastle United	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
253	3	Jamie Vardy	33	537350400	Premier League	2018/2019	Forward	Leicester City	2735	1418	1317	England	34	17	17	18	8	10	4	3	1	4	1	10	6	4	33	13	20	4	1	0.72	0.13	0.59	0.51	0.68	152	1.09	83	80	547	684	0.16	9	118	-1	1
254	7	Jan Bednarek	24	829292400	Premier League	2018/2019	Defender	Southampton	2151	1126	1025	Poland	25	13	12	0	0	0	1	0	1	0	0	3	1	2	33	19	14	7	0	0.04	0.04	0	0	0	0	1.38	65	86	307	2151	0.29	377	225	98	24
255	1	Jan Vertonghen	33	546246000	Premier League	2018/2019	Defender	Tottenham Hotspur	1915	884	1031	Belgium	22	10	12	1	0	1	0	0	0	0	0	7	4	3	21	7	14	5	1	0.05	0	0.05	0	0.09	1915	0.99	91	87	383	0	0.23	219	282	31	10
256	7	Jannik Vestergaard	28	712825200	Premier League	2018/2019	Defender	Southampton	2030	1130	900	Denmark	23	13	10	0	0	0	0	0	0	0	0	4	2	2	27	14	13	2	0	0	0	0	0	0	0	1.2	75	88	1015	0	0.09	373	367	65	28
257	18	Jason Puncheon	34	520153200	Premier League	2018/2019	Midfielder	Huddersfield Town	391	248	143	England	11	6	5	0	0	0	0	0	0	0	0	3	2	1	8	6	2	1	0	0	0	0	0	0	0	1.84	49	36	391	0	0.23	305	260	-1	19
258	17	Jason Steele	30	650962800	Premier League	2018/2019	Goalkeeper	Brighton & Hove Albion	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
259	12	Javier Hernandez	32	581151600	Premier League	2018/2019	Forward	West Ham United	1335	694	641	Mexico	25	13	12	7	5	2	1	0	1	0	0	3	1	2	16	8	8	2	0	0.54	0.07	0.47	0.65	0.28	191	1.08	83	53	668	1335	0.13	21	186	-1	3
260	14	Javier Manquillo Gait├ín	26	768121200	Premier League	2018/2019	Defender	Newcastle United	1097	503	594	Spain	18	9	9	0	0	0	3	2	1	0	0	6	3	3	12	6	6	2	0	0.25	0.25	0	0	0	0	0.98	91	61	549	366	0.16	350	40	30	19
261	17	Jayson Molumby	21	933922800	Premier League	2018/2019	Midfielder	Brighton & Hove Albion	0	0	0	Republic of Ireland	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
262	15	Jazz Richards	29	671439600	Premier League	2018/2019	Defender	Cardiff City	128	52	76	Wales	4	2	2	0	0	0	0	0	0	0	0	1	0	1	4	2	2	0	0	0	0	0	0	0	0	2.81	32	32	0	0	0	-1	-1	-1	18
263	16	Jean Micha├½l Seri	29	679906800	Premier League	2018/2019	Midfielder	Fulham	2252	1112	1140	England	32	15	17	1	1	0	2	0	2	0	0	4	2	2	53	23	30	6	0	0.12	0.08	0.04	0.08	0	2252	2.12	42	70	375	1126	0.24	233	171	-1	7
264	6	Jeff Hendrick	28	696844800	Premier League	2018/2019	Midfielder	Burnley	2069	898	1171	Republic of Ireland	32	15	17	3	1	2	0	0	0	0	0	6	3	3	41	18	23	4	0	0.13	0	0.13	0.1	0.15	690	1.78	50	65	517	0	0.17	137	349	-1	6
265	8	Jefferson Lerma	26	783068400	Premier League	2018/2019	Midfielder	AFC Bournemouth	2511	1319	1192	Colombia	30	15	15	2	0	2	0	0	0	0	0	8	4	4	45	18	27	12	0	0.07	0	0.07	0	0.15	1256	1.61	56	84	209	0	0.43	197	288	-1	6
266	4	Jeffrey Schlupp	27	725097600	Premier League	2018/2019	Defender	Crystal Palace	1665	849	816	Ghana	30	14	16	4	1	3	1	1	0	0	0	8	4	4	24	11	13	1	0	0.27	0.05	0.22	0.11	0.33	416	1.3	69	56	1665	1665	0.05	89	209	86	5
267	8	Jermain Defoe	38	402822000	Premier League	2018/2019	Forward	AFC Bournemouth	21	0	21	England	4	1	3	0	0	0	0	0	0	0	0	2	1	1	2	0	2	0	0	0	0	0	0	0	0	8.57	11	5	0	0	0	-1	-1	-1	25
268	9	Jesse Lingard	27	724406400	Premier League	2018/2019	Midfielder	Manchester United	1668	963	705	England	27	15	12	4	1	3	2	1	1	1	0	6	2	4	25	16	9	3	0	0.32	0.11	0.22	0.09	0.38	417	1.35	67	62	556	834	0.16	87	138	-1	5
269	19	Jo├úo Moutinho	34	526546800	Premier League	2018/2019	Midfielder	Wolverhampton Wanderers	3040	1532	1508	Portugal	38	19	19	1	0	1	8	5	3	0	0	9	7	2	37	17	20	4	0	0.27	0.24	0.03	0	0.06	3040	1.1	82	80	760	380	0.12	258	44	-1	11
270	15	Joe Bennett	30	638611200	Premier League	2018/2019	Defender	Cardiff City	2641	1142	1499	England	30	13	17	0	0	0	1	1	0	0	0	9	5	4	43	18	25	5	0	0.03	0.03	0	0	0	0	1.47	61	88	528	2641	0.17	324	241	112	23
271	16	Joe Bryan	27	748249200	Premier League	2018/2019	Defender	Fulham	2350	1214	1136	England	28	15	13	0	0	0	1	1	0	0	0	5	3	2	51	21	30	5	0	0.04	0.04	0	0	0	0	1.95	46	84	470	2350	0.19	316	218	158	26
272	4	Joe Daniel Tupper	22	879580800	Premier League	2018/2019	Goalkeeper	Crystal Palace	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
273	10	Joe Gomez	23	864370800	Premier League	2018/2019	Defender	Liverpool	1060	493	567	England	16	8	8	0	0	0	0	0	0	0	0	11	8	3	3	0	3	2	0	0	0	0	0	0	0	0.25	353	66	530	0	0.17	407	398	1	19
274	6	Joe Hart	33	545814000	Premier League	2018/2019	Goalkeeper	Burnley	1710	810	900	England	19	9	10	0	0	0	0	0	0	0	0	4	2	2	34	17	17	0	0	0	0	0	0	0	0	1.79	50	90	0	0	0	367	341	149	16
275	12	Joe Powell	22	909734400	Premier League	2018/2019	Forward	West Ham United	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
276	15	Joe Ralls	27	750495600	Premier League	2018/2019	Midfielder	Cardiff City	1959	847	1112	England	28	15	13	0	0	0	0	0	0	0	1	8	5	3	35	17	18	5	1	0	0	0	0	0	0	1.61	56	70	327	0	0.28	336	383	-1	22
277	18	Joel Coleman	25	812098800	Premier League	2018/2019	Goalkeeper	Huddersfield Town	90	0	90	England	1	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	1	90	90	0	0	0	-1	-1	-1	16
278	10	Joel Matip	29	681634800	Premier League	2018/2019	Defender	Liverpool	1532	811	721	Cameroon	22	10	12	1	1	0	0	0	0	0	0	11	6	5	9	5	4	3	0	0.06	0	0.06	0.11	0	1532	0.53	170	70	511	0	0.18	216	286	8	11
279	4	Joel Ward	31	625647600	Premier League	2018/2019	Defender	Crystal Palace	551	191	360	England	7	3	4	1	1	0	0	0	0	0	0	0	0	0	12	6	6	1	0	0.16	0	0.16	0.47	0	551	1.96	46	79	551	0	0.16	115	358	159	11
280	6	Johann Berg Gu├░munds┬¡son	30	657010800	Premier League	2018/2019	Midfielder	Burnley	1748	847	901	Iceland	29	15	14	3	0	3	6	5	1	0	0	6	4	2	31	13	18	2	0	0.46	0.31	0.15	0	0.3	583	1.6	56	60	874	291	0.1	121	18	-1	5
281	19	John Ruddy	34	530521200	Premier League	2018/2019	Goalkeeper	Wolverhampton Wanderers	90	90	0	England	1	1	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	90	0	0	0	-1	-1	-1	17
282	2	John Stones	26	770108400	Premier League	2018/2019	Defender	Manchester City	1762	968	794	England	24	12	12	0	0	0	0	0	0	0	0	13	6	7	15	8	7	1	0	0	0	0	0	0	0	0.77	117	73	1762	0	0.05	309	418	17	17
283	18	Jon Gorenc Stankovi─ì	24	821606400	Premier League	2018/2019	Defender	Huddersfield Town	718	218	500	Slovenia	11	3	8	1	0	1	0	0	0	0	0	2	1	1	19	3	16	2	0	0.13	0	0.13	0	0.18	718	2.38	38	65	359	0	0.25	130	291	171	8
284	18	Jonas L├╢ssl	31	602323200	Premier League	2018/2019	Goalkeeper	Huddersfield Town	2777	1427	1350	Denmark	31	16	15	0	0	0	1	1	0	0	0	5	3	2	52	22	30	1	0	0.03	0.03	0	0	0	0	1.69	53	90	2777	2777	0.03	333	247	139	25
285	18	Jonathan Hogg	31	597398400	Premier League	2018/2019	Midfielder	Huddersfield Town	2377	1294	1083	England	29	16	13	0	0	0	1	1	0	0	0	5	3	2	42	23	19	9	1	0.04	0.04	0	0	0	0	1.59	57	82	238	2377	0.38	330	231	-1	28
286	6	Jonathan Walters	37	432889200	Premier League	2018/2019	Forward	Burnley	0	0	0	Republic of Ireland	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
287	14	Jonjo Shelvey	28	699177600	Premier League	2018/2019	Midfielder	Newcastle United	944	403	541	England	16	8	8	1	0	1	1	0	1	0	0	5	1	4	11	8	3	1	0	0.19	0.1	0.1	0	0.17	944	1.05	86	59	944	944	0.1	167	149	-1	12
288	5	Jonjoe Kenny	23	858412800	Premier League	2018/2019	Defender	Everton	790	413	377	England	10	5	5	0	0	0	1	1	0	0	0	2	1	1	14	7	7	1	0	0.11	0.11	0	0	0	0	1.59	56	79	790	790	0.11	289	143	129	15
289	19	Jonny	26	762681600	Premier League	2018/2019	Defender	Wolverhampton Wanderers	2780	1269	1511	Spain	33	16	17	1	1	0	1	1	0	0	0	8	6	2	36	16	20	6	0	0.06	0.03	0.03	0.07	0	2780	1.17	77	84	463	2780	0.19	257	237	59	12
290	3	Jonny Evans	32	568195200	Premier League	2018/2019	Defender	Leicester City	1995	1074	921	Northern Ireland	24	12	12	1	1	0	0	0	0	0	0	8	6	2	22	9	13	2	0	0.05	0	0.05	0.08	0	1995	0.99	91	83	998	0	0.09	220	320	32	11
291	4	Jordan Ayew	29	684572400	Premier League	2018/2019	Forward	Crystal Palace	1186	616	570	Ghana	20	8	12	1	0	1	2	0	2	0	0	6	3	3	13	7	6	3	0	0.23	0.15	0.08	0	0.16	1186	0.99	91	59	395	593	0.23	182	96	-1	12
292	10	Jordan Henderson	30	645606000	Premier League	2018/2019	Midfielder	Liverpool	1983	925	1058	England	32	16	16	1	0	1	3	2	1	0	0	19	10	9	11	4	7	3	1	0.18	0.14	0.05	0	0.09	1983	0.5	180	62	661	661	0.14	226	102	-1	14
293	5	Jordan Pickford	26	763027200	Premier League	2018/2019	Goalkeeper	Everton	3420	1710	1710	England	38	19	19	0	0	0	0	0	0	0	0	14	9	5	44	20	24	1	0	0	0	0	0	0	0	1.16	78	90	3420	0	0.03	409	255	57	14
294	8	Jordon Ibe	24	818409600	Premier League	2018/2019	Midfielder	AFC Bournemouth	795	334	461	England	19	10	9	1	0	1	1	1	0	0	0	4	4	0	21	3	18	1	0	0.23	0.11	0.11	0	0.2	795	2.38	38	42	795	795	0.11	150	136	-1	13
295	11	Jorginho	28	693216000	Premier League	2018/2019	Midfielder	Chelsea	3165	1621	1544	Italy	37	19	18	2	0	2	0	0	0	1	0	16	10	6	36	12	24	8	0	0.06	0	0.06	0	0.12	1583	1.02	88	86	396	0	0.23	212	375	-1	11
296	9	Jos├⌐ Diogo Dalot Teixeira	21	921744000	Premier League	2018/2019	Defender	Manchester United	1015	525	490	Portugal	16	7	9	0	0	0	2	2	0	0	0	2	0	2	18	8	10	3	0	0.18	0.18	0	0	0	0	1.6	56	63	338	508	0.27	283	77	131	17
297	13	Jos├⌐ Holebas	36	457167600	Premier League	2018/2019	Defender	Watford	2394	1224	1170	Greece	28	15	13	3	2	1	6	5	1	0	0	5	3	2	38	20	18	13	1	0.34	0.23	0.11	0.15	0.08	798	1.43	63	86	171	399	0.53	154	50	105	7
298	17	Jose Izquierdo	28	710492400	Premier League	2018/2019	Forward	Brighton & Hove Albion	794	365	429	Colombia	15	8	7	0	0	0	1	0	1	0	0	5	3	2	8	4	4	1	0	0.11	0.11	0	0	0	0	0.91	99	53	794	794	0.11	265	133	-1	21
299	14	Jos├⌐ Luis Sanmart├¡n Mato	30	638524800	Premier League	2018/2019	Forward	Newcastle United	586	308	278	Spain	16	9	7	2	2	0	0	0	0	0	0	4	2	2	12	8	4	1	0	0.31	0	0.31	0.58	0	293	1.84	49	37	586	0	0.15	61	265	-1	5
300	0	Joseph Willock	21	935132400	Premier League	2018/2019	Midfielder	Arsenal	64	0	64	England	2	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	32	0	0	0	-1	-1	-1	16
301	6	Josh Benson	20	944380800	Premier League	2018/2019	Midfielder	Burnley	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
302	3	Josh Knight	23	873615600	Premier League	2018/2019	Defender	Leicester City	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
303	15	Josh Murphy	25	793612800	Premier League	2018/2019	Forward	Cardiff City	1825	1123	702	England	29	17	12	3	2	1	2	1	1	0	0	7	4	3	27	20	7	2	0	0.25	0.1	0.15	0.16	0.13	608	1.33	68	63	913	913	0.1	117	147	-1	6
304	8	Joshua King	28	695462400	Premier League	2018/2019	Forward	AFC Bournemouth	2974	1563	1411	Norway	35	18	17	12	9	3	3	3	0	5	1	9	6	3	54	20	34	3	0	0.45	0.09	0.36	0.52	0.19	248	1.63	55	85	991	991	0.09	48	157	-1	2
305	7	Joshua Sims	23	859536000	Premier League	2018/2019	Midfielder	Southampton	209	139	70	England	7	4	3	0	0	0	1	1	0	0	0	1	0	1	5	3	2	0	0	0.43	0.43	0	0	0	0	2.15	42	30	0	209	0	-1	-1	-1	20
306	1	Juan Marcos Foyth	22	884592000	Premier League	2018/2019	Defender	Tottenham Hotspur	930	450	480	Argentina	12	6	6	1	0	1	0	0	0	0	0	4	3	1	10	2	8	4	1	0.1	0	0.1	0	0.19	930	0.97	93	78	186	0	0.48	163	334	28	14
307	9	Juan Mata	32	578214000	Premier League	2018/2019	Midfielder	Manchester United	1294	833	461	Spain	22	13	9	3	3	0	2	2	0	0	0	4	2	2	14	6	8	3	0	0.35	0.14	0.21	0.32	0	431	0.97	92	59	431	647	0.21	92	103	-1	6
308	4	Juli├ín Speroni	41	295858800	Premier League	2018/2019	Goalkeeper	Crystal Palace	90	0	90	Argentina	1	0	1	0	0	0	0	0	0	0	0	0	0	0	3	0	3	0	0	0	0	0	0	0	0	3	30	90	0	0	0	-1	-1	-1	15
309	18	Juninho Bacuna	23	870937200	Premier League	2018/2019	Midfielder	Huddersfield Town	1414	722	692	Netherlands	21	11	10	1	0	1	0	0	0	0	0	2	2	0	36	15	21	4	0	0.06	0	0.06	0	0.13	1414	2.29	39	67	354	0	0.25	213	325	-1	7
310	8	Junior Stanislas	30	628070400	Premier League	2018/2019	Midfielder	AFC Bournemouth	1027	559	468	England	23	12	11	2	1	1	3	3	0	1	0	7	4	3	24	8	16	1	0	0.44	0.26	0.18	0.16	0.19	514	2.1	43	45	1027	342	0.09	104	35	-1	7
311	17	J├╝rgen Locadia	26	752659200	Premier League	2018/2019	Forward	Brighton & Hove Albion	1227	590	637	Netherlands	26	14	12	2	2	0	0	0	0	0	0	4	3	1	19	9	10	1	0	0.15	0	0.15	0.31	0	614	1.39	65	47	1227	0	0.07	119	281	-1	7
312	15	Kadeem Harris	27	739522800	Premier League	2018/2019	Midfielder	Cardiff City	366	133	233	England	13	5	8	1	1	0	0	0	0	0	0	4	1	3	5	1	4	1	0	0.25	0	0.25	0.68	0	366	1.23	73	28	366	0	0.25	79	262	-1	11
313	14	Karl Darlow	30	655369200	Premier League	2018/2019	Goalkeeper	Newcastle United	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
314	18	Karlan Ahearne-Grant	22	882518400	Premier League	2018/2019	Forward	Huddersfield Town	874	331	543	England	13	6	7	4	2	2	0	0	0	0	0	1	1	0	22	7	15	0	0	0.41	0	0.41	0.54	0.33	219	2.27	40	67	0	0	0	32	307	-1	1
315	3	Kasper Schmeichel	33	531561600	Premier League	2018/2019	Goalkeeper	Leicester City	3420	1710	1710	Denmark	38	19	19	0	0	0	0	0	0	0	0	10	6	4	43	18	25	3	0	0	0	0	0	0	0	1.13	80	90	1140	0	0.08	342	302	50	25
316	7	Kayne Ramsey	20	971161200	Premier League	2018/2019	Midfielder	Southampton	90	90	0	England	1	1	0	0	0	0	0	0	0	0	0	0	0	0	3	3	0	0	0	0	0	0	0	0	0	3	30	90	0	0	0	-1	-1	-1	19
317	1	Kazaiah Sterling	22	910598400	Premier League	2018/2019	Forward	Tottenham Hotspur	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
318	3	Kelechi Iheanacho	24	844326000	Premier League	2018/2019	Forward	Leicester City	926	408	518	Nigeria	30	14	16	1	1	0	3	2	1	0	0	6	4	2	11	5	6	2	0	0.39	0.29	0.1	0.22	0	926	1.07	84	31	463	309	0.19	165	24	-1	13
319	14	Kelland Watts	21	941616000	Premier League	2018/2019	Midfielder	Newcastle United	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
320	13	Ken Sema	27	749372400	Premier League	2018/2019	Midfielder	Watford	755	301	454	Sweden	17	8	9	1	0	1	2	1	1	0	0	6	4	2	8	3	5	1	0	0.36	0.24	0.12	0	0.2	755	0.95	94	44	755	378	0.12	146	46	-1	14
321	15	Kenneth Dahrup Zohor├¿	26	760003200	Premier League	2018/2019	Forward	Cardiff City	746	388	358	Denmark	19	11	8	1	0	1	1	0	1	0	0	5	2	3	15	9	6	1	0	0.24	0.12	0.12	0	0.25	746	1.81	50	39	746	746	0.12	142	129	-1	12
322	11	Kepa Arrizabalaga	26	781167600	Premier League	2018/2019	Goalkeeper	Chelsea	3240	1620	1620	Spain	36	18	18	0	0	0	0	0	0	0	0	14	9	5	38	12	26	2	0	0	0	0	0	0	0	1.06	85	90	1620	0	0.06	364	363	39	24
323	2	Kevin De Bruyne	29	678092400	Premier League	2018/2019	Midfielder	Manchester City	974	477	497	Belgium	19	9	10	2	2	0	2	0	2	0	0	12	6	6	3	1	2	2	0	0.37	0.18	0.18	0.38	0	487	0.28	325	51	487	487	0.18	109	75	-1	10
324	6	Kevin Long	30	650962800	Premier League	2018/2019	Defender	Burnley	513	90	423	Republic of Ireland	6	1	5	0	0	0	1	0	1	0	0	1	0	1	7	2	5	0	0	0.18	0.18	0	0	0	0	1.23	73	86	0	513	0	293	72	70	15
325	16	Kevin McDonald	31	594633600	Premier League	2018/2019	Midfielder	Fulham	842	399	443	Scotland	15	8	7	0	0	0	0	0	0	0	0	0	0	0	25	12	13	6	1	0	0	0	0	0	0	2.67	34	56	140	0	0.64	317	410	-1	25
326	5	Kieran Dowell	23	876466800	Premier League	2018/2019	Midfielder	Everton	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
327	1	Kieran Trippier	30	653727600	Premier League	2018/2019	Defender	Tottenham Hotspur	2278	1188	1090	England	27	14	13	1	1	0	3	0	3	0	0	10	5	5	20	10	10	2	0	0.16	0.12	0.04	0.08	0	2278	0.79	114	84	1139	759	0.08	227	124	19	12
328	0	Konstantinos Mavropanos	22	881827200	Premier League	2018/2019	Defender	Arsenal	150	46	104	Greece	4	1	3	0	0	0	0	0	0	0	0	1	0	1	1	1	0	1	0	0	0	0	0	0	0	0.6	150	38	150	0	0.6	-1	-1	-1	19
329	19	Kortney Hause	25	805878000	Premier League	2018/2019	Defender	Wolverhampton Wanderers	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
330	5	Kurt Zouma	26	783241200	Premier League	2018/2019	Defender	Everton	2610	1350	1260	France	32	16	16	2	1	1	2	0	2	0	0	11	8	3	37	17	20	5	1	0.14	0.07	0.07	0.07	0.07	1305	1.28	71	82	522	1305	0.17	202	185	83	7
331	8	Kyle Taylor	21	935823600	Premier League	2018/2019	Midfielder	AFC Bournemouth	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
332	2	Kyle Walker	30	643878000	Premier League	2018/2019	Defender	Manchester City	2777	1245	1532	England	33	15	18	1	1	0	1	0	1	0	0	18	7	11	17	9	8	3	0	0.06	0.03	0.03	0.07	0	2777	0.55	163	84	926	2777	0.1	250	248	10	14
333	1	Kyle Walker-Peters	23	860914800	Premier League	2018/2019	Defender	Tottenham Hotspur	374	272	102	England	6	4	2	0	0	0	3	3	0	0	0	3	2	1	4	2	2	1	0	0.72	0.72	0	0	0	0	0.96	94	62	374	125	0.24	357	1	25	21
334	18	Laurent Depoitre	31	597484800	Premier League	2018/2019	Forward	Huddersfield Town	1059	446	613	Belgium	23	12	11	0	0	0	1	0	1	0	0	3	2	1	22	6	16	1	0	0.08	0.08	0	0	0	0	1.87	48	46	1059	1059	0.08	331	169	-1	27
335	0	Laurent Koscielny	35	495183600	Premier League	2018/2019	Defender	Arsenal	1328	484	844	France	17	6	11	3	2	1	0	0	0	0	0	4	3	1	21	5	16	1	0	0.2	0	0.2	0.37	0.11	443	1.42	63	78	1328	0	0.07	93	295	103	7
336	16	Lazar Markovi─ç	26	762595200	Premier League	2018/2019	Midfielder	Fulham	44	0	44	Serbia	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	44	0	0	0	-1	-1	-1	16
337	19	Leander Dendoncker	25	797929200	Premier League	2018/2019	Midfielder	Wolverhampton Wanderers	1469	635	834	Belgium	19	9	10	2	1	1	0	0	0	0	0	4	4	0	19	6	13	1	0	0.12	0	0.12	0.14	0.11	735	1.16	77	77	1469	0	0.06	141	331	-1	8
338	15	Leandro Bacuna	29	682758000	Premier League	2018/2019	Midfielder	Cardiff City	554	302	252	Cura├ºao	11	6	5	0	0	0	0	0	0	0	0	4	2	2	11	10	1	2	0	0	0	0	0	0	0	1.79	50	50	277	0	0.32	281	309	-1	25
339	9	Lee Grant	37	412502400	Premier League	2018/2019	Goalkeeper	Manchester United	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
340	15	Lee Peltier	33	534672000	Premier League	2018/2019	Defender	Cardiff City	1542	521	1021	England	20	7	13	0	0	0	0	0	0	0	0	6	2	4	21	9	12	4	0	0	0	0	0	0	0	1.23	73	77	386	0	0.23	352	391	72	21
341	5	Leighton Baines	35	471600000	Premier League	2018/2019	Defender	Everton	376	141	235	England	6	3	3	0	0	0	0	0	0	0	0	1	0	1	6	2	4	0	0	0	0	0	0	0	0	1.44	63	63	0	0	0	410	287	109	21
342	17	Leon Balogun	32	583484400	Premier League	2018/2019	Defender	Brighton & Hove Albion	591	309	282	Nigeria	8	4	4	1	1	0	0	0	0	0	0	0	0	0	9	5	4	2	0	0.15	0	0.15	0.29	0	591	1.37	66	74	296	0	0.3	123	292	97	12
343	19	Leonardo Bonatini Lohner Maia	26	764841600	Premier League	2018/2019	Forward	Wolverhampton Wanderers	128	61	67	Brazil	7	4	3	0	0	0	1	0	1	0	0	3	2	1	0	0	0	0	0	0.7	0.7	0	0	0	0	0	0	18	0	128	0	-1	-1	-1	14
344	2	Leroy San├⌐	24	821347200	Premier League	2018/2019	Midfielder	Manchester City	1867	1024	843	Germany	31	16	15	10	5	5	10	6	4	0	0	16	8	8	14	8	6	1	0	0.96	0.48	0.48	0.44	0.53	187	0.67	133	60	1867	187	0.05	20	4	-1	3
345	14	Lewis Cass	20	951638400	Premier League	2018/2019	Defender	Newcastle United	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
346	8	Lewis Cook	23	854956800	Premier League	2018/2019	Midfielder	AFC Bournemouth	721	381	340	England	13	7	6	0	0	0	0	0	0	0	0	3	1	2	10	5	5	2	0	0	0	0	0	0	0	1.25	72	55	361	0	0.25	362	393	-1	24
347	17	Lewis Dunk	28	690710400	Premier League	2018/2019	Defender	Brighton & Hove Albion	3153	1550	1603	England	36	18	18	2	0	2	1	0	1	0	0	7	5	2	53	24	29	7	1	0.09	0.03	0.06	0	0.11	1577	1.51	59	88	450	3153	0.2	210	252	120	5
348	15	Lo├»c Damour	29	663321600	Premier League	2018/2019	Midfielder	Cardiff City	21	4	17	France	2	1	1	0	0	0	0	0	0	0	0	0	0	0	2	0	2	0	0	0	0	0	0	0	0	8.57	11	11	0	0	0	-1	-1	-1	15
349	10	Loris Karius	27	740732400	Premier League	2018/2019	Goalkeeper	Liverpool	0	0	0	Germany	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
350	16	Luca de la Torre	22	895906800	Premier League	2018/2019	Midfielder	Fulham	0	0	0	USA	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
351	5	Lucas Digne	27	743151600	Premier League	2018/2019	Defender	Everton	2990	1511	1479	France	35	17	18	4	2	2	4	2	2	0	0	14	9	5	36	16	20	6	1	0.24	0.12	0.12	0.12	0.12	748	1.08	83	85	427	748	0.21	145	126	42	5
352	12	Lucas Perez	32	589878000	Premier League	2018/2019	Forward	West Ham United	468	287	181	Spain	15	10	5	3	3	0	0	0	0	0	0	3	2	1	9	5	4	0	0	0.58	0	0.58	0.94	0	156	1.73	52	31	0	0	0	10	276	-1	6
353	1	Lucas Rodrigues Moura da Silva	28	713689200	Premier League	2018/2019	Midfielder	Tottenham Hotspur	2127	1040	1087	Brazil	32	15	17	10	6	4	0	0	0	0	0	12	7	5	16	9	7	3	0	0.42	0	0.42	0.52	0.33	213	0.68	133	66	709	0	0.13	30	279	-1	3
354	0	Lucas Torreira	24	824025600	Premier League	2018/2019	Midfielder	Arsenal	2377	1231	1146	Uruguay	34	17	17	2	2	0	2	0	2	0	0	6	5	1	35	10	25	8	1	0.15	0.08	0.08	0.15	0	1189	1.33	68	70	264	1189	0.34	184	174	-1	10
355	16	Luciano Vietto	26	755078400	Premier League	2018/2019	Forward	Fulham	983	549	434	Argentina	20	9	11	1	1	0	4	4	0	0	0	1	1	0	21	11	10	1	0	0.46	0.37	0.09	0.16	0	983	1.92	47	49	983	246	0.09	171	11	-1	8
356	4	Luka Milivojevi─ç	29	671011200	Premier League	2018/2019	Midfielder	Crystal Palace	3420	1710	1710	Serbia	38	19	19	12	7	5	2	0	2	10	1	12	7	5	47	20	27	10	0	0.37	0.05	0.32	0.37	0.26	285	1.24	73	90	342	1710	0.26	58	210	-1	1
357	1	Luke Amos	23	856684800	Premier League	2018/2019	Midfielder	Tottenham Hotspur	2	0	2	England	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	-1	-1	-1	23
358	4	Luke Dreher	21	912153600	Premier League	2018/2019	Midfielder	Crystal Palace	0	0	0	England	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
359	9	Luke Shaw	25	805532400	Premier League	2018/2019	Defender	Manchester United	2592	1170	1422	England	29	13	16	1	1	0	4	2	2	0	0	6	1	5	36	16	20	11	0	0.17	0.14	0.03	0.08	0	2592	1.25	72	89	236	648	0.38	262	105	77	13
360	8	Lys Mousset	24	823766400	Premier League	2018/2019	Forward	AFC Bournemouth	345	96	249	France	24	13	11	1	0	1	0	0	0	0	0	5	4	1	13	4	9	1	0	0.26	0	0.26	0	0.36	345	3.39	27	14	345	0	0.26	74	395	-1	11
361	5	Maarten Stekelenburg	38	401526000	Premier League	2018/2019	Goalkeeper	Everton	0	0	0	Netherlands	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
362	4	Mamadou Sakho	30	634896000	Premier League	2018/2019	Defender	Crystal Palace	2417	1170	1247	France	27	13	14	0	0	0	0	0	0	0	0	9	5	4	32	10	22	2	0	0	0	0	0	0	0	1.19	76	90	1209	0	0.07	322	403	64	21
363	7	Manolo Gabbiadini	28	691142400	Premier League	2018/2019	Forward	Southampton	470	253	217	Italy	12	6	6	1	1	0	0	0	0	0	0	3	2	1	11	3	8	0	0	0.19	0	0.19	0.36	0	470	2.11	43	39	0	0	0	100	357	-1	12
364	12	Manuel Lanzini	27	729763200	Premier League	2018/2019	Midfielder	West Ham United	688	367	321	Argentina	10	5	5	1	0	1	1	0	1	0	0	2	2	0	11	5	6	2	0	0.26	0.13	0.13	0	0.28	688	1.44	63	69	344	688	0.26	131	111	-1	12
365	3	Marc Albrighton	30	627379200	Premier League	2018/2019	Midfielder	Leicester City	1626	797	829	England	27	14	13	2	1	1	2	1	1	0	0	9	5	4	17	8	9	3	0	0.22	0.11	0.11	0.11	0.11	813	0.94	96	60	542	813	0.17	153	132	-1	8
366	11	Marc Guehi	20	963471600	Premier League	2018/2019	Defender	Chelsea	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
367	13	Marc Navarro Ceciliano	25	804668400	Premier League	2018/2019	Defender	Watford	84	0	84	Spain	2	0	2	0	0	0	0	0	0	0	0	0	0	0	2	0	2	0	0	0	0	0	0	0	0	2.14	42	42	0	0	0	-1	-1	-1	15
368	8	Marc Pugh	33	544348800	Premier League	2018/2019	Midfielder	AFC Bournemouth	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
369	11	Marcos Alonso	29	662371200	Premier League	2018/2019	Defender	Chelsea	2761	1338	1423	Spain	31	15	16	2	1	1	4	3	1	0	0	14	8	6	28	9	19	6	0	0.2	0.13	0.07	0.07	0.06	1381	0.91	99	89	460	690	0.2	200	112	22	10
370	16	Marcus Bettinelli	28	706690800	Premier League	2018/2019	Goalkeeper	Fulham	630	270	360	England	7	3	4	0	0	0	0	0	0	0	0	0	0	0	19	7	12	1	0	0	0	0	0	0	0	2.71	33	90	630	0	0.14	296	283	174	14
371	9	Marcus Rashford	23	878284800	Premier League	2018/2019	Forward	Manchester United	2362	1293	1069	England	33	17	16	10	4	6	6	3	3	0	0	6	2	4	34	17	17	4	1	0.61	0.23	0.38	0.28	0.51	236	1.3	69	72	472	394	0.19	39	53	-1	3
372	7	Mario Lemina	27	746866800	Premier League	2018/2019	Midfielder	Southampton	1615	763	852	Gabon	21	9	12	1	0	1	1	0	1	0	0	4	2	2	32	12	20	5	0	0.11	0.06	0.06	0	0.11	1615	1.78	50	77	323	1615	0.28	215	195	-1	10
373	12	Mark Noble	33	547455600	Premier League	2018/2019	Midfielder	West Ham United	2308	1147	1161	England	31	15	16	5	2	3	5	4	1	4	0	7	4	3	29	12	17	7	1	0.39	0.19	0.19	0.16	0.23	462	1.13	80	74	289	462	0.31	96	70	-1	5
374	8	Mark Travers	21	927010800	Premier League	2018/2019	Goalkeeper	AFC Bournemouth	180	90	90	Republic of Ireland	2	1	1	0	0	0	0	0	0	0	0	1	1	0	5	0	5	0	0	0	0	0	0	0	0	2.5	36	90	0	0	0	-1	-1	-1	28
375	12	Marko Arnautovi─ç	31	608972400	Premier League	2018/2019	Forward	West Ham United	2000	1083	917	Austria	28	15	13	10	7	3	4	1	3	1	0	5	3	2	31	17	14	3	0	0.63	0.18	0.45	0.58	0.29	200	1.4	65	71	667	500	0.14	26	76	-1	1
376	17	Markus Suttner	33	545554800	Premier League	2018/2019	Defender	Brighton & Hove Albion	0	0	0	Austria	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
377	9	Marouane Fellaini	32	564566400	Premier League	2018/2019	Midfielder	Manchester United	744	217	527	Belgium	14	6	8	0	0	0	1	0	1	0	0	2	1	1	13	2	11	1	0	0.12	0.12	0	0	0	0	1.57	57	53	744	744	0.12	341	131	-1	22
378	14	Martin D├║bravka	31	600854400	Premier League	2018/2019	Goalkeeper	Newcastle United	3420	1710	1710	Slovakia	38	19	19	0	0	0	0	0	0	0	0	11	5	6	44	23	21	1	0	0	0	0	0	0	0	1.16	78	90	3420	0	0.03	345	319	58	18
379	4	Martin Kelly	30	641199600	Premier League	2018/2019	Defender	Crystal Palace	1110	660	450	England	13	8	5	0	0	0	0	0	0	0	0	3	2	1	18	11	7	2	0	0	0	0	0	0	0	1.46	62	85	555	0	0.16	326	350	110	18
380	17	Mart├¡n Montoya	29	671612400	Premier League	2018/2019	Defender	Brighton & Hove Albion	2166	1176	990	Spain	25	14	11	0	0	0	1	0	1	0	0	3	3	0	38	18	20	4	0	0.04	0.04	0	0	0	0	1.58	57	87	542	2166	0.17	294	229	128	13
381	9	Mason Greenwood	19	1001919600	Premier League	2018/2019	Midfielder	Manchester United	115	105	10	England	3	2	1	0	0	0	0	0	0	0	0	0	0	0	2	2	0	0	0	0	0	0	0	0	0	1.57	58	38	0	0	0	-1	-1	-1	27
382	5	Mason Holgate	24	845967600	Premier League	2018/2019	Defender	Everton	407	270	137	England	5	3	2	0	0	0	0	0	0	0	0	0	0	0	9	5	4	1	0	0	0	0	0	0	0	1.99	45	81	407	0	0.22	414	390	160	16
383	6	Mat─¢j Vydra	28	704703600	Premier League	2018/2019	Forward	Burnley	311	91	220	Czech Republic	13	6	7	1	1	0	1	0	1	0	0	1	1	0	4	0	4	1	0	0.58	0.29	0.29	0.99	0	311	1.16	78	24	311	311	0.29	66	23	-1	12
384	11	Mateo Kova─ìi─ç	26	768207600	Premier League	2018/2019	Midfielder	Chelsea	1743	968	775	Croatia	32	17	15	0	0	0	2	1	1	0	0	12	8	4	18	4	14	3	0	0.1	0.1	0	0	0	0	0.93	97	54	581	872	0.15	291	150	-1	20
385	17	Mathew Ryan	28	702716400	Premier League	2018/2019	Goalkeeper	Brighton & Hove Albion	3060	1530	1530	Australia	34	17	17	0	0	0	0	0	0	0	0	6	4	2	52	25	27	2	0	0	0	0	0	0	0	1.53	59	90	1530	0	0.06	398	389	122	15
386	18	Mathias Jattah-Njie J├╕rgensen	30	640854000	Premier League	2018/2019	Defender	Huddersfield Town	2148	1248	900	Denmark	24	14	10	3	1	2	1	0	1	0	0	3	2	1	37	21	16	6	0	0.17	0.04	0.13	0.07	0.2	716	1.55	58	90	358	2148	0.25	139	235	125	2
387	8	Matt Butcher	23	863593200	Premier League	2018/2019	Midfielder	AFC Bournemouth	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
388	19	Matt Doherty	28	695548800	Premier League	2018/2019	Defender	Wolverhampton Wanderers	3147	1557	1590	Republic of Ireland	38	19	19	4	1	3	5	4	1	0	0	9	7	2	38	18	20	5	0	0.26	0.14	0.11	0.06	0.17	787	1.09	83	83	629	629	0.14	152	100	46	5
389	14	Matt Ritchie	31	621414000	Premier League	2018/2019	Midfielder	Newcastle United	2940	1557	1383	Scotland	36	19	17	2	1	1	8	2	6	1	1	11	5	6	37	21	16	9	0	0.31	0.24	0.06	0.06	0.07	1470	1.13	79	82	327	368	0.28	214	45	-1	6
390	7	Matt Targett	25	811407600	Premier League	2018/2019	Defender	Southampton	1185	483	702	England	16	7	9	1	1	0	3	2	1	0	0	1	0	1	24	10	14	2	0	0.3	0.23	0.08	0.19	0	1185	1.82	49	74	593	395	0.15	190	52	151	11
391	9	Matteo Darmian	30	628588800	Premier League	2018/2019	Defender	Manchester United	443	353	90	Italy	6	5	1	0	0	0	0	0	0	0	0	1	1	0	7	4	3	0	0	0	0	0	0	0	0	1.42	63	74	0	0	0	411	280	102	25
392	0	Matt├⌐o Guendouzi Oli├⌐	21	924073200	Premier League	2018/2019	Midfielder	Arsenal	2143	971	1172	France	33	14	19	0	0	0	0	0	0	0	0	4	3	1	28	9	19	9	0	0	0	0	0	0	0	1.18	77	65	238	0	0.38	386	405	-1	26
393	15	Matthew Connolly	33	559465200	Premier League	2018/2019	Defender	Cardiff City	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
394	6	Matthew Lowton	31	613378800	Premier League	2018/2019	Defender	Burnley	1748	810	938	England	21	9	12	0	0	0	0	0	0	0	0	4	2	2	35	16	19	7	0	0	0	0	0	0	0	1.8	50	83	250	0	0.36	378	342	150	22
395	18	Matty Daly	19	984211200	Premier League	2018/2019	Midfielder	Huddersfield Town	73	49	24	England	2	1	1	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	1.23	73	37	0	0	0	-1	-1	-1	18
396	17	Max Harrison Sanders	21	915436800	Premier League	2018/2019	Midfielder	Brighton & Hove Albion	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
397	19	Max Kilman	23	864370800	Premier League	2018/2019	Defender	Wolverhampton Wanderers	0	0	0	England	1	1	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
398	4	Max Meyer	25	811407600	Premier League	2018/2019	Midfielder	Crystal Palace	1414	718	696	Germany	29	18	11	1	0	1	2	0	2	0	0	8	7	1	19	5	14	3	0	0.19	0.13	0.06	0	0.13	1414	1.21	74	49	471	707	0.19	211	110	-1	8
399	16	Maxime Le Marchand	31	624092400	Premier League	2018/2019	Defender	Fulham	2251	1171	1080	France	26	14	12	0	0	0	1	1	0	0	0	4	3	1	50	23	27	5	0	0.04	0.04	0	0	0	0	2	45	87	450	2251	0.2	314	219	162	23
400	7	Maya Yoshida	32	588409200	Premier League	2018/2019	Defender	Southampton	1520	800	720	Japan	17	9	8	0	0	0	1	1	0	0	0	3	1	2	27	14	13	0	0	0.06	0.06	0	0	0	0	1.6	56	89	0	1520	0	308	192	133	23
401	0	Mesut ├ûzil	32	592902000	Premier League	2018/2019	Midfielder	Arsenal	1741	1139	602	Germany	24	14	10	5	4	1	2	2	0	0	0	6	5	1	23	11	12	2	0	0.36	0.1	0.26	0.32	0.15	348	1.19	76	73	871	871	0.1	73	151	-1	4
402	5	Michael Keane	27	726739200	Premier League	2018/2019	Defender	Everton	2970	1350	1620	England	33	15	18	1	0	1	2	1	1	0	0	13	8	5	37	15	22	2	0	0.09	0.06	0.03	0	0.06	2970	1.12	80	90	1485	1485	0.06	251	196	49	10
403	7	Michael Obafemi	20	962866800	Premier League	2018/2019	Forward	Southampton	134	64	70	Republic of Ireland	6	2	4	1	0	1	1	1	0	0	0	0	0	0	2	2	0	1	0	1.34	0.67	0.67	0	1.29	134	1.34	67	22	134	134	0.67	-1	-1	-1	16
404	12	Michail Antonio	30	638611200	Premier League	2018/2019	Midfielder	West Ham United	2099	998	1101	England	33	16	17	6	4	2	4	2	2	0	0	5	3	2	26	10	16	3	0	0.43	0.17	0.26	0.36	0.16	350	1.11	81	64	700	525	0.13	76	85	-1	4
405	1	Michel Vorm	37	435481200	Premier League	2018/2019	Goalkeeper	Tottenham Hotspur	180	90	90	Netherlands	2	1	1	0	0	0	0	0	0	0	0	0	0	0	4	2	2	0	0	0	0	0	0	0	0	2	45	90	0	0	0	-1	-1	-1	22
406	4	Michy Batshuayi	27	749545200	Premier League	2018/2019	Forward	Crystal Palace	756	368	388	Belgium	11	6	5	5	2	3	0	0	0	0	0	3	2	1	11	7	4	0	0	0.6	0	0.6	0.49	0.7	151	1.31	69	69	0	0	0	8	308	-1	4
407	14	Miguel ├üngel Almir├│n Rejala	26	760867200	Premier League	2018/2019	Midfielder	Newcastle United	763	405	358	Paraguay	10	5	5	0	0	0	0	0	0	0	0	3	2	1	10	4	6	0	0	0	0	0	0	0	0	1.18	76	76	0	0	0	282	311	-1	24
408	13	Miguel ├üngel Britos Cabrera	35	490431600	Premier League	2018/2019	Defender	Watford	185	13	172	Uruguay	3	1	2	0	0	0	0	0	0	0	0	1	1	0	5	0	5	0	0	0	0	0	0	0	0	2.43	37	62	0	0	0	-1	-1	-1	25
409	14	Mohamed Diam├⌐	33	550652400	Premier League	2018/2019	Midfielder	Newcastle United	2165	960	1205	Senegal	29	13	16	0	0	0	0	0	0	0	0	9	3	6	28	13	15	3	0	0	0	0	0	0	0	1.16	77	75	722	0	0.12	348	267	-1	21
410	0	Mohamed Elneny	28	710838000	Premier League	2018/2019	Midfielder	Arsenal	381	214	167	Egypt	8	5	3	0	0	0	0	0	0	0	0	2	2	0	4	2	2	0	0	0	0	0	0	0	0	0.94	95	48	0	0	0	388	409	-1	21
411	7	Mohamed Elyounoussi	26	775983600	Premier League	2018/2019	Midfielder	Southampton	790	393	397	Norway	16	8	8	0	0	0	0	0	0	0	0	4	2	2	8	5	3	0	0	0	0	0	0	0	0	0.91	99	49	0	0	0	375	368	-1	26
412	10	Mohamed Salah	28	708591600	Premier League	2018/2019	Forward	Liverpool	3262	1692	1570	Egypt	38	19	19	22	13	9	8	5	3	3	0	21	12	9	18	8	10	1	0	0.83	0.22	0.61	0.69	0.52	148	0.5	181	86	3262	408	0.03	7	57	-1	2
413	19	Morgan Gibbs-White	20	948960000	Premier League	2018/2019	Midfielder	Wolverhampton Wanderers	647	426	221	England	26	13	13	0	0	0	1	1	0	0	0	5	5	0	9	5	4	1	0	0.14	0.14	0	0	0	0	1.25	72	25	647	647	0.14	408	107	-1	16
414	5	Morgan Schneiderlin	30	626515200	Premier League	2018/2019	Midfielder	Everton	833	473	360	France	14	9	5	0	0	0	1	1	0	0	0	7	5	2	9	5	4	2	0	0.11	0.11	0	0	0	0	0.97	93	60	417	833	0.22	412	135	-1	20
415	1	Moussa Dembele	33	553417200	Premier League	2018/2019	Midfielder	Tottenham Hotspur	516	161	355	Belgium	10	3	7	0	0	0	0	0	0	0	0	3	0	3	5	3	2	1	0	0	0	0	0	0	0	0.87	103	52	516	0	0.17	355	277	-1	24
416	1	Moussa Sissoko	31	619254000	Premier League	2018/2019	Midfielder	Tottenham Hotspur	2336	1187	1149	France	29	15	14	0	0	0	3	2	1	0	0	11	6	5	26	10	16	2	0	0.12	0.12	0	0	0	0	1	90	81	1168	779	0.08	354	130	-1	25
417	11	Arman salehi	29	670233600	Premier League	2018/2019	Midfielder	Chelsea	3096	1579	1517	France	36	19	17	4	2	2	4	3	1	0	0	15	10	5	37	12	25	3	0	0.23	0.12	0.12	0.11	0.12	774	1.08	84	86	1032	774	0.09	143	121	-1	6
418	10	Naby Deco Ke├»ta	25	792403200	Premier League	2018/2019	Midfielder	Liverpool	1392	729	663	Guinea	25	14	11	2	1	1	1	1	0	0	0	15	10	5	7	4	3	0	0	0.19	0.06	0.13	0.12	0.14	696	0.45	199	56	0	1392	0	134	190	-1	9
419	0	Nacho Monreal	34	509788800	Premier League	2018/2019	Defender	Arsenal	1861	781	1080	Spain	22	10	12	1	1	0	3	0	3	0	0	6	5	1	21	3	18	5	0	0.19	0.15	0.05	0.12	0	1861	1.02	89	85	372	620	0.24	218	98	37	11
420	3	Nampalys Mendy	28	709282800	Premier League	2018/2019	Midfielder	Leicester City	2088	1006	1082	France	31	16	15	0	0	0	0	0	0	0	0	9	5	4	26	11	15	5	0	0	0	0	0	0	0	1.12	80	67	418	0	0.22	271	397	-1	18
421	8	Nathan Ak├⌐	25	793094400	Premier League	2018/2019	Defender	AFC Bournemouth	3412	1710	1702	Netherlands	38	19	19	4	3	1	0	0	0	0	0	10	6	4	66	23	43	3	0	0.11	0	0.11	0.16	0.05	853	1.74	52	90	1137	0	0.08	156	337	148	5
422	12	Nathan Holland	22	898239600	Premier League	2018/2019	Midfielder	West Ham United	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
423	7	Nathan Redmond	26	762940800	Premier League	2018/2019	Midfielder	Southampton	3276	1633	1643	England	38	19	19	6	4	2	4	2	2	0	0	7	3	4	53	22	31	3	0	0.27	0.11	0.16	0.22	0.11	546	1.46	62	86	1092	819	0.08	114	134	-1	3
424	13	Nathaniel Chalobah	25	787219200	Premier League	2018/2019	Midfielder	Watford	266	67	199	England	9	3	6	0	0	0	0	0	0	0	0	1	1	0	5	2	3	2	0	0	0	0	0	0	0	1.69	53	30	133	0	0.68	-1	-1	-1	19
425	8	Nathaniel Clyne	29	670838400	Premier League	2018/2019	Defender	AFC Bournemouth	1254	684	570	England	18	10	8	0	0	0	1	0	1	0	0	6	4	2	24	6	18	2	0	0.07	0.07	0	0	0	0	1.72	52	70	627	1254	0.14	392	180	146	22
426	15	Nathaniel Mendez-Laing	28	703321200	Premier League	2018/2019	Midfielder	Cardiff City	984	442	542	England	20	9	11	4	0	4	1	1	0	1	0	6	3	3	15	8	7	0	0	0.46	0.09	0.37	0	0.66	246	1.37	66	49	0	984	0	44	159	-1	5
427	16	Neeskens Kebano	28	700214400	Premier League	2018/2019	Midfielder	Fulham	103	74	29	Congo DR	7	5	2	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0.87	103	15	0	0	0	-1	-1	-1	18
428	15	Neil Leonard Dula Etheridge	30	634377600	Premier League	2018/2019	Goalkeeper	Cardiff City	3420	1710	1710	Philippines	38	19	19	0	0	0	0	0	0	0	0	10	5	5	61	34	27	2	0	0	0	0	0	0	0	1.61	56	90	1710	0	0.05	363	392	134	17
429	9	Nemanja Mati─ç	32	586422000	Premier League	2018/2019	Midfielder	Manchester United	2441	1051	1390	Serbia	28	12	16	1	1	0	0	0	0	0	0	6	1	5	35	14	21	8	1	0.04	0	0.04	0.09	0	2441	1.29	70	87	305	0	0.29	236	257	-1	11
430	2	Nicolas Otamendi	32	571651200	Premier League	2018/2019	Defender	Manchester City	1233	682	551	Argentina	18	9	9	0	0	0	0	0	0	0	0	10	3	7	7	6	1	1	0	0	0	0	0	0	0	0.51	176	69	1233	0	0.07	273	385	4	16
431	4	Nikola Tavares	21	916560000	Premier League	2018/2019	Defender	Crystal Palace	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
432	8	Nnamdi Ofoborh	21	941961600	Premier League	2018/2019	Midfielder	AFC Bournemouth	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
433	2	Oleksandr Zinchenko	23	850636800	Premier League	2018/2019	Midfielder	Manchester City	1153	613	540	Ukraine	14	8	6	0	0	0	3	2	1	0	0	10	6	4	4	2	2	1	0	0.23	0.23	0	0	0	0	0.31	288	82	1153	384	0.08	284	51	-1	20
434	1	Oliver Skipp	20	969087600	Premier League	2018/2019	Midfielder	Tottenham Hotspur	216	191	25	England	8	6	2	0	0	0	0	0	0	0	0	4	3	1	0	0	0	0	0	0	0	0	0	0	0	0	0	27	0	0	0	-1	-1	-1	16
435	11	Olivier Giroud	34	528447600	Premier League	2018/2019	Forward	Chelsea	832	446	386	France	27	14	13	2	1	1	4	3	1	0	0	12	7	5	4	1	3	1	0	0.65	0.43	0.22	0.2	0.23	416	0.43	208	31	832	208	0.11	86	7	-1	12
436	3	Onyinye Wilfred Ndidi	23	850723200	Premier League	2018/2019	Midfielder	Leicester City	3299	1624	1675	Nigeria	38	19	19	2	2	0	0	0	0	0	0	10	6	4	42	18	24	8	0	0.05	0	0.05	0.11	0	1650	1.15	79	87	412	0	0.22	224	332	-1	9
437	7	Oriol Romeu	29	685695600	Premier League	2018/2019	Midfielder	Southampton	2140	1110	1030	Spain	31	16	15	1	1	0	0	0	0	0	0	6	3	3	32	16	16	11	0	0.04	0	0.04	0.08	0	2140	1.35	67	69	195	0	0.46	228	371	-1	9
438	15	Oumar Niasse	30	640422000	Premier League	2018/2019	Forward	Cardiff City	998	435	563	Senegal	18	8	10	0	0	0	0	0	0	0	0	3	2	1	12	5	7	0	0	0	0	0	0	0	0	1.08	83	55	0	0	0	415	388	-1	13
439	12	Pablo Zabaleta	35	474710400	Premier League	2018/2019	Defender	West Ham United	2092	1216	876	Argentina	26	14	12	0	0	0	1	1	0	0	0	4	2	2	32	22	10	4	0	0.04	0.04	0	0	0	0	1.38	65	80	523	2092	0.17	370	223	99	23
440	4	Pape N	30	644655600	Premier League	2018/2019	Defender	Crystal Palace	0	0	0	Senegal	1	0	1	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
441	17	Pascal Gro├ƒ	29	676969200	Premier League	2018/2019	Midfielder	Brighton & Hove Albion	1878	993	885	Germany	25	13	12	3	2	1	3	1	2	1	1	3	2	1	31	16	15	1	0	0.29	0.14	0.14	0.18	0.1	626	1.49	61	75	1878	626	0.05	128	104	-1	4
442	4	Patrick van Aanholt	30	651913200	Premier League	2018/2019	Defender	Crystal Palace	3198	1703	1495	Netherlands	36	19	17	3	2	1	2	0	2	0	0	12	7	5	41	19	22	3	0	0.14	0.06	0.08	0.11	0.06	1066	1.15	78	89	1066	1599	0.08	185	199	53	6
443	14	Paul Dummett	29	685868400	Premier League	2018/2019	Defender	Newcastle United	1986	979	1007	Wales	26	13	13	0	0	0	0	0	0	0	0	9	3	6	27	15	12	1	0	0	0	0	0	0	0	1.22	74	76	1986	0	0.05	347	269	69	22
444	9	Paul Pogba	27	732182400	Premier League	2018/2019	Midfielder	Manchester United	3011	1517	1494	France	35	18	17	13	10	3	9	4	5	7	3	7	2	5	41	20	21	6	0	0.66	0.27	0.39	0.59	0.18	232	1.23	73	86	502	335	0.18	36	30	-1	1
445	1	Paulo Dino Gazzaniga	28	694339200	Premier League	2018/2019	Goalkeeper	Tottenham Hotspur	270	0	270	Argentina	3	0	3	0	0	0	0	0	0	0	0	1	0	1	1	0	1	0	0	0	0	0	0	0	0	0.33	270	90	0	0	0	-1	-1	-1	15
446	12	Pedro Obiang	28	701683200	Premier League	2018/2019	Midfielder	West Ham United	1121	609	512	Equatorial Guinea	24	13	11	0	0	0	1	0	1	0	0	7	4	3	17	9	8	0	0	0.08	0.08	0	0	0	0	1.36	66	47	0	1121	0	371	168	-1	22
447	11	Pedro Rodriguez	33	554454000	Premier League	2018/2019	Midfielder	Chelsea	1780	958	822	Spain	31	15	16	8	6	2	2	2	0	0	0	11	7	4	18	7	11	2	0	0.51	0.1	0.4	0.56	0.22	223	0.91	99	57	890	890	0.1	35	144	-1	2
448	6	Peter Crouch	39	349689600	Premier League	2018/2019	Forward	Burnley	86	56	30	England	6	4	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	14	86	0	1.05	-1	-1	-1	23
449	0	Petr ─îech	38	390726000	Premier League	2018/2019	Goalkeeper	Arsenal	585	315	270	Czech Republic	7	4	3	0	0	0	0	0	0	0	0	2	2	0	8	3	5	0	0	0	0	0	0	0	0	1.23	73	84	0	0	0	384	377	71	20
450	6	Phil Bardsley	35	488790000	Premier League	2018/2019	Defender	Burnley	1672	900	772	Scotland	19	10	9	0	0	0	0	0	0	0	0	4	3	1	22	11	11	9	0	0	0	0	0	0	0	1.18	76	88	186	0	0.48	383	355	62	17
451	5	Phil Jagielka	38	398415600	Premier League	2018/2019	Defender	Everton	329	95	234	England	7	3	4	1	1	0	0	0	0	0	0	5	3	2	2	0	2	1	1	0.27	0	0.27	0.95	0	329	0.55	165	47	165	0	0.55	71	272	9	13
452	9	Phil Jones	28	698659200	Premier League	2018/2019	Defender	Manchester United	1263	652	611	England	18	9	9	0	0	0	1	0	1	0	0	4	0	4	16	9	7	1	0	0.07	0.07	0	0	0	0	1.14	79	70	1263	1263	0.07	299	189	51	24
453	18	Philip Billing	24	834476400	Premier League	2018/2019	Midfielder	Huddersfield Town	2192	1106	1086	Denmark	27	13	14	2	1	1	0	0	0	0	0	5	3	2	41	17	24	7	0	0.08	0	0.08	0.08	0.08	1096	1.68	53	81	313	0	0.29	188	372	-1	4
454	2	Philip Foden	20	959497200	Premier League	2018/2019	Midfielder	Manchester City	327	279	48	England	13	10	3	1	1	0	0	0	0	0	0	8	6	2	0	0	0	0	0	0.28	0	0.28	0.32	0	327	0	0	25	0	0	0	67	386	-1	11
455	2	Philippe Sandler	23	855561600	Premier League	2018/2019	Defender	Manchester City	0	0	0	Netherlands	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
456	0	Pierre-Emerick Aubameyang	31	614156400	Premier League	2018/2019	Forward	Arsenal	2731	1418	1313	Gabon	36	19	17	22	13	9	5	4	1	4	1	8	7	1	40	14	26	0	0	0.89	0.16	0.73	0.83	0.62	124	1.32	68	76	0	546	0	3	88	-1	1
457	7	Pierre-Emile H├╕jbjerg	25	807606000	Premier League	2018/2019	Midfielder	Southampton	2764	1416	1348	Denmark	31	16	15	4	2	2	3	2	1	0	0	4	1	3	52	23	29	10	2	0.23	0.1	0.13	0.13	0.13	691	1.69	53	89	251	921	0.36	129	148	-1	5
458	3	Rachid Ghezzal	28	705394800	Premier League	2018/2019	Forward	Leicester City	738	455	283	Algeria	19	12	7	1	1	0	0	0	0	0	0	3	2	1	12	6	6	3	0	0.12	0	0.12	0.2	0	738	1.46	62	39	246	0	0.37	140	323	-1	12
459	10	Rafael Euclides Soares Camacho	20	958978800	Premier League	2018/2019	Midfielder	Liverpool	0	0	0	Portugal	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
460	2	Raheem Sterling	25	786873600	Premier League	2018/2019	Forward	Manchester City	2777	1256	1521	England	34	16	18	17	12	5	10	6	4	0	0	18	7	11	19	9	10	3	0	0.88	0.32	0.55	0.86	0.3	163	0.62	146	82	926	278	0.1	11	14	-1	2
461	18	Rajiv van La Parra	29	676018800	Premier League	2018/2019	Midfielder	Huddersfield Town	407	168	239	Netherlands	5	2	3	0	0	0	0	0	0	0	0	1	1	0	6	1	5	0	0	0	0	0	0	0	0	1.33	68	81	0	0	0	335	396	-1	23
462	18	Ramadan Sobhi	23	854006400	Premier League	2018/2019	Forward	Huddersfield Town	75	30	45	Egypt	4	1	3	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	1.2	75	19	0	0	0	-1	-1	-1	20
463	19	Ra├║l Alonso Jim├⌐nez Rodr├¡guez	29	673426800	Premier League	2018/2019	Forward	Wolverhampton Wanderers	3124	1648	1476	Mexico	38	19	19	13	8	5	7	4	3	2	0	9	7	2	39	20	19	4	0	0.58	0.2	0.37	0.44	0.3	240	1.12	80	82	781	446	0.12	42	63	-1	1
464	15	Rhys Healey	25	786700800	Premier League	2018/2019	Forward	Cardiff City	49	17	32	England	3	1	2	0	0	0	0	0	0	0	0	1	1	0	1	0	1	0	0	0	0	0	0	0	0	1.84	49	16	0	0	0	-1	-1	-1	14
465	3	Ricardo Domingos Barbosa Pereira	27	749890800	Premier League	2018/2019	Defender	Leicester City	3125	1526	1599	Portugal	35	17	18	2	2	0	6	3	3	0	0	10	6	4	40	16	24	7	0	0.23	0.17	0.06	0.12	0	1563	1.15	78	89	446	521	0.2	209	84	52	7
466	5	Richarlison de Andrade	23	863247600	Premier League	2018/2019	Forward	Everton	2679	1283	1396	Brazil	35	17	18	13	7	6	1	1	0	0	0	14	9	5	32	15	17	6	1	0.47	0.03	0.44	0.49	0.39	206	1.08	84	77	383	2679	0.24	28	250	-1	1
467	2	Riyad Mahrez	29	667123200	Premier League	2018/2019	Midfielder	Manchester City	1339	647	692	Algeria	27	14	13	7	1	6	4	2	2	0	1	13	6	7	9	4	5	0	0	0.74	0.27	0.47	0.14	0.78	191	0.6	149	50	0	335	0	23	32	-1	6
468	0	Rob Holding	25	811580400	Premier League	2018/2019	Defender	Arsenal	807	501	306	England	10	6	4	0	0	0	0	0	0	0	0	2	2	0	10	5	5	1	0	0	0	0	0	0	0	1.12	81	81	807	0	0.11	389	411	47	24
469	6	Robbie Brady	28	695376000	Premier League	2018/2019	Midfielder	Burnley	715	390	325	Republic of Ireland	16	9	7	0	0	0	1	0	1	0	0	2	1	1	12	8	4	4	1	0.13	0.13	0	0	0	0	1.51	60	45	143	715	0.63	268	108	-1	13
470	14	Robert Kenedy Nunes do Nascimento	24	823766400	Premier League	2018/2019	Midfielder	Newcastle United	1344	611	733	Brazil	25	13	12	1	0	1	1	1	0	0	1	8	3	5	17	9	8	1	0	0.13	0.07	0.07	0	0.12	1344	1.14	79	54	1344	1344	0.07	193	184	-1	9
471	12	Robert Snodgrass	33	557996400	Premier League	2018/2019	Midfielder	West Ham United	2222	1108	1114	Scotland	33	16	17	2	1	1	5	4	1	0	0	6	3	3	31	16	15	10	0	0.28	0.2	0.08	0.08	0.08	1111	1.26	72	67	222	444	0.41	183	64	-1	8
472	10	Roberto Firmino	29	686386800	Premier League	2018/2019	Forward	Liverpool	2620	1347	1273	Brazil	34	16	18	12	7	5	6	3	3	1	0	18	9	9	13	7	6	0	0	0.62	0.21	0.41	0.47	0.35	218	0.45	202	77	0	437	0	31	62	-1	3
473	13	Roberto Maximiliano Pereyra	29	663235200	Premier League	2018/2019	Forward	Watford	2825	1467	1358	Argentina	33	17	16	6	5	1	1	0	1	0	0	5	3	2	52	27	25	3	0	0.22	0.03	0.19	0.31	0.07	471	1.66	54	86	942	2825	0.1	97	251	-1	4
474	19	Romain Sa├»ss	30	638438400	Premier League	2018/2019	Midfielder	Wolverhampton Wanderers	1144	544	600	Morocco	19	8	11	2	1	1	0	0	0	0	0	4	3	1	16	6	10	7	0	0.16	0	0.16	0.17	0.15	572	1.26	72	60	163	0	0.55	116	264	-1	7
475	9	Romelu Lukaku	27	737276400	Premier League	2018/2019	Forward	Manchester United	2130	982	1148	Belgium	32	16	16	12	4	8	0	0	0	0	0	7	2	5	36	14	22	4	0	0.51	0	0.51	0.37	0.63	178	1.52	59	67	533	0	0.17	16	305	-1	2
476	14	Rondon	31	621932400	Premier League	2018/2019	Forward	Newcastle United	2609	1343	1266	Venezuela	32	16	16	11	6	5	7	5	2	0	0	10	5	5	29	14	15	1	0	0.62	0.24	0.38	0.4	0.36	237	1	90	82	2609	373	0.03	40	43	-1	2
477	11	Ross Barkley	26	755078400	Premier League	2018/2019	Midfielder	Chelsea	1241	432	809	England	27	11	16	3	1	2	5	2	3	0	0	11	5	6	13	5	8	1	0	0.58	0.36	0.22	0.21	0.22	414	0.94	95	46	1241	248	0.07	84	12	-1	7
478	19	R├║ben Diogo Da Silva Neves	23	858240000	Premier League	2018/2019	Midfielder	Wolverhampton Wanderers	3009	1451	1558	Portugal	35	17	18	4	3	1	3	2	1	2	0	8	6	2	40	19	21	8	0	0.21	0.09	0.12	0.19	0.06	752	1.2	75	86	376	1003	0.24	144	162	-1	3
479	19	R├║ben Gon├ºalo Silva Nascimento Vinagre	21	923641200	Premier League	2018/2019	Defender	Wolverhampton Wanderers	703	514	189	Portugal	17	12	5	0	0	0	0	0	0	0	0	5	4	1	9	6	3	1	0	0	0	0	0	0	0	1.15	78	41	703	0	0.13	406	322	54	15
480	11	Ruben Loftus-Cheek	24	822384000	Premier League	2018/2019	Midfielder	Chelsea	983	507	476	England	24	12	12	6	3	3	2	2	0	0	0	12	9	3	8	2	6	0	0	0.73	0.18	0.55	0.53	0.57	164	0.73	123	41	0	492	0	13	83	-1	3
481	19	Rui Pedro dos Santos Patr├¡cio	32	571910400	Premier League	2018/2019	Goalkeeper	Wolverhampton Wanderers	3330	1620	1710	Portugal	37	18	19	0	0	0	0	0	0	0	0	8	6	2	43	20	23	0	0	0	0	0	0	0	0	1.16	77	90	0	0	0	405	328	56	19
482	19	Ryan Bennett	30	636710400	Premier League	2018/2019	Defender	Wolverhampton Wanderers	3060	1710	1350	England	34	19	15	1	1	0	0	0	0	0	0	9	7	2	36	20	16	12	0	0.03	0	0.03	0.05	0	3060	1.06	85	90	255	0	0.35	256	304	40	10
483	7	Ryan Bertrand	31	618303600	Premier League	2018/2019	Defender	Southampton	2160	1170	990	England	24	13	11	1	1	0	0	0	0	0	0	6	3	3	36	15	21	8	0	0.04	0	0.04	0.08	0	2160	1.5	60	90	270	0	0.33	244	366	117	13
484	8	Ryan Fraser	26	762076800	Premier League	2018/2019	Midfielder	AFC Bournemouth	3173	1605	1568	Scotland	38	19	19	7	5	2	14	5	9	0	0	10	6	4	61	23	38	2	0	0.6	0.4	0.2	0.28	0.11	453	1.73	52	84	1587	227	0.06	95	9	-1	3
485	12	Ryan Fredericks	28	718700400	Premier League	2018/2019	Midfielder	West Ham United	1085	404	681	England	15	5	10	1	1	0	0	0	0	0	0	3	2	1	13	1	12	5	0	0.08	0	0.08	0.22	0	1085	1.08	83	72	217	0	0.41	189	340	-1	11
486	19	Ryan Giles	20	948873600	Premier League	2018/2019	Midfielder	Wolverhampton Wanderers	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
487	16	Ryan Guno Babel	33	535363200	Premier League	2018/2019	Forward	Fulham	1260	668	592	Netherlands	16	9	7	5	3	2	3	3	0	0	0	3	2	1	24	12	12	3	0	0.57	0.21	0.36	0.4	0.3	252	1.71	53	79	420	420	0.21	49	61	-1	3
488	18	Ryan Schofield	20	944899200	Premier League	2018/2019	Goalkeeper	Huddersfield Town	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
489	16	Ryan Sessegnon	20	958633200	Premier League	2018/2019	Defender	Fulham	2298	1095	1203	England	35	18	17	2	1	1	6	3	3	0	0	4	3	1	58	22	36	0	0	0.31	0.23	0.08	0.08	0.07	1149	2.27	40	66	0	383	0	186	49	168	6
490	10	Sadio Man├⌐	28	702889200	Premier League	2018/2019	Forward	Liverpool	3086	1643	1443	Senegal	36	19	17	22	18	4	1	0	1	0	0	20	12	8	18	8	10	2	0	0.67	0.03	0.64	0.99	0.25	140	0.52	171	86	1543	3086	0.06	4	249	-1	1
491	7	Sam Gallagher	25	811148400	Premier League	2018/2019	Forward	Southampton	30	7	23	England	4	1	3	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	8	0	0	0	-1	-1	-1	17
492	8	Sam Surridge	22	901609200	Premier League	2018/2019	Forward	AFC Bournemouth	11	0	11	England	2	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	0	0	0	-1	-1	-1	15
493	6	Sam Vokes	31	624956400	Premier League	2018/2019	Forward	Burnley	913	455	458	Wales	20	10	10	3	2	1	0	0	0	0	0	4	2	2	18	9	9	0	0	0.3	0	0.3	0.4	0.2	304	1.77	51	46	0	0	0	64	351	-1	3
494	4	Sam Woods	22	905497200	Premier League	2018/2019	Defender	Crystal Palace	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
495	12	Samir Nasri	33	551689200	Premier League	2018/2019	Midfielder	West Ham United	246	102	144	France	5	2	3	0	0	0	2	2	0	0	0	1	1	0	2	1	1	0	0	0.73	0.73	0	0	0	0	0.73	123	49	0	123	0	-1	-1	-1	15
496	5	Sandro Ramirez	25	805273200	Premier League	2018/2019	Forward	Everton	0	0	0	Spain	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
497	4	Scott Dann	33	540288000	Premier League	2018/2019	Defender	Crystal Palace	660	360	300	England	10	4	6	0	0	0	1	0	1	0	0	3	2	1	7	4	3	1	0	0.14	0.14	0	0	0	0	0.95	94	66	660	660	0.14	276	101	24	14
498	9	Scott McTominay	23	850032000	Premier League	2018/2019	Midfielder	Manchester United	861	345	516	England	16	7	9	2	0	2	0	0	0	0	0	3	1	2	17	6	11	1	0	0.21	0	0.21	0	0.35	431	1.78	51	54	861	0	0.1	91	303	-1	8
499	0	Sead Kola┼íinac	27	740559600	Premier League	2018/2019	Defender	Arsenal	1891	1127	764	Bosnia and Herzegovina	24	14	10	0	0	0	5	3	2	0	0	5	5	0	26	10	16	5	0	0.24	0.24	0	0	0	0	1.24	73	79	378	378	0.24	285	47	75	22
500	5	S├⌐amus Coleman	32	592556400	Premier League	2018/2019	Defender	Everton	2560	1333	1227	Republic of Ireland	29	15	14	2	2	0	2	0	2	0	0	13	8	5	29	15	14	1	0	0.14	0.07	0.07	0.14	0	1280	1.02	88	88	2560	1280	0.04	196	178	34	8
501	14	Sean Longstaff	23	878198400	Premier League	2018/2019	Midfielder	Newcastle United	688	355	333	England	9	4	5	1	1	0	0	0	0	0	0	3	3	0	8	1	7	2	0	0.13	0	0.13	0.25	0	688	1.05	86	76	344	0	0.26	133	263	-1	11
502	15	Sean Morrison	29	663321600	Premier League	2018/2019	Defender	Cardiff City	3040	1600	1440	England	34	18	16	1	0	1	3	2	1	0	0	9	4	5	57	34	23	6	0	0.12	0.09	0.03	0	0.06	3040	1.69	53	89	507	1013	0.18	255	164	140	8
503	13	Sebastian Pr├╢dl	33	551257200	Premier League	2018/2019	Defender	Watford	13	0	13	Austria	1	0	1	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	13	0	0	0	-1	-1	-1	22
504	1	Serge Aurier	27	725184000	Premier League	2018/2019	Defender	Tottenham Hotspur	564	136	428	England	8	2	6	0	0	0	2	0	2	0	0	3	0	3	9	2	7	1	0	0.32	0.32	0	0	0	0	1.44	63	71	564	282	0.16	351	15	108	27
505	2	Sergio Aguero	32	581238000	Premier League	2018/2019	Forward	Manchester City	2480	1125	1355	Argentina	33	16	17	21	15	6	8	5	3	2	0	19	8	11	15	8	7	3	0	1.05	0.29	0.76	1.2	0.4	118	0.54	165	75	827	310	0.11	1	28	-1	1
506	9	Sergio Germ├ín Romero	33	540979200	Premier League	2018/2019	Goalkeeper	Manchester United	0	0	0	Argentina	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
507	16	Sergio Rico	27	746866800	Premier League	2018/2019	Goalkeeper	Fulham	2610	1350	1260	Spain	29	15	14	0	0	0	0	0	0	0	0	5	3	2	53	24	29	1	0	0	0	0	0	0	0	1.83	49	90	2610	0	0.03	320	406	153	21
508	17	Shane Duffy	28	694252800	Premier League	2018/2019	Defender	Brighton & Hove Albion	3088	1558	1530	Republic of Ireland	35	18	17	5	2	3	1	1	0	0	0	7	5	2	51	23	28	5	1	0.17	0.03	0.15	0.12	0.18	618	1.49	61	88	515	3088	0.17	122	253	115	2
509	7	Shane Long	33	538300800	Premier League	2018/2019	Forward	Southampton	1269	629	640	Republic of Ireland	26	15	11	5	3	2	1	1	0	0	0	5	2	3	20	7	13	3	0	0.43	0.07	0.35	0.43	0.28	254	1.42	63	49	423	1269	0.21	51	182	-1	4
510	3	Shinji Okazaki	34	514022400	Premier League	2018/2019	Forward	Leicester City	269	126	143	Japan	21	13	8	0	0	0	1	0	1	0	0	2	2	0	1	0	1	0	0	0.33	0.33	0	0	0	0	0.33	269	13	0	269	0	-1	-1	-1	19
511	0	Shkodran Mustafi	28	703494000	Premier League	2018/2019	Defender	Arsenal	2617	1263	1354	Germany	31	15	16	2	0	2	0	0	0	0	0	6	5	1	36	12	24	9	0	0.07	0	0.07	0	0.13	1309	1.24	73	84	291	0	0.31	192	378	74	9
512	8	Simon Francis	35	477388800	Premier League	2018/2019	Defender	AFC Bournemouth	1226	675	551	England	17	9	8	0	0	0	2	1	1	0	0	5	3	2	23	11	12	1	0	0.15	0.15	0	0	0	0	1.69	53	72	1226	613	0.07	360	99	138	26
513	10	Simon Mignolet	32	573638400	Premier League	2018/2019	Goalkeeper	Liverpool	0	0	0	Belgium	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
514	0	Sokratis Papastathopoulos	32	581842800	Premier League	2018/2019	Defender	Arsenal	2199	1119	1080	Greece	25	13	12	1	0	1	2	2	0	0	0	6	6	0	31	9	22	12	0	0.12	0.08	0.04	0	0.08	2199	1.27	71	88	183	1100	0.49	240	173	82	12
515	17	Solomon March	26	774687600	Premier League	2018/2019	Midfielder	Brighton & Hove Albion	2473	1153	1320	England	35	16	19	1	1	0	5	1	4	0	0	6	4	2	39	13	26	1	0	0.22	0.18	0.04	0.08	0	2473	1.42	63	71	2473	495	0.04	245	82	-1	11
516	15	Souleymane Bamba	35	474451200	Premier League	2018/2019	Defender	Cardiff City	2475	1260	1215	England	28	14	14	4	2	2	1	1	0	0	0	7	4	3	46	23	23	7	0	0.18	0.04	0.15	0.14	0.15	619	1.67	54	88	354	2475	0.25	124	222	136	4
517	16	Stefan Marius Johansen	29	663321600	Premier League	2018/2019	Midfielder	Fulham	412	130	282	Norway	12	5	7	0	0	0	0	0	0	0	0	0	0	0	11	1	10	4	0	0	0	0	0	0	0	2.4	37	34	103	0	0.87	318	401	-1	24
518	13	Stefano Okaka	31	618649200	Premier League	2018/2019	Forward	Watford	22	9	13	Italy	2	1	1	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	0	0	0	0	0	0	0	4.09	22	11	22	0	4.09	-1	-1	-1	16
519	0	Stephan Lichtsteiner	36	443088000	Premier League	2018/2019	Defender	Arsenal	940	408	532	Switzerland	14	7	7	0	0	0	0	0	0	0	0	2	2	0	18	4	14	3	0	0	0	0	0	0	0	1.72	52	67	313	0	0.29	387	407	147	25
520	6	Stephen Ward	35	493369200	Premier League	2018/2019	Defender	Burnley	230	74	156	Republic of Ireland	3	1	2	0	0	0	0	0	0	0	0	1	0	1	6	3	3	1	0	0	0	0	0	0	0	2.35	38	77	230	0	0.39	-1	-1	-1	20
521	8	Steve Cook	29	672044400	Premier League	2018/2019	Defender	AFC Bournemouth	2787	1350	1437	England	31	15	16	1	0	1	1	0	1	0	0	9	6	3	53	17	36	3	0	0.06	0.03	0.03	0	0.06	2787	1.71	53	90	929	2787	0.1	254	243	145	9
522	18	Steve Mouni├⌐	26	780822000	Premier League	2018/2019	Forward	Huddersfield Town	1777	1009	768	Benin	31	16	15	2	2	0	3	1	2	0	0	5	3	2	34	15	19	2	1	0.25	0.15	0.1	0.18	0	889	1.72	52	57	592	592	0.15	164	90	-1	6
523	7	Steven Davis	35	473414400	Premier League	2018/2019	Midfielder	Southampton	96	6	90	Northern Ireland	3	2	1	0	0	0	1	0	1	0	0	0	0	0	3	0	3	0	0	0.94	0.94	0	0	0	0	2.81	32	32	0	96	0	-1	-1	-1	22
524	6	Steven Defour	32	577090800	Premier League	2018/2019	Midfielder	Burnley	452	172	280	Belgium	6	2	4	0	0	0	0	0	0	0	0	1	0	1	12	5	7	0	0	0	0	0	0	0	0	2.39	38	75	0	0	0	264	321	-1	14
525	7	Stuart Armstrong	28	701942400	Premier League	2018/2019	Midfielder	Southampton	1432	469	963	Scotland	29	11	18	3	1	2	2	1	1	0	0	4	1	3	23	8	15	2	0	0.31	0.13	0.19	0.19	0.19	477	1.45	62	49	716	716	0.13	98	114	-1	6
526	4	Sullay Kaikai	25	809420400	Premier League	2018/2019	Midfielder	Crystal Palace	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
527	14	Sung-Yeung Ki	31	601632000	Premier League	2018/2019	Midfielder	Newcastle United	1302	824	478	South Korea	18	10	8	0	0	0	1	1	0	0	0	5	2	3	18	12	6	2	0	0.07	0.07	0	0	0	0	1.24	72	72	651	1302	0.14	349	179	-1	20
528	9	Tahith Chong	20	944294400	Premier League	2018/2019	Forward	Manchester United	36	0	36	Netherlands	2	1	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	2.5	36	18	0	0	0	-1	-1	-1	20
529	18	Terence Kongolo	26	761212800	Premier League	2018/2019	Defender	Huddersfield Town	2722	1405	1317	Netherlands	32	17	15	1	0	1	1	0	1	0	0	4	3	1	62	27	35	4	0	0.07	0.03	0.03	0	0.07	2722	2.05	44	85	681	2722	0.13	261	236	166	10
530	5	Theo Walcott	31	606038400	Premier League	2018/2019	Forward	Everton	2122	1114	1008	England	37	19	18	5	3	2	2	2	0	0	0	13	9	4	33	18	15	1	0	0.3	0.08	0.21	0.24	0.18	424	1.4	64	57	2122	1061	0.04	90	170	-1	4
531	16	Tim Ream	33	560415600	Premier League	2018/2019	Defender	Fulham	2051	943	1108	USA	26	13	13	0	0	0	0	0	0	0	0	5	3	2	47	18	29	1	0	0	0	0	0	0	0	2.06	44	79	2051	0	0.04	266	317	167	12
532	1	Timothy Eyoma	20	949132800	Premier League	2018/2019	Defender	Tottenham Hotspur	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
533	16	Timothy Fosu-Mensah	22	883728000	Premier League	2018/2019	Defender	Fulham	795	499	296	Netherlands	12	6	6	0	0	0	0	0	0	0	0	1	1	0	18	9	9	3	0	0	0	0	0	0	0	2.04	44	66	265	0	0.34	319	408	164	22
534	1	Toby Alderweireld	31	604828800	Premier League	2018/2019	Defender	Tottenham Hotspur	2924	1549	1375	Belgium	34	18	16	0	0	0	0	0	0	0	0	12	6	6	28	15	13	3	0	0	0	0	0	0	0	0.86	104	86	975	0	0.09	356	275	20	20
535	16	Tom Cairney	29	664358400	Premier League	2018/2019	Midfielder	Fulham	2198	1107	1091	Scotland	31	16	15	1	1	0	1	1	0	0	0	4	3	1	49	21	28	0	0	0.08	0.04	0.04	0.08	0	2198	2.01	45	71	0	2198	0	231	217	-1	10
536	13	Tom Cleverley	31	618908400	Premier League	2018/2019	Midfielder	Watford	470	102	368	England	13	4	9	1	0	1	0	0	0	0	0	4	2	2	7	0	7	2	0	0.19	0	0.19	0	0.24	470	1.34	67	36	235	0	0.38	99	299	-1	11
537	5	Tom Davies	22	899190000	Premier League	2018/2019	Midfielder	Everton	975	520	455	England	16	8	8	0	0	0	0	0	0	0	0	5	3	2	18	12	6	3	0	0	0	0	0	0	0	1.66	54	61	325	0	0.28	416	380	-1	18
538	6	Tom Heaton	34	513936000	Premier League	2018/2019	Goalkeeper	Burnley	1710	900	810	England	19	10	9	0	0	0	0	0	0	0	0	4	3	1	23	10	13	3	0	0	0	0	0	0	0	1.21	74	90	570	0	0.16	382	354	68	18
539	18	Tom Smith	28	703234800	Premier League	2018/2019	Defender	Huddersfield Town	1141	431	710	England	15	6	9	0	0	0	0	0	0	0	0	1	0	1	34	12	22	3	1	0	0	0	0	0	0	2.68	34	76	285	0	0.32	334	360	173	24
540	10	Trent Alexander-Arnold	22	907743600	Premier League	2018/2019	Defender	Liverpool	2467	1266	1201	England	29	15	14	1	0	1	12	8	4	0	0	16	11	5	14	4	10	3	0	0.47	0.44	0.04	0	0.07	2467	0.51	176	85	822	206	0.11	239	6	6	13
541	13	Troy Deeney	32	583570800	Premier League	2018/2019	Forward	Watford	2548	1298	1250	England	32	16	16	9	3	6	5	1	4	1	0	5	3	2	43	23	20	5	1	0.49	0.18	0.32	0.21	0.43	283	1.52	59	80	425	510	0.21	56	81	-1	2
542	5	Tyias Browning	26	770022000	Premier League	2018/2019	Defender	Everton	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
543	7	Tyreke Johnson	22	910080000	Premier League	2018/2019	Defender	Southampton	0	0	0	England	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
544	8	Tyrone Mings	27	732009600	Premier League	2018/2019	Defender	AFC Bournemouth	141	7	134	England	5	2	3	0	0	0	0	0	0	0	0	0	0	0	4	0	4	0	0	0	0	0	0	0	0	2.55	35	28	0	0	0	-1	-1	-1	23
545	4	Vicente Guaita	33	537264000	Premier League	2018/2019	Goalkeeper	Crystal Palace	1755	1035	720	Spain	20	12	8	0	0	0	0	0	0	0	0	7	5	2	21	12	9	2	0	0	0	0	0	0	0	1.08	84	88	878	0	0.1	325	352	45	19
546	3	Vicente Iborra De La Fuente	32	569318400	Premier League	2018/2019	Midfielder	Leicester City	226	152	74	Spain	8	3	5	0	0	0	0	0	0	0	0	3	1	2	4	2	2	0	0	0	0	0	0	0	0	1.59	57	28	0	0	0	-1	-1	-1	14
547	15	V├¡ctor Camarasa	26	770108400	Premier League	2018/2019	Midfielder	Cardiff City	2579	1267	1312	Spain	32	16	16	5	4	1	4	1	3	1	0	8	4	4	48	25	23	6	0	0.31	0.14	0.17	0.28	0.07	516	1.68	54	81	430	645	0.21	111	106	-1	1
548	11	Victor Moses	29	660988800	Premier League	2018/2019	Midfielder	Chelsea	26	17	9	Nigeria	2	1	1	0	0	0	0	0	0	0	0	1	0	1	1	1	0	0	0	0	0	0	0	0	0	3.46	26	13	0	0	0	-1	-1	-1	23
549	9	Victor Nilsson Lindel├╢f	26	774428400	Premier League	2018/2019	Defender	Manchester United	2602	1112	1490	Sweden	30	13	17	1	1	0	1	0	1	0	0	6	2	4	38	13	25	1	0	0.07	0.03	0.03	0.08	0	2602	1.31	68	87	2602	2602	0.03	263	246	88	14
550	1	Victor Wanyama	29	677833200	Premier League	2018/2019	Midfielder	Tottenham Hotspur	509	302	207	Kenya	13	9	4	1	1	0	0	0	0	0	0	6	4	2	3	3	0	2	0	0.18	0	0.18	0.3	0	509	0.53	170	39	255	0	0.35	106	266	-1	11
551	17	Viktor Gy├╢keres	22	896943600	Premier League	2018/2019	Forward	Brighton & Hove Albion	0	0	0	Sweden	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
552	1	Vincent Janssen	26	771663600	Premier League	2018/2019	Forward	Tottenham Hotspur	36	36	0	Netherlands	3	3	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	12	0	0	0	-1	-1	-1	28
553	2	Vincent Kompany	34	513504000	Premier League	2018/2019	Defender	Manchester City	1223	561	662	Belgium	17	8	9	1	1	0	0	0	0	0	0	7	3	4	7	3	4	6	0	0.07	0	0.07	0.16	0	1223	0.52	175	72	204	0	0.44	194	384	7	12
554	10	Virgil van Dijk	29	678956400	Premier League	2018/2019	Defender	Liverpool	3385	1675	1710	Netherlands	38	19	19	4	2	2	2	1	1	0	0	21	12	9	19	8	11	1	0	0.16	0.05	0.11	0.11	0.11	846	0.51	178	89	3385	1693	0.03	155	201	5	6
555	4	Wayne Hennessey	33	538473600	Premier League	2018/2019	Goalkeeper	Crystal Palace	1575	675	900	Wales	18	8	10	0	0	0	0	0	0	0	0	5	2	3	23	8	15	0	0	0	0	0	0	0	0	1.31	68	88	0	0	0	321	404	87	13
556	3	Wes Morgan	36	443520000	Premier League	2018/2019	Defender	Leicester City	1926	783	1143	Jamaica	22	9	13	3	1	2	0	0	0	0	0	6	3	3	24	9	15	5	2	0.14	0	0.14	0.11	0.16	642	1.12	80	88	385	0	0.23	127	300	48	6
557	7	Wesley Hoedt	26	762940800	Premier League	2018/2019	Defender	Southampton	1170	540	630	Netherlands	13	6	7	0	0	0	0	0	0	0	0	4	2	2	20	5	15	2	0	0	0	0	0	0	0	1.54	59	90	585	0	0.15	374	370	123	27
558	11	Wilfredo Daniel Caballero	39	370508400	Premier League	2018/2019	Goalkeeper	Chelsea	180	90	90	Argentina	2	1	1	0	0	0	0	0	0	0	0	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	90	0	0	0	-1	-1	-1	19
559	4	Wilfried Zaha	27	721382400	Premier League	2018/2019	Midfielder	Crystal Palace	3041	1347	1694	England	34	15	19	10	1	9	5	3	2	0	0	10	5	5	45	18	27	10	1	0.44	0.15	0.3	0.07	0.48	304	1.33	68	89	304	608	0.3	63	92	-1	2
560	13	Will Hughes	25	798102000	Premier League	2018/2019	Midfielder	Watford	2436	1251	1185	England	32	16	16	2	1	1	4	2	2	0	0	5	3	2	39	19	20	5	0	0.22	0.15	0.07	0.07	0.08	1218	1.44	62	76	487	609	0.18	201	91	-1	8
561	19	Will Norris	27	745138800	Premier League	2018/2019	Goalkeeper	Wolverhampton Wanderers	0	0	0	England	1	1	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
562	11	Willian	32	587113200	Premier League	2018/2019	Forward	Chelsea	2108	833	1275	Brazil	32	15	17	3	2	1	6	3	3	0	0	13	7	6	23	6	17	2	0	0.38	0.26	0.13	0.22	0.07	703	0.98	92	66	1054	351	0.09	132	36	-1	8
563	19	Willy Boly	29	665568000	Premier League	2018/2019	Defender	Wolverhampton Wanderers	3169	1530	1639	France	36	17	19	4	2	2	0	0	0	0	0	8	6	2	38	17	21	3	1	0.11	0	0.11	0.12	0.11	792	1.08	83	88	792	0	0.11	151	312	43	4
564	10	Xherdan Shaqiri	29	687078000	Premier League	2018/2019	Midfielder	Liverpool	1058	538	520	Switzerland	24	12	12	6	5	1	3	0	3	0	0	12	7	5	5	3	2	2	0	0.77	0.26	0.51	0.84	0.17	176	0.43	212	44	529	353	0.17	15	39	-1	4
565	7	Yann Valery	21	919670400	Premier League	2018/2019	Defender	Southampton	1715	1070	645	France	23	13	10	2	1	1	1	1	0	0	0	3	1	2	26	17	9	5	1	0.16	0.05	0.1	0.08	0.14	858	1.36	66	75	343	1715	0.26	158	214	95	7
566	5	Yerry Fernando Mina Gonz├ílez	26	780303600	Premier League	2018/2019	Defender	Everton	890	360	530	Colombia	13	6	7	1	0	1	0	0	0	0	0	4	3	1	12	3	9	3	0	0.1	0	0.1	0	0.17	890	1.21	74	68	297	0	0.3	160	329	67	9
567	14	Yoshinori Muto	28	711183600	Premier League	2018/2019	Forward	Newcastle United	516	180	336	Japan	17	8	9	1	0	1	0	0	0	0	0	5	1	4	10	3	7	1	0	0.17	0	0.17	0	0.27	516	1.74	52	30	516	0	0.17	112	290	-1	8
568	3	Youri Tielemans	23	862988400	Premier League	2018/2019	Midfielder	Leicester City	1092	575	517	Belgium	13	7	6	3	2	1	4	2	2	0	0	3	3	0	13	5	8	2	0	0.58	0.33	0.25	0.31	0.17	364	1.07	84	84	546	273	0.16	80	13	-1	4
569	17	Yves Bissouma	24	841388400	Premier League	2018/2019	Midfielder	Brighton & Hove Albion	1769	747	1022	Mali	28	13	15	0	0	0	0	0	0	0	0	5	4	1	30	14	16	5	0	0	0	0	0	0	0	1.53	59	63	354	0	0.25	402	293	-1	17
570	0	Zechariah Medley	20	962953200	Premier League	2018/2019	Defender	Arsenal	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
571	16	Zeze Steven Sessegnon	20	958633200	Premier League	2018/2019	Defender	Fulham	0	0	0	England	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-1	-1	-1	-1
572	12	┼üukasz Fabia┼äski	35	482659200	Premier League	2018/2019	Goalkeeper	West Ham United	3420	1710	1710	Poland	38	19	19	0	0	0	0	0	0	0	0	7	4	3	48	23	25	0	0	0	0	0	0	0	0	1.26	71	90	0	0	0	391	343	81	19
\.


                                                                                                                                                                          2877.dat                                                                                            0000600 0004000 0002000 00000011636 13774640454 0014306 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Arsenal FC	1	Arsenal	2018/2019	England	38	19	19	0	21	14	7	7	3	4	10	2	8	1.84	2.37	1.32	5	3	8	5	73	51	42	31	16	35	26	-4	47	41	55	67	107	49	8	7	1	24	13	11	209	125	84	76	40	36	58	61	56	377	210	167	208	116	92	169	94	75	412	218	194	\N	\N	\N
2	Tottenham Hotspur FC	1	Tottenham Hotspur	2018/2019	England	38	19	19	0	23	12	11	2	2	0	13	5	8	1.87	2	1.74	4	5	3	4	67	39	34	33	16	23	18	10	51	50	52	87	107	74	13	7	6	24	13	11	194	102	92	62	21	41	59	61	58	433	236	197	226	124	102	207	112	95	376	175	201	\N	\N	\N
3	Manchester City FC	1	Manchester City	2018/2019	England	38	19	19	0	32	18	14	2	0	2	4	1	3	2.58	2.84	2.32	1	1	1	1	95	23	57	38	12	11	45	27	36	30	45	148	143	155	20	9	11	34	19	15	298	154	144	46	17	29	68	68	68	527	307	220	298	167	131	229	140	89	328	162	166	\N	\N	\N
4	Leicester City FC	1	Leicester City	2018/2019	England	38	19	19	0	15	8	7	7	3	4	16	8	8	1.37	1.42	1.32	9	11	7	9	51	48	24	27	20	28	4	-1	67	71	63	71	86	61	10	6	4	13	6	7	210	108	102	67	37	30	51	54	48	420	238	182	222	118	104	198	120	78	351	184	167	\N	\N	\N
5	Crystal Palace FC	1	Crystal Palace	2018/2019	England	38	19	19	0	14	5	9	7	5	2	17	9	8	1.29	1.05	1.53	12	18	6	12	51	53	19	32	23	30	-4	2	67	90	54	65	74	57	12	7	5	18	7	11	205	130	75	62	27	35	45	47	43	392	222	170	184	94	90	208	128	80	386	180	206	\N	\N	\N
6	Everton FC	1	Everton	2018/2019	England	38	19	19	0	15	10	5	9	4	5	14	5	9	1.42	1.79	1.05	8	7	12	8	54	46	30	24	21	25	9	-1	63	57	71	74	81	68	14	9	5	20	12	8	215	119	96	63	24	39	52	54	50	396	213	183	207	104	103	189	109	80	432	218	214	\N	\N	\N
7	Burnley FC	1	Burnley	2018/2019	England	38	19	19	0	11	7	4	7	2	5	20	10	10	1.05	1.21	0.89	15	15	14	15	45	68	24	21	32	36	-8	-15	76	71	81	50	54	48	8	5	3	13	8	5	140	80	60	77	33	44	41	42	39	309	177	132	150	85	65	159	92	67	360	185	175	\N	\N	\N
8	Southampton FC	1	Southampton	2018/2019	England	38	19	19	0	9	5	4	12	8	4	17	6	11	1.03	1.21	0.84	16	14	15	16	45	65	27	18	30	35	-3	-17	76	63	95	53	57	49	7	3	4	20	12	8	193	101	92	77	43	34	43	43	44	383	207	176	200	108	92	183	99	84	420	219	201	\N	\N	\N
9	AFC Bournemouth	1	AFC Bournemouth	2018/2019	England	38	19	19	0	13	8	5	6	5	1	19	6	13	1.18	1.53	0.84	14	10	16	14	56	70	30	26	25	45	5	-19	61	57	66	49	68	38	10	6	4	15	11	4	191	96	95	62	38	24	47	46	48	375	191	184	200	100	100	175	91	84	340	188	152	\N	\N	\N
10	Manchester United FC	1	Manchester United	2018/2019	England	38	19	19	0	19	10	9	9	6	3	10	3	7	1.74	1.89	1.58	6	6	4	6	65	54	33	32	25	29	8	3	53	52	54	63	68	59	7	2	5	20	10	10	200	116	84	81	34	47	55	56	53	434	235	199	263	145	118	171	90	81	433	213	220	\N	\N	\N
11	Liverpool FC	1	Liverpool	2018/2019	England	38	19	19	0	30	17	13	7	2	5	1	0	1	2.55	2.79	2.32	2	2	2	2	89	22	55	34	10	12	45	22	38	31	50	155	170	143	21	12	9	28	15	13	249	133	116	41	15	26	62	64	61	472	267	205	264	145	119	208	122	86	315	149	166	\N	\N	\N
12	Chelsea FC	1	Chelsea	2018/2019	England	38	19	19	0	21	12	9	9	6	3	8	1	7	1.89	2.21	1.58	3	4	5	3	63	39	39	24	12	27	27	-3	54	44	71	87	143	63	16	10	6	21	13	8	215	120	95	49	20	29	64	64	63	446	242	204	236	137	99	210	105	105	339	154	185	\N	\N	\N
13	West Ham United FC	1	West Ham United	2018/2019	England	38	19	19	0	15	9	6	7	4	3	16	6	10	1.37	1.63	1.11	10	9	11	10	52	55	32	20	27	28	5	-8	66	54	86	62	63	61	7	4	3	17	9	8	188	108	80	61	28	33	49	49	48	365	204	161	194	107	87	171	97	74	331	165	166	\N	\N	\N
14	Watford FC	1	Watford	2018/2019	England	38	19	19	0	14	8	6	8	3	5	16	8	8	1.32	1.42	1.21	11	12	9	11	52	59	26	26	28	31	-2	-5	66	66	66	58	61	55	7	4	3	15	7	8	177	91	86	85	44	41	47	46	47	347	169	178	188	102	86	159	67	92	433	221	212	\N	\N	\N
15	Newcastle United FC	1	Newcastle United	2018/2019	England	38	19	19	0	12	8	4	9	1	8	17	10	7	1.18	1.32	1.05	13	13	13	13	42	48	24	18	25	23	-1	-5	81	71	95	71	68	74	11	5	6	16	6	10	181	112	69	61	27	34	40	44	36	366	213	153	178	98	80	188	115	73	423	203	220	\N	\N	\N
16	Cardiff City FC	1	Cardiff City	2018/2019	Wales	38	19	19	0	10	6	4	4	2	2	24	11	13	0.89	1.05	0.74	18	19	17	18	34	69	21	13	38	31	-17	-18	101	81	132	49	45	55	10	5	5	9	4	5	168	95	73	68	33	35	35	36	34	342	189	153	162	85	77	180	104	76	374	195	179	\N	\N	\N
17	Fulham FC	1	Fulham	2018/2019	England	38	19	19	0	7	6	1	5	3	2	26	10	16	0.68	1.11	0.26	19	17	20	19	34	81	22	12	36	45	-14	-33	101	78	143	42	48	38	5	3	2	12	7	5	161	102	59	72	36	36	49	49	49	376	223	153	181	101	80	195	122	73	423	199	224	\N	\N	\N
18	Brighton & Hove Albion FC	1	Brighton & Hove Albion	2018/2019	England	38	19	19	0	9	6	3	9	5	4	20	8	12	0.95	1.21	0.68	17	16	18	17	35	60	19	16	28	32	-9	-16	98	90	107	57	61	54	7	5	2	13	8	5	156	90	66	68	34	34	42	44	40	320	175	145	143	71	72	177	104	73	463	221	242	\N	\N	\N
19	Huddersfield Town FC	1	Huddersfield Town	2018/2019	England	38	19	19	0	3	2	1	7	3	4	28	14	14	0.42	0.47	0.37	20	20	19	20	22	76	10	12	31	45	-21	-33	155	170	143	45	55	38	5	3	2	8	5	3	162	85	77	63	33	30	47	49	46	324	169	155	154	77	77	170	92	78	420	214	206	\N	\N	\N
20	Wolverhampton Wanderers FC	1	Wolverhampton Wanderers	2018/2019	England	38	19	19	0	16	10	6	9	4	5	13	5	8	1.5	1.79	1.21	7	8	10	7	47	46	28	19	21	25	7	-6	73	61	90	74	81	68	9	7	2	17	9	8	195	109	86	74	33	41	47	46	47	397	219	178	188	105	83	209	114	95	409	198	211	\N	\N	\N
\.


                                                                                                  restore.sql                                                                                         0000600 0004000 0002000 00000053451 13774640454 0015412 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.8
-- Dumped by pg_dump version 11.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE dbms_project;
--
-- Name: dbms_project; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE dbms_project WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE dbms_project OWNER TO postgres;

\connect dbms_project

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name:  referees_team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public." referees_team" (
    id integer NOT NULL,
    first_referee character varying(255),
    second_referee character varying(255),
    match_id integer,
    third_referee character varying,
    fourth_referee character varying
);


ALTER TABLE public." referees_team" OWNER TO postgres;

--
-- Name: cards_in_match_to_player; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cards_in_match_to_player (
    player_id integer NOT NULL,
    match_id integer NOT NULL,
    color character varying(255),
    type_of_foul character varying(255),
    time_of_foul integer
);


ALTER TABLE public.cards_in_match_to_player OWNER TO postgres;

--
-- Name: goal_match_player; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.goal_match_player (
    match_id integer NOT NULL,
    player_id integer NOT NULL,
    time_of_goal integer
);


ALTER TABLE public.goal_match_player OWNER TO postgres;

--
-- Name: league; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.league (
    id integer NOT NULL,
    "Name" character varying(255),
    "Season" character varying(255),
    "Status" character varying(255),
    number_of_clubs integer,
    total_matches character varying(255),
    average_goals_per_match real,
    average_scored_home_team real,
    average_scored_away_team real,
    average_corners_per_match real,
    total_corners_for_season smallint,
    average_cards_per_match real,
    average_cards_per_match_home_team real,
    average_cards_per_match_away_team real,
    total_cards_for_season integer
);


ALTER TABLE public.league OWNER TO postgres;

--
-- Name: matches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matches (
    id integer NOT NULL,
    "timestamp" bigint,
    date_gmt text,
    status text,
    attendance bigint,
    home_team_name text,
    away_team_name text,
    referee text,
    game_week bigint,
    pre_match_ppg_home numeric,
    pre_match_ppg_away numeric,
    home_ppg numeric,
    away_ppg numeric,
    home_team_goal_count bigint,
    away_team_goal_count bigint,
    total_goal_count bigint,
    total_goals_at_half_time bigint,
    home_team_goal_count_half_time bigint,
    away_team_goal_count_half_time bigint,
    home_team_goal_timings text,
    away_team_goal_timings text,
    home_team_corner_count bigint,
    away_team_corner_count bigint,
    home_team_yellow_cards bigint,
    home_team_red_cards bigint,
    away_team_yellow_cards bigint,
    away_team_red_cards bigint,
    home_team_first_half_cards bigint,
    home_team_second_half_cards bigint,
    away_team_first_half_cards bigint,
    away_team_second_half_cards bigint,
    home_team_shots bigint,
    away_team_shots bigint,
    home_team_shots_on_target bigint,
    away_team_shots_on_target bigint,
    home_team_shots_off_target bigint,
    away_team_shots_off_target bigint,
    home_team_fouls bigint,
    away_team_fouls bigint,
    home_team_possession bigint,
    away_team_possession bigint,
    team_a_xg numeric,
    team_b_xg numeric,
    average_goals_per_match_pre_match numeric,
    btts_percentage_pre_match bigint,
    over15_percentage_pre_match bigint,
    over25_percentage_pre_match bigint,
    over35_percentage_pre_match bigint,
    over45_percentage_pre_match bigint,
    over15_htfhg_percentage_pre_match bigint,
    over05_htfhg_percentage_pre_match bigint,
    over152_hg_percentage_pre_match bigint,
    over052_hg_percentage_pre_match bigint,
    average_corners_per_match_pre_match numeric,
    average_cards_per_match_pre_match numeric,
    odds_ft_home_team_win numeric,
    odds_ft_draw numeric,
    odds_ft_away_team_win numeric,
    odds_ft_over15 numeric,
    odds_ft_over25 numeric,
    odds_ft_over35 numeric,
    odds_ft_over45 numeric,
    odds_btts_yes numeric,
    odds_btts_no numeric,
    stadium_name text,
    league_id integer
);


ALTER TABLE public.matches OWNER TO postgres;

--
-- Name: none_player_contract; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.none_player_contract (
    member_id integer NOT NULL,
    id integer NOT NULL,
    name character varying(255),
    "from" date,
    "to" character varying(255),
    amount integer
);


ALTER TABLE public.none_player_contract OWNER TO postgres;

--
-- Name: none_player_team_member; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.none_player_team_member (
    full_name character varying(255) NOT NULL,
    id integer NOT NULL,
    team_id integer NOT NULL,
    role character varying
);


ALTER TABLE public.none_player_team_member OWNER TO postgres;

--
-- Name: player_contract; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_contract (
    player_id integer NOT NULL,
    team_id integer NOT NULL,
    from_time date NOT NULL,
    to_time date NOT NULL,
    amount bigint NOT NULL,
    avg_score smallint,
    last_team_name character varying
);


ALTER TABLE public.player_contract OWNER TO postgres;

--
-- Name: player_exchange; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_exchange (
    team_id integer NOT NULL,
    player_in_id integer NOT NULL,
    player_out_id integer NOT NULL,
    time_of_exchange integer,
    match_id integer
);


ALTER TABLE public.player_exchange OWNER TO postgres;

--
-- Name: players; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.players (
    id integer NOT NULL,
    team_id integer NOT NULL,
    full_name text,
    age bigint,
    birthday bigint,
    league text,
    season text,
    "position" text,
    current_club text,
    minutes_played_overall bigint,
    minutes_played_home bigint,
    minutes_played_away bigint,
    nationality text,
    appearances_overall bigint,
    appearances_home bigint,
    appearances_away bigint,
    goals_overall bigint,
    goals_home bigint,
    goals_away bigint,
    assists_overall bigint,
    assists_home bigint,
    assists_away bigint,
    penalty_goals bigint,
    penalty_misses bigint,
    clean_sheets_overall bigint,
    clean_sheets_home bigint,
    clean_sheets_away bigint,
    conceded_overall bigint,
    conceded_home bigint,
    conceded_away bigint,
    yellow_cards_overall bigint,
    red_cards_overall bigint,
    goals_involved_per90_overall numeric,
    assists_per90_overall numeric,
    goals_per90_overall numeric,
    goals_per90_home numeric,
    goals_per90_away numeric,
    min_per_goal_overall bigint,
    conceded_per90_overall numeric,
    min_per_conceded_overall bigint,
    min_per_match bigint,
    min_per_card_overall bigint,
    min_per_assist_overall bigint,
    cards_per90_overall numeric,
    rank_in_league_top_attackers bigint,
    rank_in_league_top_midfielders bigint,
    rank_in_league_top_defenders bigint,
    rank_in_club_top_scorer bigint
);


ALTER TABLE public.players OWNER TO postgres;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    id bigint NOT NULL,
    team_name text,
    league_id bigint,
    common_name text NOT NULL,
    season text NOT NULL,
    country text,
    matches_played bigint,
    matches_played_home bigint,
    matches_played_away bigint,
    suspended_matches bigint,
    wins bigint,
    wins_home bigint,
    wins_away bigint,
    draws bigint,
    draws_home bigint,
    draws_away bigint,
    losses bigint,
    losses_home bigint,
    losses_away bigint,
    points_per_game numeric,
    points_per_game_home numeric,
    points_per_game_away numeric,
    league_position bigint,
    league_position_home bigint,
    league_position_away bigint,
    performance_rank bigint,
    goals_scored bigint,
    goals_conceded bigint,
    goals_scored_home bigint,
    goals_scored_away bigint,
    goals_conceded_home bigint,
    goals_conceded_away bigint,
    goal_difference_home bigint,
    goal_difference_away bigint,
    minutes_per_goal_scored bigint,
    minutes_per_goal_scored_home bigint,
    minutes_per_goal_scored_away bigint,
    minutes_per_goal_conceded bigint,
    minutes_per_goal_conceded_home bigint,
    minutes_per_goal_conceded_away bigint,
    clean_sheets bigint,
    clean_sheets_home bigint,
    clean_sheets_away bigint,
    first_team_to_score_count bigint,
    first_team_to_score_count_home bigint,
    first_team_to_score_count_away bigint,
    corners_total bigint,
    corners_total_home bigint,
    corners_total_away bigint,
    cards_total bigint,
    cards_total_home bigint,
    cards_total_away bigint,
    average_possession bigint,
    average_possession_home bigint,
    average_possession_away bigint,
    shots bigint,
    shots_home bigint,
    shots_away bigint,
    shots_on_target bigint,
    shots_on_target_home bigint,
    shots_on_target_away bigint,
    shots_off_target bigint,
    shots_off_target_home bigint,
    shots_off_target_away bigint,
    fouls bigint,
    fouls_home bigint,
    fouls_away bigint,
    updated_at timestamp with time zone,
    created_at timestamp with time zone,
    deleted_at timestamp with time zone
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- Data for Name:  referees_team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public." referees_team" (id, first_referee, second_referee, match_id, third_referee, fourth_referee) FROM stdin;
\.
COPY public." referees_team" (id, first_referee, second_referee, match_id, third_referee, fourth_referee) FROM '$$PATH$$/2867.dat';

--
-- Data for Name: cards_in_match_to_player; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cards_in_match_to_player (player_id, match_id, color, type_of_foul, time_of_foul) FROM stdin;
\.
COPY public.cards_in_match_to_player (player_id, match_id, color, type_of_foul, time_of_foul) FROM '$$PATH$$/2868.dat';

--
-- Data for Name: goal_match_player; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.goal_match_player (match_id, player_id, time_of_goal) FROM stdin;
\.
COPY public.goal_match_player (match_id, player_id, time_of_goal) FROM '$$PATH$$/2869.dat';

--
-- Data for Name: league; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.league (id, "Name", "Season", "Status", number_of_clubs, total_matches, average_goals_per_match, average_scored_home_team, average_scored_away_team, average_corners_per_match, total_corners_for_season, average_cards_per_match, average_cards_per_match_home_team, average_cards_per_match_away_team, total_cards_for_season) FROM stdin;
\.
COPY public.league (id, "Name", "Season", "Status", number_of_clubs, total_matches, average_goals_per_match, average_scored_home_team, average_scored_away_team, average_corners_per_match, total_corners_for_season, average_cards_per_match, average_cards_per_match_home_team, average_cards_per_match_away_team, total_cards_for_season) FROM '$$PATH$$/2870.dat';

--
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matches (id, "timestamp", date_gmt, status, attendance, home_team_name, away_team_name, referee, game_week, pre_match_ppg_home, pre_match_ppg_away, home_ppg, away_ppg, home_team_goal_count, away_team_goal_count, total_goal_count, total_goals_at_half_time, home_team_goal_count_half_time, away_team_goal_count_half_time, home_team_goal_timings, away_team_goal_timings, home_team_corner_count, away_team_corner_count, home_team_yellow_cards, home_team_red_cards, away_team_yellow_cards, away_team_red_cards, home_team_first_half_cards, home_team_second_half_cards, away_team_first_half_cards, away_team_second_half_cards, home_team_shots, away_team_shots, home_team_shots_on_target, away_team_shots_on_target, home_team_shots_off_target, away_team_shots_off_target, home_team_fouls, away_team_fouls, home_team_possession, away_team_possession, team_a_xg, team_b_xg, average_goals_per_match_pre_match, btts_percentage_pre_match, over15_percentage_pre_match, over25_percentage_pre_match, over35_percentage_pre_match, over45_percentage_pre_match, over15_htfhg_percentage_pre_match, over05_htfhg_percentage_pre_match, over152_hg_percentage_pre_match, over052_hg_percentage_pre_match, average_corners_per_match_pre_match, average_cards_per_match_pre_match, odds_ft_home_team_win, odds_ft_draw, odds_ft_away_team_win, odds_ft_over15, odds_ft_over25, odds_ft_over35, odds_ft_over45, odds_btts_yes, odds_btts_no, stadium_name, league_id) FROM stdin;
\.
COPY public.matches (id, "timestamp", date_gmt, status, attendance, home_team_name, away_team_name, referee, game_week, pre_match_ppg_home, pre_match_ppg_away, home_ppg, away_ppg, home_team_goal_count, away_team_goal_count, total_goal_count, total_goals_at_half_time, home_team_goal_count_half_time, away_team_goal_count_half_time, home_team_goal_timings, away_team_goal_timings, home_team_corner_count, away_team_corner_count, home_team_yellow_cards, home_team_red_cards, away_team_yellow_cards, away_team_red_cards, home_team_first_half_cards, home_team_second_half_cards, away_team_first_half_cards, away_team_second_half_cards, home_team_shots, away_team_shots, home_team_shots_on_target, away_team_shots_on_target, home_team_shots_off_target, away_team_shots_off_target, home_team_fouls, away_team_fouls, home_team_possession, away_team_possession, team_a_xg, team_b_xg, average_goals_per_match_pre_match, btts_percentage_pre_match, over15_percentage_pre_match, over25_percentage_pre_match, over35_percentage_pre_match, over45_percentage_pre_match, over15_htfhg_percentage_pre_match, over05_htfhg_percentage_pre_match, over152_hg_percentage_pre_match, over052_hg_percentage_pre_match, average_corners_per_match_pre_match, average_cards_per_match_pre_match, odds_ft_home_team_win, odds_ft_draw, odds_ft_away_team_win, odds_ft_over15, odds_ft_over25, odds_ft_over35, odds_ft_over45, odds_btts_yes, odds_btts_no, stadium_name, league_id) FROM '$$PATH$$/2871.dat';

--
-- Data for Name: none_player_contract; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.none_player_contract (member_id, id, name, "from", "to", amount) FROM stdin;
\.
COPY public.none_player_contract (member_id, id, name, "from", "to", amount) FROM '$$PATH$$/2872.dat';

--
-- Data for Name: none_player_team_member; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.none_player_team_member (full_name, id, team_id, role) FROM stdin;
\.
COPY public.none_player_team_member (full_name, id, team_id, role) FROM '$$PATH$$/2873.dat';

--
-- Data for Name: player_contract; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_contract (player_id, team_id, from_time, to_time, amount, avg_score, last_team_name) FROM stdin;
\.
COPY public.player_contract (player_id, team_id, from_time, to_time, amount, avg_score, last_team_name) FROM '$$PATH$$/2874.dat';

--
-- Data for Name: player_exchange; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_exchange (team_id, player_in_id, player_out_id, time_of_exchange, match_id) FROM stdin;
\.
COPY public.player_exchange (team_id, player_in_id, player_out_id, time_of_exchange, match_id) FROM '$$PATH$$/2875.dat';

--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.players (id, team_id, full_name, age, birthday, league, season, "position", current_club, minutes_played_overall, minutes_played_home, minutes_played_away, nationality, appearances_overall, appearances_home, appearances_away, goals_overall, goals_home, goals_away, assists_overall, assists_home, assists_away, penalty_goals, penalty_misses, clean_sheets_overall, clean_sheets_home, clean_sheets_away, conceded_overall, conceded_home, conceded_away, yellow_cards_overall, red_cards_overall, goals_involved_per90_overall, assists_per90_overall, goals_per90_overall, goals_per90_home, goals_per90_away, min_per_goal_overall, conceded_per90_overall, min_per_conceded_overall, min_per_match, min_per_card_overall, min_per_assist_overall, cards_per90_overall, rank_in_league_top_attackers, rank_in_league_top_midfielders, rank_in_league_top_defenders, rank_in_club_top_scorer) FROM stdin;
\.
COPY public.players (id, team_id, full_name, age, birthday, league, season, "position", current_club, minutes_played_overall, minutes_played_home, minutes_played_away, nationality, appearances_overall, appearances_home, appearances_away, goals_overall, goals_home, goals_away, assists_overall, assists_home, assists_away, penalty_goals, penalty_misses, clean_sheets_overall, clean_sheets_home, clean_sheets_away, conceded_overall, conceded_home, conceded_away, yellow_cards_overall, red_cards_overall, goals_involved_per90_overall, assists_per90_overall, goals_per90_overall, goals_per90_home, goals_per90_away, min_per_goal_overall, conceded_per90_overall, min_per_conceded_overall, min_per_match, min_per_card_overall, min_per_assist_overall, cards_per90_overall, rank_in_league_top_attackers, rank_in_league_top_midfielders, rank_in_league_top_defenders, rank_in_club_top_scorer) FROM '$$PATH$$/2876.dat';

--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (id, team_name, league_id, common_name, season, country, matches_played, matches_played_home, matches_played_away, suspended_matches, wins, wins_home, wins_away, draws, draws_home, draws_away, losses, losses_home, losses_away, points_per_game, points_per_game_home, points_per_game_away, league_position, league_position_home, league_position_away, performance_rank, goals_scored, goals_conceded, goals_scored_home, goals_scored_away, goals_conceded_home, goals_conceded_away, goal_difference_home, goal_difference_away, minutes_per_goal_scored, minutes_per_goal_scored_home, minutes_per_goal_scored_away, minutes_per_goal_conceded, minutes_per_goal_conceded_home, minutes_per_goal_conceded_away, clean_sheets, clean_sheets_home, clean_sheets_away, first_team_to_score_count, first_team_to_score_count_home, first_team_to_score_count_away, corners_total, corners_total_home, corners_total_away, cards_total, cards_total_home, cards_total_away, average_possession, average_possession_home, average_possession_away, shots, shots_home, shots_away, shots_on_target, shots_on_target_home, shots_on_target_away, shots_off_target, shots_off_target_home, shots_off_target_away, fouls, fouls_home, fouls_away, updated_at, created_at, deleted_at) FROM stdin;
\.
COPY public.teams (id, team_name, league_id, common_name, season, country, matches_played, matches_played_home, matches_played_away, suspended_matches, wins, wins_home, wins_away, draws, draws_home, draws_away, losses, losses_home, losses_away, points_per_game, points_per_game_home, points_per_game_away, league_position, league_position_home, league_position_away, performance_rank, goals_scored, goals_conceded, goals_scored_home, goals_scored_away, goals_conceded_home, goals_conceded_away, goal_difference_home, goal_difference_away, minutes_per_goal_scored, minutes_per_goal_scored_home, minutes_per_goal_scored_away, minutes_per_goal_conceded, minutes_per_goal_conceded_home, minutes_per_goal_conceded_away, clean_sheets, clean_sheets_home, clean_sheets_away, first_team_to_score_count, first_team_to_score_count_home, first_team_to_score_count_away, corners_total, corners_total_home, corners_total_away, cards_total, cards_total_home, cards_total_away, average_possession, average_possession_home, average_possession_away, shots, shots_home, shots_away, shots_on_target, shots_on_target_home, shots_on_target_away, shots_off_target, shots_off_target_home, shots_off_target_away, fouls, fouls_home, fouls_away, updated_at, created_at, deleted_at) FROM '$$PATH$$/2877.dat';

--
-- Name: league _copy_10; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.league
    ADD CONSTRAINT _copy_10 PRIMARY KEY (id);


--
-- Name: none_player_contract _copy_6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.none_player_contract
    ADD CONSTRAINT _copy_6 PRIMARY KEY (id, member_id);


--
-- Name: none_player_team_member _copy_7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.none_player_team_member
    ADD CONSTRAINT _copy_7 PRIMARY KEY (id);


--
-- Name:  referees_team _copy_8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public." referees_team"
    ADD CONSTRAINT _copy_8 PRIMARY KEY (id);


--
-- Name: matches matches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_pkey PRIMARY KEY (id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       