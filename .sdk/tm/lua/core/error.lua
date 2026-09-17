-- BranchAggregate SDK error

local BranchAggregateError = {}
BranchAggregateError.__index = BranchAggregateError


function BranchAggregateError.new(code, msg, ctx)
  local self = setmetatable({}, BranchAggregateError)
  self.is_sdk_error = true
  self.sdk = "BranchAggregate"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function BranchAggregateError:error()
  return self.msg
end


function BranchAggregateError:__tostring()
  return self.msg
end


return BranchAggregateError
