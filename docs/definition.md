<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – payment_logs

Plaintext logs per payment.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| payment_id | BIGINT | NO | — | Payment (FK payments.id). |  |
| log_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Log time (UTC). |  |
| message | TEXT | NO | — | Log message. |  |