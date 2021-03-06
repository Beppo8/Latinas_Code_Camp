defmodule CodeCamp.Repo.Migrations.CreateTeachers do
  use Ecto.Migration

  def change do
    create table(:teachers) do
      add :image, :string
      add :name, :string
      add :surname, :string
      add :twitter, :string
      add :twitter_link, :string

      timestamps()
    end
  end
end
