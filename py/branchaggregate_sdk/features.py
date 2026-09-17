# BranchAggregate SDK feature factory

from branchaggregate_sdk.feature.base_feature import BranchAggregateBaseFeature
from branchaggregate_sdk.feature.debug_feature import BranchAggregateDebugFeature
from branchaggregate_sdk.feature.idempotency_feature import BranchAggregateIdempotencyFeature
from branchaggregate_sdk.feature.metrics_feature import BranchAggregateMetricsFeature
from branchaggregate_sdk.feature.paging_feature import BranchAggregatePagingFeature
from branchaggregate_sdk.feature.ratelimit_feature import BranchAggregateRatelimitFeature
from branchaggregate_sdk.feature.retry_feature import BranchAggregateRetryFeature
from branchaggregate_sdk.feature.test_feature import BranchAggregateTestFeature
from branchaggregate_sdk.feature.timeout_feature import BranchAggregateTimeoutFeature


_FEATURES = {
    "base": lambda: BranchAggregateBaseFeature(),
    "debug": lambda: BranchAggregateDebugFeature(),
    "idempotency": lambda: BranchAggregateIdempotencyFeature(),
    "metrics": lambda: BranchAggregateMetricsFeature(),
    "paging": lambda: BranchAggregatePagingFeature(),
    "ratelimit": lambda: BranchAggregateRatelimitFeature(),
    "retry": lambda: BranchAggregateRetryFeature(),
    "test": lambda: BranchAggregateTestFeature(),
    "timeout": lambda: BranchAggregateTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
