defmodule Rodes.Sigcdpro do
    use Ecto.Schema
    import Ecto.Changeset
    alias Rodes.Sigcdpro
    
    @primary_key {:cpros, :string, []}
    @derive {Phoenix.Param, key: :cpros}
    
    schema "sigcdpro" do
        # field :cpros, :string
        field :dpros, :string
    end
    
    @doc """
    Tabela de produtos
    """
    
    def changeset( %Sigcdpro{} = sigcdpro, attrs ) do
        sigcdpro
        |> cast( attrs, [:cpros, :dpros] )
    end
end