/* id | name | email | password */
INSERT INTO users
VALUES
(1, 'Bob Bobson', 'bobbobson@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(2, 'Eva Stanley', 'estanley@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(3, 'Louisa Meyer', 'louisam@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(4, 'Sue Luna', 'sueluna@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

/* id | owner_id | title | description | thumbnail_photo_url | cover_photo_url | cost_per_night | parking_spaces | number_of_bathrooms | number_of_bedrooms | country | street | city | province | post_code | active */
INSERT INTO properties
VALUES
(1, 1, 'Country Cottage', 'description', 'https://images.pexels.com/photos/2581922/pexels-photo-2581922.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'https://images.pexels.com/photos/2581922/pexels-photo-2581922.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 99, 1, 1, 2, 'Canada', '123 Easy Street', 'Tobermory', 'Ontario', 'K1K1K1', TRUE),
(2, 1, 'City Dwelling', 'description', 'https://images.pexels.com/photos/2079234/pexels-photo-2079234.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'https://images.pexels.com/photos/2079234/pexels-photo-2079234.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 129, 1, 2, 2, 'Canada', '321 Urban Street', 'Toronto', 'Ontario', 'Z1Z1Z1', TRUE),
(3, 2, 'Modern Living', 'description', 'https://images.pexels.com/photos/1974596/pexels-photo-1974596.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'https://images.pexels.com/photos/1974596/pexels-photo-1974596.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 349, 5, 5, 6, 'Canada', '55 Premier Road', 'Ottawa', 'Ontario', 'K2K1K1', TRUE);

 /* id | start_date | end_date | property_id | guest_id  */
 INSERT INTO reservations
 VALUES
 (1, '20210501', '20210502', 1, 4),
 (2, '20210601', '20210604', 1, 3),
 (3, '20210601', '20210604', 3, 1);

 /* id | guest_id | property_id | reservation_id | rating | message  */
 INSERT INTO property_reviews
 VALUES
 (1, 3, 1, 1, 5, 'message'),
 (2, 3, 1, 2, 4, 'message'),
 (3, 1, 3, 3, 5, 'message');