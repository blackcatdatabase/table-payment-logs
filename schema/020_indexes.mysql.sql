-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  payment_logs

CREATE INDEX idx_payment_logs_payment ON payment_logs (payment_id, log_at DESC);
