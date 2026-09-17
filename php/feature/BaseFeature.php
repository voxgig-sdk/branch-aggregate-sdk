<?php
declare(strict_types=1);

// BranchAggregate SDK base feature

class BranchAggregateBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(BranchAggregateContext $ctx, array $options): void {}
    public function PostConstruct(BranchAggregateContext $ctx): void {}
    public function PostConstructEntity(BranchAggregateContext $ctx): void {}
    public function SetData(BranchAggregateContext $ctx): void {}
    public function GetData(BranchAggregateContext $ctx): void {}
    public function GetMatch(BranchAggregateContext $ctx): void {}
    public function SetMatch(BranchAggregateContext $ctx): void {}
    public function PrePoint(BranchAggregateContext $ctx): void {}
    public function PreSpec(BranchAggregateContext $ctx): void {}
    public function PreRequest(BranchAggregateContext $ctx): void {}
    public function PreResponse(BranchAggregateContext $ctx): void {}
    public function PreResult(BranchAggregateContext $ctx): void {}
    public function PreDone(BranchAggregateContext $ctx): void {}
    public function PreUnexpected(BranchAggregateContext $ctx): void {}
}
