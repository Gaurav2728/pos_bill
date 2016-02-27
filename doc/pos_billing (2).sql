-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2016 at 09:06 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_billing`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bid` int(11) NOT NULL,
  `bill_detail` varchar(10000) NOT NULL,
  `payment` varchar(2000) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bid`, `bill_detail`, `payment`, `amount`, `date`) VALUES
(38, '{"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","orignal_price":"600","active":"YES","offers":[{"detail":"buy 2 and get 50 bucks off.","active":"YES","min_order":"2","offer":"50","oid":"1","type":"OFF_AMOUNT","pid":"6"},{"detail":"Buy 5 and get 20% off.","active":"YES","min_order":"5","offer":"20","oid":"2","type":"OFF_PERCENT","pid":"6"},{"detail":"Buy 3 get 1 Free.","active":"YES","min_order":"3","offer":"1","oid":"3","type":"BULK","pid":"6"},{"detail":"Buy 10 get 4 FREE","active":"YES","min_order":"10","offer":"4","oid":"4","type":"BULK","pid":"6"},{"detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES","min_order":"4","offer":"7","oid":"5","type":"FREE","pid":"6"},{"detail":"Buy 2 and get One book free","active":"YES","min_order":"2","offer":"1","oid":"6","type":"FREE","pid":"6"}],"our_price":"450","title":"Lee Marc Men''s Casual Shirt ","image":"shirt.jpg","pid":"6","cid":"2","scan_code":"5503193798860","available_stock":"200"}}],"item_our_price":"450"}', 'NO', '450', '2016-02-28 00:19:40'),
(39, '{"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","orignal_price":"600","active":"YES","offers":[{"detail":"buy 2 and get 50 bucks off.","active":"YES","min_order":"2","offer":"50","oid":"1","type":"OFF_AMOUNT","pid":"6"},{"detail":"Buy 5 and get 20% off.","active":"YES","min_order":"5","offer":"20","oid":"2","type":"OFF_PERCENT","pid":"6"},{"detail":"Buy 3 get 1 Free.","active":"YES","min_order":"3","offer":"1","oid":"3","type":"BULK","pid":"6"},{"detail":"Buy 10 get 4 FREE","active":"YES","min_order":"10","offer":"4","oid":"4","type":"BULK","pid":"6"},{"detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES","min_order":"4","offer":"7","oid":"5","type":"FREE","pid":"6"},{"detail":"Buy 2 and get One book free","active":"YES","min_order":"2","offer":"1","oid":"6","type":"FREE","pid":"6"}],"our_price":"450","title":"Lee Marc Men''s Casual Shirt ","image":"shirt.jpg","pid":"6","cid":"2","scan_code":"5503193798860","available_stock":"200"}},{"item_qty":"2","item_orignal_cost":"1200.00","item_our_price":"900.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}}],"item_our_price":"1350"}', 'NO', '1350', '2016-02-28 00:21:24'),
(40, '{"item_our_price":"1350","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"<UITextField: 0x15ca98fd0; frame = (14 119; 143 30); text = ''Sandeep''; clipsToBounds = YES; opaque = NO; autoresize = RM+BM; gestureRecognizers = <NSArray: 0x15caa4d70>; layer = <CALayer: 0x15ca99520>> <UITextField: 0x15caa2d40; frame = (164 119; 143 30); text = ''Kumar''; clipsToBounds = YES; opaque = NO; autoresize = RM+BM; gestureRecognizers = <NSArray: 0x15c95fec0>; layer = <CALayer: 0x15caa2c70>>"},"item_details":[{"item_qty":"2","item_orignal_cost":"1200.00","item_our_price":"900.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}},{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","orignal_price":"600","active":"YES","offers":[{"detail":"buy 2 and get 50 bucks off.","active":"YES","min_order":"2","offer":"50","oid":"1","type":"OFF_AMOUNT","pid":"6"},{"detail":"Buy 5 and get 20% off.","active":"YES","min_order":"5","offer":"20","oid":"2","type":"OFF_PERCENT","pid":"6"},{"detail":"Buy 3 get 1 Free.","active":"YES","min_order":"3","offer":"1","oid":"3","type":"BULK","pid":"6"},{"detail":"Buy 10 get 4 FREE","active":"YES","min_order":"10","offer":"4","oid":"4","type":"BULK","pid":"6"},{"detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES","min_order":"4","offer":"7","oid":"5","type":"FREE","pid":"6"},{"detail":"Buy 2 and get One book free","active":"YES","min_order":"2","offer":"1","oid":"6","type":"FREE","pid":"6"}],"our_price":"450","title":"Lee Marc Men''s Casual Shirt ","image":"shirt.jpg","pid":"6","cid":"2","scan_code":"5503193798860","available_stock":"200"}}]}', 'YES', '1350', '2016-02-28 00:31:03'),
(41, '{"item_our_price":"1350","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"<UITextField: 0x15c9c0c60; frame = (14 119; 143 30); text = ''Sandeep''; clipsToBounds = YES; opaque = NO; autoresize = RM+BM; gestureRecognizers = <NSArray: 0x15c979a60>; layer = <CALayer: 0x15c9bde20>> <UITextField: 0x15ca9cf40; frame = (164 119; 143 30); text = ''Sharma''; clipsToBounds = YES; opaque = NO; autoresize = RM+BM; gestureRecognizers = <NSArray: 0x15c950720>; layer = <CALayer: 0x15cb2e110>>"},"item_details":[{"item_qty":"2","item_orignal_cost":"1200.00","item_our_price":"900.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}},{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","orignal_price":"600","active":"YES","offers":[{"detail":"buy 2 and get 50 bucks off.","active":"YES","min_order":"2","offer":"50","oid":"1","type":"OFF_AMOUNT","pid":"6"},{"detail":"Buy 5 and get 20% off.","active":"YES","min_order":"5","offer":"20","oid":"2","type":"OFF_PERCENT","pid":"6"},{"detail":"Buy 3 get 1 Free.","active":"YES","min_order":"3","offer":"1","oid":"3","type":"BULK","pid":"6"},{"detail":"Buy 10 get 4 FREE","active":"YES","min_order":"10","offer":"4","oid":"4","type":"BULK","pid":"6"},{"detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES","min_order":"4","offer":"7","oid":"5","type":"FREE","pid":"6"},{"detail":"Buy 2 and get One book free","active":"YES","min_order":"2","offer":"1","oid":"6","type":"FREE","pid":"6"}],"our_price":"450","title":"Lee Marc Men''s Casual Shirt ","image":"shirt.jpg","pid":"6","cid":"2","scan_code":"5503193798860","available_stock":"200"}}]}', 'YES', '1350', '2016-02-28 00:32:29'),
(42, '{"item_our_price":"450","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}}]}', 'YES', '450', '2016-02-28 00:40:34'),
(43, '{"item_our_price":"450","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}}]}', 'YES', '450', '2016-02-28 00:47:01'),
(44, '{"item_our_price":"450","payment_detail":{"card_no":"4012 0000 3333 0026","card_holder_name":"Sonu Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","orignal_price":"600","active":"YES","offers":[{"detail":"buy 2 and get 50 bucks off.","active":"YES","min_order":"2","offer":"50","oid":"1","type":"OFF_AMOUNT","pid":"6"},{"detail":"Buy 5 and get 20% off.","active":"YES","min_order":"5","offer":"20","oid":"2","type":"OFF_PERCENT","pid":"6"},{"detail":"Buy 3 get 1 Free.","active":"YES","min_order":"3","offer":"1","oid":"3","type":"BULK","pid":"6"},{"detail":"Buy 10 get 4 FREE","active":"YES","min_order":"10","offer":"4","oid":"4","type":"BULK","pid":"6"},{"detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES","min_order":"4","offer":"7","oid":"5","type":"FREE","pid":"6"},{"detail":"Buy 2 and get One book free","active":"YES","min_order":"2","offer":"1","oid":"6","type":"FREE","pid":"6"}],"our_price":"450","title":"Lee Marc Men''s Casual Shirt ","image":"shirt.jpg","pid":"6","cid":"2","scan_code":"5503193798860","available_stock":"200"}}]}', 'YES', '450', '2016-02-28 00:56:14'),
(45, '{"item_our_price":"450","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}}]}', 'YES', '450', '2016-02-28 01:03:32'),
(46, '{"item_our_price":"980","payment_detail":{"card_no":"5326 7601 3131 2972","card_holder_name":"Mayank pane ha"},"item_details":[{"item_qty":"1","item_orignal_cost":"100.00","item_our_price":"80.00","item":{"detail":"The Monk Who Sold His Ferrari is a book about the development of character and discipline in life, written by Robin Sharma, a writer and leadership guru. It conveys a message that one should also live his life freely in spite of working all day.","orignal_price":"100","active":"YES","offers":[],"our_price":"80","title":"The monk who sold his ferrari","image":"monk.jpg","pid":"1","cid":"1","scan_code":"9780199532179","available_stock":"100"}},{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","orignal_price":"600","active":"YES","offers":[{"detail":"buy 2 and get 50 bucks off.","active":"YES","min_order":"2","offer":"50","oid":"1","type":"OFF_AMOUNT","pid":"6"},{"detail":"Buy 5 and get 20% off.","active":"YES","min_order":"5","offer":"20","oid":"2","type":"OFF_PERCENT","pid":"6"},{"detail":"Buy 3 get 1 Free.","active":"YES","min_order":"3","offer":"1","oid":"3","type":"BULK","pid":"6"},{"detail":"Buy 10 get 4 FREE","active":"YES","min_order":"10","offer":"4","oid":"4","type":"BULK","pid":"6"},{"detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES","min_order":"4","offer":"7","oid":"5","type":"FREE","pid":"6"},{"detail":"Buy 2 and get One book free","active":"YES","min_order":"2","offer":"1","oid":"6","type":"FREE","pid":"6"}],"our_price":"450","title":"Lee Marc Men''s Casual Shirt ","image":"shirt.jpg","pid":"6","cid":"2","scan_code":"5503193798860","available_stock":"200"}},{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}}]}', 'YES', '980', '2016-02-28 01:12:32'),
(47, '{"item_our_price":"450","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}}]}', 'YES', '450', '2016-02-28 01:18:36'),
(48, '{"item_our_price":"450","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","orignal_price":"600","active":"YES","offers":[{"detail":"buy 2 and get 50 bucks off.","active":"YES","min_order":"2","offer":"50","oid":"1","type":"OFF_AMOUNT","pid":"6"},{"detail":"Buy 5 and get 20% off.","active":"YES","min_order":"5","offer":"20","oid":"2","type":"OFF_PERCENT","pid":"6"},{"detail":"Buy 3 get 1 Free.","active":"YES","min_order":"3","offer":"1","oid":"3","type":"BULK","pid":"6"},{"detail":"Buy 10 get 4 FREE","active":"YES","min_order":"10","offer":"4","oid":"4","type":"BULK","pid":"6"},{"detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES","min_order":"4","offer":"7","oid":"5","type":"FREE","pid":"6"},{"detail":"Buy 2 and get One book free","active":"YES","min_order":"2","offer":"1","oid":"6","type":"FREE","pid":"6"}],"our_price":"450","title":"Lee Marc Men''s Casual Shirt ","image":"shirt.jpg","pid":"6","cid":"2","scan_code":"5503193798860","available_stock":"200"}}]}', 'YES', '450', '2016-02-28 01:23:49'),
(49, '{"item_our_price":"530","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","orignal_price":"600","active":"YES","offers":[{"detail":"buy 2 and get 50 bucks off.","active":"YES","min_order":"2","offer":"50","oid":"1","type":"OFF_AMOUNT","pid":"6"},{"detail":"Buy 5 and get 20% off.","active":"YES","min_order":"5","offer":"20","oid":"2","type":"OFF_PERCENT","pid":"6"},{"detail":"Buy 3 get 1 Free.","active":"YES","min_order":"3","offer":"1","oid":"3","type":"BULK","pid":"6"},{"detail":"Buy 10 get 4 FREE","active":"YES","min_order":"10","offer":"4","oid":"4","type":"BULK","pid":"6"},{"detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES","min_order":"4","offer":"7","oid":"5","type":"FREE","pid":"6"},{"detail":"Buy 2 and get One book free","active":"YES","min_order":"2","offer":"1","oid":"6","type":"FREE","pid":"6"}],"our_price":"450","title":"Lee Marc Men''s Casual Shirt ","image":"shirt.jpg","pid":"6","cid":"2","scan_code":"5503193798860","available_stock":"200"}},{"item_qty":"1","item_orignal_cost":"100.00","item_our_price":"80.00","item":{"detail":"The Monk Who Sold His Ferrari is a book about the development of character and discipline in life, written by Robin Sharma, a writer and leadership guru. It conveys a message that one should also live his life freely in spite of working all day.","orignal_price":"100","active":"YES","offers":[],"our_price":"80","title":"The monk who sold his ferrari","image":"monk.jpg","pid":"1","cid":"1","scan_code":"9780199532179","available_stock":"100"}}]}', 'YES', '530', '2016-02-28 01:24:13'),
(50, '{"item_our_price":"80","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"100.00","item_our_price":"80.00","item":{"detail":"The Monk Who Sold His Ferrari is a book about the development of character and discipline in life, written by Robin Sharma, a writer and leadership guru. It conveys a message that one should also live his life freely in spite of working all day.","orignal_price":"100","active":"YES","offers":[],"our_price":"80","title":"The monk who sold his ferrari","image":"monk.jpg","pid":"1","cid":"1","scan_code":"9780199532179","available_stock":"100"}}]}', 'YES', '80', '2016-02-28 01:24:21'),
(51, '{"item_our_price":"980","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"100.00","item_our_price":"80.00","item":{"detail":"The Monk Who Sold His Ferrari is a book about the development of character and discipline in life, written by Robin Sharma, a writer and leadership guru. It conveys a message that one should also live his life freely in spite of working all day.","orignal_price":"100","active":"YES","offers":[],"our_price":"80","title":"The monk who sold his ferrari","image":"monk.jpg","pid":"1","cid":"1","scan_code":"9780199532179","available_stock":"100"}},{"item_qty":"2","item_orignal_cost":"1200.00","item_our_price":"900.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}}]}', 'YES', '980', '2016-02-28 01:24:51'),
(52, '{"item_our_price":"900","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}},{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","orignal_price":"600","active":"YES","offers":[{"detail":"buy 2 and get 50 bucks off.","active":"YES","min_order":"2","offer":"50","oid":"1","type":"OFF_AMOUNT","pid":"6"},{"detail":"Buy 5 and get 20% off.","active":"YES","min_order":"5","offer":"20","oid":"2","type":"OFF_PERCENT","pid":"6"},{"detail":"Buy 3 get 1 Free.","active":"YES","min_order":"3","offer":"1","oid":"3","type":"BULK","pid":"6"},{"detail":"Buy 10 get 4 FREE","active":"YES","min_order":"10","offer":"4","oid":"4","type":"BULK","pid":"6"},{"detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES","min_order":"4","offer":"7","oid":"5","type":"FREE","pid":"6"},{"detail":"Buy 2 and get One book free","active":"YES","min_order":"2","offer":"1","oid":"6","type":"FREE","pid":"6"}],"our_price":"450","title":"Lee Marc Men''s Casual Shirt ","image":"shirt.jpg","pid":"6","cid":"2","scan_code":"5503193798860","available_stock":"200"}}]}', 'YES', '900', '2016-02-28 01:25:52'),
(53, '{"item_our_price":"450","payment_detail":{"card_no":"4444 3333 2222 1111","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_qty":"1","item_orignal_cost":"600.00","item_our_price":"450.00","item":{"detail":"100% premium knitted cotton for smooth and soft feel\\r\\nSoft elastane waist band stretch\\r\\nStylish contrast side panels","orignal_price":"600","active":"YES","offers":[],"our_price":"450","title":"Clifton Army Track Pant - Walnut","image":"jeans.jpg","pid":"7","cid":"2","scan_code":"5503517403463","available_stock":"250"}}]}', 'YES', '450', '2016-02-28 01:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `offer_list`
--

CREATE TABLE `offer_list` (
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `type` enum('FREE','OFF_PERCENT','OFF_AMOUNT','BULK') NOT NULL,
  `min_order` int(11) NOT NULL,
  `offer` varchar(200) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `active` enum('YES','NO') NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer_list`
--

INSERT INTO `offer_list` (`oid`, `pid`, `type`, `min_order`, `offer`, `detail`, `active`) VALUES
(1, 6, 'OFF_AMOUNT', 2, '50', 'buy 2 and get 50 bucks off.', 'YES'),
(2, 6, 'OFF_PERCENT', 5, '20', 'Buy 5 and get 20% off.', 'YES'),
(3, 6, 'BULK', 3, '1', 'Buy 3 get 1 Free.', 'YES'),
(4, 6, 'BULK', 10, '4', 'Buy 10 get 4 FREE', 'YES'),
(5, 6, 'FREE', 4, '7', 'Buy 4 and get Clifton Army Track Pant - Walnut FREE', 'YES'),
(6, 6, 'FREE', 2, '1', 'Buy 2 and get One book free', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `product_cat_list`
--

CREATE TABLE `product_cat_list` (
  `cid` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_cat_list`
--

INSERT INTO `product_cat_list` (`cid`, `cat_name`) VALUES
(1, 'Books'),
(2, 'Clothing'),
(3, 'Shoes'),
(4, 'Daily Accessories'),
(5, 'Consumer Electronics'),
(6, 'DVDs & Movies'),
(7, 'Health & Beauty'),
(8, 'Jewelry & Watches'),
(9, 'Toys & Hobbies'),
(10, 'FOOD ITEM'),
(11, 'Grocery'),
(12, 'Sporting Goods');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `scan_code` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `detail` varchar(2000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `available_stock` varchar(200) NOT NULL,
  `orignal_price` varchar(50) NOT NULL,
  `our_price` varchar(50) NOT NULL,
  `active` enum('YES','NO') NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`pid`, `cid`, `scan_code`, `title`, `detail`, `image`, `available_stock`, `orignal_price`, `our_price`, `active`) VALUES
(1, 1, '9780199532179', 'The monk who sold his ferrari', 'The Monk Who Sold His Ferrari is a book about the development of character and discipline in life, written by Robin Sharma, a writer and leadership guru. It conveys a message that one should also live his life freely in spite of working all day.', 'monk.jpg', '100', '100', '80', 'YES'),
(6, 2, '5503193798860', 'Lee Marc Men''s Casual Shirt ', 'Material: Denim # Color: Blue\r\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\r\nFitting Type: Regular Fit # Closure Type: Buttoned\r\nOccasion: Casual\r\nWash care instructions: Regular hand wash # iron reverse side', 'shirt.jpg', '200', '600', '450', 'YES'),
(7, 2, '5503517403463', 'Clifton Army Track Pant - Walnut', '100% premium knitted cotton for smooth and soft feel\r\nSoft elastane waist band stretch\r\nStylish contrast side panels', 'jeans.jpg', '250', '600', '450', 'YES'),
(10, 2, '5503350878534', 'Women Pink & Coral Red Kurta', 'Pink and coral red kurta, has a round neck, long sleeves, contrast printed panel on the front and back, overlays on the front', 'kurta.jpeg', '200', '800', '624', 'YES'),
(11, 2, '5503560627175', 'Fashion Women''s Kurta and Churidar Set', 'Great for casual occasions, this kurta can be paired with beige leggings for a relaxed ethnic appeal. For a college-ready look, you can also pair it with blue jeans and wedges.', 'kuta2.jpeg', '500', '1000', '820', 'YES'),
(12, 4, '5503360739160', 'Octan Shoulder Bag', 'Latest and Trendy, Easy to use, eco friendly, various colours available, large in size, apt for shopping, small pocket inside for keeping currency, mobile etc, beautiful design', 'bag1.jpeg', '600', '1000', '950', 'YES'),
(13, 2, '5503390417847', 'Baby Boy''s Dhoti & Kurta Set', 'Fabric: Silk', 'baby1.jpeg', '100', '400', '250', 'YES'),
(14, 2, '5503191023780', 'Home Satin, Cotton Abstract Double Bedsheet', '1 Double Bedsheet, 2 Pillow Cover, Multicolor', 'badsheet.jpeg', '1200', '1200', '750', 'YES'),
(15, 2, '5503183156953', 'Gypsy 1.2 L Electric Kettle', 'This electric kettle from Pigeon will soon become a travelers'' best friend, a hostelite saviour and an answer to all the midnight cravings. With this handy appliance, you can boil water and use it to make instant noodles, packet soup, coffee and green tea. Ergonomic Design This appliance is ergonomically designed and comes with a comfortable, cool touch handle and a stainless steel body which allows you to boil water effortlessly. Power Consumption To help you save electricity and to make you a responsible citizen, this 1.2 L kettle consumes just about 1200 W of power. So use this appliance as much as you want without having to worry about the soaring power usage.', 'kettle.jpeg', '1400', '1150', '950', 'YES'),
(16, 5, '5503179361057', 'Apple MacBook MK4M2HN/A MK4M2HN/A - (8 GB DDR3) Notebook', 'The Macbook has a gorgeous 30.48-cm Retina display with edge-to-edge glass that brings everything into focus. Supporting millions of colours, the brilliant LED Backlit display is sure to keep your eyes locked on to it all along. The display features a resolution of 2304 x 1440 pixels and is developed with IPS technology for crisp visuals.', 'mac.jpeg', '200', '98000', '90000', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `offer_list`
--
ALTER TABLE `offer_list`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `product_cat_list`
--
ALTER TABLE `product_cat_list`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `scan_code` (`scan_code`),
  ADD KEY `cid` (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `offer_list`
--
ALTER TABLE `offer_list`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product_cat_list`
--
ALTER TABLE `product_cat_list`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `offer_list`
--
ALTER TABLE `offer_list`
  ADD CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `product_list` (`pid`);

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `product_cat_list` (`cid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
