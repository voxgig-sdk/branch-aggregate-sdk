# BranchAggregate SDK exists test

import pytest
from branchaggregate_sdk import BranchAggregateSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = BranchAggregateSDK.test(None, None)
        assert testsdk is not None
