CREATE TABLE `mythical_creature` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coverimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryoforigin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `mythical_creature` (`id`, `name`, `detail`, `coverimage`, `countryoforigin`) VALUES
(1, 'Dragon', 'A legendary creature, typically depicted as a large, serpentine or reptilian beast with magical powers.', '1.jpg', 'Global'),
(2, 'Unicorn', 'A horse-like creature with a single, spiraling horn on its forehead, symbolizing purity and grace.', '2.jpg', 'Europe'),
(3, 'Phoenix', 'A mythical bird that regenerates or is reborn from its own ashes, symbolizing immortality and renewal.', '3.jpg', 'Egypt/Greek'),
(4, 'Kraken', 'A legendary sea monster of enormous size said to dwell off the coasts of Norway and Greenland.', '4.jpg', 'Scandinavia'),
(5, 'Griffin', 'A creature with the body of a lion and the head and wings of an eagle, symbolizing strength and majesty.', '5.jpg', 'Middle East/Europe'),
(6, 'Mermaid', 'A creature with the upper body of a human and the tail of a fish, found in folklore across many cultures.', '6.jpg', 'Global'),
(7, 'Basilisk', 'A serpent king who can cause death with a single glance or breath, originating in European legends.', '7.jpg', 'Europe'),
(8, 'Centaur', 'A creature with the upper body of a human and the lower body of a horse, appearing in Greek mythology.', '8.jpg', 'Greece'),
(9, 'Chimera', 'A monstrous fire-breathing hybrid creature, typically composed of parts from a lion, goat, and serpent.', '9.jpg', 'Greece'),
(10, 'Yeti', 'An ape-like creature said to inhabit the Himalayan mountains, often described as a snow-dwelling giant.', '10.jpg', 'Himalayas'),
(11, 'Naga', 'A serpent-like deity or creature found in Hinduism, Buddhism, and Southeast Asian mythology.', '11.jpg', 'India/Asia'),
(12, 'Pegasus', 'A divine winged horse, usually depicted as pure white and born from Greek mythology.', '12.jpg', 'Greece');


ALTER TABLE `mythical_creature`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `mythical_creature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

