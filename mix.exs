defmodule RustlerGithub.MixProject do
  use Mix.Project

  def project do
    [
      app: :rustler_github,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :inets, :public_key]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.26", optional: true},
      {:castore, "~> 0.1"},
      {:jason, "~> 1.4.0"}
    ]
  end
end
