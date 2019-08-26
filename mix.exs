defmodule SnaLib.MixProject do
  use Mix.Project

  def project do
    [
      app: :sna_lib,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/runas/sna_lib",
      homepage_url: "http://runas.io",
      description: description(),
      package: package(),
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 1.0.0-rc.6", only: [:dev, :test], runtime: false},
      {:proper, "~> 1.3", only: [:dev, :test]},
      {:benchee, "~> 1.0", only: [:dev, :test]},
    ]
  end

  defp description() do
    "Social Network Automation Library"
  end

  defp package() do
    [
      name: "sna_lib",
      files:  ~w(lib priv .formatter.exs mix.exs README* LICENSE*),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/runasio/sna_lib"},
    ]
  end
end
