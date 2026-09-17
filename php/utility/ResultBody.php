<?php
declare(strict_types=1);

// BranchAggregate SDK utility: result_body

class BranchAggregateResultBody
{
    public static function call(BranchAggregateContext $ctx): ?BranchAggregateResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
