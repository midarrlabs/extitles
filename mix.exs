defmodule Extitles.MixProject do
  use Mix.Project

  def project do
    [
      app: :extitles,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Extitles",
      source_url: "https://github.com/midarrlabs/extitles",
      test_coverage: [tool: ExCoveralls]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false},
      {:excoveralls, "~> 0.10", only: :test}
    ]
  end

  defp description() do
    "Subtitles in pure Elixir."
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/midarrlabs/extitles"}
    ]
  end
end
