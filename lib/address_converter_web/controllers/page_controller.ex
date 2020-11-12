defmodule AddressConverterWeb.PageController do
  use AddressConverterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
