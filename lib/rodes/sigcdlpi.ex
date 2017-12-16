defmodule Rodes.Sigcdlpi do
    use Ecto.Schema
    import Ecto.Changeset
    alias Rodes.Sigcdlpi
    
    @primary_key {:cidchaves, :string, []}
    @derive {Phoenix.Param, key: :cidchaves}
    
    schema "sigcdlpi" do
        field :cpros, :string
        field :lprecos, :string
        field :pvens, :float
    end
    
    @doc """
    Tabela de preços
    """
    
    def changeset( %Sigcdlpi{} = sigcdlpi, attrs ) do
        sigcdlpi
        |> cast( attrs, [:cidchaves, :cpros, :lprecos, :pvens] )
    end
end