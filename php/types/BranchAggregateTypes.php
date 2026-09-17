<?php
declare(strict_types=1);

// Typed models for the BranchAggregate SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** Analytics entity data model. */
class Analytics
{
    public ?string $aggregation = null;
    public ?int $code = null;
    public string $data_source;
    public array $dimensions;
    public ?bool $enable_install_calculation = null;
    public string $end_date;
    public ?array $filters = null;
    public ?string $granularity = null;
    public ?string $id = null;
    public ?string $job_id = null;
    public string $start_date;
    public ?string $status_url = null;
}

/** Request payload for Analytics#load. */
class AnalyticsLoadMatch
{
    public string $id;
    public string $app_id;
    public string $format;
    public int $limit;
}

/** Request payload for Analytics#create. */
class AnalyticsCreateData
{
    public string $format;
    public int $limit;
    public ?string $aggregation = null;
    public ?int $code = null;
    public string $data_source;
    public array $dimensions;
    public ?bool $enable_install_calculation = null;
    public string $end_date;
    public ?array $filters = null;
    public ?string $granularity = null;
    public ?string $id = null;
    public ?string $job_id = null;
    public string $start_date;
    public ?string $status_url = null;
}

