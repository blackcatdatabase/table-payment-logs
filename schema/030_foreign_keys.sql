-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00)
-- table: payment_logs
ALTER TABLE payment_logs ADD CONSTRAINT fk_payment_logs_payment FOREIGN KEY (payment_id) REFERENCES payments(id) ON DELETE CASCADE;
