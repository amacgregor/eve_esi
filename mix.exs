defmodule EveESI.Mixfile do
  use Mix.Project

  def project do
    [
      app: :eve_esi,
      version: "1.0.0",
      elixir: "~> 1.10",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      # Hex package metadata:
      description: "A generated API client for EVE Online's ESI.",
      package: [
        maintainers: ["Allan MacGregor"],
        licenses: ["MIT"],
        links: %{
          "GitHub" => "https://github.com/amacgregor/eve_esi"
        }
      ],
      # Docs configuration:
      name: "EveESI",
      source_url: "https://github.com/amacgregor/eve_esi",
      homepage_url: "https://github.com/amacgregor/eve_esi",
      docs: [
        main: "readme", # The main page in the docs
        extras: ["README.md"]
      ],
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.7"},
      {:jason, "~> 1.4"},
      {:ex_doc, "~> 0.30", only: :dev, runtime: false},
      {:dialyxir, "~> 1.3", only: [:dev, :test], runtime: false}
    ]
  end

end
