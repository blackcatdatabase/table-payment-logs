-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00)
-- table: payment_logs
CREATE TABLE IF NOT EXISTS payment_logs (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  payment_id BIGINT UNSIGNED NOT NULL,
  log_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  message TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
