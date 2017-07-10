defmodule ElmStarter.Repo do
  use Ecto.Repo, otp_app: :elm_starter

  use Scrivener, page_size: 9
end
