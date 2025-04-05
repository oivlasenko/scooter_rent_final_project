SELECT c.login,
    COUNT(o.id)
from "Couriers" AS c
LEFT JOIN "Orders" AS o ON c.id = o."courierId" AND o."inDelivery" = true
GROUP BY c.id;

SELECT track,
    (CASE
        WHEN finished = true THEN 2
        WHEN cancelled = true THEN -1
        WHEN "inDelivery" = true THEN 1
        ELSE 0
    END) AS status
from "Orders";
