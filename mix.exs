defmodule YOLOs.MixProject do
  use Mix.Project

  def project do
    [
      app: :yolos,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {YOLOs.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cimg, "~> 0.1.14"},
      {:onnx_interp, path: "../onnx_interp", env: :test},
      {:nx, "~> 0.4.0"},
      {:postdnn, "~> 0.1.4"}
    ]
  end
end
