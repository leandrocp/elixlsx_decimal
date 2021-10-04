defmodule ElixlsxDecimal do
  @moduledoc """
  Documentation for `ElixlsxDecimal`.
  """

  require Elixlsx
  alias Elixlsx.Sheet
  alias Elixlsx.Workbook

  def test do
    sheet1 =
      Sheet.with_name("First")
      |> Sheet.set_cell("A1", 1)

    Elixlsx.write_to(%Workbook{sheets: [sheet1]}, "sheet1.xlsx")

    sheet2 =
      Sheet.with_name("First")
      |> Sheet.set_cell("A1", 1)
      |> Sheet.set_cell("A2", Decimal.from_float(1.1))

    Elixlsx.write_to(%Workbook{sheets: [sheet2]}, "sheet2.xlsx")

  end
end
