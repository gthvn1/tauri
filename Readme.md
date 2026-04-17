# LiveView Playground

Experimental [LiveView](https://github.com/phoenixframework/phoenix_live_view) projects for prototyping and exploring.

- Getting started: https://hexdocs.pm/phoenix/up_and_running.html

## Status

- Created `hello_nothing` and read through [Directory structure](https://hexdocs.pm/phoenix/directory_structure.html)

## Notes

- Projects are created with: `mix phx.new hello --no-ecto`
  - TODO: set up a database
- On NixOS, `config/config.exs` must be modified to correctly configure Tailwind and esbuild:

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

## Projects

### hello

- Created with: `mix phx.new --no-ecto hello`
- On NixOS, the paths to `tailwindcss` and `esbuild` must be configured for the UI to render correctly.
  - See Notes above for details
  - Alternatively, skip assets entirely with `--no-html --no-assets`

### hello_nothing

- Created as simply as possible: `mix phx.new --no-ecto --no-html --no-assets --no-live hello_nothing`
