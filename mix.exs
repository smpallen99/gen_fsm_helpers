defmodule GenFSMHelers.Mixfile do
  use Mix.Project

  def project do
    [
      app: :gen_fsm_helpers,
      version: "0.1.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env == :prod,
      package: package(),
      description: """
      A helper library for GenFSM.
      """,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
  defp package do
    [ maintainers: ["Stephen Pallen"],
      licenses: ["MIT"],
      links: %{ "Github" => "https://github.com/smpallen99/gen_fsm_helpers"},
      files: ~w(lib README.md mix.exs LICENSE)]
  end
end
