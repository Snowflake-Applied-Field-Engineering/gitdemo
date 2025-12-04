/*
=============================================================================
SP_LOAD_SAMPLE_DATA - Sample Data Loading Procedure
=============================================================================
Loads sample data for demonstration purposes.
*/

CREATE OR REPLACE PROCEDURE SP_LOAD_SAMPLE_DATA()
RETURNS VARCHAR
LANGUAGE SQL
AS
$$
BEGIN
    -- Create sample table if not exists
    CREATE TABLE IF NOT EXISTS SAMPLE_DATA (
        ID INT AUTOINCREMENT,
        NAME VARCHAR(100),
        VALUE FLOAT,
        CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
    );
    
    -- Insert sample records
    INSERT INTO SAMPLE_DATA (NAME, VALUE)
    VALUES 
        ('Alpha', 100.50),
        ('Beta', 200.75),
        ('Gamma', 300.25),
        ('Delta', 400.00),
        ('Epsilon', 500.99);
    
    RETURN 'Sample data loaded successfully: 5 records inserted';
END;
$$;

