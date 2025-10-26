<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\PaymentLogs\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class PaymentLogDto {
    public function __construct(
        public readonly ?int $id,
        public readonly int $paymentId,
        public readonly \DateTimeImmutable $logAt,
        public readonly string $message
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
