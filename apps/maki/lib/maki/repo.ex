defmodule Maki.Repo do
  use Ecto.Repo,
    otp_app: :maki,
    adapter: Ecto.Adapters.MyXQL
end
