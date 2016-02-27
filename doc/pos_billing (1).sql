-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2016 at 12:06 PM
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
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bid`, `bill_detail`, `payment`, `date`) VALUES
(1, '{"total_bill":"5000","item_our_price":"4000","payment":"YES","payment_mode":"credit_card","payment_detail":{"card_no":"44XX XXXX XXXX XX11","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_orignal_cost":"5000","item_our_price":"4000","item_qty":"20","item":{"pid":"6","cid":"2","scan_code":"12367687","title":"LeeMarcMen''sCasualShirt","detail":"Material: Denim#Color: Blue\\r\\nNeckStyle: BandedCollar#SleeveType: Sleeveless\\r\\nFittingType: RegularFit#ClosureType: Buttoned\\r\\nOccasion: Casual\\r\\nWashcareinstructions: Regularhandwash#ironreverseside","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy2andget50bucksoff.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy5andget20%off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy3get1Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy10get4FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy4andgetCliftonArmyTrackPant-WalnutFREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy2andgetOnebookfree","active":"YES"}]}}]}', 'YES', '2016-02-27 00:00:00'),
(2, '{"total_bill":"5000","item_our_price":"4000","payment":"YES","payment_mode":"credit_card","payment_detail":{"card_no":"44XX XXXX XXXX XX11","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_orignal_cost":"5000","item_our_price":"4000","item_qty":"20","item":{"pid":"6","cid":"2","scan_code":"12367687","title":"LeeMarcMen''sCasualShirt","detail":"Material: Denim#Color: Blue\\r\\nNeckStyle: BandedCollar#SleeveType: Sleeveless\\r\\nFittingType: RegularFit#ClosureType: Buttoned\\r\\nOccasion: Casual\\r\\nWashcareinstructions: Regularhandwash#ironreverseside","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy2andget50bucksoff.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy5andget20%off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy3get1Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy10get4FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy4andgetCliftonArmyTrackPant-WalnutFREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy2andgetOnebookfree","active":"YES"}]}}]}', 'YES', '2016-02-27 12:35:04'),
(3, '{"total_bill":"5000","item_our_price":"4000","payment":"YES","payment_mode":"credit_card","payment_detail":{"card_no":"44XX XXXX XXXX XX11","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_orignal_cost":"5000","item_our_price":"4000","item_qty":"20","item":{"pid":"6","cid":"2","scan_code":"12367687","title":"LeeMarcMen''sCasualShirt","detail":"Material: Denim#Color: Blue\\r\\nNeckStyle: BandedCollar#SleeveType: Sleeveless\\r\\nFittingType: RegularFit#ClosureType: Buttoned\\r\\nOccasion: Casual\\r\\nWashcareinstructions: Regularhandwash#ironreverseside","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy2andget50bucksoff.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy5andget20%off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy3get1Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy10get4FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy4andgetCliftonArmyTrackPant-WalnutFREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy2andgetOnebookfree","active":"YES"}]}}]}', 'YES', '2016-02-27 12:36:54'),
(4, '{"total_bill":"5000","item_our_price":"4000","payment":"YES","payment_mode":"credit_card","payment_detail":{"card_no":"44XX XXXX XXXX XX11","card_holder_name":"Sandeep Sharma"},"item_details":[{"item_orignal_cost":"5000","item_our_price":"4000","item_qty":"20","item":{"pid":"6","cid":"2","scan_code":"12367687","title":"LeeMarcMen''sCasualShirt","detail":"Material: Denim#Color: Blue\\r\\nNeckStyle: BandedCollar#SleeveType: Sleeveless\\r\\nFittingType: RegularFit#ClosureType: Buttoned\\r\\nOccasion: Casual\\r\\nWashcareinstructions: Regularhandwash#ironreverseside","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy2andget50bucksoff.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy5andget20%off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy3get1Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy10get4FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy4andgetCliftonArmyTrackPant-WalnutFREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy2andgetOnebookfree","active":"YES"}]}}]}', 'YES', '2016-02-27 12:38:39'),
(5, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', 'YES', '2016-02-27 13:38:23'),
(6, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', 'YES', '2016-02-27 13:38:24'),
(7, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', 'YES', '2016-02-27 13:38:51'),
(8, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', 'YES', '2016-02-27 13:38:52'),
(9, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', 'YES', '2016-02-27 13:38:53'),
(10, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', 'YES', '2016-02-27 13:38:53'),
(11, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', 'YES', '2016-02-27 13:42:18'),
(12, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', 'YES', '2016-02-27 13:42:19'),
(13, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:42:47'),
(14, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:42:48'),
(15, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:42:48'),
(16, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:42:48'),
(17, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:42:49'),
(18, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:42:49'),
(19, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:44:33'),
(20, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:49:35'),
(21, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:49:35'),
(22, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:49:36'),
(23, '{"pid":"6","cid":"2","scan_code":"12367687","title":"Lee Marc Men''s Casual Shirt ","detail":"Material: Denim # Color: Blue\\r\\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\\r\\nFitting Type: Regular Fit # Closure Type: Buttoned\\r\\nOccasion: Casual\\r\\nWash care instructions: Regular hand wash # iron reverse side","image":"","available_stock":"200","orignal_price":"600","our_price":"450","active":"YES","offers":[{"oid":"1","pid":"6","type":"OFF_AMOUNT","min_order":"2","offer":"50","detail":"buy 2 and get 50 bucks off.","active":"YES"},{"oid":"2","pid":"6","type":"OFF_PERCENT","min_order":"5","offer":"20","detail":"Buy 5 and get 20% off.","active":"YES"},{"oid":"3","pid":"6","type":"BULK","min_order":"3","offer":"1","detail":"Buy 3 get 1 Free.","active":"YES"},{"oid":"4","pid":"6","type":"BULK","min_order":"10","offer":"4","detail":"Buy 10 get 4 FREE","active":"YES"},{"oid":"5","pid":"6","type":"FREE","min_order":"4","offer":"7","detail":"Buy 4 and get Clifton Army Track Pant - Walnut FREE","active":"YES"},{"oid":"6","pid":"6","type":"FREE","min_order":"2","offer":"1","detail":"Buy 2 and get One book free","active":"YES"}]}', ':paymentInfo', '2016-02-27 13:50:35'),
(24, ':bill_detail', ':paymentInfo', '2016-02-27 13:52:20'),
(25, ':bill_detail', ':paymentInfo', '2016-02-27 13:53:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`pid`, `cid`, `scan_code`, `title`, `detail`, `image`, `available_stock`, `orignal_price`, `our_price`, `active`) VALUES
(1, 1, '8791238980', 'The monk who sold his ferrari', 'The Monk Who Sold His Ferrari is a book about the development of character and discipline in life, written by Robin Sharma, a writer and leadership guru. It conveys a message that one should also live his life freely in spite of working all day.', 'monk.jpg', '100', '100', '80', 'YES'),
(6, 2, '12367687', 'Lee Marc Men''s Casual Shirt ', 'Material: Denim # Color: Blue\r\nNeck Style: Banded Collar # Sleeve Type: Sleeveless\r\nFitting Type: Regular Fit # Closure Type: Buttoned\r\nOccasion: Casual\r\nWash care instructions: Regular hand wash # iron reverse side', 'shirt.jpg', '200', '600', '450', 'YES'),
(7, 2, '123676828723', 'Clifton Army Track Pant - Walnut', '100% premium knitted cotton for smooth and soft feel\r\nSoft elastane waist band stretch\r\nStylish contrast side panels', 'jeans.jpg', '250', '600', '450', 'YES');

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
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
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
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
