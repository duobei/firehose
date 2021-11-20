defmodule FirehoseWeb.RollView do
  use FirehoseWeb, :view

  def render("index.json", %{roll: roll}) do
    %{data: render_one(roll, __MODULE__, "roll.json")}
  end

  def render("roll.json", %{roll: %{value: num}}) when is_integer(num) do
    %{value: num}
  end

  def render("roll.json", _), do: %{status: "error"}
end
