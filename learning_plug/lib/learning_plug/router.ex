defmodule LearningPlug.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/", do: send_resp(conn, 200, "Hello World!")
  get "/ping", do: send_resp(conn, 200, "pong")
  match _, do: send_resp(conn, 404, "Oops!!")
end
