-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  payment_logs

CREATE INDEX IF NOT EXISTS idx_payment_logs_payment ON payment_logs (payment_id, log_at DESC);
