--	
--	Query
--	Authors: Adriana Rios, Woodrow Bogucki, Mark McDermott
--	CS 4332 Fall 2016
--
SET lines 150
SELECT property.propertyId, property.street, property.city, property.zipCode 
FROM listing, property
WHERE
listing.rental = 'y' 
AND 
listing.sale = 'y'
AND
listing.propertyId = property.propertyId
; 
