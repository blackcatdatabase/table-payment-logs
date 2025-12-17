-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  payment_logs

CREATE INDEX idx_payment_logs_payment ON payment_logs (payment_id, log_at DESC);
