-module(hs_app).

-behaviour(application).

-export([start/2, stop/1]).

-define(DEFAULT_PORT, 1235).

start(_Type, _StartArgs) ->

    Port = case application:get_env(http_server, port) of
               {ok, P} -> P;
               undefined -> ?DEFAULT_PORT
           end,
		   
    case hs_sup:start_link(Port) of
        {ok, Pid} ->
            {ok, Pid};
        Other ->
            {error, Other}
    end.

stop(_State) ->
	ok.