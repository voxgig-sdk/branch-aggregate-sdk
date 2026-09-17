-- BranchAggregate SDK exists test

local sdk = require("branch-aggregate_sdk")

describe("BranchAggregateSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
