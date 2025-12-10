# payment_logs

Plaintext logs per payment.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| log_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Log time (UTC). |
| message | TEXT | NO |  | Log message. |
| payment_id | BIGINT | NO |  | Payment (FK payments.id). |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_payment_logs_payment | payment_id,log_atDESC | CREATE INDEX idx_payment_logs_payment ON payment_logs (payment_id, log_at DESC) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_payment_logs_payment | payment_id | payments(id) | ON DELETE CASCADE |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_payment_logs_payment | payment_id,log_atDESC | CREATE INDEX IF NOT EXISTS idx_payment_logs_payment ON payment_logs (payment_id, log_at DESC) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_payment_logs_payment | payment_id | payments(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_payment_logs | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_payment_logs | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
