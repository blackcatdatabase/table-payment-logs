-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  payment_logs
ALTER TABLE payment_logs ADD CONSTRAINT fk_payment_logs_payment FOREIGN KEY (payment_id) REFERENCES payments(id) ON DELETE CASCADE;
