defmodule TaxiWeb.UserController do
  use TaxiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
