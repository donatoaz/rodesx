defmodule Rodes.PageController do
  use Rodes.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
