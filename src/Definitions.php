<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\PaymentLogs;

final class Definitions {
    // --- základní metadata ---
    public static function table(): string { return 'payment_logs'; }
    public static function contractView(): string { return 'vw_payment_logs'; }
    /** @return string[] */
    public static function columns(): array { return [ 'id', 'payment_id', 'log_at', 'message' ]; }
    public static function pk(): string { return 'id'; }

    // --- volitelná metadata (mohou být prázdná) ---
    public static function softDeleteColumn(): ?string {
        $c = ''; return $c !== '' ? $c : null;
    }
    public static function updatedAtColumn(): ?string {
        $c = ''; return $c !== '' ? $c : null;
    }
    public static function versionColumn(): ?string {
        $c = ''; return $c !== '' ? $c : null; // pro optimistic locking
    }
    /** např. "created_at DESC, id DESC" */
    public static function defaultOrder(): ?string {
        $c = 'id DESC'; return $c !== '' ? $c : null;
    }
    /** @return array<int,array<int,string>> seznam unikátních klíčů (sloupcových kombinací) */
    public static function uniqueKeys(): array { return []; }
    /** @return string[] JSON sloupce kvůli castům/operacím */
    public static function jsonColumns(): array { return []; }

    // --- pomocníci ---
    public static function hasColumn(string $col): bool {
        static $set = null;
        if ($set === null) { $set = array_fill_keys(self::columns(), true); }
        return isset($set[$col]);
    }
}
