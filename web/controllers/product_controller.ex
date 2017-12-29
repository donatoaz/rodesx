defmodule Rodes.ProductController do
  use Rodes.Web, :controller
  
  def show(conn, %{"id" => id}) do
    product =
        Rodes.Repo.one(from p in Rodes.Sigcdpro, where: p.cpros == ^id)
    render conn, "show.html",
        product: product
  end
  
  def show(conn, _params) do
    render conn, "show.html"
  end
end