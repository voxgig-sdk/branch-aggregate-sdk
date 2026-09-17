# BranchAggregate SDK utility: make_context

from branchaggregate_sdk.core.context import BranchAggregateContext


def make_context_util(ctxmap, basectx):
    return BranchAggregateContext(ctxmap, basectx)
