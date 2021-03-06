defmodule Vayne.Mixfile do
  use Mix.Project

  def project do
    [
      app: :vayne,
      version: "0.1.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Vayne.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:cachex, "~> 2.1"},
      {:benchee, "~> 0.10", only: [:dev, :test]},
      {:credo, "~> 0.8", only: [:dev, :test]},
      {:coverex, "~> 1.4.10", only: :test}
    ]
  end
end
