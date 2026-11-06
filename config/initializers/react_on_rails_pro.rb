# frozen_string_literal: true

# See https://reactonrails.com/docs/configuration/configuration-pro
# Optional license key from your subscription: set REACT_ON_RAILS_PRO_LICENSE to mark your pages Licensed.
ReactOnRailsPro.configure do |config|
  config.server_renderer = "NodeRenderer"
  config.renderer_url = ENV.fetch("REACT_RENDERER_URL", "http://localhost:3800")

  # See value in renderer/node-renderer.js
  # For production, set RENDERER_PASSWORD as an env var and remove the literal fallback.
  config.renderer_password = ENV.fetch("RENDERER_PASSWORD", "2fc136faf901583ac2f6fbf425b9f621c0e2cce19bb670d1bf9a3ec6e98fc50f")

  config.ssr_timeout = 5
  config.renderer_request_retry_limit = 1
  config.renderer_use_fallback_exec_js = Rails.env.development?

  # If you want Honeybadger or Sentry on the Node renderer side to report rendering errors
  config.throw_js_errors = false

  # If true, then cache the evaluation of JS for prerendering using the standard Rails cache.
  # Applies to all rendering engines.
  config.prerender_caching = true

  # Get timing of server render calls
  config.tracing = Rails.env.development?
end
