-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  payment_logs
-- Contract view for [payment_logs]
CREATE OR REPLACE VIEW vw_payment_logs AS
SELECT
  id,
  payment_id,
  log_at,
  message
FROM payment_logs;
