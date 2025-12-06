-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  payment_logs

ALTER TABLE payment_logs ADD CONSTRAINT fk_payment_logs_payment FOREIGN KEY (payment_id) REFERENCES payments(id) ON DELETE CASCADE;
