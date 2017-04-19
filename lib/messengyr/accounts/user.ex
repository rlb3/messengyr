defmodule Messengyr.Accounts.User do
  use Ecto.Schema

  schema "users" do
    field :email, :string, unique: true
    field :encrypted_password, :string, unique: true
    field :username, :string
    field :password, :string, virtual: true

    timestamps()
  end
end
