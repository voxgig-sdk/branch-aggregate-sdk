<?php
declare(strict_types=1);

// BranchAggregate SDK exists test

require_once __DIR__ . '/../branchaggregate_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = BranchAggregateSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
