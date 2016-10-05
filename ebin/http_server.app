{application, http_server,
 [{description, "An HTTP server to Angra-DB"},
  {vsn, "0.01"},
  {modules, [hs_app, hs_sup, hs_server]},
  {registered, [hs_sup]},
  {applications, [kernel, stdlib]},
  {mod, {hs_app, []}}
]}.