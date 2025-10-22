-- Auto-generated from schema-map.psd1 (map@6cefe8e)
-- table: payment_logs
ALTER TABLE payment_logs ADD CONSTRAINT fk_payment_logs_payment FOREIGN KEY (payment_id) REFERENCES payments(id) ON DELETE CASCADE;
