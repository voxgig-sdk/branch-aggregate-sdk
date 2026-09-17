-- BranchAggregate SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "BranchAggregate",
      slug = "branch-aggregate",
      version = "0.0.1",
      target = "lua",
    },
    feature = {
      ["debug"] = {
        ["options"] = {
          ["active"] = false,
          ["max"] = 100,
          ["redact"] = {
            "authorization",
            "cookie",
            "set-cookie",
            "api-key",
            "apikey",
            "x-api-key",
            "idempotency-key",
          },
        },
        ["optspec"] = {
          ["now"] = "`$FUNCTION`",
          ["onEntry"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["idempotency"] = {
        ["options"] = {
          ["active"] = false,
          ["header"] = "Idempotency-Key",
          ["methods"] = {
            "POST",
            "PUT",
            "PATCH",
            "DELETE",
          },
          ["ops"] = {
            "create",
            "update",
            "remove",
          },
        },
        ["optspec"] = {
          ["keygen"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["metrics"] = {
        ["options"] = {
          ["active"] = false,
        },
        ["optspec"] = {
          ["now"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["paging"] = {
        ["options"] = {
          ["active"] = false,
          ["afterVar"] = "after",
          ["cursorParam"] = "cursor",
          ["firstVar"] = "first",
          ["limitParam"] = "limit",
          ["pageParam"] = "page",
          ["startPage"] = 1,
        },
        ["optspec"] = {
          ["limit"] = "`$NUMBER`",
          ["ops"] = "`$LIST`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["ratelimit"] = {
        ["options"] = {
          ["active"] = false,
          ["burst"] = 5,
          ["rate"] = 5,
        },
        ["optspec"] = {
          ["now"] = "`$FUNCTION`",
          ["sleep"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
      ["retry"] = {
        ["options"] = {
          ["active"] = false,
          ["factor"] = 2,
          ["maxDelay"] = 2000,
          ["minDelay"] = 50,
          ["retries"] = 2,
          ["statuses"] = {
            408,
            425,
            429,
            500,
            502,
            503,
            504,
          },
        },
        ["optspec"] = {
          ["jitter"] = "`$BOOLEAN`",
          ["sleep"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
        ["optspec"] = {
          ["entity"] = "`$MAP`",
          ["net"] = "`$MAP`",
        },
        ["strict"] = false,
        ["transport"] = "base",
      },
      ["timeout"] = {
        ["options"] = {
          ["active"] = false,
          ["ms"] = 30000,
        },
        ["optspec"] = {
          ["clearTimer"] = "`$FUNCTION`",
          ["setTimer"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
    },
    options = {
      base = "https://api2.branch.io/v2",
      auth = {
        prefix = "Bearer",
      },
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["analytics"] = {},
      },
    },
    entity = {
      ["analytics"] = {
        ["fields"] = {
          {
            ["name"] = "aggregation",
            ["short"] = "How to count events towards the final result count.",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "code",
            ["short"] = "Response code",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "data_source",
            ["req"] = true,
            ["short"] = "A string value representing the data source.",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "dimensions",
            ["req"] = true,
            ["short"] = "An array representing dimension(s) to group by.",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "enable_install_calculation",
            ["short"] = "If true, then Branch will de-dupe unattributed installs caused by duplicate events from non-opt-in users coming from paid ads (result from [iOS 14.5 privacy changes](https://help.branch.io/faq/docs/ios-14-faqs)).",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["format"] = "date",
            ["name"] = "end_date",
            ["req"] = true,
            ["short"] = "The end of the interval time range represented as an ISO-8601 complete date.",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "filters",
            ["short"] = "Keys are same as dimensions.",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "granularity",
            ["short"] = "The time granularity that each band value will represent.",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "id",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "job_id",
            ["short"] = "The unique ID of the request.",
            ["type"] = "`$STRING`",
          },
          {
            ["format"] = "date",
            ["name"] = "start_date",
            ["req"] = true,
            ["short"] = "The start of the interval time range represented as an ISO-8601 complete date.",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "status_url",
            ["short"] = "The URL of the export request.",
            ["type"] = "`$STRING`",
          },
        },
        ["id"] = {
          ["field"] = "id",
          ["name"] = "id",
        },
        ["name"] = "analytics",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["args"] = {
                  ["query"] = {
                    {
                      ["example"] = "csv",
                      ["kind"] = "query",
                      ["name"] = "format",
                      ["orig"] = "format",
                      ["reqd"] = true,
                      ["type"] = "`$STRING`",
                    },
                    {
                      ["kind"] = "query",
                      ["name"] = "limit",
                      ["orig"] = "limit",
                      ["reqd"] = true,
                      ["type"] = "`$INTEGER`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/analytics",
                ["segments"] = {
                  {
                    ["lit"] = "analytics",
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "format",
                    "limit",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["parts"] = {
                  "analytics",
                },
              },
            },
          },
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["args"] = {
                  ["params"] = {
                    {
                      ["kind"] = "param",
                      ["name"] = "id",
                      ["orig"] = "job_id",
                      ["reqd"] = true,
                      ["type"] = "`$STRING`",
                    },
                  },
                  ["query"] = {
                    {
                      ["kind"] = "query",
                      ["name"] = "app_id",
                      ["orig"] = "app_id",
                      ["reqd"] = true,
                      ["type"] = "`$STRING`",
                    },
                    {
                      ["example"] = "csv",
                      ["kind"] = "query",
                      ["name"] = "format",
                      ["orig"] = "format",
                      ["reqd"] = true,
                      ["type"] = "`$STRING`",
                    },
                    {
                      ["kind"] = "query",
                      ["name"] = "limit",
                      ["orig"] = "limit",
                      ["reqd"] = true,
                      ["type"] = "`$INTEGER`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/analytics/{job_id}",
                ["rename"] = {
                  ["param"] = {
                    ["job_id"] = "id",
                  },
                },
                ["segments"] = {
                  {
                    ["lit"] = "analytics",
                  },
                  {
                    ["var"] = "id",
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "app_id",
                    "format",
                    "id",
                    "limit",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["parts"] = {
                  "analytics",
                  "{id}",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config
