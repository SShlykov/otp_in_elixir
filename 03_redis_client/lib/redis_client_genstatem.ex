defmodule RedisClientGenStatem do
  @behaviour :gen_statem

  require Logger

  defstruct [:host, :port, :socket, :requests]

  @spec start_link(keyword()) :: :gen_statem.start_ret()
  def start_link(opts) when is_list(opts) do
    :gen_statem.start_link(__MODULE__, opts, [])
  end

  @spec command(pid(), [String.t()]) :: {:ok, term()} | {:error, term()}
  def command(_pid, commands) when is_list(commands) do
    raise "not implemented yet"
  end

  @impl true
  def callback_mode, do: :state_functions

  ## States

  @impl true
  def init(_opts) do
    raise "not implemented yet"
  end
end
