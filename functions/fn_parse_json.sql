/*
=============================================================================
FN_PARSE_JSON_FIELD - JSON Field Parser Function
=============================================================================
Extracts a field value from a JSON string.
*/

CREATE OR REPLACE FUNCTION FN_PARSE_JSON_FIELD(JSON_STRING VARCHAR, FIELD_NAME VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS
$$
    SELECT GET_PATH(PARSE_JSON(JSON_STRING), FIELD_NAME)::VARCHAR
$$;

