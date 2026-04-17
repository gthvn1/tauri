# LiveView Playground

Experimental [LiveView](https://github.com/phoenixframework/phoenix_live_view) projects for prototyping and exploring.

- Start: https://hexdocs.pm/phoenix/up_and_running.html

# Notes

- Currently, projects are created using: `mix phx.new hello --no-ecto`
  - TODO: set up a database
- On NixOS, I need to modify `config/config.exs` to correctly set up Tailwind and esbuild. Here is an example of my configuration:

```elixir
# Configure esbuild (the version is required)
config :esbuild,
  version: "0.25.5",
  path: System.get_env("ESBUILD_PATH") || System.find_executable("esbuild"),
  ...
```

```elixir
# Configure Tailwind (the version is required)
config :tailwind,
  version: "4.1.18",
  path: System.get_env("TAILWINDCSS_PATH") || System.find_executable("tailwindcss"),
  ...
```

# Projects

## Hello

- Just do: `mix phx.new --no-ecto hello`
- On NixOS, we need to manage the path to `tailwindcss` and `esbuild`. Otherwise the display is not working.
  - See above for details
  - It can be skipped using `--no-html` and `--no-assets`
