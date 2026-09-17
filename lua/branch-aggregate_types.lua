-- Typed models for the BranchAggregate SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class Analytics
---@field aggregation? string
---@field code? number
---@field data_source string
---@field dimensions table
---@field enable_install_calculation? boolean
---@field end_date string
---@field filters? table
---@field granularity? string
---@field id? string
---@field job_id? string
---@field start_date string
---@field status_url? string

---@class AnalyticsLoadMatch
---@field id string
---@field app_id string
---@field format string
---@field limit number

---@class AnalyticsCreateData
---@field format string
---@field limit number
---@field aggregation? string
---@field code? number
---@field data_source string
---@field dimensions table
---@field enable_install_calculation? boolean
---@field end_date string
---@field filters? table
---@field granularity? string
---@field id? string
---@field job_id? string
---@field start_date string
---@field status_url? string

local M = {}

return M
