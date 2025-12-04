/*
=============================================================================
FN_CALCULATE_GROWTH_RATE - Growth Rate Calculator Function
=============================================================================
Calculates percentage growth between two values.
*/

CREATE OR REPLACE FUNCTION FN_CALCULATE_GROWTH_RATE(OLD_VALUE FLOAT, NEW_VALUE FLOAT)
RETURNS FLOAT
LANGUAGE SQL
AS
$$
    SELECT CASE 
        WHEN OLD_VALUE = 0 THEN NULL
        ELSE ROUND(((NEW_VALUE - OLD_VALUE) / OLD_VALUE) * 100, 2)
    END
$$;

