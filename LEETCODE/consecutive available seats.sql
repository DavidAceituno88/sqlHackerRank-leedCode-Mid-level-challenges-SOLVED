SELECT c1.seat_id
FROM cinema c1
JOIN cinema c2
ON c1.seat_id = c2.seat_id + 1
OR c1.seat_id = c2.seat_id - 1
WHERE c1.free = 't'
AND c2.free = 't'
ORDER BY seat_id
