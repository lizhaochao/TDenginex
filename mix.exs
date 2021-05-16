defmodule TDenginex.MixProject do
  use Mix.Project

  @description "TDengine Connector for Elixir"

  @gitee_repo_url "https://gitee.com/lizhaochao/tdenginex"
  @github_repo_url "https://github.com/lizhaochao/TDenginex"

  @version "0.1.0"

  def project do
    [
      app: :tdenginex,
      version: @version,
      elixir: "~> 1.11",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),

      # Test
      test_pattern: "*_test.exs",

      # Hex
      package: package(),
      description: @description,

      # Docs
      name: "TDenginex",
      docs: [main: "TDenginex"]
    ]
  end

  def application, do: [extra_applications: [:logger]]

  defp deps do
    [
      # Dev and test dependencies
      {:excoveralls, "> 0.0.0", only: :test},
      {:propcheck, "> 0.0.0", only: :test},
      {:credo, "> 0.0.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "> 0.0.0", only: :dev, runtime: false},
      {:dialyxir, "> 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: "TDenginex",
      maintainers: ["lizhaochao"],
      licenses: ["AGPL-3.0"],
      links: %{"Gitee" => @gitee_repo_url, "GitHub" => @github_repo_url}
    ]
  end

  defp aliases, do: [test: ["format", "test"]]
end
