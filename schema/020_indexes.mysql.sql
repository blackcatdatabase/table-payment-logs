-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  payment_logs

CREATE INDEX idx_payment_logs_payment ON payment_logs (payment_id, log_at DESC);
