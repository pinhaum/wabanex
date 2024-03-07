defmodule :"Elixir.Wabanex.Repo.Migrations.CreateUsersTable.exs" do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :name, :string
      add :password, :string

      timestamps()
    end

    create unique_index(:users, [:email])
  end
end
