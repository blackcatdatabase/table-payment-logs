<!-- Auto-generated from schema-map.psd1 @ 6cefe8e (2025-10-22T20:27:41+02:00) -->
# Definition – payment_logs

Plaintext logs per payment.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| payment_id | BIGINT UNSIGNED | NO | — | Payment (FK payments.id). |  |
| log_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Log time (UTC). |  |
| message | TEXT | NO | — | Log message. |  |