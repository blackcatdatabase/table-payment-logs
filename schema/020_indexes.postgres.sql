-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  payment_logs
CREATE INDEX IF NOT EXISTS idx_payment_logs_payment ON payment_logs (payment_id, log_at DESC);
