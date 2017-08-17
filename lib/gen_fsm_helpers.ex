defmodule GenFSMHelpers do
  @moduledoc """
  Documentation for GenFSMHelpers.
  """

  @doc """
  Return next_state tuple, given a tuple.

  ## Examples

      iex> GenFSMHelpers.next_state({:data, :idle})
      {:next_state, :idle, :data}

  """
  @spec next_state({any, atom}) :: {:next_state, atom, any}
  def next_state({state_data, state_name}) do
    next_state(state_data, state_name)
  end

  @doc """
  Return next_state tuple.

  ## Examples

      iex> GenFSMHelpers.next_state(:data, :active)
      {:next_state, :active, :data}

      iex> GenFSMHelpers.next_state({:data, :active}, 5000)
      {:next_state, :active, :data, 5000}
  """
  @spec next_state({any, atom}, integer) :: {:next_state, atom, any, integer}
  def next_state({state_data, state_name}, timeout) do
    next_state(state_data, state_name, timeout)
  end

  @spec next_state(any, atom) :: {:next_state, atom, any}
  def next_state(state_data, state_name) do
    {:next_state,  state_name, state_data}
  end

  @doc """
  Return next_state tuple with timeout.

  ## Examples

      iex> GenFSMHelpers.next_state(%{data: true}, :busy, 1000)
      {:next_state, :busy, %{data: true}, 1000}
  """
  @spec next_state(any, atom, integer) :: {:next_state, atom, any, integer}
  def next_state(state_data, state_name, timeout) do
    {:next_state,  state_name, state_data, timeout}
  end

  @doc """
  Return reply tuple.

  ## Examples

      iex> GenFSMHelpers.reply(%{}, true, :pending)
      {:reply, true, :pending, %{}}
  """
  @spec reply(any, any, atom) :: {:reply, any, atom, any}
  def reply(state_data, response, state_name) do
    {:reply, response, state_name, state_data}
  end

  @doc """
  Return reply tuple with timeout.

  ## Examples

      iex> GenFSMHelpers.reply(%{}, true, :pending, 5000)
      {:reply, true, :pending, %{}, 5000}
  """
  @spec reply(any, any, atom, integer) :: {:reply, any, atom, any, integer}
  def reply(state_data, response, state_name, timeout) do
    {:reply, response, state_name, state_data, timeout}
  end

end
