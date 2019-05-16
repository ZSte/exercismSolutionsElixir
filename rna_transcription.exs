defmodule RNATranscription do
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    case dna do
      [x|y] -> [f(x)|to_rna(y)]
      [] -> []
    end
  end

  def f(x) do
    case x do
      ?G -> ?C
      ?C -> ?G
      ?T -> ?A
      ?A -> ?U
    end
  end
end
