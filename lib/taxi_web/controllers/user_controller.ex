defmodule TaxiWeb.UserController do
  use TaxiWeb, :controller

  alias Taxi.{Repo, Accounts.User}

  def index(conn, _params) do
    users = Repo.all(User)
    render(conn, "index.html", users: users)
  end
  def new(conn, _params) do
    chs = User.changeset(%User{}, %{})
    render(conn, "new.html", changeset: chs)
  end
end
