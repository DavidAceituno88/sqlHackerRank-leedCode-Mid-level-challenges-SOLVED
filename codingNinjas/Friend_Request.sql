SELECT COUNT(*) AS unique_request 
FROM (SELECT DISTINCT requester_id, accepter_id 
FROM RequestAccepted) AS A; 
SELECT COUNT(*) AS total_request FROM 
(SELECT DISTINCT sender_id, send_to_id FROM FriendRequest) AS B;
