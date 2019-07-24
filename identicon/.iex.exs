global_settings = "~/.iex.exs"
if File.exists?(global_settings), do: Code.require_file(global_settings)

IEx.configure(
  inspect: [charlists: :as_lists],
  colors: [
    eval_result: [:cyan, :bright],
    eval_error: [[:red, :bright, "\n▶▶▶\n"]],
    eval_info: [:yellow, :bright]
  ]
)
