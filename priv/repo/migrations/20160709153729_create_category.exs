defmodule Rumbl.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string, null: false

      timestamps
    end

    alter table(:videos) do
      add :category_id, references(:categories)
    end

    create_unique_index(:categories, [:name])
  end
end
