defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render("index.html")
  end

  def show(conn, %{"id" => id, "content_type" => "json"}) do
    json(conn, %{id: id})
  end

  def show(conn, %{"id" => id, "content_type" => "plain_text"}) do
    text(conn, "Showing id: #{id}")
  end
end
