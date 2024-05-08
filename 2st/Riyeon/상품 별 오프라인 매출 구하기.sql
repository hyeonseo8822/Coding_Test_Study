SELECT PRODUCT_CODE, PRICE * SUM(SALES_AMOUNT) AS SALES
FROM PRODUCT PP
INNER JOIN OFFLINE_SALE OO
    ON PP.PRODUCT_ID = OO.PRODUCT_ID
GROUP BY PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE