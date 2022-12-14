defmodule GithubTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :github_test,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
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
      {:rustler_github, "~> 0.1.0", path: ".."},
      {:rustler, ">= 0.0.0", optional: true}
    ]
  end
end
