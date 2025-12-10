-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  payment_logs

CREATE INDEX idx_payment_logs_payment ON payment_logs (payment_id, log_at DESC);
