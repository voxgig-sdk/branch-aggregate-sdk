# Typed models for the BranchAggregate SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.
#
# These are TypedDicts, not dataclasses: the SDK ops return/accept plain dicts
# at runtime, and a TypedDict IS a dict shape, so the types match the runtime.
# Optional (req:false) keys are modelled as TypedDict key-optionality
# (total=False), split into a required base + total=False subclass when a type
# has both required and optional keys.

from __future__ import annotations

from typing import TypedDict, Any


class AnalyticsRequired(TypedDict):
    data_source: str
    dimensions: list
    end_date: str
    start_date: str


class Analytics(AnalyticsRequired, total=False):
    aggregation: str
    code: int
    enable_install_calculation: bool
    filters: dict
    granularity: str
    id: str
    job_id: str
    status_url: str


class AnalyticsLoadMatch(TypedDict):
    id: str
    app_id: str
    format: str
    limit: int


class AnalyticsCreateDataRequired(TypedDict):
    format: str
    limit: int
    data_source: str
    dimensions: list
    end_date: str
    start_date: str


class AnalyticsCreateData(AnalyticsCreateDataRequired, total=False):
    aggregation: str
    code: int
    enable_install_calculation: bool
    filters: dict
    granularity: str
    id: str
    job_id: str
    status_url: str
