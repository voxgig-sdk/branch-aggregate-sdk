<?php
declare(strict_types=1);

// BranchAggregate SDK utility: prepare_path

class BranchAggregatePreparePath
{
    public static function call(BranchAggregateContext $ctx): string
    {
        $point = $ctx->point;
        $parts = [];
        if ($point) {
            $p = \Voxgig\Struct\Struct::getprop($point, 'parts');
            if (is_array($p)) {
                $parts = $p;
            }
        }
        return \Voxgig\Struct\Struct::join($parts, '/', true);
    }
}
