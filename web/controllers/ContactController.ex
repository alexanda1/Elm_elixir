defmodule ElmStarter.ContactController do
  use ElmStarter.Web, :controller

  alias ElmStarter.Contact

  def index(conn, params) do
    page = Contact
      |> order_by(:first_name)
      |> Repo.paginate(params)

    render conn, page: page
  end

end
