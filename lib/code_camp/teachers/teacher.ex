defmodule CodeCamp.Teachers.Teacher do
  use Ecto.Schema
  import Ecto.Changeset

  schema "teachers" do
    field :image, :string
    field :name, :string
    field :surname, :string
    field :twitter, :string

    timestamps()
  end

  def changeset(teacher, attrs) do
    teacher
    |> cast(attrs, [:image, :name, :surname, :twitter])
    |> validate_required([:image, :name, :surname, :twitter])
  end


end
