defmodule CodeCampWeb.AboutController do
  use CodeCampWeb, :controller

  def index(conn, _params) do
    render(conn, "about.html")
  end
end
