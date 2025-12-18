-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  payment_logs

CREATE INDEX IF NOT EXISTS idx_payment_logs_payment ON payment_logs (payment_id, log_at DESC);
