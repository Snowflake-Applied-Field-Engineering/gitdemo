/*
=============================================================================
SP_TRANSFORM_DATA - Data Transformation Procedure
=============================================================================
Transforms and aggregates sample data.
*/

CREATE OR REPLACE PROCEDURE SP_TRANSFORM_DATA()
RETURNS VARCHAR
LANGUAGE SQL
AS
$$
BEGIN
    -- Create transformed table
    CREATE OR REPLACE TABLE TRANSFORMED_DATA AS
    SELECT 
        NAME,
        VALUE,
        VALUE * 1.1 AS VALUE_WITH_MARKUP,
        ROUND(VALUE / (SELECT SUM(VALUE) FROM SAMPLE_DATA) * 100, 2) AS PERCENTAGE_OF_TOTAL,
        CREATED_AT
    FROM SAMPLE_DATA;
    
    RETURN 'Data transformed successfully';
END;
$$;

