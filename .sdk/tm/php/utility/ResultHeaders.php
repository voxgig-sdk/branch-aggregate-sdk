<?php
declare(strict_types=1);

// BranchAggregate SDK utility: result_headers

class BranchAggregateResultHeaders
{
    public static function call(BranchAggregateContext $ctx): ?BranchAggregateResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
