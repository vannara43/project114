CREATE TABLE [dbo].[Sabio_Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LineOne] [nvarchar](50) NOT NULL,
	[SuiteNumber] [int] NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[PostalCode] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[Lat] [float] NULL,
	[Long] [float] NULL,
 CONSTRAINT [PK_Sabio_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT dbo.Sabio_Addresses ON

insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (1, '090 Luster Plaza', 94, 'Boston', 'Massachusetts', '02298', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (2, '2 New Castle Circle', 26, 'Irvine', 'California', '92717', 1, '33.6462', '-117.8398');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (3, '64 Village Crossing', 74, 'Atlanta', 'Georgia', '31136', 1, '33.7473', '-84.3824');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (4, '5 Harper Street', 69, 'Hartford', 'Connecticut', '06105', 1, '41.7691', '-72.701');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (5, '82864 Prentice Park', 46, 'Elmira', 'New York', '14905', 0, '42.0869', '-76.8397');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (6, '569 Merry Point', 33, 'Provo', 'Utah', '84605', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (7, '63 Lyons Place', 85, 'Dallas', 'Texas', '75260', 0, '32.7673', '-96.7776');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (8, '56 Blue Bill Park Hill', null, 'Tulsa', 'Oklahoma', '74149', 1, '36.1398', '-96.0297');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (9, '0355 Kipling Street', null, 'Washington', 'District of Columbia', '20380', 0, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (10, '497 Hudson Crossing', 34, 'New York City', 'New York', '10175', 1, '40.7543', '-73.9798');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (11, '7987 Transport Center', 77, 'Montgomery', 'Alabama', '36134', 0, '32.2334', '-86.2085');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (12, '9 Heath Avenue', 11, 'Detroit', 'Michigan', '48217', 1, '42.2719', '-83.1545');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (13, '06721 Westridge Point', 69, 'Chicago', 'Illinois', '60624', 1, '41.8804', '-87.7223');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (14, '7947 Graedel Circle', 93, 'Charlotte', 'North Carolina', '28205', 0, '35.22', '-80.7881');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (15, '972 Magdeline Point', null, 'Dallas', 'Texas', '75379', 1, '32.7673', '-96.7776');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (16, '33672 Sunnyside Pass', 19, 'Little Rock', 'Arkansas', '72204', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (17, '879 Fisk Park', null, 'Littleton', 'Colorado', '80161', 0, '39.7388', '-104.4083');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (18, '6 Buell Avenue', 12, 'San Antonio', 'Texas', '78220', 0, '29.4106', '-98.4128');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (19, '118 Porter Alley', null, 'Charleston', 'West Virginia', '25389', 0, '38.354', '-81.6394');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (20, '60884 1st Pass', 98, 'Arlington', 'Texas', '76004', 1, '32.7714', '-97.2915');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (21, '7418 Kingsford Plaza', null, 'Metairie', 'Louisiana', '70005', 0, '30.0005', '-90.1331');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (22, '27731 Shelley Park', null, 'Austin', 'Texas', '78721', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (23, '787 Sherman Trail', 80, 'Chicago', 'Illinois', '60657', 0, '41.9399', '-87.6528');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (24, '476 La Follette Crossing', 30, 'Cleveland', 'Ohio', '44185', 1, '41.6857', '-81.6728');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (25, '6 East Hill', 78, 'Detroit', 'Michigan', '48275', 0, '42.2399', '-83.1508');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (26, '489 Melvin Avenue', null, 'Jefferson City', 'Missouri', '65105', 1, '38.5309', '-92.2493');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (27, '0057 Luster Circle', null, 'Orlando', 'Florida', '32830', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (28, '2 Nobel Lane', 47, 'Boulder', 'Colorado', '80328', 1, '40.0878', '-105.3735');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (29, '67 Division Avenue', null, 'Washington', 'District of Columbia', '20073', 0, '38.897', '-77.0251');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (30, '5903 Green Ridge Court', null, 'Winston Salem', 'North Carolina', '27105', 1, '36.144', '-80.2376');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (31, '93061 Dryden Junction', null, 'Fargo', 'North Dakota', '58122', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (32, '78371 Rieder Court', null, 'Fayetteville', 'North Carolina', '28314', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (33, '53 Charing Cross Court', 98, 'Brooklyn', 'New York', '11231', 0, '40.6794', '-74.0014');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (34, '5 Carey Park', null, 'Brooklyn', 'New York', '11254', 0, '40.6451', '-73.945');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (35, '47 Graceland Parkway', 10, 'New York City', 'New York', '10120', 1, '40.7506', '-73.9894');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (36, '615 Division Avenue', null, 'Des Moines', 'Iowa', '50310', 0, '41.6255', '-93.6736');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (37, '38 Florence Hill', null, 'Fredericksburg', 'Virginia', '22405', 0, '38.3365', '-77.4366');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (38, '22348 Moland Court', 90, 'New York City', 'New York', '10110', 1, '40.754', '-73.9808');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (39, '96 Westerfield Drive', null, 'Charlotte', 'North Carolina', '28225', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (40, '376 Drewry Hill', 22, 'Trenton', 'New Jersey', '08638', 0, '40.251', '-74.7627');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (41, '62126 Merry Road', null, 'Durham', 'North Carolina', '27705', 0, '36.0218', '-78.9478');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (42, '84168 Pleasure Pass', 52, 'Detroit', 'Michigan', '48267', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (43, '0 Swallow Alley', 17, 'Louisville', 'Kentucky', '40280', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (44, '38201 Lindbergh Crossing', 6, 'Houston', 'Texas', '77040', 1, '29.8744', '-95.5278');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (45, '338 Kings Junction', 88, 'Cleveland', 'Ohio', '44105', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (46, '07864 Oak Valley Way', 78, 'Minneapolis', 'Minnesota', '55423', 1, '44.8756', '-93.2553');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (47, '6 Pond Drive', 95, 'Maple Plain', 'Minnesota', '55572', 0, '45.0159', '-93.4719');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (48, '4 Sundown Way', 56, 'Norfolk', 'Virginia', '23551', 0, '36.9312', '-76.2397');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (49, '503 Katie Place', 41, 'Stockton', 'California', '95205', 1, '37.9625', '-121.2624');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (50, '513 Nancy Alley', null, 'Portland', 'Oregon', '97221', 0, '45.4918', '-122.7267');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (51, '1087 Harper Lane', 55, 'Columbus', 'Ohio', '43204', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (52, '73611 Anderson Center', 24, 'Lexington', 'Kentucky', '40596', 1, '38.0283', '-84.4715');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (53, '0 Kipling Place', null, 'Providence', 'Rhode Island', '02912', 1, '41.8267', '-71.3977');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (54, '16 Bunting Place', 46, 'Tulsa', 'Oklahoma', '74184', 0, '36.1398', '-96.0297');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (55, '4 Drewry Street', 32, 'Boise', 'Idaho', '83722', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (56, '672 Continental Way', 75, 'Washington', 'District of Columbia', '20551', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (57, '847 Sutteridge Circle', null, 'San Jose', 'California', '95155', 0, '37.31', '-121.9011');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (58, '6205 Di Loreto Hill', null, 'Hampton', 'Virginia', '23663', 1, '37.0318', '-76.3199');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (59, '5 Delaware Point', 50, 'Bethesda', 'Maryland', '20892', 1, '39.0024', '-77.1034');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (60, '7 Buell Terrace', 37, 'Detroit', 'Michigan', '48275', 1, '42.2399', '-83.1508');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (61, '7 Forest Road', 57, 'Odessa', 'Texas', '79769', 1, '31.7466', '-102.567');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (62, '0010 Warbler Court', null, 'Fort Worth', 'Texas', '76192', 0, '32.7714', '-97.2915');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (63, '663 Bayside Parkway', null, 'Ocala', 'Florida', '34479', 1, '29.2541', '-82.1095');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (64, '36090 Goodland Trail', null, 'Reno', 'Nevada', '89510', 0, '39.7699', '-119.6027');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (65, '8804 Northport Circle', 81, 'Lansing', 'Michigan', '48956', 0, '42.7325', '-84.5587');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (66, '3 Dawn Way', null, 'Fort Pierce', 'Florida', '34981', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (67, '064 Di Loreto Lane', 1, 'Riverside', 'California', '92505', 0, '33.9228', '-117.4867');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (68, '0 Derek Drive', 35, 'Salinas', 'California', '93907', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (69, '7 Lakewood Park', 17, 'Tulsa', 'Oklahoma', '74141', 1, '36.1398', '-96.0297');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (70, '16175 Loeprich Terrace', null, 'El Paso', 'Texas', '79911', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (71, '8 Dwight Court', 50, 'Jacksonville', 'Florida', '32230', 1, '30.3449', '-81.6831');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (72, '51150 Anderson Place', 92, 'Wichita', 'Kansas', '67210', 1, '37.6379', '-97.2613');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (73, '56022 Cascade Street', 46, 'Berkeley', 'California', '94705', 0, '37.8571', '-122.25');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (74, '8 Debs Avenue', 100, 'Colorado Springs', 'Colorado', '80935', 1, '38.8247', '-104.562');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (75, '18003 Main Road', 41, 'Toledo', 'Ohio', '43635', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (76, '29600 Northport Street', 96, 'Washington', 'District of Columbia', '20078', 1, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (77, '84366 Calypso Circle', 20, 'Saint Joseph', 'Missouri', '64504', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (78, '277 Lyons Avenue', 1, 'San Luis Obispo', 'California', '93407', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (79, '3490 Corscot Hill', 45, 'Charlotte', 'North Carolina', '28272', 1, '35.26', '-80.8042');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (80, '467 1st Road', 62, 'Des Moines', 'Iowa', '50330', 0, '41.6727', '-93.5722');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (81, '4598 Buena Vista Place', null, 'Tucson', 'Arizona', '85725', 0, '31.9701', '-111.8907');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (82, '9 Burrows Pass', null, 'Arlington', 'Texas', '76096', 0, '32.7714', '-97.2915');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (83, '42 Canary Place', 100, 'Hialeah', 'Florida', '33018', 1, '25.9098', '-80.3889');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (84, '475 Riverside Park', 31, 'Toledo', 'Ohio', '43656', 0, '41.6782', '-83.4972');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (85, '62753 Di Loreto Road', 42, 'Louisville', 'Kentucky', '40205', 0, '38.2222', '-85.6885');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (86, '8660 Columbus Alley', null, 'York', 'Pennsylvania', '17405', 1, '40.0086', '-76.5972');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (87, '09495 Steensland Avenue', 56, 'San Diego', 'California', '92105', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (88, '5405 Laurel Terrace', null, 'Detroit', 'Michigan', '48206', 1, '42.3749', '-83.1087');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (89, '3071 Helena Circle', null, 'Salt Lake City', 'Utah', '84135', 0, '40.6681', '-111.9083');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (90, '8 Prentice Place', null, 'Melbourne', 'Florida', '32941', 0, '27.9246', '-80.5235');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (91, '50 Rutledge Point', 55, 'El Paso', 'Texas', '79984', 0, '31.6948', '-106.3');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (92, '551 Hansons Drive', null, 'Cincinnati', 'Ohio', '45264', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (93, '4200 Hayes Avenue', 30, 'Houston', 'Texas', '77095', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (94, '75105 Heath Trail', null, 'Minneapolis', 'Minnesota', '55417', 1, '44.9054', '-93.2361');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (95, '411 Florence Parkway', 54, 'Pensacola', 'Florida', '32526', 0, '30.4756', '-87.3179');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (96, '298 Haas Trail', null, 'Washington', 'District of Columbia', '20226', 0, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (97, '45 Esch Pass', 13, 'Mansfield', 'Ohio', '44905', 0, '40.7779', '-82.4613');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (98, '133 Colorado Drive', 29, 'Charleston', 'West Virginia', '25389', 0, '38.354', '-81.6394');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (99, '623 Canary Terrace', null, 'Indianapolis', 'Indiana', '46231', 0, '39.7038', '-86.3029');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (100, '868 Riverside Circle', null, 'Arlington', 'Texas', '76011', 1, '32.7582', '-97.1003');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (101, '774 Evergreen Alley', null, 'Denver', 'Colorado', '80217', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (102, '83 Florence Junction', 30, 'Dallas', 'Texas', '75379', 1, '32.7673', '-96.7776');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (103, '6037 Melvin Junction', 26, 'Ridgely', 'Maryland', '21684', 0, '38.8893', '-75.8612');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (104, '41178 Jenna Trail', null, 'Honolulu', 'Hawaii', '96815', 1, '21.2811', '-157.8266');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (105, '12 Hauk Trail', null, 'Los Angeles', 'California', '90189', 1, '34.0515', '-118.2559');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (106, '172 Clyde Gallagher Circle', null, 'Atlanta', 'Georgia', '31196', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (107, '561 Spenser Parkway', 11, 'Tampa', 'Florida', '33694', 0, '27.872', '-82.4388');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (108, '47 Messerschmidt Road', 46, 'Seattle', 'Washington', '98133', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (109, '7 Kings Way', 43, 'Atlanta', 'Georgia', '30340', 0, '33.8932', '-84.2539');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (110, '045 Melvin Parkway', null, 'Rockville', 'Maryland', '20851', 0, '39.0763', '-77.1234');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (111, '2 Hooker Road', 22, 'Louisville', 'Kentucky', '40210', 1, '38.2306', '-85.7905');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (112, '3161 Vermont Road', 79, 'Canton', 'Ohio', '44705', 0, '40.8259', '-81.3399');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (113, '38356 Pierstorff Pass', 74, 'Orlando', 'Florida', '32808', 0, '28.5803', '-81.4396');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (114, '56 Hoard Road', 14, 'Loretto', 'Minnesota', '55598', 0, '45.0159', '-93.4719');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (115, '405 Del Sol Junction', 1, 'Cincinnati', 'Ohio', '45271', 0, '39.1668', '-84.5382');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (116, '82033 Commercial Crossing', 15, 'Louisville', 'Kentucky', '40298', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (117, '8741 Dovetail Road', 86, 'San Diego', 'California', '92127', 0, '33.0279', '-117.0856');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (118, '861 Vidon Circle', null, 'Portland', 'Oregon', '97229', 0, '45.5483', '-122.8276');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (119, '27 Shasta Trail', null, 'Hartford', 'Connecticut', '06145', 0, '41.7918', '-72.7188');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (120, '92368 Brown Street', null, 'Baltimore', 'Maryland', '21203', 1, '39.2847', '-76.6205');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (121, '99461 Stuart Pass', null, 'Hampton', 'Virginia', '23668', 1, '37.0206', '-76.3377');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (122, '9 Spaight Crossing', 57, 'Rochester', 'New York', '14609', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (123, '12876 Manley Way', 13, 'Austin', 'Texas', '78783', 1, '30.3264', '-97.7713');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (124, '45280 Fairview Crossing', 49, 'Dayton', 'Ohio', '45426', 1, '39.7982', '-84.3211');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (125, '2866 Farwell Lane', 94, 'Grand Junction', 'Colorado', '81505', 1, '39.1071', '-108.5968');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (126, '9781 Emmet Junction', null, 'Provo', 'Utah', '84605', 0, '40.177', '-111.536');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (127, '02249 Barby Street', null, 'Athens', 'Georgia', '30605', 0, '33.9321', '-83.3525');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (128, '4305 Maple Wood Park', null, 'Sacramento', 'California', '94286', 1, '38.3774', '-121.4444');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (129, '16160 Tomscot Trail', 77, 'Fort Worth', 'Texas', '76162', 1, '32.7714', '-97.2915');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (130, '0891 Oakridge Junction', 100, 'Portland', 'Oregon', '97286', 0, '45.5806', '-122.3748');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (131, '3 Veith Street', 86, 'Seattle', 'Washington', '98166', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (132, '01854 Hanover Way', 64, 'Chattanooga', 'Tennessee', '37416', 1, '35.0942', '-85.1757');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (133, '18 Darwin Court', 56, 'El Paso', 'Texas', '88569', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (134, '269 Daystar Plaza', 4, 'Saint Paul', 'Minnesota', '55172', 1, '45.0059', '-93.1059');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (135, '7606 Lotheville Center', 58, 'Columbia', 'South Carolina', '29215', 1, '34.006', '-80.9708');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (136, '52714 Claremont Crossing', null, 'Trenton', 'New Jersey', '08619', 0, '40.2418', '-74.6962');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (137, '2 Lunder Way', 71, 'Chicago', 'Illinois', '60686', 0, '41.8756', '-87.6378');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (138, '1 Banding Center', null, 'Fort Wayne', 'Indiana', '46805', 0, '41.0977', '-85.1189');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (139, '3931 Jenifer Parkway', 46, 'Helena', 'Montana', '59623', 1, '46.5901', '-112.0402');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (140, '17413 Reindahl Court', 39, 'Cleveland', 'Ohio', '44111', 0, '41.4571', '-81.7844');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (141, '6 John Wall Street', 64, 'Mobile', 'Alabama', '36605', 1, '30.6341', '-88.0846');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (142, '432 Roth Way', 93, 'Fayetteville', 'North Carolina', '28305', 1, '35.056', '-78.9047');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (143, '5469 Eastwood Alley', 97, 'Charlotte', 'North Carolina', '28235', 1, '35.26', '-80.8042');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (144, '65 Clove Circle', 6, 'Jacksonville', 'Florida', '32215', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (145, '33928 Basil Lane', 44, 'Knoxville', 'Tennessee', '37914', 0, '35.9918', '-83.8496');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (146, '47926 Melby Place', 87, 'Cincinnati', 'Ohio', '45999', 1, '39.1668', '-84.5382');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (147, '2384 Vahlen Park', null, 'Kansas City', 'Missouri', '64130', 0, '39.0351', '-94.5467');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (148, '946 Hoepker Parkway', 44, 'West Palm Beach', 'Florida', '33411', 1, '26.6644', '-80.1741');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (149, '69414 Blackbird Hill', 42, 'Punta Gorda', 'Florida', '33982', 0, '26.9668', '-81.9545');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (150, '944 Grayhawk Plaza', 51, 'Lincoln', 'Nebraska', '68583', 1, '40.7845', '-96.6888');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (151, '74900 Mallard Court', null, 'Richmond', 'Virginia', '23277', 0, '37.5535', '-77.4604');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (152, '359 Badeau Way', 74, 'Kissimmee', 'Florida', '34745', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (153, '1 Vidon Avenue', null, 'San Francisco', 'California', '94116', 0, '37.7441', '-122.4863');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (154, '5405 Ludington Circle', null, 'Austin', 'Texas', '78749', 1, '30.2166', '-97.8508');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (155, '7264 Village Parkway', null, 'Charleston', 'West Virginia', '25321', 1, '38.2968', '-81.5547');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (156, '3450 Logan Trail', 67, 'Cape Coral', 'Florida', '33915', 1, '26.6599', '-81.8934');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (157, '1 Daystar Circle', 15, 'Montgomery', 'Alabama', '36109', 1, '32.3834', '-86.2434');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (158, '354 Comanche Parkway', 46, 'Louisville', 'Kentucky', '40287', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (159, '927 Mendota Road', 13, 'Santa Monica', 'California', '90405', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (160, '5 Transport Hill', 48, 'Burbank', 'California', '91520', 0, '34.1869', '-118.348');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (161, '46 Morningstar Place', 11, 'Canton', 'Ohio', '44760', 0, '40.854', '-81.4278');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (162, '50942 Banding Parkway', 25, 'Grand Forks', 'North Dakota', '58207', 1, '47.9335', '-97.3944');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (163, '0950 Miller Pass', 60, 'Mansfield', 'Ohio', '44905', 1, '40.7779', '-82.4613');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (164, '4 Kennedy Drive', 32, 'Paterson', 'New Jersey', '07505', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (165, '75238 Hoffman Parkway', 94, 'Colorado Springs', 'Colorado', '80920', 0, '38.9497', '-104.767');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (166, '0 Fairfield Parkway', 51, 'Oklahoma City', 'Oklahoma', '73167', 1, '35.5514', '-97.4075');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (167, '606 Brickson Park Drive', null, 'Knoxville', 'Tennessee', '37931', 1, '35.9924', '-84.1201');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (168, '151 David Place', 50, 'Houston', 'Texas', '77276', 0, '29.7575', '-95.3668');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (169, '3 Blue Bill Park Street', null, 'New York City', 'New York', '10039', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (170, '9070 Columbus Plaza', 66, 'Des Moines', 'Iowa', '50936', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (171, '084 Westridge Junction', 100, 'Dallas', 'Texas', '75367', 1, '32.7673', '-96.7776');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (172, '56 Commercial Hill', 68, 'Monticello', 'Minnesota', '55585', 1, '45.2009', '-93.8881');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (173, '9289 Summerview Avenue', null, 'Miami', 'Florida', '33261', 0, '25.5584', '-80.4582');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (174, '8764 South Lane', 37, 'Phoenix', 'Arizona', '85005', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (175, '48188 Boyd Terrace', 4, 'Miami', 'Florida', '33142', 1, '25.813', '-80.232');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (176, '83452 Kenwood Circle', 96, 'Midland', 'Texas', '79705', 0, '32.0295', '-102.0915');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (177, '3823 Hoffman Terrace', 12, 'Birmingham', 'Alabama', '35285', 0, '33.5446', '-86.9292');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (178, '536 Bartelt Junction', null, 'Cedar Rapids', 'Iowa', '52405', 1, '41.9804', '-91.7098');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (179, '4 Derek Point', null, 'Trenton', 'New Jersey', '08608', 0, '40.2204', '-74.7622');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (180, '536 Sachs Court', null, 'Omaha', 'Nebraska', '68105', 0, '41.2435', '-95.9629');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (181, '81 Randy Park', 82, 'Scranton', 'Pennsylvania', '18505', 0, '41.3914', '-75.6657');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (182, '0823 Starling Junction', 93, 'Escondido', 'California', '92030', 1, '33.0169', '-116.846');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (183, '61814 Wayridge Court', 19, 'Des Moines', 'Iowa', '50305', 1, '41.6727', '-93.5722');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (184, '733 Carberry Trail', 3, 'Riverside', 'California', '92519', 1, '33.7529', '-116.0556');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (185, '71266 Hayes Street', null, 'Columbia', 'Missouri', '65211', 1, '38.9033', '-92.1022');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (186, '83673 Alpine Pass', 60, 'Corpus Christi', 'Texas', '78405', 0, '27.7762', '-97.4271');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (187, '97651 Hermina Center', null, 'Kansas City', 'Missouri', '64114', 0, '38.9621', '-94.5959');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (188, '4969 Esch Crossing', null, 'Oklahoma City', 'Oklahoma', '73104', 0, '35.4794', '-97.5017');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (189, '32231 Eggendart Plaza', 52, 'Aurora', 'Colorado', '80045', 0, '39.7467', '-104.8384');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (190, '8 Carey Drive', 76, 'Salt Lake City', 'Utah', '84152', 0, '40.7286', '-111.6627');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (191, '679 Delladonna Plaza', 82, 'San Diego', 'California', '92132', 1, '32.6437', '-117.1384');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (192, '24201 Sunfield Way', 77, 'Salt Lake City', 'Utah', '84120', 0, '40.695', '-112.0001');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (193, '0 Saint Paul Circle', 60, 'Shawnee Mission', 'Kansas', '66205', 1, '39.0312', '-94.6308');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (194, '1407 Harbort Drive', 27, 'Indianapolis', 'Indiana', '46226', 0, '39.8326', '-86.0836');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (195, '13 Hoepker Road', 91, 'Saint Petersburg', 'Florida', '33715', 1, '27.6705', '-82.7119');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (196, '90 8th Plaza', null, 'Youngstown', 'Ohio', '44555', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (197, '66972 Union Junction', 8, 'Reading', 'Pennsylvania', '19610', 0, '40.338', '-75.978');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (198, '994 Lukken Park', 53, 'Ogden', 'Utah', '84409', 1, '41.2553', '-111.9567');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (199, '87 Lunder Trail', null, 'Independence', 'Missouri', '64054', 0, '39.11', '-94.4401');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (200, '7 Sunbrook Lane', null, 'Vancouver', 'Washington', '98687', 0, '45.8016', '-122.5203');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (201, '89 Bunker Hill Crossing', 50, 'Albuquerque', 'New Mexico', '87105', 1, '35.0448', '-106.6893');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (202, '37 Lunder Street', 18, 'Hartford', 'Connecticut', '06120', 0, '41.786', '-72.6758');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (203, '04717 Fisk Pass', 32, 'Houston', 'Texas', '77228', 1, '29.834', '-95.4342');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (204, '7406 Merrick Junction', 39, 'Salt Lake City', 'Utah', '84199', 1, '40.7259', '-111.9394');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (205, '38 Elka Park', null, 'Richmond', 'Virginia', '23293', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (206, '6488 Thierer Trail', null, 'Battle Creek', 'Michigan', '49018', 1, '42.2464', '-85.0045');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (207, '98 Fieldstone Trail', 21, 'Stamford', 'Connecticut', '06922', 1, '41.0516', '-73.5143');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (208, '26158 Becker Trail', 55, 'Montgomery', 'Alabama', '36177', 0, '32.2334', '-86.2085');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (209, '829 Mesta Plaza', 4, 'Stamford', 'Connecticut', '06912', 1, '41.3089', '-73.3637');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (210, '526 Bellgrove Street', 22, 'Washington', 'District of Columbia', '20503', 1, '38.9007', '-77.0431');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (211, '488 Dawn Road', 29, 'Arlington', 'Virginia', '22205', 0, '38.8836', '-77.1395');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (212, '35754 Onsgard Avenue', 30, 'Paterson', 'New Jersey', '07505', 1, '40.9166', '-74.174');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (213, '8052 Truax Street', 53, 'Shreveport', 'Louisiana', '71105', 1, '32.4589', '-93.7143');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (214, '250 Weeping Birch Junction', 16, 'Spokane', 'Washington', '99220', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (215, '7541 Steensland Center', null, 'Glendale', 'Arizona', '85311', 1, '33.2765', '-112.1872');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (216, '846 Russell Park', 85, 'Ocala', 'Florida', '34474', 1, '29.1565', '-82.2095');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (217, '1457 Springs Court', null, 'Fresno', 'California', '93762', 1, '36.7464', '-119.6397');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (218, '82747 Melody Road', 16, 'Stamford', 'Connecticut', '06912', 1, '41.3089', '-73.3637');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (219, '1 Grasskamp Crossing', 100, 'San Bernardino', 'California', '92424', 0, '34.84', '-115.9671');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (220, '00 Superior Court', 76, 'Van Nuys', 'California', '91411', 0, '34.1781', '-118.4574');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (221, '988 Scofield Center', 41, 'Richmond', 'Virginia', '23220', 1, '37.5498', '-77.4588');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (222, '77 Lakewood Way', null, 'Lexington', 'Kentucky', '40546', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (223, '37 Annamark Alley', 37, 'Roanoke', 'Virginia', '24009', 1, '37.2742', '-79.9579');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (224, '4 Brickson Park Drive', 19, 'Knoxville', 'Tennessee', '37914', 0, '35.9918', '-83.8496');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (225, '22588 Moulton Junction', 46, 'Littleton', 'Colorado', '80161', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (226, '392 Brickson Park Park', 16, 'El Paso', 'Texas', '79905', 1, '31.7674', '-106.4304');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (227, '50721 Calypso Court', 44, 'Youngstown', 'Ohio', '44511', 0, '41.0704', '-80.6931');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (228, '3 Havey Center', 30, 'Spartanburg', 'South Carolina', '29305', 1, '35.1114', '-82.1055');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (229, '8 Fuller Junction', 21, 'Spokane', 'Washington', '99205', 0, '47.6964', '-117.4399');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (230, '0753 Novick Avenue', 33, 'Cincinnati', 'Ohio', '45233', 0, '39.111', '-84.6594');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (231, '802 Debs Pass', 71, 'Phoenix', 'Arizona', '85010', 1, '33.2765', '-112.1872');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (232, '1945 Comanche Place', 15, 'Battle Creek', 'Michigan', '49018', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (233, '736 Lindbergh Center', 45, 'Washington', 'District of Columbia', '20036', 0, '38.9087', '-77.0414');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (234, '980 Springview Trail', null, 'North Las Vegas', 'Nevada', '89036', 1, '35.9279', '-114.9721');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (235, '53084 Mendota Center', 78, 'San Diego', 'California', '92191', 0, '33.0169', '-116.846');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (236, '324 Del Sol Circle', 97, 'New Hyde Park', 'New York', '11044', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (237, '3 Upham Hill', null, 'Seattle', 'Washington', '98195', 0, '47.6564', '-122.3048');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (238, '28164 Sugar Place', null, 'Charlotte', 'North Carolina', '28210', 0, '35.1316', '-80.8577');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (239, '378 Columbus Street', 89, 'Roanoke', 'Virginia', '24040', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (240, '2 Anniversary Park', 6, 'Canton', 'Ohio', '44720', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (241, '44470 Riverside Hill', null, 'Sacramento', 'California', '94245', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (242, '27581 Marquette Point', 99, 'Reno', 'Nevada', '89595', 1, '40.5412', '-119.5869');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (243, '92529 Center Junction', 25, 'North Las Vegas', 'Nevada', '89087', 0, '36.2204', '-115.1458');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (244, '5 Northwestern Place', null, 'El Paso', 'Texas', '88558', 0, '31.6948', '-106.3');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (245, '958 Upham Road', null, 'Washington', 'District of Columbia', '20337', 1, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (246, '4 Burrows Junction', 2, 'Philadelphia', 'Pennsylvania', '19093', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (247, '2267 Blackbird Pass', 99, 'Houston', 'Texas', '77260', 1, '29.7687', '-95.3867');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (248, '5 Shopko Plaza', 27, 'Los Angeles', 'California', '90060', 1, '33.7866', '-118.2987');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (249, '45303 Fairview Drive', null, 'York', 'Pennsylvania', '17405', 1, '40.0086', '-76.5972');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (250, '014 Alpine Alley', null, 'Saint Cloud', 'Minnesota', '56372', 0, '45.5289', '-94.5933');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (251, '73 Waywood Center', 63, 'Seattle', 'Washington', '98185', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (252, '5 Bay Drive', null, 'Charlotte', 'North Carolina', '28263', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (253, '318 Warrior Road', 81, 'Sioux Falls', 'South Dakota', '57110', 0, '43.5486', '-96.6332');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (254, '5298 Hoard Avenue', 59, 'Hartford', 'Connecticut', '06183', 0, '41.7638', '-72.673');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (255, '93702 Petterle Court', null, 'Melbourne', 'Florida', '32919', 1, '28.3067', '-80.6862');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (256, '0212 Mitchell Point', 36, 'Detroit', 'Michigan', '48258', 1, '42.2399', '-83.1508');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (257, '79266 Talisman Pass', 61, 'Fort Lauderdale', 'Florida', '33315', 1, '26.0989', '-80.1541');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (258, '68802 Pennsylvania Way', 43, 'Long Beach', 'California', '90810', 0, '33.8193', '-118.2325');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (259, '465 Dwight Street', 30, 'Little Rock', 'Arkansas', '72204', 0, '34.7269', '-92.344');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (260, '82 Loomis Point', null, 'Charlotte', 'North Carolina', '28205', 1, '35.22', '-80.7881');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (261, '15443 Grim Alley', 86, 'San Jose', 'California', '95128', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (262, '955 Tennessee Place', 3, 'Lake Worth', 'Florida', '33467', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (263, '0274 Monterey Way', 9, 'Greensboro', 'North Carolina', '27455', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (264, '882 Hudson Crossing', null, 'Louisville', 'Kentucky', '40225', 1, '38.189', '-85.6768');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (265, '654 Kropf Plaza', null, 'Baton Rouge', 'Louisiana', '70883', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (266, '0983 Anniversary Street', null, 'Bloomington', 'Indiana', '47405', 0, '39.1682', '-86.5186');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (267, '856 Lerdahl Terrace', null, 'San Antonio', 'Texas', '78205', 0, '29.4237', '-98.4925');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (268, '27 Namekagon Point', 84, 'Salinas', 'California', '93907', 1, '36.7563', '-121.6703');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (269, '0030 Mockingbird Park', 84, 'Montgomery', 'Alabama', '36195', 0, '32.3544', '-86.2843');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (270, '04558 Hoepker Avenue', 12, 'Birmingham', 'Alabama', '35242', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (271, '50436 Montana Road', 17, 'Fort Smith', 'Arkansas', '72916', 0, '35.2502', '-94.3703');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (272, '3949 Rutledge Place', 13, 'Washington', 'District of Columbia', '20425', 1, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (273, '583 Ryan Crossing', null, 'Louisville', 'Kentucky', '40293', 0, '38.189', '-85.6768');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (274, '82 Thompson Street', 18, 'Los Angeles', 'California', '90060', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (275, '80357 Carey Lane', 69, 'Grand Rapids', 'Michigan', '49510', 0, '43.0314', '-85.5503');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (276, '850 Delaware Drive', 3, 'Charleston', 'West Virginia', '25362', 1, '38.2968', '-81.5547');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (277, '891 Forest Dale Court', null, 'Bakersfield', 'California', '93305', 0, '35.3855', '-118.986');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (278, '94751 Grim Drive', 34, 'Spokane', 'Washington', '99260', 1, '47.6536', '-117.4317');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (279, '17 Delladonna Trail', 23, 'New York City', 'New York', '10125', 1, '40.7808', '-73.9772');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (280, '863 Chinook Terrace', 17, 'Albuquerque', 'New Mexico', '87105', 1, '35.0448', '-106.6893');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (281, '2967 American Way', null, 'Albany', 'New York', '12262', 0, '42.6149', '-73.9708');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (282, '21 Barnett Street', null, 'Indianapolis', 'Indiana', '46247', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (283, '3 Dottie Pass', null, 'Dallas', 'Texas', '75287', 1, '33.0005', '-96.8314');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (284, '7 Bobwhite Place', 73, 'Corpus Christi', 'Texas', '78475', 0, '27.777', '-97.4632');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (285, '08850 Anthes Way', 11, 'Honolulu', 'Hawaii', '96805', 0, '21.3062', '-157.8585');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (286, '6 Beilfuss Road', 69, 'Kansas City', 'Missouri', '64179', 0, '39.035', '-94.3567');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (287, '90 Brown Court', null, 'Charlotte', 'North Carolina', '28210', 1, '35.1316', '-80.8577');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (288, '2 Summerview Drive', 65, 'Little Rock', 'Arkansas', '72209', 1, '34.6725', '-92.3529');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (289, '062 Talmadge Court', 89, 'Honolulu', 'Hawaii', '96835', 1, '21.3278', '-157.8294');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (290, '66298 Village Junction', 24, 'Miami Beach', 'Florida', '33141', 1, '25.8486', '-80.1446');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (291, '0 Lindbergh Circle', 23, 'Jamaica', 'New York', '11480', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (292, '2410 High Crossing Place', null, 'Richmond', 'Virginia', '23225', 1, '37.5158', '-77.5047');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (293, '1364 John Wall Place', 50, 'New York City', 'New York', '10249', 0, '40.7808', '-73.9772');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (294, '5 Buena Vista Junction', null, 'Huntsville', 'Alabama', '35810', 1, '34.7784', '-86.6091');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (295, '93859 Mosinee Alley', null, 'Whittier', 'California', '90605', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (296, '88 Independence Avenue', 88, 'Lake Charles', 'Louisiana', '70616', 0, '30.2642', '-93.3265');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (297, '12126 Moose Court', 83, 'Birmingham', 'Alabama', '35295', 1, '33.5446', '-86.9292');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (298, '23 Manley Terrace', 15, 'Erie', 'Pennsylvania', '16550', 1, '42.1827', '-80.0649');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (299, '4737 Kinsman Street', 90, 'Clearwater', 'Florida', '33763', 1, '28.0173', '-82.7461');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (300, '5589 Center Way', null, 'Anaheim', 'California', '92825', 1, '33.8356', '-117.9132');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (301, '091 Vernon Court', 37, 'Olympia', 'Washington', '98516', 1, '47.1126', '-122.7794');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (302, '80647 Sachs Point', 59, 'Hartford', 'Connecticut', '06140', 1, '41.7918', '-72.7188');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (303, '6827 Barby Alley', 59, 'Saint Paul', 'Minnesota', '55188', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (304, '5351 Dexter Circle', 60, 'Spartanburg', 'South Carolina', '29305', 1, '35.1114', '-82.1055');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (305, '08 Rowland Point', null, 'Raleigh', 'North Carolina', '27635', 0, '35.7977', '-78.6253');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (306, '3508 Bellgrove Alley', 21, 'Bozeman', 'Montana', '59771', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (307, '6 Hagan Street', 27, 'Dearborn', 'Michigan', '48126', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (308, '33 Fremont Terrace', 84, 'Miami', 'Florida', '33134', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (309, '813 Butterfield Hill', 86, 'Stockton', 'California', '95298', 1, '37.9577', '-121.2897');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (310, '00511 New Castle Trail', 28, 'Sacramento', 'California', '94273', 1, '38.3774', '-121.4444');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (311, '2 Westridge Road', null, 'Rockville', 'Maryland', '20851', 0, '39.0763', '-77.1234');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (312, '1332 Summerview Junction', 15, 'Austin', 'Texas', '78715', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (313, '6037 Jana Place', null, 'Appleton', 'Wisconsin', '54915', 1, '44.2425', '-88.3564');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (314, '24 Rigney Crossing', 46, 'San Antonio', 'Texas', '78250', 0, '29.5054', '-98.6688');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (315, '21432 Cherokee Trail', 58, 'Spokane', 'Washington', '99260', 0, '47.6536', '-117.4317');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (316, '46195 Di Loreto Park', 79, 'York', 'Pennsylvania', '17405', 0, '40.0086', '-76.5972');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (317, '18 Blue Bill Park Trail', 62, 'Memphis', 'Tennessee', '38197', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (318, '657 Southridge Lane', null, 'Buffalo', 'New York', '14205', 0, '42.7684', '-78.8871');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (319, '48038 Nevada Lane', 60, 'Buffalo', 'New York', '14210', 0, '42.8614', '-78.8206');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (320, '180 Hallows Road', 3, 'Greenville', 'South Carolina', '29610', 1, '34.8497', '-82.4538');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (321, '0 Northwestern Plaza', 33, 'Punta Gorda', 'Florida', '33982', 1, '26.9668', '-81.9545');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (322, '1415 Steensland Road', 40, 'Sacramento', 'California', '94286', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (323, '62 Sunfield Alley', 22, 'Chicago', 'Illinois', '60630', 1, '41.9699', '-87.7603');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (324, '32 Commercial Road', null, 'Memphis', 'Tennessee', '38126', 1, '35.1255', '-90.0424');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (325, '31527 International Center', null, 'Boulder', 'Colorado', '80328', 0, '40.0878', '-105.3735');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (326, '66 Eastwood Road', 28, 'Lansing', 'Michigan', '48919', 0, '42.7286', '-84.5517');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (327, '235 Twin Pines Plaza', 33, 'Virginia Beach', 'Virginia', '23464', 1, '36.7978', '-76.1759');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (328, '084 Utah Alley', 68, 'Lake Worth', 'Florida', '33462', 0, '26.5747', '-80.0794');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (329, '62153 Kensington Court', null, 'Memphis', 'Tennessee', '38119', 0, '35.0821', '-89.8501');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (330, '359 David Trail', 42, 'Dallas', 'Texas', '75287', 1, '33.0005', '-96.8314');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (331, '33700 Old Gate Center', 18, 'Des Moines', 'Iowa', '50936', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (332, '859 Butternut Terrace', 31, 'El Paso', 'Texas', '79968', 1, '31.7705', '-106.5048');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (333, '4547 American Circle', 84, 'Lafayette', 'Indiana', '47905', 1, '40.4001', '-86.8602');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (334, '2 Sutherland Alley', null, 'Arvada', 'Colorado', '80005', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (335, '3249 Macpherson Crossing', 55, 'Shreveport', 'Louisiana', '71130', 0, '32.6076', '-93.7526');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (336, '551 Claremont Park', null, 'Wichita', 'Kansas', '67260', 1, '37.7194', '-97.2936');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (337, '82220 Vernon Alley', 8, 'Washington', 'District of Columbia', '20551', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (338, '17977 Mitchell Avenue', 83, 'Dallas', 'Texas', '75353', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (339, '605 Rutledge Trail', null, 'Fort Pierce', 'Florida', '34949', 0, '27.3896', '-80.2615');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (340, '92616 Pleasure Pass', null, 'Sacramento', 'California', '95865', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (341, '0167 Parkside Park', 21, 'Tampa', 'Florida', '33647', 1, '28.1147', '-82.3678');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (342, '78 Northfield Pass', 4, 'Kissimmee', 'Florida', '34745', 1, '27.9953', '-81.2593');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (343, '3 Mariners Cove Junction', null, 'Trenton', 'New Jersey', '08603', 0, '40.2805', '-74.712');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (344, '90 Mariners Cove Junction', 25, 'Bronx', 'New York', '10459', 0, '40.8247', '-73.894');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (345, '79 Elgar Place', 17, 'Marietta', 'Georgia', '30066', 0, '34.0378', '-84.5038');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (346, '20399 Derek Alley', 74, 'Harrisburg', 'Pennsylvania', '17126', 0, '40.2618', '-76.88');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (347, '5 Grayhawk Parkway', 25, 'Philadelphia', 'Pennsylvania', '19093', 0, '40.0018', '-75.1179');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (348, '7595 Mariners Cove Pass', 33, 'Houston', 'Texas', '77240', 1, '29.834', '-95.4342');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (349, '86366 Comanche Alley', 93, 'Phoenix', 'Arizona', '85015', 1, '33.5082', '-112.1011');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (350, '2940 Havey Road', 6, 'Boston', 'Massachusetts', '02298', 0, '42.3823', '-71.0323');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (351, '11 Monument Plaza', null, 'Miami', 'Florida', '33142', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (352, '3848 Washington Terrace', 50, 'Washington', 'District of Columbia', '20546', 0, '38.891', '-77.0211');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (353, '895 Oneill Lane', null, 'Birmingham', 'Alabama', '35231', 1, '33.5446', '-86.9292');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (354, '420 Corben Way', 70, 'Portland', 'Oregon', '97216', 1, '45.5137', '-122.5569');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (355, '6609 Fallview Avenue', 93, 'Spokane', 'Washington', '99220', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (356, '00 Kennedy Road', 32, 'Virginia Beach', 'Virginia', '23464', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (357, '57941 Corscot Place', null, 'Seattle', 'Washington', '98166', 0, '47.4511', '-122.353');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (358, '7 Arapahoe Alley', null, 'Saint Cloud', 'Minnesota', '56398', 0, '45.5289', '-94.5933');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (359, '558 Birchwood Street', 95, 'San Antonio', 'Texas', '78225', 0, '29.3875', '-98.5245');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (360, '13 Sunnyside Point', null, 'Austin', 'Texas', '78721', 1, '30.2721', '-97.6868');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (361, '03 Myrtle Trail', 87, 'New York City', 'New York', '10060', 0, '40.7808', '-73.9772');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (362, '8314 Bay Road', 51, 'Pittsburgh', 'Pennsylvania', '15230', 1, '40.4344', '-80.0248');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (363, '1 Becker Way', 37, 'Minneapolis', 'Minnesota', '55441', 1, '45.0058', '-93.4193');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (364, '727 Muir Park', null, 'Baltimore', 'Maryland', '21203', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (365, '2065 Debra Pass', 99, 'Birmingham', 'Alabama', '35295', 1, '33.5446', '-86.9292');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (366, '5 Kinsman Pass', 36, 'Odessa', 'Texas', '79764', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (367, '9 Melby Hill', 98, 'Fairfax', 'Virginia', '22036', 0, '38.7351', '-77.0796');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (368, '9444 Spohn Pass', 47, 'Portland', 'Oregon', '97211', 1, '45.5653', '-122.6448');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (369, '969 Oriole Alley', 69, 'Mobile', 'Alabama', '36616', 1, '30.671', '-88.1267');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (370, '34 2nd Circle', 41, 'Long Beach', 'California', '90831', 0, '33.7678', '-118.1994');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (371, '499 Spenser Circle', 85, 'Madison', 'Wisconsin', '53710', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (372, '704 Ridgeview Junction', null, 'Canton', 'Ohio', '44705', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (373, '1520 Walton Terrace', 83, 'Detroit', 'Michigan', '48242', 0, '42.2166', '-83.3532');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (374, '7764 Hanover Center', 87, 'New York City', 'New York', '10170', 1, '40.7526', '-73.9755');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (375, '3 Amoth Trail', 82, 'Colorado Springs', 'Colorado', '80925', 0, '38.7378', '-104.6459');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (376, '83003 Goodland Circle', null, 'Jacksonville', 'Florida', '32215', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (377, '72918 Monica Center', 97, 'Lexington', 'Kentucky', '40576', 1, '38.0283', '-84.4715');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (378, '36 Dixon Street', null, 'Lancaster', 'Pennsylvania', '17622', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (379, '09 Drewry Hill', null, 'Columbus', 'Ohio', '43231', 1, '40.081', '-82.9383');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (380, '2 Northland Way', 82, 'Dayton', 'Ohio', '45408', 1, '39.7395', '-84.229');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (381, '23395 Shasta Alley', 92, 'Cleveland', 'Ohio', '44105', 1, '41.4509', '-81.619');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (382, '40782 Menomonie Circle', 91, 'Boston', 'Massachusetts', '02114', 0, '42.3611', '-71.0682');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (383, '250 Tomscot Trail', 9, 'White Plains', 'New York', '10606', 0, '41.0247', '-73.7781');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (384, '038 Southridge Drive', 61, 'Marietta', 'Georgia', '30066', 0, '34.0378', '-84.5038');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (385, '620 Chive Point', null, 'Los Angeles', 'California', '90005', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (386, '0704 Crescent Oaks Park', 85, 'Kansas City', 'Kansas', '66160', 1, '39.0966', '-94.7495');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (387, '082 Arapahoe Point', 21, 'Albany', 'New York', '12237', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (388, '3 Burning Wood Street', 79, 'Alexandria', 'Virginia', '22313', 1, '38.8158', '-77.09');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (389, '3 Straubel Trail', 98, 'Carson City', 'Nevada', '89706', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (390, '6 Elka Trail', 95, 'Tucson', 'Arizona', '85732', 0, '32.0848', '-110.7122');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (391, '8455 Sachtjen Point', 12, 'San Antonio', 'Texas', '78265', 1, '29.4375', '-98.4616');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (392, '0165 Ohio Road', 72, 'Indianapolis', 'Indiana', '46202', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (393, '8 Lawn Street', 5, 'Indianapolis', 'Indiana', '46247', 0, '39.7795', '-86.1328');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (394, '875 Duke Junction', 6, 'Cleveland', 'Ohio', '44177', 0, '41.6857', '-81.6728');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (395, '57 Atwood Avenue', null, 'Cleveland', 'Ohio', '44105', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (396, '89 Prairieview Alley', 36, 'Kansas City', 'Missouri', '64136', 1, '39.0187', '-94.4008');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (397, '279 Shopko Circle', 70, 'Aurora', 'Colorado', '80044', 1, '39.7388', '-104.4083');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (398, '867 Everett Plaza', 10, 'Sacramento', 'California', '94257', 0, '38.3774', '-121.4444');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (399, '58 Schiller Hill', 38, 'Dallas', 'Texas', '75226', 1, '32.7887', '-96.7676');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (400, '3 Bonner Drive', null, 'Flushing', 'New York', '11388', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (401, '71 Sommers Point', 12, 'Philadelphia', 'Pennsylvania', '19115', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (402, '0157 Derek Terrace', 59, 'Vero Beach', 'Florida', '32969', 1, '27.709', '-80.5726');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (403, '51 Aberg Crossing', 81, 'Lincoln', 'Nebraska', '68524', 0, '40.8529', '-96.7943');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (404, '2 Anhalt Lane', 36, 'Saginaw', 'Michigan', '48604', 1, '43.4732', '-83.9514');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (405, '6316 South Crossing', 63, 'Bonita Springs', 'Florida', '34135', 1, '26.3771', '-81.7334');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (406, '07774 Elka Pass', null, 'Pasadena', 'California', '91109', 1, '33.7866', '-118.2987');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (407, '124 East Court', 44, 'Los Angeles', 'California', '90050', 0, '33.7866', '-118.2987');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (408, '116 Rigney Alley', null, 'Honolulu', 'Hawaii', '96815', 0, '21.2811', '-157.8266');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (409, '85997 Sloan Plaza', 59, 'Mobile', 'Alabama', '36689', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (410, '9992 Golden Leaf Alley', 53, 'Garden Grove', 'California', '92844', 0, '33.7661', '-117.9738');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (411, '863 Stuart Place', null, 'Pinellas Park', 'Florida', '34665', 0, '27.8402', '-82.7125');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (412, '946 Summer Ridge Alley', null, 'Irving', 'Texas', '75037', 0, '32.7673', '-96.7776');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (413, '39783 Vernon Crossing', 39, 'Sarasota', 'Florida', '34276', 1, '27.1675', '-82.381');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (414, '37438 Hintze Parkway', 65, 'Lexington', 'Kentucky', '40581', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (415, '375 Cottonwood Pass', 55, 'Los Angeles', 'California', '90060', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (416, '6188 Talisman Pass', null, 'Fort Lauderdale', 'Florida', '33315', 1, '26.0989', '-80.1541');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (417, '422 Everett Parkway', 60, 'Grand Rapids', 'Michigan', '49510', 0, '43.0314', '-85.5503');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (418, '6934 Dovetail Way', null, 'Salt Lake City', 'Utah', '84145', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (419, '7 Nelson Circle', 51, 'Des Moines', 'Iowa', '50320', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (420, '07 Hallows Junction', 1, 'Washington', 'District of Columbia', '20005', 0, '38.9067', '-77.0312');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (421, '85 Meadow Valley Circle', 13, 'Tampa', 'Florida', '33633', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (422, '19 Sauthoff Circle', null, 'Lawrenceville', 'Georgia', '30045', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (423, '924 Almo Center', 62, 'Boulder', 'Colorado', '80328', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (424, '10 Spenser Crossing', null, 'Phoenix', 'Arizona', '85083', 0, '33.7352', '-112.1294');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (425, '639 Shopko Alley', 49, 'Huntington', 'West Virginia', '25775', 0, '38.4134', '-82.2774');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (426, '8 Steensland Place', null, 'Stockton', 'California', '95205', 0, '37.9625', '-121.2624');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (427, '4 Marquette Place', null, 'Burbank', 'California', '91505', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (428, '6579 Mcguire Avenue', 1, 'San Diego', 'California', '92145', 0, '32.8891', '-117.1005');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (429, '04 Superior Trail', 87, 'Houston', 'Texas', '77030', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (430, '945 Rockefeller Park', 97, 'Texarkana', 'Texas', '75507', 0, '33.3934', '-94.3404');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (431, '433 Rieder Junction', 38, 'Cincinnati', 'Ohio', '45208', 0, '39.1361', '-84.4355');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (432, '8571 Milwaukee Junction', 92, 'Toledo', 'Ohio', '43605', 1, '41.6525', '-83.5085');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (433, '59352 Towne Way', null, 'Miami', 'Florida', '33124', 1, '25.5584', '-80.4582');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (434, '7 Maple Drive', 63, 'Washington', 'District of Columbia', '20310', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (435, '042 Shoshone Junction', null, 'Montpelier', 'Vermont', '05609', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (436, '4 Golf View Circle', null, 'Odessa', 'Texas', '79769', 1, '31.7466', '-102.567');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (437, '983 Lakewood Gardens Drive', 42, 'Shreveport', 'Louisiana', '71151', 1, '32.6076', '-93.7526');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (438, '377 Southridge Center', 98, 'Ocala', 'Florida', '34474', 0, '29.1565', '-82.2095');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (439, '84641 Veith Park', 93, 'Newark', 'Delaware', '19725', 0, '39.5645', '-75.597');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (440, '79795 Acker Lane', 61, 'Los Angeles', 'California', '90030', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (441, '4694 Redwing Junction', null, 'San Bernardino', 'California', '92424', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (442, '529 Badeau Way', null, 'Pasadena', 'California', '91186', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (443, '880 Old Shore Place', 55, 'Santa Ana', 'California', '92705', 1, '33.754', '-117.7919');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (444, '35070 Loftsgordon Road', 83, 'Boston', 'Massachusetts', '02203', 0, '42.3615', '-71.0604');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (445, '8039 Ludington Road', 50, 'Cleveland', 'Ohio', '44111', 1, '41.4571', '-81.7844');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (446, '24851 Dorton Lane', 58, 'Oakland', 'California', '94660', 1, '37.6802', '-121.9215');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (447, '65055 Brickson Park Point', 37, 'Colorado Springs', 'Colorado', '80905', 0, '38.8377', '-104.837');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (448, '08 Namekagon Street', 34, 'Edmond', 'Oklahoma', '73034', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (449, '61253 Colorado Plaza', 87, 'Torrance', 'California', '90510', 0, '33.7866', '-118.2987');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (450, '72 Meadow Vale Drive', 38, 'Washington', 'District of Columbia', '20036', 0, '38.9087', '-77.0414');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (451, '57 Village Green Circle', 14, 'Hartford', 'Connecticut', '06105', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (452, '0911 Jana Junction', 58, 'Pomona', 'California', '91797', 0, '33.7866', '-118.2987');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (453, '4 Stoughton Parkway', 13, 'Rochester', 'New York', '14683', 1, '43.286', '-77.6843');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (454, '7 Summer Ridge Plaza', 38, 'Monroe', 'Louisiana', '71213', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (455, '52 Truax Way', 61, 'Wichita', 'Kansas', '67205', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (456, '04 Walton Hill', null, 'Amarillo', 'Texas', '79171', 1, '35.4015', '-101.8951');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (457, '31837 Kim Center', 91, 'Memphis', 'Tennessee', '38136', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (458, '6 Corben Avenue', 39, 'Austin', 'Texas', '78721', 1, '30.2721', '-97.6868');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (459, '6 Schiller Way', 93, 'San Antonio', 'Texas', '78205', 0, '29.4237', '-98.4925');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (460, '44653 Fieldstone Lane', 28, 'Des Moines', 'Iowa', '50310', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (461, '548 Arrowood Park', null, 'El Paso', 'Texas', '88579', 1, '31.6948', '-106.3');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (462, '93779 Northview Park', null, 'Young America', 'Minnesota', '55557', 1, '44.8055', '-93.7665');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (463, '9009 Chive Point', 41, 'Waterbury', 'Connecticut', '06721', 1, '41.3657', '-72.9275');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (464, '2873 North Crossing', 21, 'Des Moines', 'Iowa', '50310', 1, '41.6255', '-93.6736');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (465, '917 Hoffman Road', 67, 'Waterbury', 'Connecticut', '06721', 1, '41.3657', '-72.9275');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (466, '53 Columbus Road', 5, 'Wilmington', 'Delaware', '19805', 0, '39.7434', '-75.5827');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (467, '804 Hermina Pass', null, 'Huntington Beach', 'California', '92648', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (468, '82779 Buhler Trail', 59, 'Toledo', 'Ohio', '43656', 1, '41.6782', '-83.4972');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (469, '063 Weeping Birch Circle', 19, 'Saint Louis', 'Missouri', '63196', 0, '38.6531', '-90.2435');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (470, '11869 Westridge Park', null, 'Panama City', 'Florida', '32405', 1, '30.1949', '-85.6727');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (471, '20429 Corben Hill', 36, 'Sarasota', 'Florida', '34238', 1, '27.2427', '-82.4751');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (472, '0 Pierstorff Center', 23, 'Fairfield', 'Connecticut', '06825', 0, '41.1928', '-73.2402');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (473, '21334 West Center', null, 'Woburn', 'Massachusetts', '01813', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (474, '76 Daystar Circle', 32, 'Wilmington', 'Delaware', '19897', 0, '39.5645', '-75.597');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (475, '722 Calypso Terrace', 94, 'Buffalo', 'New York', '14210', 1, '42.8614', '-78.8206');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (476, '61 Hoffman Crossing', 17, 'New York City', 'New York', '10131', 1, '40.7808', '-73.9772');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (477, '30261 Old Shore Avenue', 78, 'Jefferson City', 'Missouri', '65110', 1, '38.5309', '-92.2493');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (478, '01 Fuller Trail', 46, 'Houston', 'Texas', '77005', 1, '29.7179', '-95.4263');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (479, '26 Butternut Lane', 9, 'Elmira', 'New York', '14905', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (480, '2 Aberg Street', 27, 'Birmingham', 'Alabama', '35225', 0, '33.5446', '-86.9292');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (481, '08415 Sunnyside Street', 38, 'Columbus', 'Ohio', '43240', 1, '40.1454', '-82.9817');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (482, '88579 Darwin Road', 84, 'Charlotte', 'North Carolina', '28225', 1, '35.26', '-80.8042');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (483, '45573 Hauk Pass', 29, 'Pittsburgh', 'Pennsylvania', '15235', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (484, '1 Grover Court', 57, 'Washington', 'District of Columbia', '20078', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (485, '5893 Banding Drive', 41, 'San Diego', 'California', '92186', 1, '33.0169', '-116.846');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (486, '82397 Emmet Park', 28, 'Beaverton', 'Oregon', '97075', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (487, '56 Carioca Park', 59, 'Las Vegas', 'Nevada', '89125', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (488, '7 Starling Park', null, 'New York City', 'New York', '10090', 1, '40.7808', '-73.9772');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (489, '45 Columbus Hill', 27, 'Hartford', 'Connecticut', '06152', 1, '41.7918', '-72.7188');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (490, '42068 Surrey Court', 33, 'Indianapolis', 'Indiana', '46207', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (491, '15 Kropf Way', 53, 'Denver', 'Colorado', '80223', 1, '39.7002', '-105.0028');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (492, '3 Loftsgordon Park', null, 'Washington', 'District of Columbia', '20535', 0, '38.8941', '-77.0251');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (493, '16231 Wayridge Court', null, 'Washington', 'District of Columbia', '20238', 1, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (494, '3 Mcbride Trail', 83, 'Boise', 'Idaho', '83727', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (495, '4540 Mallory Junction', 23, 'Santa Fe', 'New Mexico', '87592', 1, '35.5212', '-105.9818');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (496, '9 Dexter Road', 64, 'Montpelier', 'Vermont', '05609', 1, '44.2595', '-72.585');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (497, '50986 4th Park', null, 'Boston', 'Massachusetts', '02298', 1, '42.3823', '-71.0323');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (498, '348 Grasskamp Avenue', 47, 'Akron', 'Ohio', '44393', 1, '41.1287', '-81.54');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (499, '738 Little Fleur Drive', 69, 'Midland', 'Michigan', '48670', 0, '43.6375', '-84.2568');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (500, '5 Sycamore Drive', 36, 'Cleveland', 'Ohio', '44125', 1, '41.4335', '-81.6323');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (501, '77 Hagan Pass', null, 'Dayton', 'Ohio', '45408', 0, '39.7395', '-84.229');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (502, '363 Melby Way', 77, 'Louisville', 'Kentucky', '40266', 1, '38.189', '-85.6768');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (503, '66 Drewry Street', 27, 'Memphis', 'Tennessee', '38181', 1, '35.2017', '-89.9715');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (504, '2658 Waxwing Parkway', null, 'Saint Paul', 'Minnesota', '55127', 0, '45.0803', '-93.0875');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (505, '60228 Tennessee Plaza', 51, 'Panama City', 'Florida', '32405', 1, '30.1949', '-85.6727');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (506, '6936 Comanche Way', 39, 'Fort Worth', 'Texas', '76129', 0, '32.7714', '-97.2915');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (507, '3 Carpenter Junction', 64, 'Scranton', 'Pennsylvania', '18514', 0, '41.4019', '-75.6376');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (508, '06962 Derek Plaza', null, 'Detroit', 'Michigan', '48258', 1, '42.2399', '-83.1508');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (509, '676 Kenwood Street', 51, 'Fresno', 'California', '93762', 0, '36.7464', '-119.6397');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (510, '0594 American Ash Way', 26, 'Woburn', 'Massachusetts', '01813', 0, '42.4464', '-71.4594');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (511, '1 Saint Paul Place', 5, 'Corpus Christi', 'Texas', '78426', 0, '27.777', '-97.4632');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (512, '66914 Talmadge Road', 7, 'New Orleans', 'Louisiana', '70142', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (513, '704 American Terrace', 5, 'Des Moines', 'Iowa', '50315', 0, '41.5444', '-93.6192');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (514, '14 Walton Alley', 35, 'Grand Rapids', 'Michigan', '49510', 0, '43.0314', '-85.5503');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (515, '2281 Prentice Center', 42, 'Saint Paul', 'Minnesota', '55127', 0, '45.0803', '-93.0875');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (516, '018 Larry Road', 79, 'Dayton', 'Ohio', '45470', 1, '39.7505', '-84.2686');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (517, '100 Main Lane', 57, 'San Antonio', 'Texas', '78240', 1, '29.5189', '-98.6006');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (518, '34 Del Sol Hill', 54, 'San Antonio', 'Texas', '78240', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (519, '9 Eastlawn Crossing', 88, 'Valdosta', 'Georgia', '31605', 0, '30.946', '-83.2474');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (520, '4195 Bonner Plaza', 5, 'Nashville', 'Tennessee', '37205', 0, '36.1114', '-86.869');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (521, '132 Porter Parkway', null, 'Fort Wayne', 'Indiana', '46814', 1, '41.0456', '-85.3058');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (522, '3457 Rusk Plaza', 28, 'Trenton', 'New Jersey', '08619', 0, '40.2418', '-74.6962');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (523, '193 Commercial Parkway', 82, 'San Jose', 'California', '95160', 0, '37.2187', '-121.8601');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (524, '6632 Bartillon Terrace', 22, 'Montgomery', 'Alabama', '36177', 1, '32.2334', '-86.2085');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (525, '94259 Browning Junction', 63, 'Sarasota', 'Florida', '34276', 0, '27.1675', '-82.381');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (526, '3148 International Road', 81, 'Phoenix', 'Arizona', '85099', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (527, '35413 Golf Trail', null, 'Albuquerque', 'New Mexico', '87121', 1, '35.0512', '-106.7269');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (528, '23 Fremont Avenue', 21, 'Atlanta', 'Georgia', '30323', 0, '33.8444', '-84.474');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (529, '211 Novick Lane', 90, 'Fort Worth', 'Texas', '76198', 1, '32.7714', '-97.2915');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (530, '3 Ridge Oak Terrace', 38, 'El Paso', 'Texas', '88530', 0, '31.6948', '-106.3');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (531, '313 Village Green Avenue', 35, 'Rochester', 'New York', '14646', 1, '43.286', '-77.6843');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (532, '57590 Porter Plaza', 44, 'Gaithersburg', 'Maryland', '20883', 1, '39.0883', '-77.1568');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (533, '85827 Manitowish Place', 62, 'Seattle', 'Washington', '98140', 1, '47.4323', '-121.8034');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (534, '8763 Pierstorff Court', 66, 'Toledo', 'Ohio', '43615', 0, '41.6492', '-83.6706');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (535, '4704 Veith Avenue', null, 'Reading', 'Pennsylvania', '19605', 0, '40.3886', '-75.9328');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (536, '05361 Anzinger Alley', 69, 'Fresno', 'California', '93726', 0, '36.7949', '-119.7604');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (537, '9502 Aberg Junction', null, 'Richmond', 'Virginia', '23237', 0, '37.4011', '-77.4615');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (538, '941 Green Ridge Road', null, 'Albuquerque', 'New Mexico', '87180', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (539, '48 Meadow Valley Way', 31, 'Amarillo', 'Texas', '79118', 1, '35.0763', '-101.8349');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (540, '9 Haas Lane', 20, 'Orange', 'California', '92862', 1, '33.7915', '-117.714');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (541, '48 Carioca Circle', null, 'Kansas City', 'Missouri', '64109', 0, '39.0663', '-94.5674');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (542, '001 Northland Avenue', 23, 'Long Beach', 'California', '90840', 1, '33.7843', '-118.1157');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (543, '51995 Butterfield Park', null, 'New York City', 'New York', '10275', 1, '40.7808', '-73.9772');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (544, '57091 Sutherland Junction', 41, 'Atlanta', 'Georgia', '30356', 1, '33.8913', '-84.0746');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (545, '39 Butterfield Park', 33, 'Riverside', 'California', '92519', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (546, '572 Shelley Terrace', 72, 'Mobile', 'Alabama', '36605', 0, '30.6341', '-88.0846');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (547, '37 Clyde Gallagher Plaza', 9, 'Irvine', 'California', '92619', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (548, '8156 Reinke Street', null, 'Pasadena', 'California', '91103', 1, '34.1669', '-118.1551');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (549, '5968 Dovetail Junction', 38, 'Flint', 'Michigan', '48555', 0, '43.0113', '-83.7108');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (550, '20 Prairieview Plaza', null, 'Montgomery', 'Alabama', '36114', 0, '32.404', '-86.2539');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (551, '122 Jenifer Alley', 3, 'Richmond', 'California', '94807', 1, '37.7772', '-121.9554');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (552, '008 Golf Way', null, 'Colorado Springs', 'Colorado', '80930', 0, '38.8289', '-104.5269');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (553, '3 Toban Point', 53, 'North Port', 'Florida', '34290', 0, '27.0459', '-82.2491');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (554, '1 Golf Avenue', 62, 'New York City', 'New York', '10090', 1, '40.7808', '-73.9772');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (555, '4 Randy Center', null, 'Huntington', 'West Virginia', '25775', 0, '38.4134', '-82.2774');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (556, '934 Sunfield Avenue', 14, 'Honolulu', 'Hawaii', '96805', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (557, '87165 Cambridge Parkway', 79, 'Tacoma', 'Washington', '98405', 1, '47.2484', '-122.4644');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (558, '74 Sherman Crossing', 31, 'Oakland', 'California', '94622', 1, '37.799', '-122.2337');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (559, '81 Goodland Road', 85, 'Warren', 'Ohio', '44485', 1, '41.2405', '-80.8441');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (560, '654 Roth Trail', 45, 'San Antonio', 'Texas', '78260', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (561, '922 Crest Line Plaza', 74, 'Phoenix', 'Arizona', '85067', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (562, '7872 Forster Road', 11, 'Flushing', 'New York', '11355', 0, '40.7536', '-73.8226');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (563, '2891 Victoria Park', 55, 'Sacramento', 'California', '95818', 1, '38.5568', '-121.4929');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (564, '42 Crownhardt Point', 8, 'Philadelphia', 'Pennsylvania', '19160', 0, '40.0018', '-75.1179');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (565, '66067 Kensington Lane', 46, 'Saint Louis', 'Missouri', '63126', 0, '38.5495', '-90.3811');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (566, '618 Valley Edge Crossing', null, 'Oklahoma City', 'Oklahoma', '73104', 0, '35.4794', '-97.5017');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (567, '9 Prairie Rose Center', 49, 'Houston', 'Texas', '77030', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (568, '39347 Gale Junction', 96, 'Rochester', 'New York', '14619', 0, '43.1367', '-77.6481');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (569, '31448 Straubel Point', null, 'Morgantown', 'West Virginia', '26505', 1, '39.6505', '-79.944');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (570, '9 Scoville Parkway', null, 'Chicago', 'Illinois', '60641', 1, '41.9453', '-87.7474');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (571, '9600 Graedel Way', 10, 'Honolulu', 'Hawaii', '96815', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (572, '84 Basil Plaza', null, 'Miami', 'Florida', '33147', 1, '25.8507', '-80.2366');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (573, '4170 Fulton Point', 36, 'Des Moines', 'Iowa', '50393', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (574, '1106 Jenifer Circle', 95, 'El Paso', 'Texas', '79916', 0, '31.7444', '-106.2879');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (575, '50 Logan Parkway', null, 'Warren', 'Michigan', '48092', 1, '42.5125', '-83.0643');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (576, '5809 Brown Alley', 38, 'San Antonio', 'Texas', '78255', 1, '29.6701', '-98.6873');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (577, '504 Upham Road', null, 'Los Angeles', 'California', '90050', 0, '33.7866', '-118.2987');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (578, '24 Delaware Road', null, 'Boston', 'Massachusetts', '02109', 0, '42.36', '-71.0545');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (579, '7 Fisk Place', 50, 'Salt Lake City', 'Utah', '84199', 1, '40.7259', '-111.9394');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (580, '65553 Laurel Way', 66, 'Sacramento', 'California', '94230', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (581, '1 Redwing Place', 85, 'Louisville', 'Kentucky', '40250', 0, '38.189', '-85.6768');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (582, '3 Anhalt Junction', 24, 'Lancaster', 'California', '93584', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (583, '52 West Trail', null, 'Rockville', 'Maryland', '20851', 1, '39.0763', '-77.1234');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (584, '1 Springview Plaza', 9, 'Ogden', 'Utah', '84403', 1, '41.1894', '-111.9489');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (585, '6318 Debs Circle', 41, 'Aurora', 'Colorado', '80044', 0, '39.7388', '-104.4083');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (586, '2425 East Court', 70, 'Orlando', 'Florida', '32819', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (587, '803 Cambridge Junction', 89, 'Indianapolis', 'Indiana', '46254', 0, '39.849', '-86.272');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (588, '53441 Derek Crossing', 46, 'Cincinnati', 'Ohio', '45296', 1, '39.1668', '-84.5382');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (589, '9776 Saint Paul Court', null, 'Houston', 'Texas', '77281', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (590, '94275 Utah Place', 80, 'Charlotte', 'North Carolina', '28220', 1, '35.26', '-80.8042');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (591, '5718 Myrtle Center', null, 'Hicksville', 'New York', '11854', 1, '40.7548', '-73.6018');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (592, '53420 Straubel Center', null, 'Saginaw', 'Michigan', '48604', 1, '43.4732', '-83.9514');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (593, '8 Artisan Drive', 30, 'Houston', 'Texas', '77020', 0, '29.7758', '-95.3121');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (594, '9 New Castle Pass', 43, 'San Jose', 'California', '95128', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (595, '5062 2nd Road', null, 'Cincinnati', 'Ohio', '45249', 0, '39.2692', '-84.3307');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (596, '04045 East Circle', null, 'Bozeman', 'Montana', '59771', 1, '45.7246', '-111.1238');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (597, '804 Delladonna Crossing', 31, 'Lubbock', 'Texas', '79491', 1, '33.61', '-101.8213');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (598, '3479 Welch Parkway', null, 'Henderson', 'Nevada', '89074', 0, '36.0384', '-115.0857');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (599, '2045 Brentwood Plaza', 74, 'Jamaica', 'New York', '11407', 0, '40.6913', '-73.8059');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (600, '17 Mccormick Junction', 59, 'Salt Lake City', 'Utah', '84170', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (601, '1456 Summit Drive', 22, 'Charlotte', 'North Carolina', '28272', 0, '35.26', '-80.8042');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (602, '968 Dunning Place', null, 'Atlanta', 'Georgia', '30392', 0, '33.8444', '-84.474');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (603, '01317 Bartelt Pass', 2, 'Arlington', 'Virginia', '22234', 0, '38.8808', '-77.113');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (604, '7 Debra Circle', 5, 'Sacramento', 'California', '95865', 0, '38.596', '-121.3978');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (605, '00 Norway Maple Hill', 54, 'Richmond', 'Virginia', '23293', 1, '37.5242', '-77.4932');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (606, '66 Dennis Lane', 3, 'Meridian', 'Mississippi', '39305', 1, '32.4401', '-88.6783');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (607, '3587 Schlimgen Parkway', 55, 'Shawnee Mission', 'Kansas', '66215', 0, '38.949', '-94.7405');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (608, '15816 Di Loreto Parkway', 48, 'Columbus', 'Mississippi', '39705', 1, '33.5508', '-88.4865');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (609, '11 Meadow Valley Park', null, 'Baton Rouge', 'Louisiana', '70826', 1, '30.5159', '-91.0804');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (610, '5 Harper Way', 5, 'Saint Paul', 'Minnesota', '55123', 0, '44.806', '-93.1409');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (611, '0 Barby Junction', 13, 'Suffolk', 'Virginia', '23436', 0, '36.8926', '-76.5142');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (612, '96831 Clyde Gallagher Point', 16, 'Cincinnati', 'Ohio', '45218', 1, '39.2663', '-84.5221');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (613, '4 Roxbury Plaza', 14, 'Reston', 'Virginia', '22096', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (614, '8 Harbort Alley', 2, 'Nashville', 'Tennessee', '37235', 0, '36.1866', '-86.7852');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (615, '16660 Goodland Park', null, 'Minneapolis', 'Minnesota', '55412', 0, '45.0242', '-93.302');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (616, '05072 Ilene Point', 54, 'Oklahoma City', 'Oklahoma', '73109', 0, '35.4259', '-97.5261');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (617, '91638 Bunting Junction', 71, 'Spokane', 'Washington', '99205', 0, '47.6964', '-117.4399');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (618, '649 South Circle', 32, 'Saint Cloud', 'Minnesota', '56372', 0, '45.5289', '-94.5933');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (619, '475 Di Loreto Court', 69, 'Sioux City', 'Iowa', '51105', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (620, '867 Clemons Plaza', 8, 'Louisville', 'Kentucky', '40225', 0, '38.189', '-85.6768');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (621, '9 Dunning Hill', 89, 'Abilene', 'Texas', '79699', 0, '32.4665', '-99.7117');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (622, '8 Basil Court', 19, 'Austin', 'Texas', '78789', 1, '30.3264', '-97.7713');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (623, '6767 Crowley Park', null, 'Topeka', 'Kansas', '66629', 1, '39.0429', '-95.7697');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (624, '4333 Amoth Trail', 25, 'New Haven', 'Connecticut', '06510', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (625, '63 Meadow Ridge Hill', 27, 'Salt Lake City', 'Utah', '84125', 0, '40.6681', '-111.9083');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (626, '77564 Kipling Alley', 93, 'Lincoln', 'Nebraska', '68517', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (627, '86 Mallard Park', 56, 'Las Vegas', 'Nevada', '89140', 1, '36.086', '-115.1471');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (628, '05709 Moulton Lane', null, 'Ogden', 'Utah', '84409', 0, '41.2553', '-111.9567');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (629, '53857 Arkansas Road', 11, 'Honolulu', 'Hawaii', '96825', 1, '21.2987', '-157.6985');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (630, '62 Garrison Park', 4, 'El Paso', 'Texas', '79928', 1, '31.6631', '-106.1401');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (631, '83439 Sutteridge Circle', 90, 'Kansas City', 'Missouri', '64101', 0, '39.1024', '-94.5986');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (632, '597 New Castle Trail', 74, 'Spring', 'Texas', '77386', 0, '30.1288', '-95.4239');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (633, '6 Moland Street', 4, 'Columbus', 'Ohio', '43204', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (634, '68879 Oak Terrace', 62, 'North Hollywood', 'California', '91616', 1, '33.7866', '-118.2987');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (635, '74 Laurel Court', 34, 'New Brunswick', 'New Jersey', '08922', 1, '40.43', '-74.4173');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (636, '113 Daystar Court', 70, 'El Paso', 'Texas', '79905', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (637, '7 Carpenter Park', 91, 'Nashville', 'Tennessee', '37215', 0, '36.0986', '-86.8219');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (638, '8 Thierer Junction', null, 'Springfield', 'Virginia', '22156', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (639, '96636 Division Plaza', 96, 'Tucson', 'Arizona', '85710', 1, '32.2138', '-110.824');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (640, '5 Northwestern Place', 19, 'Young America', 'Minnesota', '55557', 0, '44.8055', '-93.7665');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (641, '778 Daystar Parkway', null, 'Amarillo', 'Texas', '79105', 1, '35.4015', '-101.8951');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (642, '09 Chive Road', 56, 'Saint Paul', 'Minnesota', '55123', 0, '44.806', '-93.1409');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (643, '0 Fallview Alley', null, 'Miami', 'Florida', '33245', 0, '25.5584', '-80.4582');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (644, '582 Oak Point', 84, 'El Paso', 'Texas', '79934', 1, '31.9386', '-106.4073');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (645, '35925 Boyd Hill', null, 'El Paso', 'Texas', '88546', 0, '31.6948', '-106.3');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (646, '9 Pennsylvania Place', null, 'Mobile', 'Alabama', '36628', 0, '30.6589', '-88.178');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (647, '9 Beilfuss Street', 5, 'Newton', 'Massachusetts', '02162', 1, '42.3319', '-71.254');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (648, '21774 Northfield Trail', null, 'Chicago', 'Illinois', '60636', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (649, '34 Old Shore Alley', null, 'Denton', 'Texas', '76205', 1, '33.1903', '-97.1282');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (650, '60630 Kinsman Court', 90, 'Portland', 'Oregon', '97296', 1, '45.5806', '-122.3748');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (651, '0617 Almo Circle', null, 'Chicago', 'Illinois', '60681', 1, '41.8119', '-87.6873');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (652, '1 Upham Alley', null, 'Peoria', 'Illinois', '61651', 0, '40.7442', '-89.7184');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (653, '2869 Derek Terrace', 10, 'Brooklyn', 'New York', '11254', 0, '40.6451', '-73.945');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (654, '194 Daystar Terrace', 17, 'Seattle', 'Washington', '98140', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (655, '3851 Southridge Alley', 22, 'Saint Louis', 'Missouri', '63169', 0, '38.6531', '-90.2435');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (656, '14 Di Loreto Parkway', null, 'Fort Worth', 'Texas', '76105', 0, '32.7233', '-97.269');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (657, '92075 Bluejay Drive', 82, 'Philadelphia', 'Pennsylvania', '19109', 1, '39.9496', '-75.1637');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (658, '192 Corry Lane', 12, 'Lynn', 'Massachusetts', '01905', 1, '42.4694', '-70.9728');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (659, '349 Monica Parkway', 15, 'New Orleans', 'Louisiana', '70116', 1, '29.9686', '-90.0646');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (660, '0510 Prairie Rose Center', 78, 'Austin', 'Texas', '78764', 0, '30.4455', '-97.6595');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (661, '98793 Nova Drive', 6, 'Hartford', 'Connecticut', '06105', 1, '41.7691', '-72.701');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (662, '5 Mccormick Court', 53, 'Des Moines', 'Iowa', '50305', 1, '41.6727', '-93.5722');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (663, '95721 Mifflin Park', null, 'Sacramento', 'California', '94207', 1, '38.3774', '-121.4444');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (664, '5728 Scoville Point', null, 'Fort Wayne', 'Indiana', '46805', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (665, '59838 Mockingbird Hill', 46, 'Carlsbad', 'California', '92013', 1, '33.0169', '-116.846');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (666, '1118 Rigney Trail', 32, 'Greenville', 'South Carolina', '29615', 1, '34.8661', '-82.3198');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (667, '752 Knutson Trail', 52, 'Wichita Falls', 'Texas', '76305', 0, '33.9995', '-98.3938');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (668, '306 5th Plaza', 85, 'Rochester', 'New York', '14683', 1, '43.286', '-77.6843');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (669, '66 Butternut Point', null, 'Madison', 'Wisconsin', '53790', 1, '43.0696', '-89.4239');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (670, '06 Tony Court', null, 'Des Moines', 'Iowa', '50320', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (671, '6 Lakeland Place', 31, 'Jersey City', 'New Jersey', '07310', 1, '40.7324', '-74.0431');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (672, '4274 Butterfield Place', 16, 'Oceanside', 'California', '92056', 0, '33.1968', '-117.2831');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (673, '9218 Old Gate Park', 54, 'Daytona Beach', 'Florida', '32128', 0, '29.0838', '-81.0336');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (674, '0 Westend Pass', 10, 'Philadelphia', 'Pennsylvania', '19136', 0, '40.0422', '-75.0244');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (675, '3314 Loftsgordon Drive', 44, 'Honolulu', 'Hawaii', '96810', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (676, '44 Dovetail Drive', 23, 'Spartanburg', 'South Carolina', '29305', 0, '35.1114', '-82.1055');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (677, '8271 Bayside Junction', null, 'Saint Joseph', 'Missouri', '64504', 0, '39.7076', '-94.8677');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (678, '8 Alpine Road', 100, 'Laredo', 'Texas', '78044', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (679, '087 Everett Drive', null, 'Peoria', 'Illinois', '61640', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (680, '8 Briar Crest Street', 54, 'Albuquerque', 'New Mexico', '87110', 1, '35.1104', '-106.5781');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (681, '6783 Novick Hill', 44, 'Tallahassee', 'Florida', '32314', 0, '30.4793', '-84.3462');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (682, '0 Carpenter Center', 58, 'Washington', 'District of Columbia', '20442', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (683, '06069 Rusk Hill', 22, 'Alexandria', 'Virginia', '22333', 1, '38.8158', '-77.09');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (684, '90230 Pepper Wood Plaza', null, 'Reno', 'Nevada', '89595', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (685, '640 Larry Alley', 69, 'Des Moines', 'Iowa', '50347', 1, '41.6727', '-93.5722');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (686, '38302 Anderson Road', 25, 'Alexandria', 'Virginia', '22313', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (687, '583 Summit Point', null, 'Washington', 'District of Columbia', '20268', 0, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (688, '918 Dixon Street', 72, 'San Antonio', 'Texas', '78210', 0, '29.3977', '-98.4658');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (689, '2540 Eagan Pass', 59, 'Portland', 'Oregon', '97216', 1, '45.5137', '-122.5569');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (690, '43 Rutledge Hill', 34, 'Saint Louis', 'Missouri', '63136', 0, '38.7196', '-90.27');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (691, '301 Longview Circle', 36, 'Staten Island', 'New York', '10305', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (692, '4597 Toban Street', null, 'New York City', 'New York', '10009', 1, '40.7262', '-73.9796');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (693, '89 Carey Junction', 2, 'Denver', 'Colorado', '80204', 0, '39.734', '-105.0259');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (694, '0825 Trailsway Street', null, 'Bridgeport', 'Connecticut', '06606', 1, '41.2091', '-73.2086');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (695, '28654 Pawling Crossing', 88, 'Birmingham', 'Alabama', '35263', 0, '33.5225', '-86.8094');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (696, '97 West Avenue', null, 'Tacoma', 'Washington', '98424', 0, '47.2325', '-122.3594');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (697, '8566 Kedzie Junction', 54, 'Washington', 'District of Columbia', '20580', 0, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (698, '036 Golf View Way', 43, 'Baltimore', 'Maryland', '21229', 0, '39.2856', '-76.6899');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (699, '441 Bluestem Drive', null, 'Maple Plain', 'Minnesota', '55572', 0, '45.0159', '-93.4719');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (700, '90189 Mariners Cove Alley', null, 'Modesto', 'California', '95397', 1, '37.6566', '-121.0191');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (701, '11 Amoth Trail', 36, 'New York City', 'New York', '10079', 1, '40.7808', '-73.9772');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (702, '545 Gulseth Place', 26, 'Montgomery', 'Alabama', '36195', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (703, '7 Fieldstone Crossing', 34, 'Waterbury', 'Connecticut', '06721', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (704, '88 Washington Trail', null, 'Boise', 'Idaho', '83722', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (705, '39917 Dayton Park', 80, 'Staten Island', 'New York', '10305', 0, '40.5973', '-74.0768');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (706, '27747 South Terrace', 52, 'Salt Lake City', 'Utah', '84140', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (707, '809 Forster Point', 87, 'Green Bay', 'Wisconsin', '54305', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (708, '64 Dakota Court', null, 'Independence', 'Missouri', '64054', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (709, '1519 Susan Center', 35, 'Saint Louis', 'Missouri', '63169', 0, '38.6531', '-90.2435');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (710, '8 Loeprich Alley', 54, 'Dallas', 'Texas', '75310', 1, '32.7673', '-96.7776');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (711, '8704 Browning Street', null, 'Scottsdale', 'Arizona', '85260', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (712, '86499 Armistice Lane', 32, 'New York City', 'New York', '10175', 0, '40.7543', '-73.9798');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (713, '8749 Fordem Way', 47, 'Winston Salem', 'North Carolina', '27150', 0, '36.0275', '-80.2073');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (714, '1 Arkansas Park', 58, 'San Antonio', 'Texas', '78230', 0, '29.5407', '-98.5521');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (715, '88 Fieldstone Court', 41, 'Toledo', 'Ohio', '43610', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (716, '7 Oak Parkway', null, 'Tampa', 'Florida', '33625', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (717, '85978 Mallard Crossing', 29, 'Schaumburg', 'Illinois', '60193', 1, '42.0144', '-88.0935');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (718, '8 Acker Alley', 6, 'White Plains', 'New York', '10633', 1, '41.119', '-73.733');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (719, '74710 Stoughton Circle', null, 'New Orleans', 'Louisiana', '70154', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (720, '2304 Eastwood Crossing', 57, 'Monroe', 'Louisiana', '71213', 1, '32.4908', '-92.1594');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (721, '9682 Melody Pass', null, 'Columbus', 'Georgia', '31914', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (722, '787 Fairview Alley', null, 'Richmond', 'California', '94807', 1, '37.7772', '-121.9554');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (723, '1578 Luster Terrace', 55, 'Fort Collins', 'Colorado', '80525', 1, '40.5384', '-105.0547');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (724, '14 Annamark Trail', 80, 'Fairfax', 'Virginia', '22036', 0, '38.7351', '-77.0796');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (725, '2027 6th Trail', 39, 'San Diego', 'California', '92121', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (726, '933 Kropf Trail', null, 'Chicago', 'Illinois', '60686', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (727, '3 Chinook Pass', 4, 'Durham', 'North Carolina', '27710', 1, '36.0512', '-78.8577');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (728, '1 Veith Terrace', 81, 'North Las Vegas', 'Nevada', '89036', 1, '35.9279', '-114.9721');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (729, '30317 Drewry Trail', 71, 'Honolulu', 'Hawaii', '96820', 0, '21.351', '-157.8795');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (730, '85951 Pine View Center', 51, 'Alexandria', 'Louisiana', '71307', 1, '31.2034', '-92.5269');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (731, '1 Artisan Point', 24, 'Irvine', 'California', '92717', 0, '33.6462', '-117.8398');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (732, '1065 Heffernan Alley', 51, 'El Paso', 'Texas', '79923', 1, '31.6948', '-106.3');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (733, '3848 Shelley Trail', 32, 'Columbus', 'Ohio', '43240', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (734, '15 Weeping Birch Alley', 56, 'Fresno', 'California', '93773', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (735, '005 Namekagon Place', 53, 'Seattle', 'Washington', '98166', 1, '47.4511', '-122.353');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (736, '91129 Rigney Way', null, 'New Orleans', 'Louisiana', '70183', 0, '29.6779', '-90.0901');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (737, '4775 Barby Alley', 33, 'Winston Salem', 'North Carolina', '27150', 0, '36.0275', '-80.2073');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (738, '93 Pennsylvania Avenue', 86, 'Fort Pierce', 'Florida', '34981', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (739, '16 John Wall Terrace', 62, 'Fredericksburg', 'Virginia', '22405', 0, '38.3365', '-77.4366');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (740, '8523 Melby Place', 11, 'Cincinnati', 'Ohio', '45213', 1, '39.1802', '-84.4204');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (741, '75138 Dwight Parkway', 30, 'Sioux Falls', 'South Dakota', '57110', 0, '43.5486', '-96.6332');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (742, '949 Morning Court', 26, 'Washington', 'District of Columbia', '56944', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (743, '61 Sunfield Street', 16, 'San Francisco', 'California', '94177', 0, '37.7848', '-122.7278');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (744, '1 Red Cloud Street', 51, 'Jamaica', 'New York', '11480', 1, '40.6914', '-73.8061');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (745, '1 Hovde Crossing', 7, 'Portland', 'Oregon', '97211', 1, '45.5653', '-122.6448');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (746, '9 Crownhardt Court', 6, 'Washington', 'District of Columbia', '20319', 0, '38.8667', '-77.0166');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (747, '94 Onsgard Alley', null, 'Rochester', 'New York', '14619', 1, '43.1367', '-77.6481');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (748, '965 Fairview Circle', 42, 'Cincinnati', 'Ohio', '45296', 0, '39.1668', '-84.5382');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (749, '202 Artisan Crossing', 94, 'Peoria', 'Illinois', '61605', 0, '40.6775', '-89.6263');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (750, '4 Acker Junction', null, 'Baton Rouge', 'Louisiana', '70894', 1, '30.5159', '-91.0804');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (751, '64 North Alley', 26, 'Boulder', 'Colorado', '80328', 1, '40.0878', '-105.3735');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (752, '869 Anderson Point', 41, 'Huntington', 'West Virginia', '25721', 0, '38.4134', '-82.2774');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (753, '41 Fremont Parkway', 78, 'Dallas', 'Texas', '75277', 1, '32.7673', '-96.7776');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (754, '1 Bluestem Drive', 59, 'Portland', 'Oregon', '97221', 1, '45.4918', '-122.7267');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (755, '5 Straubel Plaza', null, 'Charleston', 'West Virginia', '25336', 0, '38.2968', '-81.5547');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (756, '36 Superior Circle', 15, 'Omaha', 'Nebraska', '68164', 1, '41.2955', '-96.1008');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (757, '07 Northview Crossing', 19, 'Austin', 'Texas', '78721', 0, '30.2721', '-97.6868');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (758, '7 Cambridge Center', 53, 'Lincoln', 'Nebraska', '68505', 1, '40.8247', '-96.6252');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (759, '6872 Debra Avenue', 54, 'Tacoma', 'Washington', '98464', 1, '47.0662', '-122.1132');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (760, '156 Duke Crossing', 83, 'Jefferson City', 'Missouri', '65105', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (761, '591 Maywood Way', null, 'Phoenix', 'Arizona', '85030', 0, '33.2765', '-112.1872');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (762, '345 Talisman Street', 97, 'Riverside', 'California', '92513', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (763, '09 International Parkway', 45, 'Bakersfield', 'California', '93386', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (764, '23987 Ridgeview Place', 16, 'Pocatello', 'Idaho', '83206', 0, '42.6395', '-112.3138');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (765, '3564 Pleasure Park', 44, 'Marietta', 'Georgia', '30061', 0, '33.9328', '-84.556');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (766, '0608 Pierstorff Plaza', null, 'Naperville', 'Illinois', '60567', 0, '41.8397', '-88.0887');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (767, '0 Moland Point', null, 'Des Moines', 'Iowa', '50936', 0, '41.6727', '-93.5722');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (768, '0069 Mifflin Avenue', 95, 'Allentown', 'Pennsylvania', '18105', 0, '40.6934', '-75.4712');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (769, '0856 Lakewood Gardens Crossing', 45, 'Aurora', 'Colorado', '80015', 0, '39.6255', '-104.7874');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (770, '1 Menomonie Point', 42, 'Kent', 'Washington', '98042', 0, '47.368', '-122.1206');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (771, '7490 Kensington Hill', 17, 'Los Angeles', 'California', '90094', 1, '33.9754', '-118.417');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (772, '7 Fuller Road', 90, 'Panama City', 'Florida', '32405', 1, '30.1949', '-85.6727');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (773, '86716 Northfield Hill', 56, 'Fort Worth', 'Texas', '76178', 1, '32.7714', '-97.2915');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (774, '10 Glendale Place', null, 'Springfield', 'Illinois', '62776', 0, '39.7495', '-89.606');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (775, '34755 Calypso Point', 64, 'Greeley', 'Colorado', '80638', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (776, '59 Hanover Terrace', 71, 'New York City', 'New York', '10292', 0, '40.7808', '-73.9772');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (777, '4966 Jenna Point', null, 'Cincinnati', 'Ohio', '45999', 0, '39.1668', '-84.5382');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (778, '305 Bunting Road', 35, 'Milwaukee', 'Wisconsin', '53285', 0, '43.0174', '-87.5697');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (779, '41186 Buena Vista Center', 38, 'Berkeley', 'California', '94705', 1, '37.8571', '-122.25');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (780, '736 Bartillon Trail', 48, 'Columbus', 'Georgia', '31998', 1, '32.491', '-84.8741');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (781, '6121 Dryden Parkway', 100, 'Columbia', 'South Carolina', '29225', 1, '34.006', '-80.9708');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (782, '38 Esch Parkway', 62, 'Santa Cruz', 'California', '95064', 0, '36.9959', '-122.0578');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (783, '9 Bunker Hill Drive', 31, 'Springfield', 'Illinois', '62764', 0, '39.7495', '-89.606');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (784, '1447 Hovde Plaza', 13, 'Sioux Falls', 'South Dakota', '57105', 1, '43.524', '-96.7341');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (785, '32 Bashford Junction', 55, 'Des Moines', 'Iowa', '50369', 1, '41.6727', '-93.5722');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (786, '99 Porter Road', 98, 'Kansas City', 'Missouri', '64179', 0, '39.035', '-94.3567');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (787, '822 Forster Court', null, 'Beaufort', 'South Carolina', '29905', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (788, '98382 Hagan Point', 72, 'Cleveland', 'Ohio', '44130', 0, '41.3826', '-81.7964');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (789, '409 Ryan Circle', 49, 'Sarasota', 'Florida', '34238', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (790, '645 Fisk Avenue', 21, 'Chicago', 'Illinois', '60624', 0, '41.8804', '-87.7223');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (791, '2803 Old Shore Avenue', 76, 'Ogden', 'Utah', '84409', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (792, '51894 Union Place', 51, 'Saint Louis', 'Missouri', '63169', 1, '38.6531', '-90.2435');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (793, '80732 Mockingbird Crossing', null, 'Shawnee Mission', 'Kansas', '66205', 0, '39.0312', '-94.6308');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (794, '148 Welch Road', 38, 'Grand Rapids', 'Michigan', '49518', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (795, '4 Starling Plaza', 8, 'Bradenton', 'Florida', '34205', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (796, '97 Shopko Point', 20, 'Atlanta', 'Georgia', '30328', 1, '33.9335', '-84.3958');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (797, '90 Ridge Oak Hill', null, 'Las Vegas', 'Nevada', '89155', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (798, '7510 Maple Wood Plaza', null, 'Petaluma', 'California', '94975', 1, '38.4631', '-122.99');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (799, '5 Arkansas Alley', 33, 'Syracuse', 'New York', '13210', 1, '43.0354', '-76.1282');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (800, '636 Pearson Circle', 54, 'Saint Louis', 'Missouri', '63116', 0, '38.5814', '-90.2625');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (801, '43 Iowa Trail', 8, 'Delray Beach', 'Florida', '33448', 1, '26.6459', '-80.4303');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (802, '34637 Swallow Plaza', 73, 'Saint Petersburg', 'Florida', '33705', 0, '27.7391', '-82.6435');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (803, '4113 Blackbird Drive', 57, 'Boulder', 'Colorado', '80328', 1, '40.0878', '-105.3735');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (804, '653 Rusk Court', 15, 'Canton', 'Ohio', '44705', 0, '40.8259', '-81.3399');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (805, '2478 Truax Junction', 99, 'Lexington', 'Kentucky', '40515', 0, '37.9651', '-84.4708');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (806, '4 Arrowood Lane', 11, 'Columbia', 'South Carolina', '29203', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (807, '5950 Maple Wood Center', 89, 'Miami', 'Florida', '33134', 0, '25.768', '-80.2714');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (808, '875 Utah Circle', null, 'Olympia', 'Washington', '98506', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (809, '678 Comanche Place', 7, 'Atlanta', 'Georgia', '30323', 1, '33.8444', '-84.474');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (810, '8 Miller Lane', null, 'Raleigh', 'North Carolina', '27690', 1, '35.7977', '-78.6253');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (811, '755 Brickson Park Crossing', null, 'Biloxi', 'Mississippi', '39534', 1, '30.4067', '-88.9211');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (812, '42158 John Wall Terrace', null, 'Alexandria', 'Virginia', '22313', 1, '38.8158', '-77.09');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (813, '0 Messerschmidt Way', null, 'Greensboro', 'North Carolina', '27415', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (814, '7 Eagle Crest Lane', 69, 'Jackson', 'Mississippi', '39236', 1, '32.3113', '-90.3972');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (815, '93783 Prairie Rose Avenue', 40, 'Houston', 'Texas', '77201', 1, '29.834', '-95.4342');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (816, '5244 Jenna Place', 99, 'Gatesville', 'Texas', '76598', 0, '31.3902', '-97.7993');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (817, '7554 Hooker Court', 82, 'Houston', 'Texas', '77201', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (818, '615 Haas Park', null, 'Brooklyn', 'New York', '11231', 0, '40.6794', '-74.0014');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (819, '75237 David Place', null, 'Saint Louis', 'Missouri', '63110', 1, '38.6185', '-90.2564');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (820, '50015 Dawn Alley', 77, 'Fort Lauderdale', 'Florida', '33315', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (821, '98 Mockingbird Way', 46, 'Mount Vernon', 'New York', '10557', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (822, '09770 Ramsey Crossing', 40, 'Boise', 'Idaho', '83705', 1, '43.5851', '-116.2191');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (823, '881 1st Terrace', 19, 'Birmingham', 'Alabama', '35279', 1, '33.5446', '-86.9292');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (824, '7 Mesta Avenue', 55, 'Saint Petersburg', 'Florida', '33710', 1, '27.7898', '-82.7243');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (825, '687 Texas Plaza', 49, 'Watertown', 'Massachusetts', '02472', 0, '42.37', '-71.1773');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (826, '2414 Bunker Hill Parkway', 100, 'Amarillo', 'Texas', '79188', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (827, '046 Luster Terrace', 55, 'Saint Petersburg', 'Florida', '33731', 1, '27.8918', '-82.7248');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (828, '5710 Kropf Road', 92, 'Washington', 'District of Columbia', '20215', 1, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (829, '3508 Nobel Center', 22, 'Winston Salem', 'North Carolina', '27105', 0, '36.144', '-80.2376');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (830, '0152 Welch Park', 86, 'Washington', 'District of Columbia', '20238', 1, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (831, '6 Everett Street', 57, 'Redwood City', 'California', '94064', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (832, '06 Carpenter Crossing', 87, 'Huntsville', 'Alabama', '35810', 1, '34.7784', '-86.6091');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (833, '94 Northridge Lane', 1, 'San Jose', 'California', '95118', 1, '37.2568', '-121.8896');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (834, '6 Lawn Street', 35, 'Las Vegas', 'Nevada', '89140', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (835, '90043 Gulseth Avenue', 99, 'Columbus', 'Ohio', '43284', 0, '39.969', '-83.0114');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (836, '38468 Fieldstone Center', 41, 'Waterbury', 'Connecticut', '06705', 0, '41.5503', '-72.9963');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (837, '474 Crescent Oaks Terrace', null, 'Washington', 'District of Columbia', '20073', 0, '38.897', '-77.0251');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (838, '17 Erie Place', null, 'Virginia Beach', 'Virginia', '23459', 0, '36.9216', '-76.0171');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (839, '6365 Badeau Drive', 90, 'Austin', 'Texas', '78732', 0, '30.3752', '-97.9007');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (840, '3143 Badeau Road', 44, 'Humble', 'Texas', '77346', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (841, '50 Monterey Trail', 33, 'Austin', 'Texas', '78778', 0, '30.3264', '-97.7713');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (842, '670 Sunfield Hill', 41, 'Atlanta', 'Georgia', '30323', 1, '33.8444', '-84.474');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (843, '0929 Portage Avenue', 43, 'Detroit', 'Michigan', '48258', 1, '42.2399', '-83.1508');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (844, '88 Thompson Pass', 96, 'San Francisco', 'California', '94137', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (845, '2156 Little Fleur Terrace', 31, 'Madison', 'Wisconsin', '53710', 1, '43.0696', '-89.4239');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (846, '04222 Express Junction', null, 'Delray Beach', 'Florida', '33448', 0, '26.6459', '-80.4303');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (847, '6033 Sauthoff Lane', 97, 'Stockton', 'California', '95205', 1, '37.9625', '-121.2624');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (848, '27416 Fieldstone Street', 89, 'Houston', 'Texas', '77015', 0, '29.7853', '-95.1852');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (849, '77 Acker Point', null, 'Houston', 'Texas', '77206', 1, '29.834', '-95.4342');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (850, '3 Fairfield Place', 6, 'Minneapolis', 'Minnesota', '55407', 0, '44.9378', '-93.2545');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (851, '48360 Fairview Plaza', null, 'Honolulu', 'Hawaii', '96825', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (852, '23 Anthes Road', null, 'Kansas City', 'Missouri', '64190', 0, '39.3432', '-94.8516');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (853, '86 Barnett Place', null, 'Bakersfield', 'California', '93305', 1, '35.3855', '-118.986');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (854, '67 Bartillon Plaza', 9, 'Denver', 'Colorado', '80249', 1, '39.7783', '-104.7556');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (855, '4 Waywood Hill', 96, 'El Paso', 'Texas', '88530', 1, '31.6948', '-106.3');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (856, '6057 Katie Crossing', 51, 'Memphis', 'Tennessee', '38114', 0, '35.0981', '-89.9825');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (857, '490 Meadow Ridge Hill', 88, 'Hayward', 'California', '94544', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (858, '44 Elmside Parkway', 93, 'Melbourne', 'Florida', '32919', 0, '28.3067', '-80.6862');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (859, '115 Welch Road', 70, 'Minneapolis', 'Minnesota', '55428', 1, '45.0632', '-93.3811');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (860, '716 Cody Plaza', 81, 'Chico', 'California', '95973', 0, '39.8032', '-121.8673');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (861, '1 Cambridge Pass', 23, 'Knoxville', 'Tennessee', '37995', 1, '35.9901', '-83.9622');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (862, '6420 Montana Terrace', 46, 'Des Moines', 'Iowa', '50936', 1, '41.6727', '-93.5722');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (863, '1422 Iowa Crossing', 42, 'Fort Myers', 'Florida', '33906', 0, '26.5529', '-81.9486');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (864, '7062 Saint Paul Court', 31, 'Richmond', 'Virginia', '23203', 1, '37.5593', '-77.4471');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (865, '2 Cherokee Center', 69, 'Erie', 'Pennsylvania', '16565', 0, '42.1827', '-80.0649');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (866, '9655 Rusk Plaza', 96, 'Spring', 'Texas', '77388', 0, '30.0505', '-95.4695');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (867, '394 Truax Terrace', 49, 'Richmond', 'Virginia', '23260', 1, '37.5242', '-77.4932');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (868, '3 Eastlawn Road', null, 'Fort Worth', 'Texas', '76192', 1, '32.7714', '-97.2915');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (869, '64888 Reindahl Pass', null, 'Merrifield', 'Virginia', '22119', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (870, '0529 Barby Point', 77, 'Las Vegas', 'Nevada', '89105', 1, '36.086', '-115.1471');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (871, '26 Anniversary Avenue', null, 'Oakland', 'California', '94611', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (872, '181 Fuller Parkway', 50, 'North Las Vegas', 'Nevada', '89036', 0, '35.9279', '-114.9721');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (873, '32820 Towne Center', null, 'Houston', 'Texas', '77260', 0, '29.7687', '-95.3867');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (874, '4 Maywood Park', 53, 'Huntington', 'West Virginia', '25770', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (875, '37162 Susan Junction', 71, 'Columbia', 'Missouri', '65211', 0, '38.9033', '-92.1022');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (876, '01 Westerfield Hill', 29, 'Wilmington', 'Delaware', '19892', 1, '39.5645', '-75.597');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (877, '9 Merrick Junction', null, 'Washington', 'District of Columbia', '20404', 0, '38.8992', '-77.0089');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (878, '948 Troy Circle', 92, 'New York City', 'New York', '10170', 1, '40.7526', '-73.9755');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (879, '7 Moose Parkway', 72, 'Washington', 'District of Columbia', '20046', 1, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (880, '8141 Fuller Pass', 23, 'Sacramento', 'California', '95865', 0, '38.596', '-121.3978');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (881, '0 Sundown Pass', 92, 'Washington', 'District of Columbia', '20425', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (882, '283 Colorado Way', null, 'Lexington', 'Kentucky', '40581', 0, '38.0283', '-84.4715');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (883, '89444 Hooker Lane', 84, 'Brooklyn', 'New York', '11225', 1, '40.6628', '-73.9546');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (884, '22 Oakridge Lane', 32, 'Winston Salem', 'North Carolina', '27150', 1, '36.0275', '-80.2073');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (885, '5691 Del Mar Circle', null, 'Baltimore', 'Maryland', '21216', 1, '39.3093', '-76.6699');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (886, '334 Eagan Road', 45, 'Yakima', 'Washington', '98907', 1, '46.6288', '-120.574');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (887, '53 Carberry Street', 86, 'Lincoln', 'Nebraska', '68517', 0, '40.9317', '-96.6045');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (888, '85 Wayridge Point', 44, 'Santa Monica', 'California', '90410', 1, '33.7866', '-118.2987');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (889, '64929 Maple Park', null, 'Houston', 'Texas', '77260', 0, '29.7687', '-95.3867');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (890, '8 Heath Circle', null, 'Chicago', 'Illinois', '60691', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (891, '54392 Oneill Center', null, 'Los Angeles', 'California', '90087', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (892, '0324 Upham Terrace', 74, 'Las Vegas', 'Nevada', '89145', 1, '36.1693', '-115.2828');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (893, '0 Trailsway Lane', 14, 'Miami', 'Florida', '33124', 1, '25.5584', '-80.4582');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (894, '0 Carpenter Alley', 100, 'Dallas', 'Texas', '75372', 1, '32.7673', '-96.7776');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (895, '08376 Forster Place', null, 'Dallas', 'Texas', '75260', 0, '32.7673', '-96.7776');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (896, '8712 Sachtjen Way', null, 'Garden Grove', 'California', '92844', 0, '33.7661', '-117.9738');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (897, '7 American Ash Lane', 73, 'Corpus Christi', 'Texas', '78475', 0, '27.777', '-97.4632');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (898, '4893 Westport Trail', 72, 'Arlington', 'Virginia', '22234', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (899, '581 Pawling Hill', null, 'Madison', 'Wisconsin', '53785', 0, '43.0696', '-89.4239');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (900, '64 Darwin Trail', 75, 'Tampa', 'Florida', '33686', 1, '27.872', '-82.4388');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (901, '0678 Heath Drive', 64, 'Springfield', 'Illinois', '62794', 0, '39.7495', '-89.606');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (902, '75 Rieder Pass', 45, 'New Orleans', 'Louisiana', '70124', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (903, '6606 Melrose Junction', null, 'Washington', 'District of Columbia', '20442', 1, '38.896', '-77.0177');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (904, '724 Hudson Pass', 36, 'Saint Cloud', 'Minnesota', '56372', 0, '45.5289', '-94.5933');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (905, '3 American Way', 28, 'Grand Rapids', 'Michigan', '49505', 1, '43.012', '-85.6309');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (906, '0 Veith Parkway', 19, 'Colorado Springs', 'Colorado', '80910', 0, '38.8152', '-104.7703');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (907, '305 Drewry Alley', null, 'El Paso', 'Texas', '79945', 1, '31.6948', '-106.3');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (908, '17854 Packers Park', null, 'Lynchburg', 'Virginia', '24515', 0, '37.4009', '-79.1785');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (909, '328 Oakridge Circle', 37, 'Houston', 'Texas', '77005', 1, '29.7179', '-95.4263');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (910, '94 Esch Alley', null, 'Dallas', 'Texas', '75358', 0, '32.7942', '-96.7652');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (911, '540 Homewood Way', 57, 'Augusta', 'Georgia', '30919', 0, '33.386', '-82.091');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (912, '98431 Darwin Way', 59, 'Sioux Falls', 'South Dakota', '57198', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (913, '1864 Summerview Point', 64, 'Wilmington', 'Delaware', '19892', 1, '39.5645', '-75.597');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (914, '5 Trailsway Junction', 41, 'Young America', 'Minnesota', '55551', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (915, '9 Mallory Trail', null, 'El Paso', 'Texas', '88525', 1, '31.6948', '-106.3');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (916, '64 South Center', 47, 'Washington', 'District of Columbia', '20442', 0, '38.896', '-77.0177');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (917, '20 Gina Drive', 2, 'Amarillo', 'Texas', '79159', 1, '35.216', '-102.0714');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (918, '6648 Ilene Terrace', 94, 'Madison', 'Wisconsin', '53705', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (919, '539 Alpine Center', null, 'Atlanta', 'Georgia', '31106', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (920, '33954 Artisan Place', 36, 'Knoxville', 'Tennessee', '37995', 0, '35.9901', '-83.9622');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (921, '43 Maywood Road', 97, 'Newport Beach', 'California', '92662', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (922, '9 Arkansas Place', null, 'Chicago', 'Illinois', '60657', 0, '41.9399', '-87.6528');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (923, '6891 Dovetail Terrace', 1, 'Kalamazoo', 'Michigan', '49048', 1, '42.3189', '-85.5152');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (924, '8 Almo Terrace', null, 'Tacoma', 'Washington', '98481', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (925, '9 Lakewood Gardens Center', 19, 'Springfield', 'Illinois', '62776', 0, '39.7495', '-89.606');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (926, '3 Waxwing Way', 29, 'Orange', 'California', '92668', 0, '33.7867', '-117.8742');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (927, '943 Service Parkway', 88, 'Hyattsville', 'Maryland', '20784', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (928, '289 Village Green Avenue', 51, 'Midland', 'Michigan', '48670', 0, '43.6375', '-84.2568');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (929, '319 Crowley Drive', 98, 'Akron', 'Ohio', '44315', 0, '41.028', '-81.4632');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (930, '21306 Pleasure Center', null, 'Dallas', 'Texas', '75287', 1, '33.0005', '-96.8314');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (931, '7 1st Parkway', null, 'Louisville', 'Kentucky', '40205', 0, '38.2222', '-85.6885');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (932, '028 Lyons Crossing', null, 'Washington', 'District of Columbia', '20310', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (933, '60 Bunting Junction', 82, 'Boulder', 'Colorado', '80305', 1, '39.9807', '-105.2531');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (934, '86 Merrick Place', 37, 'Phoenix', 'Arizona', '85030', 1, '33.2765', '-112.1872');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (935, '51012 Barby Drive', null, 'Mesa', 'Arizona', '85215', 0, '33.4707', '-111.7188');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (936, '6128 Loomis Place', 25, 'Ventura', 'California', '93005', 0, '34.0324', '-119.1343');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (937, '176 Algoma Circle', null, 'Dallas', 'Texas', '75397', 0, '32.7673', '-96.7776');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (938, '973 Maple Parkway', 99, 'Des Moines', 'Iowa', '50330', 1, '41.6727', '-93.5722');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (939, '639 Spohn Drive', 36, 'Springfield', 'Massachusetts', '01114', 1, '42.1707', '-72.6048');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (940, '020 School Way', null, 'Topeka', 'Kansas', '66699', 1, '39.0429', '-95.7697');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (941, '401 Carpenter Center', 1, 'Milwaukee', 'Wisconsin', '53277', 0, '43.0389', '-87.9024');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (942, '27311 Vera Junction', 75, 'Fresno', 'California', '93726', 0, '36.7949', '-119.7604');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (943, '77106 North Court', 46, 'Washington', 'District of Columbia', '20591', 0, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (944, '57 Dakota Terrace', 84, 'Norfolk', 'Virginia', '23520', 1, '36.9312', '-76.2397');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (945, '4 Old Gate Alley', 61, 'Sacramento', 'California', '94230', 0, '38.3774', '-121.4444');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (946, '74 Algoma Pass', 82, 'Nashville', 'Tennessee', '37240', 1, '36.1866', '-86.7852');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (947, '3 Arapahoe Crossing', 34, 'Greeley', 'Colorado', '80638', 1, '40.5009', '-104.315');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (948, '32782 Myrtle Court', null, 'Portland', 'Oregon', '97216', 1, '45.5137', '-122.5569');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (949, '911 Banding Circle', 18, 'San Antonio', 'Texas', '78255', 0, '29.6701', '-98.6873');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (950, '50995 Maywood Parkway', 21, 'Shreveport', 'Louisiana', '71130', 0, '32.6076', '-93.7526');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (951, '5 Arapahoe Plaza', 78, 'Alexandria', 'Virginia', '22309', 1, '38.7192', '-77.1073');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (952, '22106 Summerview Park', 71, 'Phoenix', 'Arizona', '85015', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (953, '4045 Texas Terrace', 37, 'Clearwater', 'Florida', '34629', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (954, '74 Transport Crossing', 32, 'Buffalo', 'New York', '14225', 1, '42.9255', '-78.7481');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (955, '23963 Mendota Circle', null, 'Oxnard', 'California', '93034', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (956, '39 Schiller Park', 34, 'San Antonio', 'Texas', '78255', 1, '29.6701', '-98.6873');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (957, '1020 Warbler Junction', 56, 'Pensacola', 'Florida', '32526', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (958, '73106 Prairieview Hill', 95, 'Sarasota', 'Florida', '34233', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (959, '648 Ryan Junction', 83, 'Lexington', 'Kentucky', '40586', 0, '38.0283', '-84.4715');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (960, '4 Nevada Point', 31, 'Portsmouth', 'New Hampshire', '03804', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (961, '8 Granby Park', 77, 'Saint Cloud', 'Minnesota', '56398', 0, '45.5289', '-94.5933');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (962, '68362 Knutson Parkway', 25, 'Dulles', 'Virginia', '20189', 1, '39.009', '-77.4422');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (963, '464 Loomis Center', 82, 'Kansas City', 'Kansas', '66105', 0, '39.085', '-94.6356');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (964, '644 Kipling Court', null, 'Huntington', 'West Virginia', '25775', 0, '38.4134', '-82.2774');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (965, '83600 Melvin Point', 10, 'Lexington', 'Kentucky', '40515', 0, '37.9651', '-84.4708');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (966, '7671 Reindahl Center', 83, 'New Orleans', 'Louisiana', '70183', 1, '29.6779', '-90.0901');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (967, '0 New Castle Terrace', 62, 'Houston', 'Texas', '77250', 0, '29.7629', '-95.3629');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (968, '46961 Almo Court', 70, 'Washington', 'District of Columbia', '20220', 0, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (969, '7187 Hanson Center', 72, 'Tampa', 'Florida', '33694', 0, '27.872', '-82.4388');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (970, '41494 Green Ridge Street', 87, 'Amarillo', 'Texas', '79182', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (971, '628 Farragut Trail', 66, 'Helena', 'Montana', '59623', 0, '46.5901', '-112.0402');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (972, '90 Maryland Circle', 47, 'Grand Forks', 'North Dakota', '58207', 1, '47.9335', '-97.3944');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (973, '8 High Crossing Crossing', 14, 'Rochester', 'New York', '14609', 0, '43.174', '-77.5637');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (974, '155 Russell Park', 36, 'San Francisco', 'California', '94132', 1, '37.7211', '-122.4754');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (975, '56273 Fair Oaks Road', null, 'Fresno', 'California', '93740', 0, '36.7464', '-119.6397');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (976, '2 Dapin Center', 71, 'Sacramento', 'California', '95828', 1, '38.4826', '-121.4006');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (977, '03423 Hansons Park', null, 'Honolulu', 'Hawaii', '96845', 0, '21.3278', '-157.8294');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (978, '548 Atwood Drive', null, 'San Luis Obispo', 'California', '93407', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (979, '8 Muir Parkway', 63, 'Lubbock', 'Texas', '79415', 0, '33.6021', '-101.876');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (980, '60351 Manufacturers Pass', 10, 'Young America', 'Minnesota', '55564', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (981, '1188 Randy Point', 13, 'Mount Vernon', 'New York', '10557', 1, '41.119', '-73.733');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (982, '460 Schurz Plaza', 73, 'Los Angeles', 'California', '90101', 1, '33.7866', '-118.2987');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (983, '91469 Kinsman Lane', 15, 'Ridgely', 'Maryland', '21684', 0, '38.8893', '-75.8612');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (984, '1 Continental Way', 11, 'Springfield', 'Illinois', '62705', 0, '39.7495', '-89.606');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (985, '9668 Calypso Way', 54, 'Columbia', 'South Carolina', '29225', 1, '34.006', '-80.9708');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (986, '3 Grasskamp Circle', 6, 'Lexington', 'Kentucky', '40576', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (987, '633 Erie Trail', 42, 'Portsmouth', 'New Hampshire', '03804', 0, '43.0059', '-71.0132');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (988, '98 Tennyson Lane', 3, 'Miami', 'Florida', '33190', 0, '25.5593', '-80.3483');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (989, '75 Magdeline Plaza', 63, 'Monticello', 'Minnesota', '55590', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (990, '9 Packers Road', 96, 'Ogden', 'Utah', '84403', 0, '41.1894', '-111.9489');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (991, '750 Melby Hill', 99, 'Chandler', 'Arizona', '85246', 1, '33.2765', '-112.1872');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (992, '10 Weeping Birch Trail', null, 'Buffalo', 'New York', '14210', 0, '42.8614', '-78.8206');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (993, '6 Magdeline Court', 77, 'Tucson', 'Arizona', '85710', 1, '32.2138', '-110.824');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (994, '598 Schmedeman Drive', 60, 'Washington', 'District of Columbia', '20337', 0, '38.8933', '-77.0146');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (995, '0646 John Wall Crossing', 43, 'Tulsa', 'Oklahoma', '74184', 1, '36.1398', '-96.0297');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (996, '54951 Hanson Parkway', 24, 'Colorado Springs', 'Colorado', '80920', 0, '38.9497', '-104.767');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (997, '0450 Mayfield Park', 89, 'New York City', 'New York', '10029', 1, '40.7918', '-73.9448');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (998, '5 Tennessee Way', null, 'Lansing', 'Michigan', '48912', 0, '42.7371', '-84.5244');
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (999, '290 Pepper Wood Parkway', null, 'North Hollywood', 'California', '91606', null, null, null);
insert into Sabio_Addresses (id, LineOne, SuiteNumber, City, State, PostalCode, IsActive, Lat, Long) values (1000, '66 Spaight Hill', 90, 'Jamaica', 'New York', '11480', 0, '40.6914', '-73.8061');

SET IDENTITY_INSERT dbo.Sabio_Addresses OFF








/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_Update]    Script Date: 12/12/2018 1:36:16 AM ******/
DROP PROCEDURE [dbo].[Sabio_Addresses_Update]
GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_SelectRandom50]    Script Date: 12/12/2018 1:36:16 AM ******/
DROP PROCEDURE [dbo].[Sabio_Addresses_SelectRandom50]
GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_SelectById]    Script Date: 12/12/2018 1:36:16 AM ******/
DROP PROCEDURE [dbo].[Sabio_Addresses_SelectById]
GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_Insert]    Script Date: 12/12/2018 1:36:16 AM ******/
DROP PROCEDURE [dbo].[Sabio_Addresses_Insert]
GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_DeleteById]    Script Date: 12/12/2018 1:36:16 AM ******/
DROP PROCEDURE [dbo].[Sabio_Addresses_DeleteById]
GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_DeleteById]    Script Date: 12/12/2018 1:36:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[Sabio_Addresses_DeleteById]
			@Id int
/*

	declare @Id int = 10
	Execute [dbo].[Sabio_Addresses_DeleteById] @Id

*/

as
BEGIN

	  DELETE
	  FROM [dbo].[Sabio_Addresses]
	  Where Id = @Id

END



GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_Insert]    Script Date: 12/12/2018 1:36:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Sabio_Addresses_Insert]
			@Id int OUTPUT,
			@LineOne nvarchar(50),
			@SuiteNumber int,
			@City nvarchar(50),
			@State nvarchar(50),
			@PostalCode nvarchar(50),
			@IsActive bit,
			@Lat float,
			@Long float
as

BEGIN




	INSERT INTO [dbo].[Sabio_Addresses]
           ([LineOne]
           ,[SuiteNumber]
           ,[City]
           ,[State]
           ,[PostalCode]
           ,[IsActive]
           ,[Lat]
           ,[Long])
     VALUES
           (
		   @LineOne	
		   ,@SuiteNumber
		   ,@City		
		   ,@State		
		   ,@PostalCode	
		   ,@IsActive	
		   ,@Lat		
		   ,@Long	
		   )

	SET @Id = SCOPE_IDENTITY()





END


GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_SelectById]    Script Date: 12/12/2018 1:36:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[Sabio_Addresses_SelectById]
			@Id int
/*

	declare @Id int = 10
	Execute [dbo].[Sabio_Addresses_SelectById] @Id

*/

as
BEGIN

	SELECT 
	      [Id]
		  ,[LineOne]
		  ,[SuiteNumber]
		  ,[City]
		  ,[State]
		  ,[PostalCode]
		  ,[IsActive]
		  ,[Lat]
		  ,[Long]
	  FROM [dbo].[Sabio_Addresses]
	  Where Id = @Id

END



GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_SelectRandom50]    Script Date: 12/12/2018 1:36:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[Sabio_Addresses_SelectRandom50]

/*

	Execute [dbo].[Sabio_Addresses_SelectRandom50]

*/

as
BEGIN

	SELECT top 50 
	      [Id]
		  ,[LineOne]
		  ,[SuiteNumber]
		  ,[City]
		  ,[State]
		  ,[PostalCode]
		  ,[IsActive]
		  ,[Lat]
		  ,[Long]
	  FROM [dbo].[Sabio_Addresses]
	  Order By NEWID()

END



GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_Update]    Script Date: 12/12/2018 1:36:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[Sabio_Addresses_Update]
			@Id int,
			@LineOne nvarchar(50),
			@SuiteNumber int,
			@City nvarchar(50),
			@State nvarchar(50),
			@PostalCode nvarchar(50),
			@IsActive bit,
			@Lat float,
			@Long float
as

BEGIN

	UPDATE [dbo].[Sabio_Addresses]
	   SET [LineOne]		= @LineOne
		  ,[SuiteNumber]	= @SuiteNumber
		  ,[City]			= @City
		  ,[State]			= @State
		  ,[PostalCode]		= @PostalCode
		  ,[IsActive]		= @IsActive
		  ,[Lat]			= @Lat
		  ,[Long]			= @Long
	 WHERE Id = @Id


END


GO
