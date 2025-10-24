-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-10-24T09:19:46Z)
-- engine: mysql
-- table:  payment_logs
-- Contract view for [payment_logs]
CREATE OR REPLACE VIEW vw_payment_logs AS
SELECT
  id,
  payment_id,
  log_at,
  message
FROM payment_logs;
