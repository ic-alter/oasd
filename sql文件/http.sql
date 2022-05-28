/*
Navicat MySQL Data Transfer

Source Server         : baota
Source Server Version : 50650
Source Host           : 8.130.103.35:3306
Source Database       : http

Target Server Type    : MYSQL
Target Server Version : 50650
File Encoding         : 65001

Date: 2022-05-28 15:22:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for artists
-- ----------------------------
DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists` (
  `ArtistID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT 'M',
  `YearOfBirth` int(11) DEFAULT '0',
  `YearOfDeath` int(11) DEFAULT '0',
  `Details` longtext,
  `ArtistLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ArtistID`),
  KEY `ArtistID` (`ArtistID`),
  KEY `LastName` (`LastName`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of artists
-- ----------------------------
INSERT INTO `artists` VALUES ('1', 'Pablo', 'Picasso', 'Spain', 'M', '1881', '1973', 'Pablo Diego José Francisco de Paula Juan Nepomuceno María de los Remedios Cipriano de la Santísima Trinidad Ruiz y Picasso known as Pablo Ruiz Picasso was a Spanish painter, draughtsman, and sculptor who lived most of his life in France. He is widely known for co-founding the Cubist movement and for the wide variety of styles that he helped develop and explore. Among his most famous works are the proto-Cubist Les Demoiselles d\'Avignon (1907) and Guernica (1937), a portrayal of the German bombing of Guernica during the Spanish Civil War.', 'http://en.wikipedia.org/wiki/Picasso');
INSERT INTO `artists` VALUES ('2', 'Henri', 'Matisse', 'France', 'M', '1869', '1954', 'Henri Matisse was a French artist, known for his use of colour and his fluid and original draughtsmanship. He was a draughtsman, printmaker, and sculptor, but is known primarily as a painter. Matisse is commonly regarded, along with Picasso and Marcel Duchamp, as one of the three artists who helped to define the revolutionary developments in the plastic arts in the opening decades of the 20th century, responsible for significant developments in painting and sculpture. Although he was initially labelled a Fauve (wild beast), by the 1920s he was increasingly hailed as an upholder of the classical tradition in French painting. His mastery of the expressive language of colour and drawing, displayed in a body of work spanning over a half-century, won him recognition as a leading figure in modern art', 'http://en.wikipedia.org/wiki/Matisse');
INSERT INTO `artists` VALUES ('5', 'Jacques-Louis', 'David', 'France', 'M', '1748', '1825', 'Jacques-Louis David was a French painter in the Neoclassical style, considered to be the preeminent painter of the era. In the 1780s his cerebral brand of history painting marked a change in taste away from Rococo frivolity toward a classical austerity and severity, heightened feeling chiming with the moral climate of the final years of the Ancien Régime.\r\nDavid later became an active supporter of the French Revolution and friend of Maximilien Robespierre (1758–1794), and was effectively a dictator of the arts under the French Republic. Imprisoned after Robespierre\'s fall from power, he aligned himself with yet another political regime upon his release, that of Napoleon I. It was at this time that he developed his Empire style, notable for its use of warm Venetian colours. David had a huge number of pupils, making him the strongest influence in French art of the early 19th century, especially academic Salon painting.', 'http://en.wikipedia.org/wiki/Jacques-Louis_David');
INSERT INTO `artists` VALUES ('6', 'Jean-Auguste-Dominique', 'Ingres', 'France', 'M', '1780', '1867', 'Jean-Auguste-Dominique Ingres was a French Neoclassical painter. Although he considered himself to be a painter of history in the tradition of Nicolas Poussin and Jacques-Louis David, by the end of his life it was Ingres\'s portraits, both painted and drawn, that were recognized as his greatest legacy.', 'http://en.wikipedia.org/wiki/Ingres');
INSERT INTO `artists` VALUES ('7', 'Eugene', 'Delacroix', 'France', 'M', '1798', '1863', 'Eugène Delacroix was a French Romantic artist regarded from the outset of his career as the leader of the French Romantic school. Delacroix\'s use of expressive brushstrokes and his study of the optical effects of colour profoundly shaped the work of the Impressionists, while his passion for the exotic inspired the artists of the Symbolist movement. A fine lithographer, Delacroix illustrated various works of William Shakespeare, the Scottish writer Walter Scott and the German writer Johann Wolfgang von Goethe.', 'http://en.wikipedia.org/wiki/Eug%C3%A8ne_Delacroix');
INSERT INTO `artists` VALUES ('8', 'Francisco', 'Goya', 'Spain', 'M', '1746', '1828', 'Francisco José de Goya y Lucientes was a Spanish romantic painter and printmaker regarded both as the last of the Old Masters and the first of the moderns. Goya was a court painter to the Spanish Crown, and through his works was both a commentator on and chronicler of his era. The subversive and imaginative element in his art, as well as his bold handling of paint, provided a model for the work of later generations of artists, notably Manet, Picasso and Francis Bacon.', 'http://en.wikipedia.org/wiki/Goya');
INSERT INTO `artists` VALUES ('10', 'Gustave', 'Courbet', 'France', 'M', '1818', '1877', 'Jean Désiré Gustave Courbet was a French painter who led the Realist movement in 19th-century French painting. The Realist movement bridged the Romantic movement (characterized by the paintings of Théodore Géricault and Eugène Delacroix), with the Barbizon School and the Impressionists. Courbet occupies an important place in 19th century French painting as an innovator and as an artist willing to make bold social commentary in his work.', 'http://en.wikipedia.org/wiki/Courbet');
INSERT INTO `artists` VALUES ('12', 'Edouard', 'Manet', 'France', 'M', '1832', '1883', 'Édouard Manet was a French painter. One of the first 19th-century artists to approach modern-life subjects, he was a pivotal figure in the transition from Realism to Impressionism.', 'http://en.wikipedia.org/wiki/Manet');
INSERT INTO `artists` VALUES ('13', 'James Abbott', 'Whistler', 'USA', 'M', '1834', '1903', 'James Abbott McNeill Whistler was an American-born, British-based artist. Averse to sentimentality and moral allusion in painting, he was a leading proponent of the credo \"art for art\'s sake\". His famous signature for his paintings was in the shape of a stylized butterfly possessing a long stinger for a tail. The symbol was apt, for it combined both aspects of his personality—his art was characterized by a subtle delicacy, while his public persona was combative. Finding a parallel between painting and music, Whistler titled many of his paintings \"arrangements\", \"harmonies\", and \"nocturnes\", emphasizing the primacy of tonal harmony. His most famous painting is Whistler\'s Mother (1871), the revered and oft parodied portrait of motherhood. Whistler influenced the art world and the broader culture of his time with his artistic theories and his friendships with leading artists and writers.', 'http://en.wikipedia.org/wiki/James_Abbott_McNeill_Whistler');
INSERT INTO `artists` VALUES ('14', 'Pierre Auguste', 'Renoir', 'France', 'M', '1841', '1919', 'Pierre-Auguste Renoir was a French artist who was a leading painter in the development of the Impressionist style. As a celebrator of beauty, and especially feminine sensuality, it has been said that \"Renoir is the final representative of a tradition which runs directly from Rubens to Watteau.\"', 'http://en.wikipedia.org/wiki/Renoir');
INSERT INTO `artists` VALUES ('15', 'Edgar', 'Degas', 'France', 'M', '1834', '1917', 'Edgar Degas, born Hilaire-Germain-Edgar De Gas, was a French artist famous for his work in painting, sculpture, printmaking and drawing. He is regarded as one of the founders of Impressionism although he rejected the term, and preferred to be called a realist. A superb draughtsman, he is especially identified with the subject of the dance, and over half of his works depict dancers. These display his mastery in the depiction of movement, as do his racecourse subjects and female nudes. His portraits are notable for their psychological complexity and depiction of human isolation.', 'http://en.wikipedia.org/wiki/Degas');
INSERT INTO `artists` VALUES ('16', 'Mary', 'Cassatt', 'USA', 'F', '1845', '1926', 'Mary Stevenson Cassatt was an American painter and printmaker. She lived much of her adult life in France, where she first befriended Edgar Degas and later exhibited among the Impressionists. Cassatt often created images of the social and private lives of women, with particular emphasis on the intimate bonds between mothers and children.', 'http://en.wikipedia.org/wiki/Mary_Cassatt');
INSERT INTO `artists` VALUES ('17', 'Claude', 'Monet', 'France', 'M', '1840', '1926', 'Claude Monet was a founder of French impressionist painting, and the most consistent and prolific practitioner of the movement\'s philosophy of expressing one\'s perceptions before nature, especially as applied to plein-air landscape painting. The term Impressionism is derived from the title of his painting Impression, Sunrise (Impression, soleil levant).', 'http://en.wikipedia.org/wiki/Claude_Monet');
INSERT INTO `artists` VALUES ('18', 'Paul', 'Gauguin', 'France', 'M', '1848', '1903', 'Eugène Henri Paul Gauguin was a leading French Post-Impressionist artist. He was an important figure in the Symbolist movement as a painter, sculptor, print-maker, ceramist, and writer. His bold experimentation with coloring led directly to the Synthetist style of modern art while his expression of the inherent meaning of the subjects in his paintings, under the influence of the cloisonnist style, paved the way to Primitivism and the return to the pastoral. He was also an influential proponent of wood engraving and woodcuts as art forms.', 'http://en.wikipedia.org/wiki/Gauguin');
INSERT INTO `artists` VALUES ('19', 'Vincent', 'Van Gogh', 'Netherlands', 'M', '1853', '1890', 'Vincent Willem van Gogh was a Dutch post-Impressionist painter whose work, notable for its rough beauty, emotional honesty, and bold color, had a far-reaching influence on 20th-century art. After years of painful anxiety and frequent bouts of mental illness, he died at the age of 37 from a self-inflicted gunshot wound. His work was then known to only a handful of people and appreciated by fewer still.', 'http://en.wikipedia.org/wiki/Van_Gogh');
INSERT INTO `artists` VALUES ('20', 'Georges', 'Seurat', 'France', 'M', '1859', '1891', 'Georges-Pierre Seurat was a French Post-Impressionist painter and draftsman. He is noted for his innovative use of drawing media and for devising a technique of painting known as pointillism. His large-scale work A Sunday Afternoon on the Island of La Grande Jatte (1884–1886), Seurat\'s most famous painting, altered the direction of modern art by initiating Neo-impressionism, and is one of the icons of 19th century painting.', 'http://en.wikipedia.org/wiki/Seurat');
INSERT INTO `artists` VALUES ('21', 'Paul', 'Cezanne', 'France', 'M', '1839', '1906', 'Paul Cézanne was a French artist and Post-Impressionist painter whose work laid the foundations of the transition from the 19th century conception of artistic endeavour to a new and radically different world of art in the 20th century. Cézanne can be said to form the bridge between late 19th century Impressionism and the early 20th century\'s new line of artistic enquiry, Cubism. The line attributed to both Matisse and Picasso that Cézanne \"is the father of us all\" cannot be easily dismissed.', 'http://en.wikipedia.org/wiki/C%C3%A9zanne');
INSERT INTO `artists` VALUES ('24', 'Edvard', 'Munch', 'Norway', 'M', '1863', '1944', 'Edvard Munch was a Norwegian Symbolist painter, printmaker and an important forerunner of expressionist art. His best-known composition, The Scream, is part of a series The Frieze of Life, in which Munch explored the themes of love, fear, death, melancholia, and anxiety.', 'http://en.wikipedia.org/wiki/Edvard_Munch');
INSERT INTO `artists` VALUES ('28', 'Henri', 'Toulouse-Lautrec', 'France', 'M', '1864', '1901', 'Henri Marie Raymond de Toulouse-Lautrec-Monfa or simply Henri de Toulouse-Lautrec was a French painter, printmaker, draughtsman, and illustrator, whose immersion in the colourful and theatrical life of fin de siècle Paris yielded an œuvre of exciting, elegant and provocative images of the modern and sometimes decadent life of those times. Toulouse-Lautrec is known along with Cézanne, Van Gogh, and Gauguin as one of the greatest painters of the Post-Impressionist period. In a 2005 auction at Christie\'s auction house a new record was set when \"La blanchisseuse\", an early painting of a young laundress, sold for $22.4 million U.S.', 'http://en.wikipedia.org/wiki/Toulouse-Lautrec');
INSERT INTO `artists` VALUES ('29', 'Gustav', 'Klimt', 'Austria', 'M', '1862', '1918', 'Gustav Klimt was an Austrian Symbolist painter and one of the most prominent members of the Vienna Secession movement. His major works include paintings, murals, sketches, and other art objects. Klimt\'s primary subject was the female body, and his works are marked by a frank eroticism—nowhere is this more apparent than in his numerous drawings in pencil', 'http://en.wikipedia.org/wiki/Klimt');
INSERT INTO `artists` VALUES ('32', 'Andre', 'Derain', 'France', 'M', '1880', '1919', 'André Derain  was a French artist, painter, sculptor and co-founder of Fauvism with Henri Matisse', 'http://en.wikipedia.org/wiki/Andr%C3%A9_Derain');
INSERT INTO `artists` VALUES ('40', 'Vasily', 'Kandinsky', 'Russia', 'M', '1866', '1944', 'Wassily Wassilyevich Kandinsky was a Russian painter and art theorist. He is credited with painting the first purely-abstract works. Born in Moscow, Kandinsky spent his childhood in Odessa. He enrolled at the University of Moscow, studying law and economics. Successful in his profession—he was offered a professorship (chair of Roman Law) at the University of Dorpat—he began painting studies (life-drawing, sketching and anatomy) at the age of 30.', 'http://en.wikipedia.org/wiki/Kandinsky');
INSERT INTO `artists` VALUES ('41', 'Giacomo', 'Balla', 'Italy', 'M', '1871', '1958', 'Giacomo Balla was an Italian painter.', 'http://en.wikipedia.org/wiki/Giacomo_Balla');
INSERT INTO `artists` VALUES ('45', 'Salvidor', 'Dali', 'Spain', 'M', '1904', '1989', 'Salvador Domènec Felip Jacint Dalí i Domènech, Marquis de Púbol, commonly known as Salvador Dalí was a prominent Spanish Catalan surrealist painter born in Figueres.', 'http://en.wikipedia.org/wiki/Salvador_Dal%C3%AD');
INSERT INTO `artists` VALUES ('49', 'Georgia', 'O\'Keefe', 'USA', 'F', '1887', '1986', 'Georgia Totto O\'Keeffe was an American artist. Born near Sun Prairie, Wisconsin, O\'Keeffe first came to the attention of the New York art community in 1916, several decades after women had gained access to art training in America’s colleges and universities, and before any of its women artists were well known or highly celebrated. Within a decade, she had distinguished herself as one of America\'s most important modern artists, a position she maintained throughout her life. As a result, O’Keeffe not only carved out a significant place for women painters in an area of the American art community that had been exclusive to and is still dominated by men, but also she had become one of America’s most celebrated cultural icons well before her death at age 98 in 1986.', 'http://en.wikipedia.org/wiki/Georgia_O%27Keefe');
INSERT INTO `artists` VALUES ('60', 'Paul', 'Klee', 'Switzerland', 'M', '1879', '1940', 'Paul Klee was born in Münchenbuchsee, Switzerland, and is considered both a German and a Swiss painter. His highly individual style was influenced by movements in art that included expressionism, cubism, and surrealism. He was, as well, a student of orientalism. Klee was a natural draftsman who experimented with and eventually mastered color theory, and wrote extensively about it; his lectures Writings on Form and Design Theory (Schriften zur Form und Gestaltungslehre), published in English as the Paul Klee Notebooks, are considered so important for modern art that they are compared to the importance that Leonardo da Vinci\'s A Treatise on Painting had for Renaissance. He and his colleague, the Russian painter Wassily Kandinsky, both taught at the German Bauhaus school of art, design and architecture. His works reflect his dry humour and his sometimes childlike perspective, his personal moods and beliefs, and his musicality.', 'http://en.wikipedia.org/wiki/Paul_Klee');
INSERT INTO `artists` VALUES ('63', 'Henri', 'Rousseau', 'France', 'M', '1844', '1910', 'Henri Julien Félix Rousseau was a French Post-Impressionist painter in the Naive or Primitive manner. He was also known as Le Douanier (the customs officer), a humorous description of his occupation as a tax collector. Ridiculed during his life, he came to be recognized as a self-taught genius whose works are of high artistic quality.', 'http://en.wikipedia.org/wiki/Henri_Rousseau');
INSERT INTO `artists` VALUES ('64', 'Marc', 'Chagall', 'Russia', 'M', '1887', '1985', 'Marc Chagall was a Belorussian-French artist associated with several major artistic styles and one of the most successful artists of the 20th century. He was an early modernist, and created works in virtually every artistic medium, including painting, book illustrations, stained glass, stage sets, ceramic, tapestries and fine art prints.', 'http://en.wikipedia.org/wiki/Chagall');
INSERT INTO `artists` VALUES ('73', 'Piet', 'Mondrian', 'Netherlands', 'M', '1872', '1944', 'Pieter Cornelis \"Piet\" Mondriaan, after 1912 Mondrian, was a Dutch painter. He was an important contributor to the De Stijl art movement and group, which was founded by Theo van Doesburg. He evolved a non-representational form which he termed Neo-Plasticism. This consisted of white ground, upon which was painted a grid of vertical and horizontal black lines and the three primary colors.', 'http://en.wikipedia.org/wiki/Piet_Mondrian');
INSERT INTO `artists` VALUES ('85', 'Jackson', 'Pollock', 'USA', 'M', '1912', '1959', 'Paul Jackson Pollock , known as Jackson Pollock, was an influential American painter and a major figure in the abstract expressionist movement. During his lifetime, Pollock enjoyed considerable fame and notoriety. He was regarded as a mostly reclusive artist. He had a volatile personality, and struggled with alcoholism for most of his life. In 1945, he married the artist Lee Krasner, who became an important influence on his career and on his legacy.', 'http://en.wikipedia.org/wiki/Jackson_pollock');
INSERT INTO `artists` VALUES ('92', 'Filippo', 'Lippi', 'Italy', 'M', '1406', '1469', 'Filippo Lippi, also called Lippo Lippi, was an Italian painter of the Italian Quattrocento (15th century).', 'http://en.wikipedia.org/wiki/Filippo_Lippi');
INSERT INTO `artists` VALUES ('93', 'Piero della', 'Francesca', 'Italy', 'M', '1412', '1492', '<strong>Piero della Francesca</strong> was a painter of the Early Renaissance. As testified by Giorgio Vasari in his <em>Lives of the Artists</em>, to contemporaries he was also known as a mathematician and geometer. Nowadays Piero della Francesca is chiefly appreciated for his art. His painting was characterized by its serene humanism, its use of geometric forms and perspective. His most famous work is the cycle of frescoes \"The Legend of the True Cross\" in the church of San Francesco in the Tuscan town of Arezzo.', 'http://en.wikipedia.org/wiki/Piero_della_Francesca');
INSERT INTO `artists` VALUES ('94', 'Andrea', 'Mantegna', 'Italy', 'M', '1431', '1506', '<strong>Andrea Mantegna</strong> was an Italian painter, a student of Roman archeology, and son in law of Jacopo Bellini. Like other artists of the time, Mantegna experimented with perspective, e.g., by lowering the horizon in order to create a sense of greater monumentality. His flinty, metallic landscapes and somewhat stony figures give evidence of a fundamentally sculptural approach to painting. He also led a workshop that was the leading producer of prints in Venice before 1500.', 'http://en.wikipedia.org/wiki/Andrea_Mantegna');
INSERT INTO `artists` VALUES ('95', 'Sandro', 'Botticelli', 'Italy', 'M', '1445', '1510', 'Alessandro di Mariano di Vanni Filipepi, better known as <strong>Sandro Botticelli</strong> was an Italian painter of the Early Renaissance. He belonged to the Florentine school under the patronage of Lorenzo de\' Medici, a movement that Giorgio Vasari would characterize less than a hundred years later as a \"golden age\", a thought, suitably enough, he expressed at the head of his Vita of Botticelli. Botticelli\'s posthumous reputation suffered until the late 19th century; since then his work has been seen to represent the linear grace of Early Renaissance painting. Among his best known works are The Birth of Venus and Primavera.', 'http://en.wikipedia.org/wiki/Sandro_Botticelli');
INSERT INTO `artists` VALUES ('96', 'Pietro', 'Perugino', 'Italy', 'M', '1446', '1524', '<strong>Pietro Perugino</strong>, born Pietro Vannucci, was an Italian Renaissance painter of the Umbrian school, who developed some of the qualities that found classic expression in the High Renaissance. Raphael was his most famous pupil.', 'http://en.wikipedia.org/wiki/Pietro_Perugino');
INSERT INTO `artists` VALUES ('97', 'Leonardo', 'da Vinci', 'Italy', 'M', '1452', '1519', '<strong>Leonardo di ser Piero da Vinci</strong> was an Italian Renaissance polymath: painter, sculptor, architect, musician, mathematician, engineer, inventor, anatomist, geologist, cartographer, botanist, and writer. His genius, perhaps more than that of any other figure, epitomized the Renaissance humanist ideal. Leonardo has often been described as the archetype of the Renaissance Man, a man of \"unquenchable curiosity\" and \"feverishly inventive imagination\". He is widely considered to be one of the greatest painters of all time and perhaps the most diversely talented person ever to have lived. According to art historian Helen Gardner, the scope and depth of his interests were without precedent and \"his mind and personality seem to us superhuman, the man himself mysterious and remote\". Marco Rosci states that while there is much speculation about Leonardo, his vision of the world is essentially logical rather than mysterious, and that the empirical methods he employed were unusual for his time.', 'http://en.wikipedia.org/wiki/Leonardo_da_Vinci');
INSERT INTO `artists` VALUES ('98', null, 'Michelangelo', 'Italy', 'M', '1475', '1564', '<strong>Michelangelo di Lodovico Buonarroti Simoni</strong> commonly known as Michelangelo, was an Italian sculptor, painter, architect, poet, and engineer of the High Renaissance who exerted an unparalleled influence on the development of Western art. Despite making few forays beyond the arts, his versatility in the disciplines he took up was of such a high order that he is often considered a contender for the title of the archetypal Renaissance man, along with his fellow Italian Leonardo da Vinci. Michelangelo was considered the greatest living artist in his lifetime, and ever since then he has been held to be one of the greatest artists of all time. A number of his works in painting, sculpture, and architecture rank among the most famous in existence. His output in every field during his long life was prodigious; when the sheer volume of correspondence, sketches, and reminiscences that survive is also taken into account, he is the best-documented artist of the 16th century.', 'http://en.wikipedia.org/wiki/Michelangelo');
INSERT INTO `artists` VALUES ('99', null, 'Raphael', 'Italy', 'M', '1483', '1520', 'Raffaello Sanzio da Urbino, better known simply as <strong>Raphael</strong>, was an Italian painter and architect of the High Renaissance. His work is admired for its clarity of form and ease of composition and for its visual achievement of the Neoplatonic ideal of human grandeur. Together with Michelangelo and Leonardo da Vinci, he forms the traditional trinity of great masters of that period.', 'http://en.wikipedia.org/wiki/Raphael');
INSERT INTO `artists` VALUES ('100', null, 'Titian', 'Italy', 'M', '1488', '1576', '<strong>Tiziano Vecelli</strong> known in English as <strong>Titian</strong> was an Italian painter, the most important member of the 16th-century Venetian school. He was born in Pieve di Cadore, near Belluno (in Veneto), in the Republic of Venice. During his lifetime he was often called da Cadore, taken from the place of his birth. During the course of his long life, Titian\'s artistic manner changed drastically[4] but he retained a lifelong interest in color. Although his mature works may not contain the vivid, luminous tints of his early pieces, their loose brushwork and subtlety of polychromatic modulations are without precedent in the history of Western art.', 'http://en.wikipedia.org/wiki/Titian');
INSERT INTO `artists` VALUES ('101', null, 'Caravaggio', 'Italy', 'M', '1571', '1610', '<strong>Michelangelo Merisi da Caravaggio</strong> was an Italian artist active in Rome, Naples, Malta, and Sicily between 1593 and 1610. His paintings, which combine a realistic observation of the human state, both physical and emotional, with a dramatic use of lighting, had a formative influence on the Baroque school of painting.', 'http://en.wikipedia.org/wiki/Caravaggio');
INSERT INTO `artists` VALUES ('102', 'Peter Paul', 'Rubens', 'Belgium', 'M', '1577', '1640', 'Sir Peter Paul Rubens was a German-born Flemish Baroque painter, and a proponent of an extravagant Baroque style that emphasised movement, colour, and sensuality. He is well known for his Counter-Reformation altarpieces, portraits, landscapes, and history paintings of mythological and allegorical subjects.', 'http://en.wikipedia.org/wiki/Peter_Paul_Rubens');
INSERT INTO `artists` VALUES ('103', 'Anthony van', 'Dyck', 'Belgium', 'M', '1599', '1641', '<strong>Sir Anthony van Dyck</strong> was a Flemish Baroque artist who became the leading court painter in England. He is most famous for his portraits of Charles I of England and his family and court, painted with a relaxed elegance that was to be the dominant influence on English portrait-painting for the next 150 years. He also painted biblical and mythological subjects, displayed outstanding facility as a draftsman, and was an important innovator in watercolour and etching.', 'http://en.wikipedia.org/wiki/Anthony_van_Dyck');
INSERT INTO `artists` VALUES ('104', 'Diego', 'Velázquez', 'Spain', 'M', '1599', '1660', '<strong>Diego Rodríguez de Silva y Velázquez</strong> was a Spanish painter who was the leading artist in the court of King Philip IV. He was an individualistic artist of the contemporary Baroque period, important as a portrait artist. In addition to numerous renditions of scenes of historical and cultural significance, he painted scores of portraits of the Spanish royal family, other notable European figures, and commoners.', 'http://en.wikipedia.org/wiki/Diego_Vel%C3%A1zquez');
INSERT INTO `artists` VALUES ('105', null, 'Rembrandt', 'Netherlands', 'M', '1606', '1669', '<strong>Rembrandt Harmenszoon van Rijn</strong> was a Dutch painter and etcher. He is generally considered one of the greatest painters and printmakers in European art history and the most important in Dutch history. His contributions to art came in a period of great wealth and cultural achievement that historians call the Dutch Golden Age when Dutch Golden Age painting, although in many ways antithetical to the Baroque style that dominated Europe, was extremely prolific and innovative.', 'http://en.wikipedia.org/wiki/Rembrandt');
INSERT INTO `artists` VALUES ('106', 'Jan', 'Vermeer', 'Netherlands', 'M', '1632', '1675', '<strong>Jan Vermeer</strong> was a Dutch painter who specialized in domestic interior scenes of middle-class life. Vermeer was a moderately successful provincial genre painter in his lifetime. He seems never to have been particularly wealthy, leaving his wife and children in debt at his death, perhaps because he produced relatively few paintings. Vermeer worked slowly and with great care, using bright colours and sometimes expensive pigments, with a preference for cornflower blue and yellow. He is particularly renowned for his masterly treatment and use of light in his work.', 'http://en.wikipedia.org/wiki/Johannes_Vermeer');
INSERT INTO `artists` VALUES ('107', 'Francois', 'Boucher', 'France', 'M', '1703', '1770', 'Possibly the most popular 18th century artist, <strong>Francois Boucher</strong> was a French painter in the Rococo style. When he was 17 years old, Boucher was apprenticed for a short time to the French painter Francois Lemoyne, and then to the engraver Jean-Francois Cars. After three years of work and artistic study, Boucher won the Grand Prix de Rome, a scholarship for artistic study, allowing him to travel to Italy and further his study in art. Upon his return to France, he was accepted into the Royal Academy of Painting and Sculpture, and three years later became a faculty member.', 'http://en.wikipedia.org/wiki/Fran%C3%A7ois_Boucher');
INSERT INTO `artists` VALUES ('108', 'Jean-Baptiste-Simeon', 'Chardin', 'France', 'M', '1699', '1779', '<strong>Jean-Baptiste-Siméon Chardin</strong> was an 18th-century French painter. He is considered a master of still life, and is also noted for his genre paintings which depict kitchen maids, children, and domestic activities. Carefully balanced composition, soft diffusion of light, and granular impasto characterize his work.', 'http://en.wikipedia.org/wiki/Jean-Baptiste-Sim%C3%A9on_Chardin');
INSERT INTO `artists` VALUES ('109', 'Joshua', 'Reynolds', 'England', 'M', '1740', '1790', '<strong>Sir Joshua Reynolds</strong> was an influential eighteenth-century English painter, specialising in portraits and promoting the \"Grand Style\" in painting which depended on idealization of the imperfect. He was one of the founders and first president of the Royal Academy, and was knighted by George III in 1769.', 'http://en.wikipedia.org/wiki/Joshua_Reynolds');
INSERT INTO `artists` VALUES ('110', 'Thomas', 'Gainsborough', 'England', 'M', '1737', '1788', '<strong>Thomas Gainsborough</strong> was an English portrait and landscape painter. He is credited as the originator of the 18th century British landscape school.', 'http://en.wikipedia.org/wiki/Thomas_Gainsborough');
INSERT INTO `artists` VALUES ('111', 'Artemisia', 'Gentileschi', 'Italy', 'F', '1593', '1656', '<strong>Artemisia Gentileschi</strong> was an Italian Baroque painter, today considered one of the most accomplished painters in the generation after Caravaggio. In an era when female painters were not easily accepted by the artistic community or patrons, she was the first female painter to become a member of the Accademia di Arte del Disegno in Florence. She painted many pictures of strong and suffering women from myth and the Bible – victims, suicides, warriors – and made a speciality of the Judith story.  That she was a woman painting in the 17th century and that she was raped herself and participated in prosecuting the rapist long overshadowed her achievements as an artist. For many years she was regarded as a curiosity. Today she is regarded as one of the most progressive and expressionist painters of her generation.', 'http://en.wikipedia.org/wiki/Artemisia_Gentileschi');
INSERT INTO `artists` VALUES ('112', 'Judith', 'Leyster', 'Netherlands', 'F', '1609', '1660', '<strong>Judith Jans Leyster (also Leijster)</strong> was a Dutch Golden Age painter. She was one of three significant women artists in Dutch Golden Age painting; the other two, Rachel Ruysch and Maria van Oosterwijk, were specialized painters of flower still-lifes, while Leyster painted genre works, a few portraits, and a single still life. The number of surviving works attributed to her varies between fewer than 20 and about 35. She largely gave up painting after her marriage, which produced five children.', 'http://en.wikipedia.org/wiki/Judith_Leyster');
INSERT INTO `artists` VALUES ('113', 'Louise Élisabeth', 'Lebrun', 'France', 'F', '1755', '1842', '<strong>Louise Élisabeth Vigée Le Brun</strong> also known as Madame Lebrun, was a French painter, and is recognized as the most important female painter of the 18th century. Her style is generally considered Rococo and shows interest in the subject of neoclassical painting. Vigée Le Brun cannot be considered a pure Neoclassist, however, in that she creates mostly portraits in Neoclassical dress.', 'http://en.wikipedia.org/wiki/Elisabeth_Vigee-Lebrun');
INSERT INTO `artists` VALUES ('114', null, 'Giotto', 'Italy', 'M', '1266', '1337', '<strong>Giotto di Bondone</strong> better known simply as Giotto, was an Italian painter and architect from Florence in the late Middle Ages. He is generally considered the first in a line of great artists who contributed to the Italian Renaissance.', 'https://en.wikipedia.org/wiki/Giotto');
INSERT INTO `artists` VALUES ('115', 'Jan', 'van Eyck', 'Belgium', 'M', '1390', '1441', '<strong>Jan van Eyck</strong> was a Flemish painter active in Bruges and is generally considered one of the most significant Northern European painters of the 15th century. The few surviving records indicate that he was born around 1390, most likely in Maaseik. Outside of works completed with his brother Hubert van Eyck and those ascribed to Hand G —believed to be Jan— of the Turin-Milan Hours illuminated manuscript, only about 23 surviving works are confidently attributed to him, of which ten, including the Ghent altarpiece, are signed and dated.', 'http://en.wikipedia.org/wiki/Jan_van_Eyck');
INSERT INTO `artists` VALUES ('116', 'Albrecht', 'Dürer', 'Germany', 'M', '1471', '1528', '<strong>Albrecht Dürer </strong> was a German painter, engraver, printmaker, mathematician, and theorist from Nuremberg. His high-quality woodcuts established his reputation and influence across Europe when he was still in his twenties, and he has been conventionally regarded as the greatest artist of the Northern Renaissance ever since. His vast body of work includes altarpieces and religious works, numerous portraits and self-portraits, and copper engravings. The woodcuts, such as the Apocalypse series (1498), retain a more Gothic flavour than the rest of his work. His well-known prints include the Knight, Death, and the Devil (1513), Saint Jerome in his Study (1514) and Melencolia I (1514), which has been the subject of extensive analysis and interpretation. His watercolours also mark him as one of the first European landscape artists, while his ambitious woodcuts revolutionized the potential of that medium. Dürer\'s introduction of classical motifs into Northern art, through his knowledge of Italian artists and German humanists, has secured his reputation as one of the most important figures of the Northern Renaissance. This is reinforced by his theoretical treatises, which involve principles of mathematics, perspective and ideal proportions.', 'http://en.wikipedia.org/wiki/Albrecht_D%C3%Bcrer');
INSERT INTO `artists` VALUES ('117', 'Hieronymus', 'Bosch', 'Netherlands', 'M', '1450', '1516', '<strong>Hieronymus Bosch</strong>was an Early Netherlandish painter. His work is known for its use of fantastic imagery to illustrate moral and religious concepts and narratives.', 'http://en.wikipedia.org/wiki/Hieronymus_Bosch');
INSERT INTO `artists` VALUES ('118', 'Pieter', 'Bruegel the Elder', 'Netherlands', 'M', '1525', '1569', '<strong>Pieter Bruegel (Brueghel) the Elder</strong> was a Flemish Renaissance painter and printmaker known for his landscapes and peasant scenes (so called genre painting). He is sometimes referred to as the \"Peasant Bruegel.\" From 1559 he dropped the \'h\' from his name and signed his paintings as Bruegel.', 'http://en.wikipedia.org/wiki/Pieter_Bruegel_the_Elder');
INSERT INTO `artists` VALUES ('120', 'Agnolo', 'Bronzino', 'Italy', 'M', '1503', '1572', 'One of the greatest painters of the sixteenth century, Agnolo di Cosimo Tori, known as <strong>Bronzino</strong>, embodied the Mannerist style in the years of the government of Cosimo I de’ Medici.', 'http://en.wikipedia.org/wiki/Bronzino');
INSERT INTO `artists` VALUES ('121', 'El', 'Greco', 'Greece', 'M', '1514', '1614', '<strong>El Greco</strong>, born Doménikos Theotokópoulos,  was a painter, sculptor and architect of the Spanish Renaissance. \"El Greco\" (The Greek) was a nickname,a reference to his national Greek origin. El Greco\'s dramatic and expressionistic style was met with puzzlement by his contemporaries but found appreciation in the 20th century. El Greco is regarded as a precursor of both Expressionism and Cubism.', 'http://en.wikipedia.org/wiki/El_Greco');
INSERT INTO `artists` VALUES ('123', 'Frans', 'Hals', 'Netherlands', 'M', '1582', '1666', '<strong>Frans Hals the Elder</strong> was a Dutch Golden Age portrait painter who lived and worked in Haarlem. He is notable for his loose painterly brushwork, and he helped introduce this lively style of painting into Dutch art. Hals played an important role in the evolution of 17th-century group portraiture.', 'https://en.wikipedia.org/wiki/Frans_Hals');
INSERT INTO `artists` VALUES ('124', 'Jan', 'Steen', 'Netherlands', 'M', '1626', '1679', 'Jan Havickszoon Steen was a Dutch genre painter of the 17th century (also known as the Dutch Golden Age). His works are known for their psychological insight, sense of humour and abundance of colour', 'https://en.wikipedia.org/wiki/Jan_Steen');
INSERT INTO `artists` VALUES ('125', 'Jan', 'Kruseman', 'Netherlands', 'M', '1804', '1862', 'Jan Adam Kruseman (1804-1862) of Haarlem was apprenticed to his uncle Cornelis Kruseman. He later studied at Brussels and Paris. In 1834-1836, he made a series of journeys to Germany, England and Scotland. For a while, he lived in Driebergen, before returning to Haarlem in 1858. Kruseman painted historical, biblical and genre scenes, although mainly portraits. In all he received around five hundred commissions from aristocrats and wealthy commoners for portraits.', 'https://en.wikipedia.org/wiki/Jan_Adam_Kruseman');
INSERT INTO `artists` VALUES ('126', 'Pieter de', 'Hooch', 'Netherlands', 'M', '1629', '1684', 'Pieter de Hooch was a Dutch Golden Age painter famous for his genre works of quiet domestic scenes with an open doorway. He was a contemporary of Jan Vermeer in the Delft Guild of St. Luke, with whom his work shares themes and style.', 'https://en.wikipedia.org/wiki/Pieter_de_Hooch');
INSERT INTO `artists` VALUES ('127', 'Jacob van', 'Ruisdael', 'Netherlands', 'M', '1628', '1682', 'The Haarlem-born painter Jacob van Ruisdael (ca. 1628-1682) began to paint at an early age. His first work dates from 1646. Ruisdael probably had lessons from his father, but his uncle, the artist Salomon van Ruysdael, must also have been a great influence on the young painter. As well as being a painter, Ruisdael was also a doctor. He painted not only woodland landscapes with strong, central motifs such as ruins, watermills and oaks, but also cityscapes and seascapes. Ruisdael\'s compositions are often more imposing than reality. His \'Bentheim Castle\' and \'Windmill at Wijk bij Duurstede\' are good examples of this.', 'https://en.wikipedia.org/wiki/Jacob_van_Ruisdael');
INSERT INTO `artists` VALUES ('128', 'Anton', 'Mauve', 'Netherlands', 'M', '1838', '1888', 'Anthonij (Anton) Rudolf Mauve was a Dutch realist painter who was a leading member of the Hague School. He signed his paintings \'A. Mauve\' or with a monogrammed \'A.M.\'. A master colorist, he was a very significant early influence on his cousin-in-law Vincent van Gogh. Most of Mauve\'s work depicts people and animals in outdoor settings. In his Morning Ride in the Rijksmuseum, for example, fashionable equestrians at the seacoast are seen riding away from the viewer. An unconventional detail, horse droppings in the foreground, attests his commitment to realism.', 'https://en.wikipedia.org/wiki/Anton_Mauve');
INSERT INTO `artists` VALUES ('129', 'Lawrence', 'Alma-Tadema', 'Netherlands', 'M', '1836', '1912', 'Sir Lawrence Alma-Tadema (born Lourens Alma Tadema) was a Dutch painter of special British denizenship. Born in Dronrijp, the Netherlands, and trained at the Royal Academy of Antwerp, Belgium, he settled in England in 1870 and spent the rest of his life there. A classical-subject painter, he became famous for his depictions of the luxury and decadence of the Roman Empire, with languorous figures set in fabulous marbled interiors or against a backdrop of dazzling blue Mediterranean Sea and sky. Though admired during his lifetime for his draftsmanship and depictions of Classical antiquity, his work fell into disrepute after his death, and only since the 1960s has it been re-evaluated for its importance within nineteenth-century English art.', 'https://en.wikipedia.org/wiki/Lawrence_Alma-Tadema');
INSERT INTO `artists` VALUES ('130', 'Thérèse', 'Schwartze', 'Netherlands', 'F', '1851', '1918', 'Thérèse Schwartze was born on 20 December 1851 in Amsterdam in the Netherlands. She was the daughter of the painter Johan Georg Schwartze, who grew up in Philadelphia and trained in Düsseldorf. Schwartze received her first training from her father, before studying for a year at the Rijksacademie van Beeldende Kunsten. She then travelled to Munich and studied under Gabriel Max and Franz von Lenbach. In 1879 she went to Paris to continue her studies under Jean-Jacques Henner. When she returned to Amsterdam she became a member of Arti et Amicitiae.', 'https://en.wikipedia.org/wiki/Th%C3%A9r%C3%A8se_Schwartze');
INSERT INTO `artists` VALUES ('131', null, 'Canaletto', 'Italy', 'M', '1697', '1768', 'Giovanni Antonio Canal, better known as Canaletto, was an Italian painter of landscapes of Venice. He was also an important printmaker in etching. He was the son of the painter Bernardo Canal, he visited England between 1746–56 and he is famous for his urban landscapes of Venice. He is very famous for his scenes, usually associated with \"evocative views of the city\".', 'https://en.wikipedia.org/wiki/Canaletto');
INSERT INTO `artists` VALUES ('132', 'Nicolas', 'Poussin', 'France', 'M', '1594', '1665', 'Nicolas Poussin was the leading painter of the classical French Baroque style, although he spent most of his working life in Rome. His work is characterized by clarity, logic, and order, and favors line over color. Until the 20th century he remained a major inspiration for such classically oriented artists as Jacques-Louis David, Jean-Auguste-Dominique Ingres and Paul Cézanne. He worked in Rome for a circle of leading collectors from there and elsewhere, except for a short period when Cardinal Richelieu ordered him back to France to serve as First Painter to the King. Most of his works are history paintings of religious or mythological subjects that very often have a large landscape element.', 'https://en.wikipedia.org/wiki/Nicolas_Poussin');
INSERT INTO `artists` VALUES ('133', 'Ferdinand Georg', 'Waldmüller', 'Austria', 'M', '1793', '1865', 'Ferdinand Georg Waldmüller (1793–1865) is considered the most important Austrian artist of the 19th century. On the one hand, he produced outstanding works in the artistic disciplines prevalent at the time – portraiture, landscape, still life, and genre painting – and, on the other hand, he was always, throughout his life, in search of accomplishment, striding new paths that led the way into the future.', 'https://en.wikipedia.org/wiki/Ferdinand_Georg_Waldm%C3%Bcller');
INSERT INTO `artists` VALUES ('134', 'Rogier van der', 'Weyden', 'Netherlands', 'M', '1399', '1464', 'Rogier van der Weyden or Roger de la Pasture was an Early Netherlandish painter. His surviving works consist mainly of religious triptychs, altarpieces and commissioned single and diptych portraits. Although his life was generally uneventful, he was highly successful and internationally famous in his lifetime. His paintings were exported – or taken – to Italy and Spain, and he received commissions from, amongst others, Philip the Good, Netherlandish nobility and foreign princes. By the latter half of the 15th century, he had eclipsed Jan van Eyck in popularity. However his fame lasted only until the 17th century, and largely due to changing taste, he was almost totally forgotten by the mid-18th century. His reputation was slowly rebuilt during the following 200 years; today he is known, with Robert Campin and van Eyck, as the third of the three great Early Flemish artists, and widely as the most influential Northern painter of the 15th century.', 'https://en.wikipedia.org/wiki/Rogier_van_der_Weyden');
INSERT INTO `artists` VALUES ('135', 'Giovanni', 'Bellini', 'Italy', 'M', '1430', '1516', 'Giovanni Bellini was an Italian Renaissance painter, probably the best known of the Bellini family of Venetian painters. His father was Jacopo Bellini, his brother was Gentile Bellini, and his brother-in-law was Andrea Mantegna. He is considered to have revolutionized Venetian painting, moving it towards a more sensuous and colouristic style. Through the use of clear, slow-drying oil paints, Giovanni created deep, rich tints and detailed shadings. His sumptuous coloring and fluent, atmospheric landscapes had a great effect on the Venetian painting school, especially on his pupils Giorgione and Titian.', 'https://en.wikipedia.org/wiki/Giovanni_Bellini');
INSERT INTO `artists` VALUES ('136', 'Francesco', 'Hayez', 'Italy', 'M', '1791', '1882', 'Francesco Hayez was an Italian painter, the leading artist of Romanticism in mid-19th-century Milan, renowned for his grand historical paintings, political allegories and exceptionally fine portraits.', 'https://en.wikipedia.org/wiki/Francesco_Hayez');
INSERT INTO `artists` VALUES ('137', 'Caspar David', 'Friedrich', 'Germany', 'M', '1774', '1840', 'Caspar David Friedrich was a 19th-century German Romantic landscape painter, generally considered the most important German artist of his generation. He is best known for his mid-period allegorical landscapes which typically feature contemplative figures silhouetted against night skies, morning mists, barren trees or Gothic ruins.', 'https://en.wikipedia.org/wiki/Caspar_David_Friedrich');
INSERT INTO `artists` VALUES ('138', 'Arnold', 'Böcklin', 'Switzerland', 'M', '1827', '1901', 'Arnold Böcklin was a Swiss symbolist painter.', 'https://en.wikipedia.org/wiki/Arnold_B%C3%B6cklin');
INSERT INTO `artists` VALUES ('139', 'John William', 'Waterhouse', 'England', 'M', '1849', '1917', 'John William Waterhouse was an English painter known for working in the Pre-Raphaelite style. He worked several decades after the breakup of the Pre-Raphaelite Brotherhood, which had seen its heyday in the mid-nineteenth century, leading to his sobriquet \"the modern Pre-Raphaelite\". Borrowing stylistic influences not only from the earlier Pre-Raphaelites but also from his contemporaries, the Impressionists, his artworks were known for their depictions of women from both ancient Greek mythology and Arthurian legend.', 'https://en.wikipedia.org/wiki/John_William_Waterhouse');
INSERT INTO `artists` VALUES ('140', 'William', 'Bouguereau', 'France', 'M', '1825', '1905', 'William-Adolphe Bouguereau was a French academic painter and traditionalist. In his realistic genre paintings he used mythological themes, making modern interpretations of classical subjects, with an emphasis on the female human body. During his life he enjoyed significant popularity in France and the United States, was given numerous official honors, and received top prices for his work. As the quintessential salon painter of his generation, he was reviled by the Impressionist avant-garde. By the early twentieth century, Bouguereau and his art fell out of favor with the public, due in part to changing tastes. In the 1980s, a revival of interest in figure painting led to a rediscovery of Bouguereau and his work. Throughout the course of his life, Bouguereau executed 822 known finished paintings, although the whereabouts of many are still unknown.', 'https://en.wikipedia.org/wiki/William-Adolphe_Bouguereau');
INSERT INTO `artists` VALUES ('141', 'Agnolo', 'Gaddi', 'Italy', 'M', '1350', '1396', 'Taddeo Gaddi was himself the major pupil of the Florentine master Giotto. Agnolo was an influential and prolific artist who was the last major Florentine painter stylistically descended from Giotto.', 'https://en.wikipedia.org/wiki/Agnolo_Gaddi');
INSERT INTO `artists` VALUES ('142', '新', '作者', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('144', '123', '345', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('145', '1', '1', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('146', '鱼', '里', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('147', '牲畜', '八十三', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('148', '枫原', 'kazuha', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('149', 'namie', 'namie', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('150', '321', '345', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('151', '123', '123', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('152', 'Amy', 'Rick', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('153', '12345', '12345', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('154', '1234', '123', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('155', 'Zhou', 'ZiBo', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('156', '12376', '122', null, 'M', '0', '0', null, null);
INSERT INTO `artists` VALUES ('157', 'name', 'eman', null, 'M', '0', '0', null, null);

-- ----------------------------
-- Table structure for eras
-- ----------------------------
DROP TABLE IF EXISTS `eras`;
CREATE TABLE `eras` (
  `EraID` int(11) NOT NULL AUTO_INCREMENT,
  `EraName` varchar(255) DEFAULT NULL,
  `EraYears` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EraID`),
  KEY `EraID` (`EraID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eras
-- ----------------------------
INSERT INTO `eras` VALUES ('1', 'Medieval', 'Before 1400');
INSERT INTO `eras` VALUES ('2', 'Renaissance', '1400-1550');
INSERT INTO `eras` VALUES ('3', 'Post Renaissance', '1550-1700');
INSERT INTO `eras` VALUES ('4', 'Early Modern', '1700-1875');
INSERT INTO `eras` VALUES ('5', 'Modern', '1875-1945');
INSERT INTO `eras` VALUES ('6', 'Contemporary', 'After 1945');

-- ----------------------------
-- Table structure for galleries
-- ----------------------------
DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries` (
  `GalleryID` int(11) NOT NULL AUTO_INCREMENT,
  `GalleryName` varchar(255) DEFAULT NULL,
  `GalleryNativeName` varchar(255) DEFAULT NULL,
  `GalleryCity` varchar(255) DEFAULT NULL,
  `GalleryAddress` varchar(255) DEFAULT NULL,
  `GalleryCountry` varchar(255) DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  `GalleryWebSite` varchar(255) DEFAULT NULL,
  `FlickrPlaceID` varchar(255) DEFAULT NULL,
  `YahooWoeID` varchar(255) DEFAULT NULL,
  `GooglePlaceID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GalleryID`),
  KEY `GalleryID` (`GalleryID`),
  KEY `GooglePlaceID` (`GooglePlaceID`),
  KEY `FlickrPlaceID` (`FlickrPlaceID`),
  KEY `YahooWoeID` (`YahooWoeID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES ('2', 'Prado Museum', 'Museo del Prado', 'Madrid', 'Paseo del Prado, s/n, 28014', 'Spain', '40.413393', '-3.691953', 'http://www.museodelprado.es/', 'XrSazRhTUrh4j1shyQ', '20219885', 'ChIJ7aLYZp0oQg0RWoitk33wlBA');
INSERT INTO `galleries` VALUES ('3', 'State Museum', 'Staatliche Museen', 'Berlin', 'Stauffenbergstraße 41, 10785', 'Germany', '52.50861', '13.36472', 'http://www.smb.museum/', 'VULyzjBXVb89VXc', '675695', 'ChIJ6c-eGLRRqEcR_S0RGNMMbWw');
INSERT INTO `galleries` VALUES ('4', 'Uffizi Museum', 'Galleria degli Uffizi', 'Florence', 'Piazzale degli Uffizi, 6, 50122', 'Italy', '43.76863888', '11.25521', 'http://www.polomuseale.firenze.it/en/musei/?m=uffizi', 'GKD_20BTUrvaoc1jyA', '20150278', 'ChIJgZDFjQBUKhMRzcTwm8i33s0');
INSERT INTO `galleries` VALUES ('5', 'National Gallery', 'National Gallery', 'London', 'Trafalgar Square', 'UK', '51.5086', '-0.1283', 'http://www.nationalgallery.org.uk/', '1EPGyGtTUrrDXJmGCA', '20094364', 'ChIJeclqF84EdkgRtKAjTmWFr0I');
INSERT INTO `galleries` VALUES ('6', 'Metropolitan Museum of Art', 'Metropolitan Museum of Art', 'New York City', '1000 5th Ave', 'USA', '40.7794472', '-73.963111', 'http://www.metmuseum.org', 'zzA0hmBTUb9GY797pA', '23511893', 'ChIJb8Jg9pZYwokR-qHGtvSkLzs');
INSERT INTO `galleries` VALUES ('7', 'National Gallery of Art', 'National Gallery of Art', 'Washington, DC', '6th & Constitution Ave NW', 'USA', '38.89147', '-77.02001', 'http://www.nga.gov/content/ngaweb.html', 'i0jd9gJTWr3c.68Wbg', '28751392', 'ChIJSYxSO5u3t4kRm4eyKw_Y7Kg');
INSERT INTO `galleries` VALUES ('11', 'The Art Institute of Chicago', 'The Art Institute of Chicago', 'Chicago', '111 S Michigan Ave', 'USA', '41.8794444', '-87.62388', 'http://www.artic.edu/', 'S7hSKqFTVr6exT4J', '2441891', 'ChIJlUbZ4qMsDogR3tCinMzzKUg');
INSERT INTO `galleries` VALUES ('13', 'Philadelphia Museum of Art', 'Philadelphia Museum of Art', 'Philadelphia', '2600 Benjamin Franklin Pkwy', 'USA', '39.966', '-75.181', 'http://www.philamuseum.org/', 'xDQDYKNTVrp.RmQV', '2401619', 'ChIJ_5CoRebFxokR08ApAyF2KIs');
INSERT INTO `galleries` VALUES ('16', 'Louvre Museum', 'Musée du Louvre', 'Paris', '75001', 'France', '48.8611', '2.33638', 'http://www.louvre.fr/', '36CFHdZUV7KNOKK4LQ', '55843752', 'ChIJ8XJ_6CVu5kcRWP1XT9TkBt4');
INSERT INTO `galleries` VALUES ('17', 'Tate Britain', 'Tate Britain', 'London', 'Millbank, Westminster', 'UK', '51.490833', '-0.127222', 'http://www.tate.org.uk/visit/tate-britain', 'BjVxeKdVU7z_Fw', '41676', 'ChIJvWjCxekEdkgRoCgQVJHZH_U');
INSERT INTO `galleries` VALUES ('18', 'Art History Museum', 'Kunsthistorisches Museum', 'Vienna', 'Maria-Theresien-Platz, 1010', 'Austria', '48.2037', '16.3614', 'http://www.khm.at/', 'GmGVGDJUV7vR.KE', '551756', 'ChIJ8XfPY5oHbUcRQbimbLVSYG8');
INSERT INTO `galleries` VALUES ('19', 'Musée d\'Orsay', 'Musée d\'Orsay', 'Paris', '1 Rue de la Légion d\'Honneur, 75007', 'France', '48.86', '2.327', 'http://www.musee-orsay.fr/', '.jdUillUV7Kt1uHqAg', '55843777', 'ChIJG5Qwtitu5kcR2CNEsYy9cdA');
INSERT INTO `galleries` VALUES ('20', 'Museum of Modern Art', 'Museum of Modern Art', 'New York', '11 W 53rd St', 'USA', '40.761484', '-73.977664', 'http://www.moma.org/', 'byMt1GpTWrhtqOpahg', '28288823', 'ChIJKxDbe_lYwokRVf__s8CPn-o');
INSERT INTO `galleries` VALUES ('22', 'Belvedere Gallery', 'Österreichische Galerie Belvedere', 'Vienna', 'Schloss Belvedere, Prinz Eugen-Straße 27, 1030', 'Austria', '48.19138', '16.38', 'http://www.belvedere.at/', 'wVuFk_FUV7sGJng', '551795', 'ChIJpZ4LAn0HbUcRMNCmNwlXeN8');
INSERT INTO `galleries` VALUES ('24', 'Hermitage Museum', 'Hermitage Museum', 'St. Petersburg', 'Palace Square, 2', 'Russia', '59.941', '30.3129', 'http://www.hermitagemuseum.org/', 'BfjabGxYUrw0knsYVA', '90600519', 'ChIJ6eLLMgsxlkYR_F1QoCoDTgc');
INSERT INTO `galleries` VALUES ('27', 'J. Paul Getty Museum', 'J. Paul Getty Museum', 'Los Angeles', '1200 Getty Center Dr', 'USA', '34.0775', '-118.475', 'http://www.getty.edu/museum/', '6A92XzRTWr3WXDwJwQ', '28751324', 'ChIJpbxvgcW8woARza8I4QhFyyY');
INSERT INTO `galleries` VALUES ('28', 'National Gallery of Norway', 'Nationalgalleriet', 'Oslo', 'Universitetsgata 13, 0164', 'Norway', '59.9162', '10.7375', 'http://www.nasjonalmuseet.no/', 'lQQM7sZZVL.Hngs', '865764', 'ChIJOdGZU3xuQUYRRpZUX1Z3YUM');
INSERT INTO `galleries` VALUES ('29', 'Van Gogh Museum', 'Van Gogh Museum', 'Amsterdam', 'Museumplein 6, 1071 DJ', 'Netherlands', '52.358417', '4.881083', 'http://www.vangoghmuseum.nl/', 'xfcEFYhWULKtjYI', '728410', 'ChIJX1rTlu8JxkcRGsV8-a4oKMI');
INSERT INTO `galleries` VALUES ('30', 'Rijksmuseum', 'Rijksmuseum', 'Amsterdam', 'Museumstraat 1, 1071 XX', 'Netherlands', '52.36', '4.885278', 'http://www.rijksmuseum.nl/', 'xfcEFYhWULKtjYI', '728410', 'ChIJ5Ra7we4JxkcRhYVAaq5zQ9U');
INSERT INTO `galleries` VALUES ('32', 'Royal Picture Gallery Mauritshuis', 'Royal Picture Gallery Mauritshuis', 'The Hague', 'Plein 29, 2511 CS Den Haag', 'Netherlands', '52.080556', '4.314444', 'http://www.mauritshuis.nl/', 'gycEsvZWUbkGyFQ', '733553', 'ChIJEa9zVSO3xUcRXKUtUE5Qgbk');
INSERT INTO `galleries` VALUES ('34', 'Musée du Petit Palais', 'Petit Palais', 'Paris', 'Avenue Winston Churchill, 75008', 'France', '48.866084', '2.314759', 'http://www.parismusees.paris.fr/', 'a5KHUTVUVL6wFRTYsQ', '56448116', 'ChIJSUOPztFv5kcRnEbSPYG-9fM');
INSERT INTO `galleries` VALUES ('35', 'Solomon R. Guggenheim Museum', 'Solomon R. Guggenheim Museum', 'New York', '1071 5th Ave', 'USA', '40.782975', '-73.958992', 'http://www.guggenheim.org/new-york', '1AJK9adTWr3qYGsuLA', '28751193', 'ChIJmZ5emqJYwokRuDz79o0coAQ');
INSERT INTO `galleries` VALUES ('36', 'The Courtauld Institute of Art', 'The Courtauld Institute of Art', 'London', 'Strand', 'UK', '51.510833', '-0.117222', 'http://www.courtauld.ac.uk/', 'AZPsrPxTUbyolQ', '23636', 'ChIJvZhvcMoEdkgRB5qnzGs_VNw');
INSERT INTO `galleries` VALUES ('37', 'Barnes Foundation', 'Barnes Foundation', 'Philadelphia', '2025 Benjamin Franklin Pkwy', 'USA', '39.960659', '-75.172523', 'http://www.barnesfoundation.org/', 'y3CJNJRTW7m785fi2A', '29389142', 'ChIJrcsBU8vHxokR4FXP2BplJks');
INSERT INTO `galleries` VALUES ('38', 'Sistine Chapel', 'Sistine Chapel', 'Rome', '00120, Vatican City', 'Italy', '41.903056', '12.454444', 'http://mv.vatican.va/', 'xfftaFtTUb6gXRUjTg', '23424986', 'ChIJ268jxWVgLxMRIj61f4fIFqs');
INSERT INTO `galleries` VALUES ('41', 'Picture Gallery', 'Gemäldegalerie', 'Berlin', 'Gemäldegalerie, 10785', 'Germany', '52.508472', '13.365417', 'http://www.smb.museum/', 'VULyzjBXVb89VXc', '675695', 'ChIJveOIOrRRqEcRIsZHHE5dQxA');
INSERT INTO `galleries` VALUES ('42', 'Brooklyn Museum', 'Brooklyn Museum', 'New York', '200 Eastern Pkwy', 'USA', '40.671306', '-73.96375', 'http://www.brooklynmuseum.org/', '9R6NtodTWr2le.Hw.A', '28751453', 'ChIJyTmcRApbwokR-oXJRqpVI8Y');
INSERT INTO `galleries` VALUES ('43', 'Old Masters Gallery', 'Gemäldegalerie Alte Meister', 'Dresden', 'Theaterplatz 1, 01067', 'Germany', '51.053611', '13.734722', 'http://www.skd.museum/', 'fr.j5iRTVLL4Bs4Wag', '26822156', 'ChIJE6ZpuWjPCUcR0dN6tE-_u6o');
INSERT INTO `galleries` VALUES ('49', 'Museum of Fine Arts', 'Museum of Fine Arts', 'Boston', '465 Huntington Ave', 'USA', '42.339167', '-71.094167', 'http://www.mfa.org/', 'c1_W2UJUVL.DGU.MbQ', '56574533', 'ChIJS3rn5w1644kRZNWVxNY_Ay8');
INSERT INTO `galleries` VALUES ('50', 'National Gallery of Scotland', 'National Gallery of Scotland', 'Edinburgh', 'The Mound', 'Scotland', '55.950917', '-3.195667', 'http://www.nationalgalleries.org/', 'AtPXsOpTUrrN5fImVw', '20094252', 'ChIJ68bm6kjGh0gRkyF0XlT5Rww');
INSERT INTO `galleries` VALUES ('51', 'Albright–Knox Art Gallery', 'Albright–Knox Art Gallery', 'Buffalo', '1285 Elmwood Ave', 'USA', '42.932078', '-78.877072', 'http://www.albrightknox.org/', 'dLCnqMtUV7L6BRUi6g', '55806539', 'ChIJe6SdptAS04kRzppu7BanDfk');
INSERT INTO `galleries` VALUES ('52', 'Detroit Institute of Arts', 'Detroit Institute of Arts', 'Detroit', '5200 Woodward Ave', 'USA', '42.359292', '-83.064797', 'http://www.dia.org/', 'aLB8_gVUVLt45Q4MaQ', '56192713', 'ChIJO6USub3SJIgRshN1AKZBH20');
INSERT INTO `galleries` VALUES ('70', 'Indianapolis Museum of Art', 'Indianapolis Museum of Art', 'Indianapolis', '4000 Michigan Rd', 'USA', '39.8259', '-86.1855', 'http://www.imamuseum.org/', '42QAS0hTV7j9Fq9a', '2523727', 'ChIJJYnup7pWa4gRheOf5vIg2JE');
INSERT INTO `galleries` VALUES ('81', 'Brera Art Gallery', 'Pinacoteca di Brera', 'Milan', 'Via Brera, 28, 20121', 'Italy', '45.471944', '9.188056', 'http://www.brera.beniculturali.it/', '49Gidk1WU7JxrFY', '718345', 'ChIJH05-WBHuhkcRNjexLI56Nhs');

-- ----------------------------
-- Table structure for genres
-- ----------------------------
DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres` (
  `GenreID` int(11) NOT NULL AUTO_INCREMENT,
  `GenreName` varchar(50) NOT NULL,
  `EraID` int(11) DEFAULT NULL,
  `Description` longtext,
  `Link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GenreID`),
  UNIQUE KEY `GenreName` (`GenreName`),
  KEY `GenreID` (`GenreID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of genres
-- ----------------------------
INSERT INTO `genres` VALUES ('1', 'Cubism', '5', '<strong>Cubism</strong> was a 20th century avant-garde art movement, pioneered by Pablo Picasso and Georges Braque, that revolutionized European painting and sculpture, and inspired related movements in music, literature and architecture. In cubist artworks, objects are broken up, analyzed, and re-assembled in an abstracted form—instead of depicting objects from one viewpoint, the artist depicts the subject from a multitude of viewpoints to represent the subject in a greater context. Often the surfaces intersect at seemingly random angles, removing a coherent sense of depth. The background and object planes interpenetrate one another to create the shallow ambiguous space, one of cubism\'s distinct characteristics.', 'http://en.wikipedia.org/wiki/Cubism');
INSERT INTO `genres` VALUES ('33', 'Romanticism', '4', '<strong>Romanticism</strong> was an artistic, literary and intellectual movement that originated in the second half of the 18th century in Europe, and gained strength in reaction to the Industrial Revolution. In part, it was a revolt against aristocratic social and political norms of the Age of Enlightenment and a reaction against the scientific rationalization of nature. It was embodied most strongly in the visual arts, music, and literature, but had a major impact on historiography, education[4] and natural history.', 'http://en.wikipedia.org/wiki/Romanticism');
INSERT INTO `genres` VALUES ('34', 'Realism', '4', '<strong>Realism</strong> as a tendency in 19th century art was related to similar movements in the theatre, literature and opera. All emphasized the depiction of everyday subjects, but by no means always discarding classical, Romantic or sentimental approaches to their treatment. The movement began in the 1850s in France. One of Gustave Courbet\'s most important works is A Burial at Ornans, 1849-1850, a canvas recording an event which he witnessed in September 1848. Courbet\'s painting of the funeral of his grand uncle became the first grand statement of the Realist style.', 'http://en.wikipedia.org/wiki/Realist_painting');
INSERT INTO `genres` VALUES ('35', 'Impressionism', '4', '<strong>Impressionism</strong> was a 19th-century art movement that originated with a group of Paris-based artists whose independent exhibitions brought them to prominence during the 1870s and 1880s. The name of the style is derived from the title of a Claude Monet work, Impression, soleil levant (Impression, Sunrise), which provoked the critic Louis Leroy to coin the term in a satiric review published in the Parisian newspaper Le Charivari.', 'http://en.wikipedia.org/wiki/Impressionism');
INSERT INTO `genres` VALUES ('36', 'Post-Impressionism', '5', '<strong>Post-Impressionism</strong> is the term coined by the British artist and art critic Roger Fry in 1910 to describe the development of French art since Manet. Fry used the term when he organized the 1910 exhibition Manet and Post-Impressionism. Post-Impressionists extended Impressionism while rejecting its limitations: they continued using vivid colours, thick application of paint, distinctive brush strokes, and real-life subject matter, but they were more inclined to emphasize geometric forms, to distort form for expressive effect, and to use unnatural or arbitrary colour.', 'http://en.wikipedia.org/wiki/Post_Impressionism');
INSERT INTO `genres` VALUES ('40', 'Fauvism', '5', '<strong>Fauvism</strong> is the style of les Fauves (French for \"the wild beasts\"), a short-lived and loose group of early twentieth-century Modern artists whose works emphasized painterly qualities and strong colour over the representational or realistic values retained by Impressionism. While Fauvism as a style began around 1900 and continued beyond 1910, the movement as such lasted only a few years, 1904–1908, and had three exhibitions. The leaders of the movement were Henri Matisse and André Derain.', 'http://en.wikipedia.org/wiki/Fauvism');
INSERT INTO `genres` VALUES ('47', 'Surrealism', '5', '<strong>Surrealism</strong> is a cultural movement that began in the early 1920s, and is best known for the visual artworks and writings of the group members. Surrealist works feature the element of surprise, unexpected juxtapositions and non sequitur; however, many Surrealist artists and writers[who?] regard their work as an expression of the philosophical movement first and foremost, with the works being an artifact. Leader André Breton was explicit in his assertion that Surrealism was above all a revolutionary movement.', 'http://en.wikipedia.org/wiki/Surrealism');
INSERT INTO `genres` VALUES ('56', 'Expressionism', '5', '<strong>Expressionism</strong> was a modernist movement, initially in poetry and painting, originating in Germany at the beginning of the 20th century. Its typical trait is to present the world solely from a subjective perspective, distorting it radically for emotional effect in order to evoke moods or ideas. Expressionist artists sought to express meaning or emotional experience rather than physical reality.', 'http://en.wikipedia.org/wiki/Expressionism');
INSERT INTO `genres` VALUES ('64', 'Symbolism', '5', '<strong>Symbolism</strong> was a late nineteenth-century art movement of French, Russian and Belgian origin in poetry and other arts. The aesthetic was developed by Stéphane Mallarmé and Paul Verlaine during the 1860s and \'70s. In the 1880s, the aesthetic was articulated by a series of manifestos and attracted a generation of writers. The name \"symbolist\" itself was first applied by the critic Jean Moréas, who invented the term to distinguish the symbolists from the related decadents of literature and of art.', 'http://en.wikipedia.org/wiki/Symbolism_(arts)');
INSERT INTO `genres` VALUES ('76', 'Neoclassicism', '5', '<strong>Neoclassicism</strong> is the name given to Western movements in the decorative and visual arts, literature, theatre, music, and architecture that draw inspiration from the \"classical\" art and culture of Ancient Greece or Ancient Rome. One such movement was dominant in Europe from the mid-18th to the 19th centuries.', 'http://en.wikipedia.org/wiki/Neoclassicism');
INSERT INTO `genres` VALUES ('77', 'Northern Renaissance', '2', 'The <strong>Northern Renaissance</strong> is the Renaissance in northern Europe. Before 1597 Italian Renaissance humanism had little influence outside Italy. From the late 15th century the ideas spread around Europe. This influenced the German Renaissance, French Renaissance, English Renaissance, Renaissance in the Low Countries, Polish Renaissance and other national and localized movements, each with different characteristics and strengths.', 'http://en.wikipedia.org/wiki/Northern_Renaissance');
INSERT INTO `genres` VALUES ('78', 'Renaissance', '2', '<strong>Renaissance</strong> art is the painting, sculpture and decorative arts of that period of European history known as the Renaissance, emerging as a distinct style in Italy in about 1400, in parallel with developments which occurred in philosophy, literature, music and science. Renaissance art, perceived as a \"rebirth\" of ancient traditions, took as its foundation the art of Classical antiquity, but transformed that tradition by the absorption of recent developments in the art of Northern Europe and by application of contemporary scientific knowledge. Renaissance art, with Renaissance Humanist philosophy, spread throughout Europe, affecting both artists and their patrons with the development of new techniques and new artistic sensibilities. Renaissance art marks the transition of Europe from the medieval period to the Early modern age.', 'http://en.wikipedia.org/wiki/Renaissance_art');
INSERT INTO `genres` VALUES ('79', 'High Renaissance', '2', '<strong>High Renaissance</strong> is the period denoting the apogee of the visual arts in the Italian Renaissance. The High Renaissance period is traditionally taken to begin in the 1490s, with Leonardo\'s fresco of the Last Supper in Milan and the death of Lorenzo de\' Medici in Florence, and to have ended in 1527 with the sacking of Rome by the troops of Charles V. This term was first used in German (Hochrenaissance) in the early nineteenth century, and has its origins in the \"High Style\" of painting and sculpture described by Johann Joachim Winckelmann. Over the last twenty years, use of the term has been frequently criticized by academic art historians for oversimplifying artistic developments, ignoring historical context, and focusing only on a few iconic works.', 'http://en.wikipedia.org/wiki/High_Renaissance');
INSERT INTO `genres` VALUES ('80', 'Mannerism', '3', '<strong>Mannerism</strong> is a period of European art that emerged from the later years of the Italian High Renaissance around 1520. It lasted until about 1580 in Italy, when the Baroque style began to replace it, but Northern Mannerism continued into the early 17th century.', 'http://en.wikipedia.org/wiki/Mannerism');
INSERT INTO `genres` VALUES ('81', 'International Gothic', '1', '<strong>International Gothic</strong> is a phase of Gothic art which developed in Burgundy, Bohemia, France and northern Italy in the late 14th century and early 15th century.[1] It then spread very widely across Western Europe, hence the name for the period, which was introduced by the French art historian Louis Courajod at the end of the 19th century.', 'http://en.wikipedia.org/wiki/International_Gothic');
INSERT INTO `genres` VALUES ('83', 'Rococo', '3', '<strong>Rococo</strong>, less commonly roccoco, also referred to as \"Late Baroque\", is an 18th-century artistic movement and style, which affected several aspects of the arts including painting, sculpture, architecture, interior design, decoration, literature, music and theatre. The Rococo developed in the early part of the 18th century in Paris, France as a reaction against the grandeur, symmetry and strict regulations of the Baroque, especially that of the Palace of Versailles. In such a way, Rococo artists opted for a more jocular, florid and graceful approach to Baroque art and architecture. Rococo art and architecture in such a way was ornate and made strong usage of creamy, pastel-like colours, asymmetrical designs, curves and gold. Unlike the more politically focused Baroque, the Rococo had more playful and often witty artistic themes. With regards to interior decoration, Rococo rooms were designed as total works of art with elegant and ornate furniture, small sculptures, ornamental mirrors, and tapestry complementing architecture, reliefs, and wall paintings. The Rococo additionally played an important role in theatre. In the book The Rococo, it is written that there was no other culture which \"has produced a wittier, more elegant, and teasing dialogue full of elusive and camouflaging language and gestures, refined feelings and subtle criticism\" than Rococo theatre, especially that of France.', 'http://en.wikipedia.org/wiki/Rococo');
INSERT INTO `genres` VALUES ('84', 'Baroque', '3', 'The <strong>Baroque</strong> is a period of artistic style that used exaggerated motion and clear, easily interpreted detail to produce drama, tension, exuberance, and grandeur in sculpture, painting, architecture, literature, dance and music. The style began around 1600 in Rome, Italy and spread to most of Europe. The popularity and success of the Baroque style was encouraged by the Roman Catholic Church, which had decided at the time of the Council of Trent, in response to the Protestant Reformation, that the arts should communicate religious themes in direct and emotional involvement. The aristocracy also saw the dramatic style of Baroque architecture and art as a means of impressing visitors and expressing triumphant power and control. Baroque palaces are built around an entrance of courts, grand staircases and reception rooms of sequentially increasing opulence.', 'http://en.wikipedia.org/wiki/Baroque');
INSERT INTO `genres` VALUES ('87', 'Dutch Golden Age', '3', '<strong>Dutch Golden Age</strong> painting spans the 17th century, during and after the later part of the Eighty Years\' War (1568–1648) for Dutch independence. Although Dutch painting of the Golden Age comes in the general European period of Baroque painting, and often shows many of its characteristics, most lacks the idealization and love of splendour typical of much Baroque work, including that of neighbouring Flanders. Most work, including that for which the period is best known, reflects the traditions of detailed realism inherited from Early Netherlandish painting.', 'https://en.wikipedia.org/wiki/Dutch_Golden_Age_painting');
INSERT INTO `genres` VALUES ('88', 'Academic Art', '4', '<strong>Academic Art<strong> is a style of painting and sculpture produced under the influence of European academies of art. Specifically, academic art is the art and artists influenced by the standards of the French Académie des Beaux-Arts, which practiced under the movements of Neoclassicism and Romanticism, and the art that followed these two movements in the attempt to synthesize both of their styles, and which is best reflected by the paintings of William-Adolphe Bouguereau, Thomas Couture, and Hans Makart. In this context it is often called \"academism\", \"academicism\", \"L\'art pompier\", and \"eclecticism\", and sometimes linked with \"historicism\" and \"syncretism\". The art influenced by academies in general is also called \"academic art.\" In this context as new styles are embraced by academics, the new styles come to be considered academic, thus what was at one time a rebellion against academic art becomes academic art.', 'https://en.wikipedia.org/wiki/Academic_art');
INSERT INTO `genres` VALUES ('89', '我流', null, null, null);
INSERT INTO `genres` VALUES ('93', '刘牌牌', null, null, null);
INSERT INTO `genres` VALUES ('94', '触手', null, null, null);
INSERT INTO `genres` VALUES ('95', '水月', null, null, null);
INSERT INTO `genres` VALUES ('96', 'koko', null, null, null);
INSERT INTO `genres` VALUES ('97', '123', null, null, null);
INSERT INTO `genres` VALUES ('98', '132', null, null, null);
INSERT INTO `genres` VALUES ('99', '法师', null, null, null);
INSERT INTO `genres` VALUES ('100', '1233', null, null, null);
INSERT INTO `genres` VALUES ('101', 'Post-Impressionismll', null, null, null);
INSERT INTO `genres` VALUES ('102', 'gorou', null, null, null);

-- ----------------------------
-- Table structure for myfoot
-- ----------------------------
DROP TABLE IF EXISTS `myfoot`;
CREATE TABLE `myfoot` (
  `FootID` int(11) NOT NULL AUTO_INCREMENT,
  `PaintingID` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `visitTime` datetime DEFAULT NULL,
  PRIMARY KEY (`FootID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myfoot
-- ----------------------------
INSERT INTO `myfoot` VALUES ('1', '11', 'icalter', '2022-05-28 14:38:16');
INSERT INTO `myfoot` VALUES ('2', '66', 'icalter', '2022-05-28 14:40:58');
INSERT INTO `myfoot` VALUES ('3', '39', 'icalter', '2022-05-28 14:40:47');
INSERT INTO `myfoot` VALUES ('4', '70', 'icalter', '2022-05-28 14:41:11');
INSERT INTO `myfoot` VALUES ('5', '79', 'icalter', '2022-05-28 14:56:37');
INSERT INTO `myfoot` VALUES ('6', '67', 'icalter', '2022-05-28 14:41:38');
INSERT INTO `myfoot` VALUES ('7', '64', 'icalter', '2022-05-28 14:41:47');
INSERT INTO `myfoot` VALUES ('8', '7', 'mizuki', '2022-05-28 14:46:54');
INSERT INTO `myfoot` VALUES ('9', '643', 'icalter', '2022-05-28 14:48:43');
INSERT INTO `myfoot` VALUES ('10', '7', 'icalter', '2022-05-28 14:55:20');
INSERT INTO `myfoot` VALUES ('11', '79', 'mizuki', '2022-05-28 14:56:23');
INSERT INTO `myfoot` VALUES ('12', '47', 'icalter', '2022-05-28 14:57:12');
INSERT INTO `myfoot` VALUES ('13', '47', 'mizuki', '2022-05-28 14:57:46');
INSERT INTO `myfoot` VALUES ('14', '644', '写文档', '2022-05-28 15:15:06');
INSERT INTO `myfoot` VALUES ('15', '645', '写文档', '2022-05-28 15:18:08');
INSERT INTO `myfoot` VALUES ('16', '7', '写文档', '2022-05-28 15:21:18');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `PaintingID` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `OrderTime` datetime DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('4', '11', 'icalter', '2022-05-27 02:12:27');
INSERT INTO `orders` VALUES ('5', '5', 'icalter', '2022-05-27 02:12:27');
INSERT INTO `orders` VALUES ('7', '37', 'Skybase', '2022-05-27 21:32:39');
INSERT INTO `orders` VALUES ('8', '641', 'icalter', '2022-05-27 22:52:42');
INSERT INTO `orders` VALUES ('9', '612', 'icalter', '2022-05-28 09:44:45');
INSERT INTO `orders` VALUES ('10', '70', 'icalter', '2022-05-28 09:44:45');
INSERT INTO `orders` VALUES ('11', '57', 'icalter', '2022-05-28 13:09:28');
INSERT INTO `orders` VALUES ('12', '644', 'icalter', '2022-05-28 13:11:08');
INSERT INTO `orders` VALUES ('13', '7', 'icalter', '2022-05-28 14:55:30');
INSERT INTO `orders` VALUES ('14', '79', 'icalter', '2022-05-28 14:56:45');
INSERT INTO `orders` VALUES ('15', '47', 'mizuki', '2022-05-28 14:57:59');
INSERT INTO `orders` VALUES ('16', '645', '写文档', '2022-05-28 15:20:13');

-- ----------------------------
-- Table structure for paintinggenres
-- ----------------------------
DROP TABLE IF EXISTS `paintinggenres`;
CREATE TABLE `paintinggenres` (
  `PaintingGenreID` int(11) NOT NULL AUTO_INCREMENT,
  `PaintingID` int(11) DEFAULT '0',
  `GenreID` int(11) DEFAULT '0',
  PRIMARY KEY (`PaintingGenreID`),
  KEY `GenreID` (`GenreID`),
  KEY `PaintingID` (`PaintingID`),
  KEY `PaintingGenreID` (`PaintingGenreID`)
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paintinggenres
-- ----------------------------
INSERT INTO `paintinggenres` VALUES ('7', '5', '36');
INSERT INTO `paintinggenres` VALUES ('9', '7', '101');
INSERT INTO `paintinggenres` VALUES ('10', '8', '1');
INSERT INTO `paintinggenres` VALUES ('13', '11', '1');
INSERT INTO `paintinggenres` VALUES ('14', '12', '1');
INSERT INTO `paintinggenres` VALUES ('16', '14', '1');
INSERT INTO `paintinggenres` VALUES ('17', '15', '1');
INSERT INTO `paintinggenres` VALUES ('18', '16', '76');
INSERT INTO `paintinggenres` VALUES ('25', '23', '36');
INSERT INTO `paintinggenres` VALUES ('26', '24', '36');
INSERT INTO `paintinggenres` VALUES ('28', '25', '1');
INSERT INTO `paintinggenres` VALUES ('29', '26', '1');
INSERT INTO `paintinggenres` VALUES ('32', '29', '1');
INSERT INTO `paintinggenres` VALUES ('33', '30', '76');
INSERT INTO `paintinggenres` VALUES ('34', '31', '1');
INSERT INTO `paintinggenres` VALUES ('38', '35', '33');
INSERT INTO `paintinggenres` VALUES ('39', '36', '33');
INSERT INTO `paintinggenres` VALUES ('40', '37', '34');
INSERT INTO `paintinggenres` VALUES ('42', '39', '35');
INSERT INTO `paintinggenres` VALUES ('44', '41', '35');
INSERT INTO `paintinggenres` VALUES ('45', '42', '36');
INSERT INTO `paintinggenres` VALUES ('47', '45', '35');
INSERT INTO `paintinggenres` VALUES ('48', '46', '35');
INSERT INTO `paintinggenres` VALUES ('49', '47', '35');
INSERT INTO `paintinggenres` VALUES ('50', '48', '35');
INSERT INTO `paintinggenres` VALUES ('51', '49', '35');
INSERT INTO `paintinggenres` VALUES ('52', '50', '35');
INSERT INTO `paintinggenres` VALUES ('54', '52', '36');
INSERT INTO `paintinggenres` VALUES ('56', '54', '36');
INSERT INTO `paintinggenres` VALUES ('57', '55', '36');
INSERT INTO `paintinggenres` VALUES ('58', '56', '36');
INSERT INTO `paintinggenres` VALUES ('59', '57', '36');
INSERT INTO `paintinggenres` VALUES ('60', '58', '36');
INSERT INTO `paintinggenres` VALUES ('62', '60', '36');
INSERT INTO `paintinggenres` VALUES ('63', '61', '36');
INSERT INTO `paintinggenres` VALUES ('65', '63', '36');
INSERT INTO `paintinggenres` VALUES ('66', '64', '36');
INSERT INTO `paintinggenres` VALUES ('67', '65', '36');
INSERT INTO `paintinggenres` VALUES ('68', '66', '36');
INSERT INTO `paintinggenres` VALUES ('69', '67', '36');
INSERT INTO `paintinggenres` VALUES ('70', '68', '36');
INSERT INTO `paintinggenres` VALUES ('71', '70', '36');
INSERT INTO `paintinggenres` VALUES ('72', '71', '36');
INSERT INTO `paintinggenres` VALUES ('686', '600', '89');
INSERT INTO `paintinggenres` VALUES ('693', '608', '97');
INSERT INTO `paintinggenres` VALUES ('694', '609', '1');
INSERT INTO `paintinggenres` VALUES ('695', '610', '95');
INSERT INTO `paintinggenres` VALUES ('696', '611', '97');
INSERT INTO `paintinggenres` VALUES ('697', '612', '97');
INSERT INTO `paintinggenres` VALUES ('724', '639', '97');
INSERT INTO `paintinggenres` VALUES ('726', '641', '97');
INSERT INTO `paintinggenres` VALUES ('728', '643', '97');
INSERT INTO `paintinggenres` VALUES ('729', '644', '97');
INSERT INTO `paintinggenres` VALUES ('730', '645', '102');

-- ----------------------------
-- Table structure for paintings
-- ----------------------------
DROP TABLE IF EXISTS `paintings`;
CREATE TABLE `paintings` (
  `PaintingID` int(11) NOT NULL AUTO_INCREMENT,
  `ArtistID` int(11) DEFAULT '0',
  `GalleryID` int(11) DEFAULT NULL,
  `ImageFileName` varchar(50) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `ShapeID` int(11) DEFAULT NULL,
  `MuseumLink` varchar(255) DEFAULT NULL,
  `AccessionNumber` varchar(255) DEFAULT NULL,
  `CopyrightText` varchar(255) DEFAULT 'Public domain',
  `Description` longtext,
  `Excerpt` longtext,
  `YearOfWork` varchar(255) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `Medium` varchar(255) DEFAULT 'Oil on canvas',
  `Cost` decimal(19,4) DEFAULT '700.0000',
  `MSRP` decimal(19,4) DEFAULT '900.0000',
  `upload_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `uploader` varchar(255) DEFAULT NULL,
  `heat` int(11) DEFAULT NULL,
  `is_sold` int(11) DEFAULT NULL,
  PRIMARY KEY (`PaintingID`),
  UNIQUE KEY `ImageFileName` (`ImageFileName`),
  KEY `ArtistID` (`ArtistID`),
  KEY `GalleryID` (`GalleryID`),
  KEY `ShapeID` (`ShapeID`),
  KEY `Title` (`Title`),
  KEY `PaintingID` (`PaintingID`)
) ENGINE=InnoDB AUTO_INCREMENT=646 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paintings
-- ----------------------------
INSERT INTO `paintings` VALUES ('5', '1', '20', '001050.jpg', 'Self-portrait (Yo)', '1', 'http://www.moma.org/collection/works/80026?locale=en', '587.1998', 'Estate of Pablo Picasso / Artists Rights Society', null, null, '1901', '54', '32', 'Oil on cardboard on panel', '125.0000', '135.0000', '2022-05-24 19:00:17', '2022-05-26 00:50:01', 'mizuki', '33', '1');
INSERT INTO `paintings` VALUES ('7', '1', '7', '001080.jpg', 'Family of Saltimbanques', '3', 'http://www.nga.gov/content/ngaweb/Collection/art-object-page.46665.html', '1963.10.190', 'Estate of Pablo Picasso/Artists Rights Society', 'painting by Pablo Picasso. ', '<em>Family of Saltimbanques</em> (La famille de saltimbanques) is a 1905 painting by Pablo Picasso. It is considered the masterpiece of Picasso\'s circus period.', '1905', '213', '230', 'Oil on canvas', '440.0000', '570.0000', '2022-05-24 19:00:34', '2022-05-28 14:54:33', 'icalter', '49', '1');
INSERT INTO `paintings` VALUES ('8', '1', '11', '001090.jpg', 'Portrait of Daniel-Henry Kahnweiler', '1', 'http://www.artic.edu/aic/collections/artwork/111060', null, 'Estate of Pablo Picasso / Artists Rights Society', 'In 1907 Picasso joined an art gallery that had recently been opened in Paris by Daniel-Henry Kahnweiler. Kahnweiler was a German art historian, art collector who became one of the premier French art dealers of the 20th century. He was among the first champions of Pablo Picasso, Georges Braque and the Cubism that they jointly developed. Kahnweiler promoted burgeoning artists such as André Derain, Kees Van Dongen, Fernand Léger, Juan Gris, Maurice de Vlaminck and several others who had come from all over the globe to live and work in Montparnasse at the time.', 'In 1907 Picasso joined an art gallery that had recently been opened in Paris by Daniel-Henry Kahnweiler. Kahnweiler was a German art historian, art collector who became one of the premier French art dealers of the 20th century.', '1910', '101', '73', 'Oil on canvas', '900.0000', '1000.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('11', '1', '13', '001130.jpg', 'Self Portrait With A Palette', '1', 'http://www.philamuseum.org/collections/permanent/50947.html', '1950-1-1', 'Estate of Pablo Picasso / Artists Rights Society', 'This self-portrait casts the twenty-five-year-old painter as a hardy, athletic figure and sets the stage for the legend of Picasso as the artistic champion of the twentieth century. In preparatory drawings the artist included a brush in his right hand, but he removed it in this final version. Its absence attests to the notion that creative genius is not simply manual dexterity but the expression of an inner vision, here symbolized by the artist’s intense, staring eyes.', 'This self-portrait casts the twenty-five-year-old painter as a hardy, athletic figure and sets the stage for the legend of Picasso as the artistic champion of the twentieth century.', '1906', '92', '73', 'Oil on canvas', '500.0000', '800.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '243', '1');
INSERT INTO `paintings` VALUES ('12', '1', '6', '001150.jpg', 'Portrait of Gertrude Stein', '1', 'http://www.metmuseum.org/art/collection/search/488221', '47.106', 'Estate of Pablo Picasso / Artists Rights Society', 'By 1905 Picasso became a favorite of the American art collectors Leo and Gertrude Stein. Their older brother Michael Stein and his wife Sarah also became collectors of his work. Picasso painted portraits of both Gertrude Stein and her nephew Allan Stein. Gertrude Stein became Picasso\'s principal patron, acquiring his drawings and paintings and exhibiting them in her informal Salon at her home in Paris. At one of her gatherings in 1905, he met Henri Matisse, who was to become a lifelong friend and rival. The Steins introduced him to Claribel Cone and her sister Etta who were American art collectors; they also began to acquire Picasso and Matisse\'s paintings. Eventually Leo Stein moved to Italy, and Michael and Sarah Stein became patrons of Matisse; while Gertrude Stein continued to collect Picasso.', 'By 1905 Picasso became a favorite of the American art collectors Leo and Gertrude Stein. Their older brother Michael Stein and his wife Sarah also became collectors of his work. Picasso painted portraits of both Gertrude Stein and her nephew Allan Stein.', '1907', '100', '81', 'oil on canvas', '620.0000', '800.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '11', '0');
INSERT INTO `paintings` VALUES ('35', '6', '16', '006030.jpg', 'La Grande Odalisque', '2', 'http://www.louvre.fr/en/oeuvre-notices/une-odalisque', 'R.F. 1158', '&copy; Musée du Louvre', 'Grande Odalisque</em>, also known as Une Odalisque or La Grande Odalisque, is an oil painting of 1814 by Jean Auguste Dominique Ingres depicting an odalisque, or concubine. Ingres\' contemporaries considered the work to signify Ingres\' break from Neoclassicism, indicating a shift toward exotic Romanticism.\r\nGrande Odalisque attracted wide criticism when it was first shown. It has been especially noted for the elongated proportions and lack of anatomical realism. The work is housed in the Louvre, Paris.\r\nThis eclectic mix of styles, combining classical form with Romantic themes, prompted harsh criticism when it was first shown in 1814. Critics viewed Ingres as a rebel against the contemporary style of form and content. When the painting was first shown in the Salon of 1819, one critic remarked that the work had \"neither bones nor muscle, neither blood, nor life, nor relief, indeed nothing that constitutes imitation\".[3] This echoed the general view that Ingres had disregarded anatomical realism.[4] Ingres instead favored long lines to convey curvature and sensuality, as well as abundant, even light to tone down the volume. Ingres continued to be criticized for his work until the mid-1820s.', '<em>Grande Odalisque</em>, also known as Une Odalisque or La Grande Odalisque, is an oil painting of 1814 by Jean Auguste Dominique Ingres depicting an odalisque, or concubine. Ingres\' contemporaries considered the work to signify Ingres\' break from Neoclassicism, indicating a shift toward exotic Romanticism.', '1814', '89', '163', 'Oil on canvas', '125.0000', '175.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '3', '0');
INSERT INTO `paintings` VALUES ('36', '7', '16', '007020.jpg', 'Liberty Leading the People', '3', 'http://www.louvre.fr/en/oeuvre-notices/july-28-liberty-leading-people', 'R.F. 129', '&copy; Musée du Louvre', '<em>Liberty Leading the People</em> (French: La Liberté guidant le peuple) is a painting by Eugène Delacroix commemorating the July Revolution of 1830, which toppled Charles X of France. A woman personifying Liberty leads the people forward over the bodies of the fallen, holding the tricolore flag of the French Revolution in one hand and brandishing a bayonetted musket with the other. The painting is perhaps Delacroix\'s best-known work.\r\nDelacroix depicted Liberty, as both an allegorical goddess-figure and a robust woman of the people, an approach that contemporary critics denounced as \"ignoble\". The mound of corpses acts as a kind of pedestal from which Liberty strides, barefoot and bare-breasted, out of the canvas and into the space of the viewer. The Phrygian cap she wears had come to symbolize liberty during the first French Revolution, of 1789-94. The painting has been seen as a marker to the end of the Age of Enlightenment, as many scholars see the end of the French Revolution as the start of the romantic era.\r\nThe fighters are from a mixture of social classes, ranging from the bourgeoisie represented by the young man in a top hat, to the revolutionary urban worker, as exemplified by the boy holding pistols (who may have been the inspiration for the character Gavroche in Victor Hugo\'s Les Misérables). What they have in common is the fierceness and determination in their eyes. Aside from the flag held by Liberty, a second, minute tricolore can be discerned in the distance flying from the towers of Notre Dame.', '<em>Liberty Leading the People</em> (French: La Liberté guidant le peuple) is a painting by Eugène Delacroix commemorating the July Revolution of 1830, which toppled Charles X of France. A woman personifying Liberty leads the people forward over the bodies of the fallen, holding the tricolore flag of the French Revolution in one hand and brandishing a bayonetted musket with the other. The painting is perhaps Delacroix\'s best-known work.', '1830', '260', '325', 'Oil on canvas', '625.0000', '860.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('37', '10', '19', '010020.jpg', 'Burial at Ornans', '4', 'http://www.musee-orsay.fr/en/collections/works-in-focus/search/commentaire/commentaire_id/un-enterrement-a-ornans-130.html', 'RF 325', '&copy; Home', '<em>The Burial</em>, one of Courbet\'s most important works, records the funeral of his grandfather which he attended in September 1848. People who attended the funeral were the models for the painting. Previously, models had been used as actors in historical narratives, but in <em>Burial</em> Courbet said he \"painted the very people who had been present at the interment, all the townspeople\". The result is a realistic presentation of them, and of life in Ornans.\r\nThe vast painting—it measures 10 by 22 feet (3.1 by 6.6 meters)—drew both praise and fierce denunciations from critics and the public, in part because it upset convention by depicting a prosaic ritual on a scale which previously would have been reserved for a religious or royal subject.', '<em>The Burial</em>, one of Courbet\'s most important works, records the funeral of his grandfather which he attended in September 1848. People who attended the funeral were the models for the painting.', '1849', '314', '663', 'Oil on canvas', '1145.0000', '1190.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '5', '1');
INSERT INTO `paintings` VALUES ('39', '12', '36', '012060.jpg', 'Bar at the Folies Bergere', '2', 'http://courtauld.ac.uk/gallery/collection/impressionism-post-impressionism/edouard-manet-a-bar-at-the-folies-bergere', null, '&copy; The Courtauld Gallery', '<em>A Bar at the Folies-Bergère</em> (French: Un bar aux Folies Bergère), painted and exhibited at the Paris Salon in 1882, was the last major work by French painter Édouard Manet. It depicts a scene in the Folies Bergère nightclub in Paris.\r\nThe painting is filled with contemporaneous details specific to the Folies-Bergère. The distant pair of green feet in the upper left-hand corner belong to a trapeze artist, who is performing above the restaurant\'s patrons.\r\nThe beer which is depicted, Bass Pale Ale (noted by the red triangle on the label), would have catered not to the tastes of Parisians, but to those of English tourists, suggesting a British clientele. Manet has signed his name on the label of the bottle at the bottom left, combining the centuries-old practice of self-promotion in art with something more modern, bordering on the product placement concept of the late twentieth century. One interpretation of the painting has been that far from only being a seller of the wares shown on the counter, the woman is herself one of the wares for sale; conveying undertones of prostitution. The man in the background may be a potential client.\r\nBut for all its specificity to time and place, it is worth noting that, should the background of this painting indeed be a reflection in a mirror on the wall behind the bar as suggested by some critics, the woman in the reflection would appear directly behind the image of the woman facing forward. Neither are the bottles reflected accurately or in like quantity for it to be a reflection. These details were criticized in the French press when the painting was shown. The assumption is faulty when one considers that the postures of the two women, however, are quite different and the presence of the man to whom the second woman speaks marks the depth of the subject area. Indeed many critics view the faults in the reflection to be fundamental to the painting as they show a double reality and meaning to the work. One interpretation is that the reflection is an interaction earlier in time that results in the subject\'s expression in the painting\'s present.', '<em>A Bar at the Folies-Bergère</em> (French: Un bar aux Folies Bergère), painted and exhibited at the Paris Salon in 1882, was the last major work by French painter Édouard Manet. It depicts a scene in the Folies Bergère nightclub in Paris.', '1882', '96', '130', 'Oil on canvas', '125.0000', '200.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '2', '0');
INSERT INTO `paintings` VALUES ('41', '14', '6', '014040.jpg', 'At the Piano', '1', 'http://www.metmuseum.org/art/collection/search/459112', '1975.1.201', 'Open Access for Scholarly Content', 'In late 1891 or early 1892 Renoir was invited by the French government to execute a painting for a new museum in Paris, the Musée du Luxembourg, which was to be devoted to the work of living artists. He chose as his subject two girls at the piano. Aware of the intense scrutiny to which his submission would be subjected, Renoir lavished extraordinary care on this project, developing and refining the composition in a series of five canvases. The Lehman painting and the nearly identical version formerly in the collection of Renoir\'s fellow Impressionist Gustave Caillebotte have long been regarded as the most accomplished variants of this intimate and engaging scene of bourgeois domestic life.', 'Aware of the intense scrutiny to which his submission would be subjected, Renoir lavished extraordinary care on this project, developing and refining the composition in a series of five canvases.', '1892', '116', '90', 'Oil on canvas', '790.0000', '940.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '4', '0');
INSERT INTO `paintings` VALUES ('42', '15', '19', '015050.jpg', 'Glass of Absinthe', '1', 'http://www.musee-orsay.fr/en/collections/works-in-focus/search/commentaire/commentaire_id/dans-un-cafe-167.html', 'RF 1984', '&copy; Home', '<em>L\'Absinthe</em> (English: The Absinthe Drinker or Glass of Absinthe) is a painting by Edgar Degas. Some original title translations are A sketch of a French Café, then Figures at Café, the title was finally changed in 1893 to L’Absinthe (the name the piece is known by today). It is now in the permanent collection of the Musée d\'Orsay in Paris.\r\nPainted in 1875-1876, it depicts two figures, a woman and man, who sit in the center and right of this painting, respectively. The man, wearing a hat, looks right, off the canvas, while the woman, dressed formally and also wearing a hat, stares vacantly downward. A glass filled with the eponymous greenish liquid sits before her. The painting is a representation of the increasing social isolation in Paris during its stage of rapid growth.', '<em>L\'Absinthe</em> (English: The Absinthe Drinker or Glass of Absinthe) is a painting by Edgar Degas. Some original title translations are A sketch of a French Café, then Figures at Café, the title was finally changed in 1893 to L’Absinthe (the name the piece is known by today).', '1877', '92', '68', 'Oil on canvas', '1225.0000', '1300.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '1', '0');
INSERT INTO `paintings` VALUES ('45', '17', '19', '017020.jpg', 'Women in the Garden', '1', 'http://www.musee-orsay.fr/en/collections/works-in-focus/search/commentaire/commentaire_id/femmes-au-jardin-343.html', 'RF 2773', '&copy; Home', 'Monet’s technique of “en plein air” painting was hard at work on this painting. Because it necessitated that he work from the same point of view as he painted, he dug a trench for the bottom half of the painting to sit in while he painted the top, due to its large size (it measures 100 by 81 inches). His model for the women of the painting was Camille Doncieux, who would later become his wife, bearing him two sons. To finish the dresses in the most fashionable style, Monet used magazine illustrations to render the clothing.', 'Monet’s technique of “en plein air” painting was hard at work on this painting. Because it necessitated that he work from the same point of view as he painted, he dug a trench for the bottom half of the painting to sit in while he painted the top, due to its large size.', '1866', '205', '255', 'Oil on canvas', '850.0000', '1050.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('46', '17', '11', '017030.jpg', 'Stacks of Wheat (End of Summer)', '2', 'http://www.artic.edu/aic/collections/artwork/64818', null, 'Rights-Managed (RM)', 'The monumental stacks that Claude Monet depicted in his series Stacks of Wheat rose fifteen to twenty feet and stood just outside the artist’s farmhouse at Giverny. Through 1890 and 1891, he worked on this series both in the field, painting simultaneously at several easels, and in the studio, refining pictorial harmonies. In May 1891, Monet hung fifteen of these canvases next to each other in one small room in the Galerie Durand-Ruel in Paris. An unprecedented critical and financial success, the exhibition marked a breakthrough in Monet’s career, as well as in the history of French art.', 'The monumental stacks that Claude Monet depicted in his series Stacks of Wheat rose fifteen to twenty feet and stood just outside the artist’s farmhouse at Giverny.', '1891', '60', '100', 'Oil on canvas', '1200.0000', '1500.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('47', '17', '6', '017070.jpg', 'The Houses of Parliament (Effect of Fog)', '3', 'http://www.metmuseum.org/art/collection/search/437128', '56.135.6', 'Open Access for Scholarly Content', 'In the fall of 1899 and the early months of 1900 and of 1901, Monet executed a series of views of the Thames River in London. From his room at the Savoy Hotel, he painted Waterloo Bridge to the east, and Charing Cross Bridge to the west; beginning in February 1900, he set up his easel on a terrace at Saint Thomas\'s Hospital across the river, reserving time in the late afternoon to depict the Houses of Parliament.\r\n\r\nWhile in London, Monet produced nearly a hundred canvases, reportedly moving from one to another as the light changed. He continued to work on these paintings in his studio at Giverny. In May 1904, thirty-seven were exhibited at the Galerie Durand-Ruel in Paris, including this view of the Houses of Parliament cloaked in dense fog.', 'In the fall of 1899 and the early months of 1900 and of 1901, Monet executed a series of views of the Thames River in London. From his room at the Savoy Hotel, he painted Waterloo Bridge to the east, and Charing Cross Bridge to the west; beginning in February 1900, he set up his easel on a terrace at Saint Thomas\'s Hospital across the river, reserving time in the late afternoon to depict the Houses of Parliament.', '1903', '81', '92', 'Oil on canvas', '750.0000', '900.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '2', '1');
INSERT INTO `paintings` VALUES ('48', '17', '6', '017060.jpg', 'Water Lilies', '4', 'http://www.metmuseum.org/art/collection/search/438008', '1998.325.2', 'Open Access for Scholarly Content', 'Monet left much of his late work unfinished and released few paintings for sale, reporting that he was not yet satisfied and was still working on them \"with passion.\" This canvas is one of four water-lily pictures that, quite exceptionally, he did complete, sign, and sell in 1919.', 'Monet left much of his late work unfinished and released few paintings for sale, reporting that he was not yet satisfied and was still working on them \"with passion.\" This canvas is one of four water-lily pictures that, quite exceptionally, he did complete, sign, and sell in 1919.', '1919', '101', '200', 'Oil on canvas', '750.0000', '900.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('49', '17', '19', '017050.jpg', 'Rouen Cathedral, Full Sunlight', '1', 'http://www.musee-orsay.fr/en/collections/index-of-works/notice.html?no_cache=1&nnumid=001285', 'RF 2002', '&copy; Home', null, null, '1894', '107', '73', 'Oil on canvas', '1300.0000', '4125.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('50', '17', '7', '017040.jpg', 'Woman with a Parasol - Madame Monet and Her Son', '1', 'http://www.nga.gov/content/ngaweb/Collection/art-object-page.61379.html', '1983.1.29', 'Open Access', 'Woman with a Parasol was painted outdoors, probably in a single session of several hours\' duration. The artist intended the work to convey the feeling of a casual family outing rather than a formal portrait, and used pose and placement to suggest that his wife and son interrupted their stroll while he captured their likenesses. The brevity of the moment portrayed here is conveyed by a repertory of animated brushstrokes of vibrant color, hallmarks of the style Monet was instrumental in forming. Bright sunlight shines from behind Camille to whiten the top of her parasol and the flowing cloth at her back, while colored reflections from the wildflowers below touch her front with yellow.', 'Woman with a Parasol was painted outdoors, probably in a single session of several hours\' duration.', '1875', '100', '81', 'Oil on canvas', '500.0000', '940.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '2', '0');
INSERT INTO `paintings` VALUES ('51', '18', '50', '018020.jpg', 'Vision of the Sermon', '3', 'https://www.nationalgalleries.org/object/NG 1643', 'NG 1643', null, 'This painting depicts the scene from the Bible in which Jacob wrestles an angel. As if in a modern-day wrestling arena, French women watch the wrestling match from afar. This painting was created during Gaugin’s stay in Pont-Avon, France, which is where he created his other masterpieces, The Yellow Christ and The Green Christ. This painting also incorporates elements from his Christ series, which also place Breton French women alongside a Biblical scene, placing them as observers in the story. In his typical style, flat areas of color are outlined by thick black lines, and the figures are void of any shading or depth of color.', 'This painting depicts the scene from the Bible in which Jacob wrestles an angel. As if in a modern-day wrestling arena, French women watch the wrestling match from afar. This painting was created during Gaugin’s stay in Pont-Avon, France.', '1888', '74', '93', 'Oil on canvas', '230.0000', '290.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('52', '18', '29', '018030.jpg', 'Self-Portrait with Portrait of Émile Bernard (Les misérables)', '2', 'https://www.vangoghmuseum.nl/en/collection/s0224V1962', 's0224V1962', 'Non commercial use', 'Gauguin painted himself in the guise of Jean Valjean, the main character of Victor Hugo’s novel Les Misérables, equating the vibrant and loving fictional outcast with the misunderstood artists of his time.', 'Gauguin painted himself in the guise of Jean Valjean, the main character of Victor Hugo’s novel Les Misérables, equating the vibrant and loving fictional outcast with the misunderstood artists of his time.', '1888', '45', '55', 'Oil on canvas', '250.0000', '300.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('54', '18', '51', '018040.jpg', 'Yellow Christ', '3', 'https://www.albrightknox.org/collection/search/piece:360/', '360', 'Public Domain', '<em>The Yellow Christ</em>, in addition to <em>The Green Christ</em>, also painted by Gaugin, is said to be one of the key works in Cloisonnism. The Christ in the painting is a direct representation of a crucifix in Pont-Avon, France, where Gaugin visited to paint a number of times. It depicts a yellow form of Christ being crucified in 19th century northern France. French Breton women gather around the cross in prayer. The only shading in the painting is of the women bowed in prayer, the figure of Christ on the cross clearly outlined in black, and his form is flat, typical of the Gaugin’s symbolic style.', '<em>The Yellow Christ</em>, in addition to <em>The Green Christ</em>, also painted by Gaugin, is said to be one of the key works in Cloisonnism. The Christ in the painting is a direct representation of a crucifix in Pont-Avon, France, where Gaugin visited to paint a number of times.', '1889', '92', '73', 'Oil on canvas', '250.0000', '300.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '4', '0');
INSERT INTO `paintings` VALUES ('55', '18', '6', '018050.jpg', 'We Greet Thee Mary', '3', 'http://www.metmuseum.org/art/collection/search/438821', '51.112.2', 'Open Access for Scholarly Content', 'Before embarking on a series of pictures inspired by Polynesian religious beliefs, Gauguin devoted this, his first major Tahitian canvas, to a Christian theme, describing it in a letter of March 1892: \"An angel with yellow wings reveals Mary and Jesus, both Tahitians, to two Tahitian women, nudes dressed in pareus, a sort of cotton cloth printed with flowers that can be draped from the waist. Very somber, mountainous background and flowering trees . . . a dark violet path and an emerald green foreground, with bananas on the left. I\'m rather happy with it.\" Gauguin based much of the composition on a photograph he owned of a bas-relief in the Javanese temple of Borobudur.', 'Before embarking on a series of pictures inspired by Polynesian religious beliefs, Gauguin devoted this, his first major Tahitian canvas, to a Christian theme.', '1891', '114', '88', 'Oil on canvas', '900.0000', '1075.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('56', '18', '49', '018080.jpg', 'Where Do We Come From? What Are We? Where Are We Going?', '4', 'http://www.mfa.org/collections/object/where-do-we-come-from-what-are-we-where-are-we-going-32558', '36.270', 'Public domain', 'This is Paul Gaugin’s most famous painting, and he considered it his masterpiece, and the culmination of his thoughts. In Tahiti, as he was painting his masterpiece, Gaugin declared that he would commit suicide upon its completion. Although this was something he had previously attempted, this was not the case, as the artist died of syphilis in 1903. The painting was meant to be read from right to left, with the three main figures in the painting representing the three questions of the title. The figures are arranged from the beginning stages of life, from young figures with a child, to the middle aged figure in the middle, to the elder figure on the left of the painting. The idol in the background, situated behind the elder figure, represents the “Beyond.”', 'This is Paul Gaugin’s most famous painting, and he considered it his masterpiece, and the culmination of his thoughts. In Tahiti, as he was painting his masterpiece, Gaugin declared that he would commit suicide upon its completion.', '1897', '139', '375', 'Oil on canvas', '650.0000', '800.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('57', '19', '52', '019010.jpg', 'Self Portrait', '1', 'http://www.dia.org/object-info/662cf867-c9e6-4f6b-9281-8b5ca7dd6c72.aspx', '22.13', '&copy; Detroit Institute of Arts', null, null, '1887', '35', '27', 'Oil on canvas', '420.0000', '550.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '1', '1');
INSERT INTO `paintings` VALUES ('58', '19', '29', '019020.jpg', 'Potato Eaters', '2', 'https://www.vangoghmuseum.nl/en/collection/s0005V1962', 's0005V1962', 'Non commercial use', 'For <em>The Potato Eaters</em>, Van Gogh’s first major work, he wanted to depict peasants as they really were. He thus chose coarse and ugly models, so they would look as natural as possible in the final work. He made sketches of the work and sent them to his brother, who helped Van Gogh make adjustment in the composition. As far as two years after Van Gogh completed this painting, he considered it his finest work. This painting has also been a main target for art thieves, who have stolen it not once, but twice times. An early version of the painting was stolen in 1988, but later returned with no ransom, and again in 1991, when it was abandoned by the thieves and recovered.', 'For <em>The Potato Eaters</em>, Van Gogh’s first major work, he wanted to depict peasants as they really were. He thus chose coarse and ugly models, so they would look as natural as possible in the final work.', '1885', '82', '114', 'Oil on canvas', '1250.0000', '1350.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('60', '19', '29', '019050.jpg', 'Sunflowers', '1', 'https://www.vangoghmuseum.nl/en/collection/s0031V1962', 's0031V1962', 'Non commercial use', 'Van Gogh’s paintings of sunflowers are among his most famous. He did them in Arles, in the south of France, in 1888 and 1889. Vincent painted a total of five large canvases with sunflowers in a vase, with three shades of yellow ‘and nothing else’. In this way, he demonstrated that it was possible to create an image with numerous variations of a single colour, without any loss of eloquence.', 'The sunflower paintings had a special significance for Van Gogh: they communicated ‘gratitude’, he wrote.', '1889', '73', '95', 'Oil on canvas', '1300.0000', '1500.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('61', '19', '29', '019040.jpg', 'Décoration for the Yellow House', '2', 'https://www.vangoghmuseum.nl/en/collection/s0032V1962', 's0032V1962', 'Non commercial use', 'The Décoration for the Yellow House was the main project Vincent van Gogh focused on in Arles, from August 1888 until his breakdown the day before Christmas. This Décoration had no pre-defined form or size; the central idea of the Décoration grew step by step, with the progress of his work. Starting with the Sunflowers, portraits were included in the next step. Finally, mid-September 1888, the idea took shape: from this time on he concentrated on size 30 canvases (Toiles de 30), which were all meant to form part of this Décoration', '<em>Sunflowers</em> (original title, in French: Tournesols) are the subject of two series of still life paintings by the Dutch painter Vincent van Gogh. The earlier series executed in Paris in 1887 gives the flowers lying on the ground, while the second set executed a year later in Arles shows bouquets of sunflowers in a vase.', '1888', '72', '92', 'Oil on canvas', '1290.0000', '1540.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('63', '19', '20', '019070.jpg', 'Starry Night', '3', 'http://www.moma.org/collection/works/79802?locale=en', '472.1941', '&copy; Art Resource', 'In the later part of his life, Van Gogh committed himself to an asylum in Saint Remy de Provence. <em>The Starry Night</em> was the view from the window in Van Gogh’s sanitarium bedroom. Although it is a night scene, it was painted during the day. The painting is often referred to as Van Gogh’s magnus opus. As he often sent his works to his brother Theo for his approval, he mailed this one to him in late 1889. He also wrote that he was not so happy about the work, which did not seem complete, as he had originally intended it to simply be a study of the night sky.', 'In the later part of his life, Van Gogh committed himself to an asylum in Saint Remy de Provence. <em>The Starry Night</em> was the view from the window in Van Gogh’s sanitarium bedroom. Although it is a night scene, it was painted during the day.', '1889', '74', '92', 'Oil on canvas', '1340.0000', '1410.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('64', '19', '36', '019060.jpg', 'Self Portrait With Bandaged Ear', '1', 'http://courtauld.ac.uk/gallery/collection/impressionism-post-impressionism/vincent-van-gogh-self-portrait-with-bandaged-ear', null, '&copy; The Courtauld Gallery', 'This self-portrait was painted shortly after Van Gogh returned home from hospital having mutilated his own ear.', 'This self-portrait was painted shortly after Van Gogh returned home from hospital having mutilated his own ear.', '1889', '60', '50', 'Oil on canvas', '250.0000', '300.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '1', '0');
INSERT INTO `paintings` VALUES ('65', '19', '29', '019080.jpg', 'Wheatfield with Crows', '4', 'https://www.vangoghmuseum.nl/en/collection/s0149V1962', 's0149V1962', 'Non commercial use', '<em>Wheatfield with Crows</em> is a July 1890 painting by Vincent van Gogh. It is commonly but mistakenly stated that this was Van Gogh\'s last painting. Art historians are uncertain as to which painting was Van Gogh\'s last, as no clear historical records exist, but the evidence of his letters suggests that Wheatfield with Crows was completed around 10 July and predates such paintings as Auvers Town Hall on 14 July 1890 and Daubigny\'s Garden.', '<em>Wheatfield with Crows</em> is a July 1890 painting by Vincent van Gogh. It is commonly but mistakenly stated that this was Van Gogh\'s last painting.', '1890', '50', '103', 'Oil on canvas', '300.0000', '350.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('66', '20', '11', '020040.jpg', 'A Sunday Afternoon on the Island of La Grande Jatt', '2', 'http://www.artic.edu/aic/collections/artwork/27992', null, 'Rights-Managed (RM)', 'Seurat spent over two years painting <em>A Sunday Afternoon</em>, focusing meticulously on the landscape of the park. He reworked the original as well as completed numerous preliminary drawings and oil sketches. He would go and sit in the park and make numerous sketches of the various figures in order to perfect their form. He concentrated on the issues of colour, light, and form. \r\nMotivated by study in optical and colour theory, Seurat contrasted miniature dots of colors that, through optical unification, form a single hue in the viewer\'s eye. He believed that this form of painting, now known as pointillism, would make the colors more brilliant and powerful than standard brush strokes. To make the experience of the painting even more vivid, he surrounded it with a frame of painted dots, which in turn he enclosed with a pure white, wooden frame, which is how the painting is exhibited today at the Art Institute of Chicago.\r\nIn creating the picture, Seurat employed the then-new pigment zinc yellow (zinc chromate), most visibly for yellow highlights on the lawn in the painting, but also in mixtures with orange and blue pigments. In the century and more since the painting\'s completion, the zinc yellow has darkened to brown—a colour degeneration that was already showing in the painting in Seurat\'s lifetime.', 'Seurat spent over two years painting <em>A Sunday Afternoon</em>, focusing meticulously on the landscape of the park. He reworked the original as well as completed numerous preliminary drawings and oil sketches. He would go and sit in the park and make numerous sketches of the various figures in order to perfect their form.', '1884', '208', '308', 'Oil on canvas', '425.0000', '550.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '5', '0');
INSERT INTO `paintings` VALUES ('67', '20', '19', '020070.jpg', 'Circus', '1', 'http://www.musee-orsay.fr/en/collections/works-in-focus/search/commentaire/commentaire_id/cirque-7090.html', 'RF 2511', '&copy; Home', null, null, '1891', '185', '152', 'Oil on canvas', '450.0000', '500.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '6', '0');
INSERT INTO `paintings` VALUES ('68', '21', '37', '021010.jpg', 'Mont Sainte-Victoire seen from Bellevue', '2', 'http://www.barnesfoundation.org/collections/art-collection/object/4672/mont-sainte-victoire-la-montagne-sainte-victoire', 'BF13', '&copy; The Barnes Foundation', '<em>Mont Sainte-Victoire seen from Bellevue</em> is a landscape painting dating from around 1885, by the French artist Paul Cézanne. The subject of the painting is the Montagne Sainte-Victoire in Provence in southern France. Cézanne spent a lot of time in Aix-en-Provence at the time, and developed a special relationship with the landscape. This particular mountain, that stood out in the surrounding landscape, he could see from his house, and he painted it in on numerous occasions.\r\nThe painting shows clearly Cézanne\'s project of rendering order and clarity to natural scenes, without giving up the optical realism of Impressionism. Both the light and the colours of the painting give the impression of a pattern that is not imposed on nature, but is there naturally.', '<em>Mont Sainte-Victoire seen from Bellevue</em> is a landscape painting dating from around 1885, by the French artist Paul Cézanne. The subject of the painting is the Montagne Sainte-Victoire in Provence in southern France. Cézanne spent a lot of time in Aix-en-Provence at the time, and developed a special relationship with the landscape.', '1885', '73', '92', 'Oil on canvas', '850.0000', '900.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('69', '21', '13', '021020.jpg', 'Portrait of Madame Cézanne with Loosened Hair', '1', 'http://www.philamuseum.org/collections/permanent/82555.html', '1986-26-1', 'Public Domain', '<em>Portrait of Madame Cézanne with Loosened Hair</em> (or Madame Cézanne with Unbound Hair) is an oil-on-canvas painting by French artist Paul Cézanne, variously dated from the mid 1870s to the early 1890s. Although the model, his wife Hortense Fiquet, was not supportive and did not understand or take an interest her husband\'s work, this is one of forty-four portraits in which she sat for him from 1869, a period during which she progressed from mistress, to wife, to ex-wife. Something of a socialite, Cézanne latterly found Fiquet often fickle and shallow, and once remarked, \"My wife only cares for Switzerland and lemonade\". The sensitivity and depth ascribed to her in this work, is likely drawn from his own personality, projected onto her image.', '<em>Portrait of Madame Cézanne with Loosened Hair</em> (or Madame Cézanne with Unbound Hair) is an oil-on-canvas painting by French artist Paul Cézanne, variously dated from the mid 1870s to the early 1890s. Although the model, his wife Hortense Fiquet, was not supportive and did not understand or take an interest her husband\'s work, this is one of forty-four portraits in which she sat for him from 1869.', '1869', '62', '51', 'Oil on canvas', '750.0000', '900.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('70', '21', '6', '021070.jpg', 'Card Players', '3', 'http://www.metmuseum.org/art/collection/search/435868', '61.101.1', 'Open Access for Scholarly Content', '<em>The Card Players</em> is a series of oil paintings from the French Post-Impressionist artist Paul Cézanne. Painted during Cézanne\'s final period in the early 1890s, there are five paintings in the series. The versions vary in size and in the number of players depicted. The series is considered by critics to be a cornerstone of Cézanne\'s work during the early-to-mid 1890s period, as well as a \"prelude\" to his final years, when he painted some of his most acclaimed work.\r\nEach painting depicts Provençal peasants immersed in smoking their pipes and playing cards. The subjects, all male, are displayed as studious within their card playing, eyes cast downward, intent on the game at hand. Cézanne adapted a motif from 17th century Dutch and French genre painting which often depicted card games with rowdy, drunken gamblers in taverns, replacing them instead with stone-faced tradesmen in a more simplified setting. Whereas previous paintings of the genre had illustrated heightened moments of drama, Cézanne\'s portraits have been noted for their lack of drama, narrative, and conventional characterization. Other than an unused wine bottle in the two-player versions, there is an absence of drink and money, which were prominent fixtures of the 17th century genre. A painting by one of the Le Nain brothers depicting card players at a museum in Aix-en-Provence, near the artist\'s residence, is widely believed to have been an inspiration for Cézanne.', '<em>The Card Players</em> is a series of oil paintings from the French Post-Impressionist artist Paul Cézanne. The series is considered by critics to be a cornerstone of Cézanne\'s work during the early-to-mid 1890s period, as well as a \"prelude\" to his final years, when he painted some of his most acclaimed work.', '1890', '134', '182', 'Oil on canvas', '200.0000', '275.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '4', '1');
INSERT INTO `paintings` VALUES ('71', '21', '20', '021060.jpg', 'Still Life With Apples', '2', 'http://www.moma.org/collection/works/78486?locale=en', '22.1934', '&copy; Art Resource', 'Throughout his life, the French painter Paul Cézanne returned again and again to the still life. Encompassing small—scale domestic scenes rather than grand public ones, still life was considered the lowliest of genres by the French Royal Academy, the official arbiter of great art in the nineteenth century. Yet in <em>Still Life with Apples</em>, Cézanne proved that this modest genre could be a vehicle for thinking through the Impressionist project of faithfully representing the appearance of light and space. \"Painting from nature is not copying the object,\" he wrote, \"it is realizing one\'s sensations.\"', 'Throughout his life, the French painter Paul Cézanne returned again and again to the still life. In <em>Still Life with Apples</em>, Cézanne proved that this modest genre could be a vehicle for thinking through the Impressionist project of faithfully representing the appearance of light and space.', '1890', '69', '93', 'Oil on canvas', '1225.0000', '1300.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('77', '24', '28', '024010.jpg', 'Sick Child', '3', 'http://www.nasjonalmuseet.no/en/collections_and_research/our_collections/edvard_munch_in_the_national_museum/The+Sick+Child%2C+1885%E2%88%9286.b7C_wljS4f.ips', 'NG.M.00839', '&copy; National Museum of Norway', 'Munch had a troubled familial past. In addition to his overbearing pietist father, his mother died of tuberculosis when he was a small child, and his sister died nine years later of the same disease. This painting is an image of Munch’s older and favorite sister Sophie lying in bed, dying of tuberculosis when she was 15 years old. Munch created many reproductions of this painting, including one that was held in Dresden, Germany. In the 1930’s and 40’s Nazi’s deemed Munch’s art as “degenerate art” and removed all of them from Germany to be sold at auction. This piece was bought and later donated to the Tate Gallery in London, where it remains today.', 'This painting is an image of Munch’s older and favorite sister Sophie lying in bed, dying of tuberculosis when she was 15 years old. Munch created many reproductions of this painting, including one that was held in Dresden, Germany.', '1885', '120', '118', 'Oil on canvas', '375.0000', '400.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('78', '24', '28', '024020.jpg', 'Death in the sickroom', '3', 'http://www.nasjonalmuseet.no/en/collections_and_research/our_collections/edvard_munch_in_the_national_museum/Death+in+the+Sick-Room%2C+prob.+1893.b7C_wljU3c.ips', 'NG.M.00940', '&copy; National Museum of Norway', 'The picture shows what we can assume to be the artist’s family grouped around his sister Sophie, who died in 1877. She is sitting in a chair with her back to us. To the right stands an aunt, Karen Bjølstad, who moved in with the family to take care of the children and the household after the mother died of tuberculosis in 1868. In the background stands the father, the doctor Christian Munch, with his hands clasped as if in prayer. Near the centre of the picture is a male figure, probably Edvard, in quarter-face. Sister Laura is sitting in the foreground with her hands in her lap, while the third sister, Inger, stands staring straight at us. The male figure to the left is generally identified as Edvard’s younger brother Andreas. In Death in the SickRoom there is no physical contact between the people, except for the hand that aunt Karen has laid on the back of the chair in which the invalid sits.', 'The picture shows what we can assume to be the artist’s family grouped around his sister Sophie, who died in 1877. She is sitting in a chair with her back to us.', '1892', '134', '160', 'Tempura and Crayon on canvas', '250.0000', '275.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('79', '24', '28', '024030.jpg', 'Cry (The Scream)', '1', 'http://www.nasjonalmuseet.no/en/collections_and_research/our_collections/edvard_munch_in_the_national_museum/The+Scream%2C+1893.b7C_wljU1a.ips', 'NG.M.00939', '&copy; National Museum of Norway', '<em>Scream</em> is the title of expressionist paintings and prints in a series by Norwegian artist Edvard Munch, showing an agonized figure against a blood red sky. The landscape in the background is the Oslofjord, viewed from the hill of Ekeberg, in Oslo (then Kristiania), Norway.\r\nEdvard Munch created several versions of Scream in various media. The Munch Museum holds one of two painted versions (1910, see gallery) and one pastel. The National Gallery of Norway holds the other painted version (1893, shown to right). A fourth version, in pastel, is owned by Norwegian businessman Petter Olsen. Munch also created a lithograph of the image in 1895.', '<em>Scream</em> is the title of expressionist paintings and prints in a series by Norwegian artist Edvard Munch, showing an agonized figure against a blood red sky. The landscape in the background is the Oslofjord, viewed from the hill of Ekeberg, in Oslo (then Kristiania), Norway.', '1893', '91', '74', 'Oil, tempera and pastel on cardboard', '175.0000', '225.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '3', '1');
INSERT INTO `paintings` VALUES ('80', '24', '28', '024040.jpg', 'Puberty', '1', 'http://www.nasjonalmuseet.no/en/collections_and_research/our_collections/edvard_munch_in_the_national_museum/Puberty%2C+1894%E2%80%9395.b7C_wljWWK.ips', 'NG.M.00807', '&copy; National Museum of Norway', '<em>Puberty</em> is a painting created by Edvard Munch. Munch is an artist native to Norway and is widely known for his role in expressionistic art. Puberty has also been done as a lithograph and an etching by Munch.\r\nUpon observation of Puberty one of the strongest points in the piece to most is first the adolescent female who is placed mid-center of the painting. The second almost \'haunting\' point in this painting is the shadow the female is meant to be casting. It has been speculated, because of the current sexual mind Munch was in during the time in which he painted this, that the shadow may be a hovering male genital. The thought of male genitalia to a young woman during this time of her own rapidly changing body creates a stench of tension within the piece. Another thought on the shadow is that it suggests the symbolic meaning of death. Both of these speculations on the shadow in this piece reflect well upon what Munch is known for symbolically portraying in his artwork. The female in Puberty had originally been thought to have been a model of Munch\'s while he was in Berlin. The strong detail used in the collar bones of her body suggests that he very well might have used a model. Either way this young lady is trapped in a space that alludes to much controversy within her mind and surroundings.', '<em>Puberty</em> is a painting created by Edvard Munch. Munch is an artist native to Norway and is widely known for his role in expressionistic art. Puberty has also been done as a lithograph and an etching by Munch.', '1894', '152', '110', 'Oil on canvas', '125.0000', '165.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '0', '0');
INSERT INTO `paintings` VALUES ('81', '24', '28', '024050.jpg', 'Madonna', '1', 'http://www.nasjonalmuseet.no/en/collections_and_research/our_collections/edvard_munch_in_the_national_museum/Madonna%2C+1894%E2%80%9395.b7C_wljU5e.ips', 'NG.M.00841', '&copy; National Museum of Norway', '<em>Madonna</em> is a painting by the Norwegian expressionist Edvard Munch. Munch painted five versions of the Madonna between 1894 and 1895, using oils on canvas. Although it is a highly unusual representation, nevertheless, this painting is of Mary, the mother of Jesus. True to the Norwegian cultural beliefs and way of life, the painting is a strong dose of conceivable realism.', '<em>Madonna</em> is a painting by the Norwegian expressionist Edvard Munch. Munch painted five versions of the Madonna between 1894 and 1895, using oils on canvas. Although it is a highly unusual representation, nevertheless, this painting is of Mary, the mother of Jesus.', '1895', '91', '70', 'Oil on canvas', '190.0000', '230.0000', '2022-05-24 19:00:34', '2022-05-26 00:50:01', null, '3', '0');
INSERT INTO `paintings` VALUES ('600', '142', null, 'temp.png', '万叶', null, null, null, 'Public domain', '万叶好可爱嘿嘿嘿万叶还可爱嘿嘿嘿', null, '-368', '12', '34', 'Oil on canvas', '114514.1919', '900.0000', '2022-05-24 23:57:29', '2022-05-26 00:50:01', 'icalter', '2', '0');
INSERT INTO `paintings` VALUES ('608', '150', null, '24608.PNG', '触手1145', null, null, null, 'Public domain', '123', null, '2019', '2', '2', 'Oil on canvas', '132.3400', '900.0000', '2022-05-25 15:32:51', '2022-05-26 18:38:57', 'icalter', '7', '0');
INSERT INTO `paintings` VALUES ('609', '148', null, '24609.PNG', '卡哇伊', null, null, null, 'Public domain', '虽然想用，但正则表达式想要测试标点符号、、以及特殊sio2字符===-——=_+', null, '2004', '123', '234', 'Oil on canvas', '34525.0000', '900.0000', '2022-05-25 16:16:54', '2022-05-26 00:50:01', 'icalter', '4', '0');
INSERT INTO `paintings` VALUES ('610', '149', null, '24610.PNG', '水月和澄闪', null, null, null, 'Public domain', 'mizuki天下第一可爱！', null, '2013', '13', '23', 'Oil on canvas', '1919810.8888', '900.0000', '2022-05-26 01:03:05', '2022-05-27 01:03:05', 'mizuki', '3', '0');
INSERT INTO `paintings` VALUES ('611', '150', null, '24611.JPG', '魈 ', null, null, null, 'Public domain', '12314', null, '1978', '123', '123', 'Oil on canvas', '129.0000', '900.0000', '2022-05-26 18:36:15', '2022-05-26 18:36:15', 'icalter', '0', '0');
INSERT INTO `paintings` VALUES ('612', '152', null, '24612.JPG', 'Kate and John', null, null, null, 'Public domain', 'kagefunshinojizu', null, '8956', '5', '6', 'Oil on canvas', '1234.0000', '900.0000', '2022-05-26 18:43:04', '2022-05-26 18:43:04', 'icalter', '4', '1');
INSERT INTO `paintings` VALUES ('639', '151', null, '24639.JPG', '血叶', null, null, null, 'Public domain', '123', null, '123', '123', '123', 'Oil on canvas', '123.0000', '900.0000', '2022-05-27 21:17:19', '2022-05-27 21:17:19', 'icalter', '8904', '0');
INSERT INTO `paintings` VALUES ('641', '151', null, '24641.JPG', '123', null, null, null, 'Public domain', '123', null, '123', '123', '123', 'Oil on canvas', '123.0000', '900.0000', '2022-05-27 21:57:38', '2022-05-27 21:57:38', 'Skybase', '6', '1');
INSERT INTO `paintings` VALUES ('643', '151', null, '24643.JPG', 'aaaaa', null, null, null, 'Public domain', '123456543223455432345676543', null, '123', '123', '123', 'Oil on canvas', '23.0000', '900.0000', '2022-05-28 11:47:28', '2022-05-28 11:47:28', 'icalter', '2', '0');
INSERT INTO `paintings` VALUES ('644', '151', null, '24644.JPG', 'xqcy', null, null, null, 'Public domain', '介绍介绍', null, '1475', '123', '123', 'Oil on canvas', '200.0000', '900.0000', '2022-05-28 13:10:48', '2022-05-28 13:10:48', 'icalter', '2', '1');
INSERT INTO `paintings` VALUES ('645', '157', null, '24645.JPG', '作品名称', null, null, null, 'Public domain', 'gorougorou ？！gourou=', null, '1657', '32', '26', 'Oil on canvas', '12.0000', '900.0000', '2022-05-28 15:17:48', '2022-05-28 15:17:48', '写文档', '2', '1');

-- ----------------------------
-- Table structure for paintingsubjects
-- ----------------------------
DROP TABLE IF EXISTS `paintingsubjects`;
CREATE TABLE `paintingsubjects` (
  `PaintingSubjectID` int(11) NOT NULL AUTO_INCREMENT,
  `PaintingID` int(11) DEFAULT '0',
  `SubjectID` int(11) DEFAULT '11',
  PRIMARY KEY (`PaintingSubjectID`),
  KEY `PaintingID` (`PaintingID`),
  KEY `SubjectID` (`SubjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=752 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paintingsubjects
-- ----------------------------
INSERT INTO `paintingsubjects` VALUES ('4', '5', '11');
INSERT INTO `paintingsubjects` VALUES ('6', '7', '11');
INSERT INTO `paintingsubjects` VALUES ('7', '8', '11');
INSERT INTO `paintingsubjects` VALUES ('11', '11', '11');
INSERT INTO `paintingsubjects` VALUES ('12', '12', '11');
INSERT INTO `paintingsubjects` VALUES ('14', '14', '11');
INSERT INTO `paintingsubjects` VALUES ('15', '15', '11');
INSERT INTO `paintingsubjects` VALUES ('16', '16', '11');
INSERT INTO `paintingsubjects` VALUES ('18', '16', '2');
INSERT INTO `paintingsubjects` VALUES ('25', '23', '11');
INSERT INTO `paintingsubjects` VALUES ('26', '24', '11');
INSERT INTO `paintingsubjects` VALUES ('27', '25', '10');
INSERT INTO `paintingsubjects` VALUES ('28', '26', '11');
INSERT INTO `paintingsubjects` VALUES ('31', '29', '11');
INSERT INTO `paintingsubjects` VALUES ('32', '29', '3');
INSERT INTO `paintingsubjects` VALUES ('33', '30', '11');
INSERT INTO `paintingsubjects` VALUES ('34', '30', '15');
INSERT INTO `paintingsubjects` VALUES ('36', '31', '11');
INSERT INTO `paintingsubjects` VALUES ('39', '35', '11');
INSERT INTO `paintingsubjects` VALUES ('40', '36', '11');
INSERT INTO `paintingsubjects` VALUES ('41', '36', '14');
INSERT INTO `paintingsubjects` VALUES ('42', '37', '11');
INSERT INTO `paintingsubjects` VALUES ('43', '39', '11');
INSERT INTO `paintingsubjects` VALUES ('46', '41', '11');
INSERT INTO `paintingsubjects` VALUES ('47', '42', '11');
INSERT INTO `paintingsubjects` VALUES ('48', '42', '13');
INSERT INTO `paintingsubjects` VALUES ('50', '45', '11');
INSERT INTO `paintingsubjects` VALUES ('51', '46', '2');
INSERT INTO `paintingsubjects` VALUES ('52', '46', '12');
INSERT INTO `paintingsubjects` VALUES ('53', '47', '2');
INSERT INTO `paintingsubjects` VALUES ('54', '47', '7');
INSERT INTO `paintingsubjects` VALUES ('55', '48', '2');
INSERT INTO `paintingsubjects` VALUES ('56', '48', '12');
INSERT INTO `paintingsubjects` VALUES ('57', '49', '7');
INSERT INTO `paintingsubjects` VALUES ('58', '49', '2');
INSERT INTO `paintingsubjects` VALUES ('59', '50', '11');
INSERT INTO `paintingsubjects` VALUES ('60', '50', '2');
INSERT INTO `paintingsubjects` VALUES ('61', '51', '2');
INSERT INTO `paintingsubjects` VALUES ('62', '51', '9');
INSERT INTO `paintingsubjects` VALUES ('63', '52', '11');
INSERT INTO `paintingsubjects` VALUES ('65', '54', '11');
INSERT INTO `paintingsubjects` VALUES ('66', '54', '9');
INSERT INTO `paintingsubjects` VALUES ('67', '55', '9');
INSERT INTO `paintingsubjects` VALUES ('68', '55', '11');
INSERT INTO `paintingsubjects` VALUES ('69', '56', '11');
INSERT INTO `paintingsubjects` VALUES ('70', '57', '11');
INSERT INTO `paintingsubjects` VALUES ('71', '58', '11');
INSERT INTO `paintingsubjects` VALUES ('73', '60', '12');
INSERT INTO `paintingsubjects` VALUES ('74', '60', '10');
INSERT INTO `paintingsubjects` VALUES ('75', '61', '7');
INSERT INTO `paintingsubjects` VALUES ('77', '63', '2');
INSERT INTO `paintingsubjects` VALUES ('78', '64', '11');
INSERT INTO `paintingsubjects` VALUES ('79', '65', '2');
INSERT INTO `paintingsubjects` VALUES ('80', '66', '2');
INSERT INTO `paintingsubjects` VALUES ('81', '67', '11');
INSERT INTO `paintingsubjects` VALUES ('82', '66', '11');
INSERT INTO `paintingsubjects` VALUES ('83', '68', '2');
INSERT INTO `paintingsubjects` VALUES ('85', '70', '11');
INSERT INTO `paintingsubjects` VALUES ('86', '71', '10');
INSERT INTO `paintingsubjects` VALUES ('87', '71', '12');
INSERT INTO `paintingsubjects` VALUES ('88', '77', '11');
INSERT INTO `paintingsubjects` VALUES ('89', '77', '16');
INSERT INTO `paintingsubjects` VALUES ('90', '78', '11');
INSERT INTO `paintingsubjects` VALUES ('91', '78', '16');
INSERT INTO `paintingsubjects` VALUES ('92', '79', '11');
INSERT INTO `paintingsubjects` VALUES ('93', '80', '11');
INSERT INTO `paintingsubjects` VALUES ('94', '81', '11');
INSERT INTO `paintingsubjects` VALUES ('95', '81', '9');
INSERT INTO `paintingsubjects` VALUES ('134', '139', '2');
INSERT INTO `paintingsubjects` VALUES ('135', '139', '11');
INSERT INTO `paintingsubjects` VALUES ('136', '139', '14');
INSERT INTO `paintingsubjects` VALUES ('137', '140', '11');
INSERT INTO `paintingsubjects` VALUES ('139', '142', '11');
INSERT INTO `paintingsubjects` VALUES ('140', '142', '14');
INSERT INTO `paintingsubjects` VALUES ('141', '145', '11');
INSERT INTO `paintingsubjects` VALUES ('142', '146', '11');
INSERT INTO `paintingsubjects` VALUES ('143', '146', '15');
INSERT INTO `paintingsubjects` VALUES ('146', '152', '11');
INSERT INTO `paintingsubjects` VALUES ('147', '153', '11');
INSERT INTO `paintingsubjects` VALUES ('148', '154', '11');
INSERT INTO `paintingsubjects` VALUES ('151', '157', '11');
INSERT INTO `paintingsubjects` VALUES ('152', '157', '14');
INSERT INTO `paintingsubjects` VALUES ('158', '162', '11');
INSERT INTO `paintingsubjects` VALUES ('163', '165', '11');
INSERT INTO `paintingsubjects` VALUES ('164', '167', '11');
INSERT INTO `paintingsubjects` VALUES ('165', '171', '1');
INSERT INTO `paintingsubjects` VALUES ('166', '171', '10');
INSERT INTO `paintingsubjects` VALUES ('167', '172', '11');
INSERT INTO `paintingsubjects` VALUES ('168', '173', '11');
INSERT INTO `paintingsubjects` VALUES ('171', '178', '11');
INSERT INTO `paintingsubjects` VALUES ('172', '179', '2');
INSERT INTO `paintingsubjects` VALUES ('173', '181', '14');
INSERT INTO `paintingsubjects` VALUES ('174', '182', '11');
INSERT INTO `paintingsubjects` VALUES ('177', '190', '11');
INSERT INTO `paintingsubjects` VALUES ('178', '191', '11');
INSERT INTO `paintingsubjects` VALUES ('179', '192', '15');
INSERT INTO `paintingsubjects` VALUES ('180', '192', '11');
INSERT INTO `paintingsubjects` VALUES ('183', '182', '18');
INSERT INTO `paintingsubjects` VALUES ('184', '56', '18');
INSERT INTO `paintingsubjects` VALUES ('185', '194', '11');
INSERT INTO `paintingsubjects` VALUES ('186', '195', '2');
INSERT INTO `paintingsubjects` VALUES ('194', '173', '13');
INSERT INTO `paintingsubjects` VALUES ('195', '213', '18');
INSERT INTO `paintingsubjects` VALUES ('196', '214', '18');
INSERT INTO `paintingsubjects` VALUES ('200', '219', '2');
INSERT INTO `paintingsubjects` VALUES ('202', '225', '5');
INSERT INTO `paintingsubjects` VALUES ('207', '230', '5');
INSERT INTO `paintingsubjects` VALUES ('208', '231', '18');
INSERT INTO `paintingsubjects` VALUES ('209', '231', '11');
INSERT INTO `paintingsubjects` VALUES ('210', '232', '11');
INSERT INTO `paintingsubjects` VALUES ('211', '231', '12');
INSERT INTO `paintingsubjects` VALUES ('212', '232', '1');
INSERT INTO `paintingsubjects` VALUES ('213', '233', '11');
INSERT INTO `paintingsubjects` VALUES ('216', '233', '15');
INSERT INTO `paintingsubjects` VALUES ('217', '235', '11');
INSERT INTO `paintingsubjects` VALUES ('224', '258', '5');
INSERT INTO `paintingsubjects` VALUES ('225', '259', '5');
INSERT INTO `paintingsubjects` VALUES ('226', '287', '11');
INSERT INTO `paintingsubjects` VALUES ('227', '288', '11');
INSERT INTO `paintingsubjects` VALUES ('228', '290', '11');
INSERT INTO `paintingsubjects` VALUES ('229', '291', '11');
INSERT INTO `paintingsubjects` VALUES ('230', '291', '6');
INSERT INTO `paintingsubjects` VALUES ('232', '157', '4');
INSERT INTO `paintingsubjects` VALUES ('235', '294', '11');
INSERT INTO `paintingsubjects` VALUES ('237', '296', '11');
INSERT INTO `paintingsubjects` VALUES ('238', '296', '17');
INSERT INTO `paintingsubjects` VALUES ('241', '299', '11');
INSERT INTO `paintingsubjects` VALUES ('242', '300', '13');
INSERT INTO `paintingsubjects` VALUES ('243', '300', '10');
INSERT INTO `paintingsubjects` VALUES ('244', '301', '11');
INSERT INTO `paintingsubjects` VALUES ('253', '310', '11');
INSERT INTO `paintingsubjects` VALUES ('254', '333', '5');
INSERT INTO `paintingsubjects` VALUES ('255', '334', '5');
INSERT INTO `paintingsubjects` VALUES ('256', '339', '11');
INSERT INTO `paintingsubjects` VALUES ('257', '69', '11');
INSERT INTO `paintingsubjects` VALUES ('258', '342', '11');
INSERT INTO `paintingsubjects` VALUES ('259', '343', '11');
INSERT INTO `paintingsubjects` VALUES ('264', '346', '11');
INSERT INTO `paintingsubjects` VALUES ('265', '346', '14');
INSERT INTO `paintingsubjects` VALUES ('266', '347', '11');
INSERT INTO `paintingsubjects` VALUES ('267', '347', '1');
INSERT INTO `paintingsubjects` VALUES ('268', '347', '14');
INSERT INTO `paintingsubjects` VALUES ('269', '348', '11');
INSERT INTO `paintingsubjects` VALUES ('270', '348', '14');
INSERT INTO `paintingsubjects` VALUES ('271', '349', '11');
INSERT INTO `paintingsubjects` VALUES ('273', '351', '11');
INSERT INTO `paintingsubjects` VALUES ('274', '352', '2');
INSERT INTO `paintingsubjects` VALUES ('289', '24', '3');
INSERT INTO `paintingsubjects` VALUES ('301', '366', '11');
INSERT INTO `paintingsubjects` VALUES ('302', '366', '9');
INSERT INTO `paintingsubjects` VALUES ('303', '366', '16');
INSERT INTO `paintingsubjects` VALUES ('308', '369', '9');
INSERT INTO `paintingsubjects` VALUES ('309', '369', '11');
INSERT INTO `paintingsubjects` VALUES ('310', '370', '9');
INSERT INTO `paintingsubjects` VALUES ('311', '370', '11');
INSERT INTO `paintingsubjects` VALUES ('316', '373', '9');
INSERT INTO `paintingsubjects` VALUES ('317', '373', '11');
INSERT INTO `paintingsubjects` VALUES ('318', '374', '9');
INSERT INTO `paintingsubjects` VALUES ('319', '374', '11');
INSERT INTO `paintingsubjects` VALUES ('320', '375', '9');
INSERT INTO `paintingsubjects` VALUES ('321', '375', '11');
INSERT INTO `paintingsubjects` VALUES ('322', '376', '19');
INSERT INTO `paintingsubjects` VALUES ('323', '376', '18');
INSERT INTO `paintingsubjects` VALUES ('324', '376', '11');
INSERT INTO `paintingsubjects` VALUES ('325', '377', '19');
INSERT INTO `paintingsubjects` VALUES ('326', '377', '11');
INSERT INTO `paintingsubjects` VALUES ('327', '377', '18');
INSERT INTO `paintingsubjects` VALUES ('328', '378', '19');
INSERT INTO `paintingsubjects` VALUES ('329', '378', '11');
INSERT INTO `paintingsubjects` VALUES ('330', '378', '18');
INSERT INTO `paintingsubjects` VALUES ('331', '379', '11');
INSERT INTO `paintingsubjects` VALUES ('332', '379', '9');
INSERT INTO `paintingsubjects` VALUES ('333', '380', '9');
INSERT INTO `paintingsubjects` VALUES ('334', '380', '11');
INSERT INTO `paintingsubjects` VALUES ('335', '381', '9');
INSERT INTO `paintingsubjects` VALUES ('336', '381', '11');
INSERT INTO `paintingsubjects` VALUES ('340', '383', '11');
INSERT INTO `paintingsubjects` VALUES ('341', '384', '9');
INSERT INTO `paintingsubjects` VALUES ('342', '384', '11');
INSERT INTO `paintingsubjects` VALUES ('343', '384', '16');
INSERT INTO `paintingsubjects` VALUES ('344', '386', '9');
INSERT INTO `paintingsubjects` VALUES ('345', '386', '11');
INSERT INTO `paintingsubjects` VALUES ('346', '387', '11');
INSERT INTO `paintingsubjects` VALUES ('347', '388', '11');
INSERT INTO `paintingsubjects` VALUES ('348', '388', '9');
INSERT INTO `paintingsubjects` VALUES ('349', '389', '11');
INSERT INTO `paintingsubjects` VALUES ('352', '391', '9');
INSERT INTO `paintingsubjects` VALUES ('353', '391', '11');
INSERT INTO `paintingsubjects` VALUES ('354', '391', '16');
INSERT INTO `paintingsubjects` VALUES ('355', '392', '9');
INSERT INTO `paintingsubjects` VALUES ('356', '392', '11');
INSERT INTO `paintingsubjects` VALUES ('357', '393', '9');
INSERT INTO `paintingsubjects` VALUES ('358', '393', '18');
INSERT INTO `paintingsubjects` VALUES ('359', '393', '11');
INSERT INTO `paintingsubjects` VALUES ('360', '394', '9');
INSERT INTO `paintingsubjects` VALUES ('361', '394', '11');
INSERT INTO `paintingsubjects` VALUES ('362', '394', '16');
INSERT INTO `paintingsubjects` VALUES ('367', '398', '9');
INSERT INTO `paintingsubjects` VALUES ('368', '398', '11');
INSERT INTO `paintingsubjects` VALUES ('369', '399', '9');
INSERT INTO `paintingsubjects` VALUES ('370', '399', '11');
INSERT INTO `paintingsubjects` VALUES ('374', '401', '9');
INSERT INTO `paintingsubjects` VALUES ('375', '401', '11');
INSERT INTO `paintingsubjects` VALUES ('378', '403', '9');
INSERT INTO `paintingsubjects` VALUES ('379', '403', '11');
INSERT INTO `paintingsubjects` VALUES ('381', '405', '11');
INSERT INTO `paintingsubjects` VALUES ('382', '406', '11');
INSERT INTO `paintingsubjects` VALUES ('383', '407', '11');
INSERT INTO `paintingsubjects` VALUES ('384', '408', '19');
INSERT INTO `paintingsubjects` VALUES ('385', '408', '11');
INSERT INTO `paintingsubjects` VALUES ('386', '408', '18');
INSERT INTO `paintingsubjects` VALUES ('390', '412', '9');
INSERT INTO `paintingsubjects` VALUES ('391', '412', '11');
INSERT INTO `paintingsubjects` VALUES ('392', '413', '11');
INSERT INTO `paintingsubjects` VALUES ('393', '413', '19');
INSERT INTO `paintingsubjects` VALUES ('394', '413', '18');
INSERT INTO `paintingsubjects` VALUES ('402', '417', '11');
INSERT INTO `paintingsubjects` VALUES ('403', '418', '14');
INSERT INTO `paintingsubjects` VALUES ('404', '419', '11');
INSERT INTO `paintingsubjects` VALUES ('405', '419', '19');
INSERT INTO `paintingsubjects` VALUES ('406', '419', '18');
INSERT INTO `paintingsubjects` VALUES ('407', '420', '11');
INSERT INTO `paintingsubjects` VALUES ('408', '422', '11');
INSERT INTO `paintingsubjects` VALUES ('409', '422', '18');
INSERT INTO `paintingsubjects` VALUES ('410', '423', '11');
INSERT INTO `paintingsubjects` VALUES ('411', '423', '18');
INSERT INTO `paintingsubjects` VALUES ('412', '424', '11');
INSERT INTO `paintingsubjects` VALUES ('413', '425', '11');
INSERT INTO `paintingsubjects` VALUES ('414', '426', '11');
INSERT INTO `paintingsubjects` VALUES ('415', '426', '18');
INSERT INTO `paintingsubjects` VALUES ('416', '427', '11');
INSERT INTO `paintingsubjects` VALUES ('417', '428', '11');
INSERT INTO `paintingsubjects` VALUES ('418', '428', '14');
INSERT INTO `paintingsubjects` VALUES ('421', '430', '10');
INSERT INTO `paintingsubjects` VALUES ('422', '430', '18');
INSERT INTO `paintingsubjects` VALUES ('423', '431', '11');
INSERT INTO `paintingsubjects` VALUES ('424', '431', '18');
INSERT INTO `paintingsubjects` VALUES ('425', '432', '11');
INSERT INTO `paintingsubjects` VALUES ('426', '432', '19');
INSERT INTO `paintingsubjects` VALUES ('427', '432', '18');
INSERT INTO `paintingsubjects` VALUES ('428', '433', '11');
INSERT INTO `paintingsubjects` VALUES ('430', '435', '11');
INSERT INTO `paintingsubjects` VALUES ('431', '436', '11');
INSERT INTO `paintingsubjects` VALUES ('432', '7', '18');
INSERT INTO `paintingsubjects` VALUES ('433', '409', '11');
INSERT INTO `paintingsubjects` VALUES ('434', '409', '19');
INSERT INTO `paintingsubjects` VALUES ('435', '409', '18');
INSERT INTO `paintingsubjects` VALUES ('436', '51', '18');
INSERT INTO `paintingsubjects` VALUES ('439', '299', '9');
INSERT INTO `paintingsubjects` VALUES ('440', '79', '18');
INSERT INTO `paintingsubjects` VALUES ('442', '366', '15');
INSERT INTO `paintingsubjects` VALUES ('443', '378', '15');
INSERT INTO `paintingsubjects` VALUES ('444', '409', '15');
INSERT INTO `paintingsubjects` VALUES ('445', '419', '15');
INSERT INTO `paintingsubjects` VALUES ('446', '427', '15');
INSERT INTO `paintingsubjects` VALUES ('447', '431', '16');
INSERT INTO `paintingsubjects` VALUES ('448', '437', '11');
INSERT INTO `paintingsubjects` VALUES ('449', '438', '11');
INSERT INTO `paintingsubjects` VALUES ('450', '438', '15');
INSERT INTO `paintingsubjects` VALUES ('451', '439', '11');
INSERT INTO `paintingsubjects` VALUES ('452', '439', '9');
INSERT INTO `paintingsubjects` VALUES ('453', '439', '18');
INSERT INTO `paintingsubjects` VALUES ('455', '441', '9');
INSERT INTO `paintingsubjects` VALUES ('457', '441', '11');
INSERT INTO `paintingsubjects` VALUES ('458', '441', '16');
INSERT INTO `paintingsubjects` VALUES ('459', '442', '16');
INSERT INTO `paintingsubjects` VALUES ('460', '442', '15');
INSERT INTO `paintingsubjects` VALUES ('461', '443', '11');
INSERT INTO `paintingsubjects` VALUES ('465', '445', '18');
INSERT INTO `paintingsubjects` VALUES ('466', '445', '9');
INSERT INTO `paintingsubjects` VALUES ('474', '448', '11');
INSERT INTO `paintingsubjects` VALUES ('475', '448', '15');
INSERT INTO `paintingsubjects` VALUES ('478', '450', '11');
INSERT INTO `paintingsubjects` VALUES ('479', '450', '16');
INSERT INTO `paintingsubjects` VALUES ('480', '451', '18');
INSERT INTO `paintingsubjects` VALUES ('481', '451', '15');
INSERT INTO `paintingsubjects` VALUES ('482', '451', '11');
INSERT INTO `paintingsubjects` VALUES ('483', '451', '19');
INSERT INTO `paintingsubjects` VALUES ('486', '453', '2');
INSERT INTO `paintingsubjects` VALUES ('487', '453', '7');
INSERT INTO `paintingsubjects` VALUES ('488', '455', '11');
INSERT INTO `paintingsubjects` VALUES ('489', '455', '2');
INSERT INTO `paintingsubjects` VALUES ('490', '455', '15');
INSERT INTO `paintingsubjects` VALUES ('491', '456', '11');
INSERT INTO `paintingsubjects` VALUES ('492', '455', '16');
INSERT INTO `paintingsubjects` VALUES ('493', '456', '11');
INSERT INTO `paintingsubjects` VALUES ('494', '457', '11');
INSERT INTO `paintingsubjects` VALUES ('495', '458', '11');
INSERT INTO `paintingsubjects` VALUES ('496', '459', '11');
INSERT INTO `paintingsubjects` VALUES ('497', '460', '11');
INSERT INTO `paintingsubjects` VALUES ('498', '460', '21');
INSERT INTO `paintingsubjects` VALUES ('499', '114', '5');
INSERT INTO `paintingsubjects` VALUES ('500', '115', '5');
INSERT INTO `paintingsubjects` VALUES ('501', '119', '5');
INSERT INTO `paintingsubjects` VALUES ('502', '258', '5');
INSERT INTO `paintingsubjects` VALUES ('503', '333', '5');
INSERT INTO `paintingsubjects` VALUES ('504', '334', '5');
INSERT INTO `paintingsubjects` VALUES ('505', '418', '21');
INSERT INTO `paintingsubjects` VALUES ('506', '461', '21');
INSERT INTO `paintingsubjects` VALUES ('507', '461', '11');
INSERT INTO `paintingsubjects` VALUES ('508', '462', '11');
INSERT INTO `paintingsubjects` VALUES ('509', '463', '18');
INSERT INTO `paintingsubjects` VALUES ('510', '463', '11');
INSERT INTO `paintingsubjects` VALUES ('511', '463', '16');
INSERT INTO `paintingsubjects` VALUES ('512', '464', '16');
INSERT INTO `paintingsubjects` VALUES ('513', '464', '11');
INSERT INTO `paintingsubjects` VALUES ('514', '465', '16');
INSERT INTO `paintingsubjects` VALUES ('515', '465', '11');
INSERT INTO `paintingsubjects` VALUES ('516', '465', '1');
INSERT INTO `paintingsubjects` VALUES ('517', '466', '11');
INSERT INTO `paintingsubjects` VALUES ('518', '467', '11');
INSERT INTO `paintingsubjects` VALUES ('519', '468', '2');
INSERT INTO `paintingsubjects` VALUES ('520', '468', '11');
INSERT INTO `paintingsubjects` VALUES ('521', '468', '7');
INSERT INTO `paintingsubjects` VALUES ('522', '469', '11');
INSERT INTO `paintingsubjects` VALUES ('523', '469', '21');
INSERT INTO `paintingsubjects` VALUES ('524', '470', '11');
INSERT INTO `paintingsubjects` VALUES ('525', '471', '11');
INSERT INTO `paintingsubjects` VALUES ('526', '472', '11');
INSERT INTO `paintingsubjects` VALUES ('527', '473', '11');
INSERT INTO `paintingsubjects` VALUES ('528', '474', '11');
INSERT INTO `paintingsubjects` VALUES ('529', '474', '9');
INSERT INTO `paintingsubjects` VALUES ('530', '474', '18');
INSERT INTO `paintingsubjects` VALUES ('531', '475', '11');
INSERT INTO `paintingsubjects` VALUES ('532', '476', '11');
INSERT INTO `paintingsubjects` VALUES ('533', '476', '18');
INSERT INTO `paintingsubjects` VALUES ('534', '476', '9');
INSERT INTO `paintingsubjects` VALUES ('535', '477', '9');
INSERT INTO `paintingsubjects` VALUES ('536', '477', '11');
INSERT INTO `paintingsubjects` VALUES ('537', '478', '11');
INSERT INTO `paintingsubjects` VALUES ('538', '479', '11');
INSERT INTO `paintingsubjects` VALUES ('539', '479', '20');
INSERT INTO `paintingsubjects` VALUES ('540', '481', '11');
INSERT INTO `paintingsubjects` VALUES ('541', '482', '11');
INSERT INTO `paintingsubjects` VALUES ('542', '482', '18');
INSERT INTO `paintingsubjects` VALUES ('543', '483', '2');
INSERT INTO `paintingsubjects` VALUES ('544', '484', '2');
INSERT INTO `paintingsubjects` VALUES ('545', '486', '2');
INSERT INTO `paintingsubjects` VALUES ('546', '486', '11');
INSERT INTO `paintingsubjects` VALUES ('547', '486', '1');
INSERT INTO `paintingsubjects` VALUES ('548', '487', '2');
INSERT INTO `paintingsubjects` VALUES ('549', '488', '11');
INSERT INTO `paintingsubjects` VALUES ('550', '488', '14');
INSERT INTO `paintingsubjects` VALUES ('551', '489', '14');
INSERT INTO `paintingsubjects` VALUES ('552', '488', '16');
INSERT INTO `paintingsubjects` VALUES ('553', '489', '15');
INSERT INTO `paintingsubjects` VALUES ('554', '489', '11');
INSERT INTO `paintingsubjects` VALUES ('555', '490', '11');
INSERT INTO `paintingsubjects` VALUES ('556', '490', '14');
INSERT INTO `paintingsubjects` VALUES ('557', '492', '11');
INSERT INTO `paintingsubjects` VALUES ('558', '493', '11');
INSERT INTO `paintingsubjects` VALUES ('559', '495', '11');
INSERT INTO `paintingsubjects` VALUES ('560', '496', '10');
INSERT INTO `paintingsubjects` VALUES ('561', '497', '11');
INSERT INTO `paintingsubjects` VALUES ('562', '498', '10');
INSERT INTO `paintingsubjects` VALUES ('563', '498', '12');
INSERT INTO `paintingsubjects` VALUES ('564', '499', '19');
INSERT INTO `paintingsubjects` VALUES ('565', '499', '11');
INSERT INTO `paintingsubjects` VALUES ('566', '500', '11');
INSERT INTO `paintingsubjects` VALUES ('567', '501', '2');
INSERT INTO `paintingsubjects` VALUES ('568', '502', '2');
INSERT INTO `paintingsubjects` VALUES ('569', '504', '2');
INSERT INTO `paintingsubjects` VALUES ('570', '505', '19');
INSERT INTO `paintingsubjects` VALUES ('571', '505', '14');
INSERT INTO `paintingsubjects` VALUES ('572', '505', '11');
INSERT INTO `paintingsubjects` VALUES ('573', '506', '11');
INSERT INTO `paintingsubjects` VALUES ('574', '506', '9');
INSERT INTO `paintingsubjects` VALUES ('575', '506', '2');
INSERT INTO `paintingsubjects` VALUES ('576', '507', '2');
INSERT INTO `paintingsubjects` VALUES ('577', '507', '14');
INSERT INTO `paintingsubjects` VALUES ('578', '508', '9');
INSERT INTO `paintingsubjects` VALUES ('579', '508', '11');
INSERT INTO `paintingsubjects` VALUES ('580', '508', '20');
INSERT INTO `paintingsubjects` VALUES ('581', '509', '17');
INSERT INTO `paintingsubjects` VALUES ('582', '509', '11');
INSERT INTO `paintingsubjects` VALUES ('583', '510', '11');
INSERT INTO `paintingsubjects` VALUES ('584', '511', '11');
INSERT INTO `paintingsubjects` VALUES ('585', '512', '11');
INSERT INTO `paintingsubjects` VALUES ('586', '513', '11');
INSERT INTO `paintingsubjects` VALUES ('587', '514', '2');
INSERT INTO `paintingsubjects` VALUES ('588', '515', '11');
INSERT INTO `paintingsubjects` VALUES ('589', '516', '11');
INSERT INTO `paintingsubjects` VALUES ('590', '517', '2');
INSERT INTO `paintingsubjects` VALUES ('591', '518', '11');
INSERT INTO `paintingsubjects` VALUES ('592', '519', '2');
INSERT INTO `paintingsubjects` VALUES ('593', '519', '7');
INSERT INTO `paintingsubjects` VALUES ('594', '501', '7');
INSERT INTO `paintingsubjects` VALUES ('595', '502', '7');
INSERT INTO `paintingsubjects` VALUES ('596', '504', '7');
INSERT INTO `paintingsubjects` VALUES ('597', '520', '2');
INSERT INTO `paintingsubjects` VALUES ('598', '520', '11');
INSERT INTO `paintingsubjects` VALUES ('599', '521', '11');
INSERT INTO `paintingsubjects` VALUES ('600', '522', '11');
INSERT INTO `paintingsubjects` VALUES ('601', '523', '11');
INSERT INTO `paintingsubjects` VALUES ('602', '524', '2');
INSERT INTO `paintingsubjects` VALUES ('603', '525', '11');
INSERT INTO `paintingsubjects` VALUES ('604', '526', '11');
INSERT INTO `paintingsubjects` VALUES ('605', '527', '11');
INSERT INTO `paintingsubjects` VALUES ('606', '528', '20');
INSERT INTO `paintingsubjects` VALUES ('607', '528', '11');
INSERT INTO `paintingsubjects` VALUES ('608', '529', '7');
INSERT INTO `paintingsubjects` VALUES ('609', '530', '2');
INSERT INTO `paintingsubjects` VALUES ('610', '530', '12');
INSERT INTO `paintingsubjects` VALUES ('611', '531', '11');
INSERT INTO `paintingsubjects` VALUES ('612', '532', '11');
INSERT INTO `paintingsubjects` VALUES ('613', '533', '11');
INSERT INTO `paintingsubjects` VALUES ('614', '533', '9');
INSERT INTO `paintingsubjects` VALUES ('615', '534', '2');
INSERT INTO `paintingsubjects` VALUES ('616', '534', '18');
INSERT INTO `paintingsubjects` VALUES ('617', '535', '2');
INSERT INTO `paintingsubjects` VALUES ('618', '536', '2');
INSERT INTO `paintingsubjects` VALUES ('619', '536', '18');
INSERT INTO `paintingsubjects` VALUES ('620', '536', '9');
INSERT INTO `paintingsubjects` VALUES ('621', '537', '9');
INSERT INTO `paintingsubjects` VALUES ('622', '538', '9');
INSERT INTO `paintingsubjects` VALUES ('623', '539', '11');
INSERT INTO `paintingsubjects` VALUES ('624', '540', '11');
INSERT INTO `paintingsubjects` VALUES ('625', '541', '9');
INSERT INTO `paintingsubjects` VALUES ('626', '542', '11');
INSERT INTO `paintingsubjects` VALUES ('627', '542', '20');
INSERT INTO `paintingsubjects` VALUES ('628', '543', '9');
INSERT INTO `paintingsubjects` VALUES ('629', '544', '19');
INSERT INTO `paintingsubjects` VALUES ('630', '544', '11');
INSERT INTO `paintingsubjects` VALUES ('631', '545', '11');
INSERT INTO `paintingsubjects` VALUES ('632', '545', '19');
INSERT INTO `paintingsubjects` VALUES ('633', '546', '18');
INSERT INTO `paintingsubjects` VALUES ('634', '546', '9');
INSERT INTO `paintingsubjects` VALUES ('635', '547', '18');
INSERT INTO `paintingsubjects` VALUES ('636', '547', '2');
INSERT INTO `paintingsubjects` VALUES ('637', '547', '7');
INSERT INTO `paintingsubjects` VALUES ('638', '548', '2');
INSERT INTO `paintingsubjects` VALUES ('639', '548', '11');
INSERT INTO `paintingsubjects` VALUES ('640', '549', '9');
INSERT INTO `paintingsubjects` VALUES ('641', '549', '11');
INSERT INTO `paintingsubjects` VALUES ('642', '550', '11');
INSERT INTO `paintingsubjects` VALUES ('643', '550', '9');
INSERT INTO `paintingsubjects` VALUES ('644', '550', '20');
INSERT INTO `paintingsubjects` VALUES ('645', '551', '11');
INSERT INTO `paintingsubjects` VALUES ('646', '552', '9');
INSERT INTO `paintingsubjects` VALUES ('647', '552', '11');
INSERT INTO `paintingsubjects` VALUES ('648', '553', '11');
INSERT INTO `paintingsubjects` VALUES ('649', '553', '9');
INSERT INTO `paintingsubjects` VALUES ('650', '554', '11');
INSERT INTO `paintingsubjects` VALUES ('651', '555', '11');
INSERT INTO `paintingsubjects` VALUES ('652', '555', '18');
INSERT INTO `paintingsubjects` VALUES ('653', '556', '9');
INSERT INTO `paintingsubjects` VALUES ('654', '557', '9');
INSERT INTO `paintingsubjects` VALUES ('655', '557', '14');
INSERT INTO `paintingsubjects` VALUES ('656', '557', '11');
INSERT INTO `paintingsubjects` VALUES ('657', '558', '9');
INSERT INTO `paintingsubjects` VALUES ('658', '558', '11');
INSERT INTO `paintingsubjects` VALUES ('659', '559', '11');
INSERT INTO `paintingsubjects` VALUES ('660', '559', '9');
INSERT INTO `paintingsubjects` VALUES ('661', '560', '11');
INSERT INTO `paintingsubjects` VALUES ('662', '560', '9');
INSERT INTO `paintingsubjects` VALUES ('663', '561', '9');
INSERT INTO `paintingsubjects` VALUES ('664', '561', '11');
INSERT INTO `paintingsubjects` VALUES ('665', '562', '11');
INSERT INTO `paintingsubjects` VALUES ('666', '562', '9');
INSERT INTO `paintingsubjects` VALUES ('667', '562', '16');
INSERT INTO `paintingsubjects` VALUES ('668', '560', '16');
INSERT INTO `paintingsubjects` VALUES ('669', '563', '11');
INSERT INTO `paintingsubjects` VALUES ('670', '563', '9');
INSERT INTO `paintingsubjects` VALUES ('671', '564', '11');
INSERT INTO `paintingsubjects` VALUES ('672', '565', '2');
INSERT INTO `paintingsubjects` VALUES ('673', '565', '6');
INSERT INTO `paintingsubjects` VALUES ('674', '565', '7');
INSERT INTO `paintingsubjects` VALUES ('675', '566', '11');
INSERT INTO `paintingsubjects` VALUES ('676', '566', '15');
INSERT INTO `paintingsubjects` VALUES ('677', '567', '11');
INSERT INTO `paintingsubjects` VALUES ('678', '567', '18');
INSERT INTO `paintingsubjects` VALUES ('679', '568', '2');
INSERT INTO `paintingsubjects` VALUES ('680', '568', '18');
INSERT INTO `paintingsubjects` VALUES ('681', '569', '18');
INSERT INTO `paintingsubjects` VALUES ('682', '569', '2');
INSERT INTO `paintingsubjects` VALUES ('683', '570', '2');
INSERT INTO `paintingsubjects` VALUES ('684', '570', '18');
INSERT INTO `paintingsubjects` VALUES ('685', '571', '18');
INSERT INTO `paintingsubjects` VALUES ('686', '571', '19');
INSERT INTO `paintingsubjects` VALUES ('687', '571', '2');
INSERT INTO `paintingsubjects` VALUES ('688', '572', '11');
INSERT INTO `paintingsubjects` VALUES ('689', '572', '9');
INSERT INTO `paintingsubjects` VALUES ('690', '573', '11');
INSERT INTO `paintingsubjects` VALUES ('691', '573', '14');
INSERT INTO `paintingsubjects` VALUES ('692', '573', '17');
INSERT INTO `paintingsubjects` VALUES ('693', '574', '14');
INSERT INTO `paintingsubjects` VALUES ('694', '574', '11');
INSERT INTO `paintingsubjects` VALUES ('695', '575', '11');
INSERT INTO `paintingsubjects` VALUES ('696', '575', '9');
INSERT INTO `paintingsubjects` VALUES ('697', '576', '11');
INSERT INTO `paintingsubjects` VALUES ('698', '577', '19');
INSERT INTO `paintingsubjects` VALUES ('699', '577', '11');
INSERT INTO `paintingsubjects` VALUES ('700', '578', '9');
INSERT INTO `paintingsubjects` VALUES ('701', '579', '11');
INSERT INTO `paintingsubjects` VALUES ('702', '580', '9');
INSERT INTO `paintingsubjects` VALUES ('703', '580', '11');
INSERT INTO `paintingsubjects` VALUES ('704', '581', '19');
INSERT INTO `paintingsubjects` VALUES ('705', '581', '2');
INSERT INTO `paintingsubjects` VALUES ('706', '582', '11');
INSERT INTO `paintingsubjects` VALUES ('707', '583', '5');
INSERT INTO `paintingsubjects` VALUES ('708', '584', '11');
INSERT INTO `paintingsubjects` VALUES ('709', '585', '11');
INSERT INTO `paintingsubjects` VALUES ('710', '585', '18');
INSERT INTO `paintingsubjects` VALUES ('711', '586', '11');
INSERT INTO `paintingsubjects` VALUES ('712', '587', '11');
INSERT INTO `paintingsubjects` VALUES ('713', '587', '18');
INSERT INTO `paintingsubjects` VALUES ('714', '588', '11');
INSERT INTO `paintingsubjects` VALUES ('715', '588', '16');
INSERT INTO `paintingsubjects` VALUES ('716', '589', '11');
INSERT INTO `paintingsubjects` VALUES ('717', '589', '16');
INSERT INTO `paintingsubjects` VALUES ('718', '589', '15');
INSERT INTO `paintingsubjects` VALUES ('719', '590', '11');
INSERT INTO `paintingsubjects` VALUES ('720', '590', '19');
INSERT INTO `paintingsubjects` VALUES ('721', '590', '15');
INSERT INTO `paintingsubjects` VALUES ('722', '591', '2');
INSERT INTO `paintingsubjects` VALUES ('723', '591', '18');
INSERT INTO `paintingsubjects` VALUES ('724', '592', '11');
INSERT INTO `paintingsubjects` VALUES ('725', '593', '9');
INSERT INTO `paintingsubjects` VALUES ('726', '594', '11');
INSERT INTO `paintingsubjects` VALUES ('727', '594', '21');
INSERT INTO `paintingsubjects` VALUES ('728', '595', '11');
INSERT INTO `paintingsubjects` VALUES ('729', '595', '2');
INSERT INTO `paintingsubjects` VALUES ('730', '596', '11');
INSERT INTO `paintingsubjects` VALUES ('731', '596', '18');
INSERT INTO `paintingsubjects` VALUES ('732', '597', '11');
INSERT INTO `paintingsubjects` VALUES ('733', '597', '20');
INSERT INTO `paintingsubjects` VALUES ('734', '598', '9');
INSERT INTO `paintingsubjects` VALUES ('735', '599', '9');
INSERT INTO `paintingsubjects` VALUES ('736', '23', '5');
INSERT INTO `paintingsubjects` VALUES ('737', '8', '5');
INSERT INTO `paintingsubjects` VALUES ('738', '347', '20');
INSERT INTO `paintingsubjects` VALUES ('739', '347', '21');
INSERT INTO `paintingsubjects` VALUES ('740', '348', '20');
INSERT INTO `paintingsubjects` VALUES ('741', '36', '21');
INSERT INTO `paintingsubjects` VALUES ('742', '36', '20');
INSERT INTO `paintingsubjects` VALUES ('743', '41', '17');
INSERT INTO `paintingsubjects` VALUES ('744', '67', '17');
INSERT INTO `paintingsubjects` VALUES ('745', '81', '18');
INSERT INTO `paintingsubjects` VALUES ('746', '235', '5');
INSERT INTO `paintingsubjects` VALUES ('747', '560', '7');
INSERT INTO `paintingsubjects` VALUES ('748', '381', '7');
INSERT INTO `paintingsubjects` VALUES ('749', '559', '7');
INSERT INTO `paintingsubjects` VALUES ('750', '546', '7');
INSERT INTO `paintingsubjects` VALUES ('751', '479', '1');

-- ----------------------------
-- Table structure for shapes
-- ----------------------------
DROP TABLE IF EXISTS `shapes`;
CREATE TABLE `shapes` (
  `ShapeID` int(11) NOT NULL AUTO_INCREMENT,
  `ShapeName` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ShapeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shapes
-- ----------------------------
INSERT INTO `shapes` VALUES ('1', 'Portrait');
INSERT INTO `shapes` VALUES ('2', 'Landscape');
INSERT INTO `shapes` VALUES ('3', 'Square');
INSERT INTO `shapes` VALUES ('4', 'Panoramic');
INSERT INTO `shapes` VALUES ('5', 'Slim');

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `ShoppingCartID` int(11) NOT NULL AUTO_INCREMENT,
  `PaintingID` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `EnteringTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ShoppingCartID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('22', '47', 'icalter', '2022-05-28 14:57:14');

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `SubjectID` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SubjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subjects
-- ----------------------------
INSERT INTO `subjects` VALUES ('1', 'Animals');
INSERT INTO `subjects` VALUES ('2', 'Landscape');
INSERT INTO `subjects` VALUES ('3', 'Music');
INSERT INTO `subjects` VALUES ('4', 'Sports');
INSERT INTO `subjects` VALUES ('5', 'Abstract');
INSERT INTO `subjects` VALUES ('6', 'Transportation');
INSERT INTO `subjects` VALUES ('7', 'Architecture');
INSERT INTO `subjects` VALUES ('9', 'Religion');
INSERT INTO `subjects` VALUES ('10', 'Still Life');
INSERT INTO `subjects` VALUES ('11', 'People');
INSERT INTO `subjects` VALUES ('12', 'Botanical');
INSERT INTO `subjects` VALUES ('13', 'Cuisine');
INSERT INTO `subjects` VALUES ('14', 'History');
INSERT INTO `subjects` VALUES ('15', 'Love');
INSERT INTO `subjects` VALUES ('16', 'Family');
INSERT INTO `subjects` VALUES ('17', 'Performing Arts');
INSERT INTO `subjects` VALUES ('18', 'Allegory');
INSERT INTO `subjects` VALUES ('19', 'Mythological');
INSERT INTO `subjects` VALUES ('20', 'Power');
INSERT INTO `subjects` VALUES ('21', 'Military');
INSERT INTO `subjects` VALUES ('22', 'Abstract');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `money` decimal(19,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'icalter', 'icalter', '114514', '13706303326', '1600224799@qq.com', '1234', '9405.0000');
INSERT INTO `user` VALUES ('2', 'mizuki', '水月', '1919810', '15269265778', '2818259462@qq.com', '伊比利亚', '999374.0000');
INSERT INTO `user` VALUES ('4', '12345', '12345', '123456', '13726545686', '567@qq.com', 'zzz', '0.0000');
INSERT INTO `user` VALUES ('5', '张三', '张三丰', '123456', '13726545686', '56@qq.com', '分委屈啊啊认为', '0.0000');
INSERT INTO `user` VALUES ('43', '小明明', 'true那么', 'codecode', '13706303326', '123@163.com', 'didididi', '0.0000');
INSERT INTO `user` VALUES ('45', 'username', '米明', '1234567890', '13525256565', '258@qq.com', '的完善多·', '0.0000');
INSERT INTO `user` VALUES ('58', '唉', '艾尔', '147258', '13702020202', '123@qq.com', '地址', '0.0000');
INSERT INTO `user` VALUES ('59', '张二狗', '狗而张', '123456', '13702580258', 'email@qq.com', 'addressdizhi地址', '0.0000');
INSERT INTO `user` VALUES ('60', '张三狗', '狗而张', '123456', '13702580258', 'emaiiil@qq.com', 'addressdizhi地址', '0.0000');
INSERT INTO `user` VALUES ('61', 'gll', 'gll', '12345678', '13725256565', '1234@qq.com', 'dizhi', '0.0000');
INSERT INTO `user` VALUES ('62', 'gll345667', '123', '1qaz2wsx', '15326962696', '12345sdfgh@163.com', '124', '0.0000');
INSERT INTO `user` VALUES ('63', '1454', 'ded_', '123456', '13456568989', '234@136.com', '地址啊地址', '0.0000');
INSERT INTO `user` VALUES ('64', '吴亦凡', '吸毒', '123456', '13245678989', '234@22.co', '3234', '0.0000');
INSERT INTO `user` VALUES ('65', 'Skybase', 'Zhou_ZiBo', '123456', '18019003773', '2445513122@qq.com', '11', '999999999998980.0000');
INSERT INTO `user` VALUES ('66', 'fieo', '123', '12345a', '13423452345', '1600224798@qq.com', 'address', '0.0000');
INSERT INTO `user` VALUES ('67', '13ergtr', '1234', '123qwe', '13412321232', '123@fudan.edu.cn', 'address', '0.0000');
INSERT INTO `user` VALUES ('68', '写文档', '文档被写', '123456', '14725852585', '159@qq.com', 'address', '123456.0000');
