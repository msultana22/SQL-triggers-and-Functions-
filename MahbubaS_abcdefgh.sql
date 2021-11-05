CREATE TRIGGER synthea.Mahbuba_abecdefgh 
ON synthea.patients
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO synthea.Mahbuba_abecdefgh(
        Id, 
      Birthday,
        SSN,
        Drivers,
        model_year,
       Passport, 
      Race, 
      Ethnicity
    )
    SELECT
        i.product_id,
        product_name,
        brand_id,
        category_id,
        model_year,
        i.list_price,
        GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
        d.product_id,
        product_name,
        brand_id,
        category_id,
        model_year,
        d.list_price,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
