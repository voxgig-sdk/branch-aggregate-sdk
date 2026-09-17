<?php
declare(strict_types=1);

// BranchAggregate SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class BranchAggregateMakeContext
{
    public static function call(array $ctxmap, ?BranchAggregateContext $basectx): BranchAggregateContext
    {
        return new BranchAggregateContext($ctxmap, $basectx);
    }
}
