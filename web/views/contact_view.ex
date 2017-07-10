defmodule ElmStarter.ContactView do
  use ElmStarter.Web, :view

  def render("index.json", %{page: page}), do: page  
end
