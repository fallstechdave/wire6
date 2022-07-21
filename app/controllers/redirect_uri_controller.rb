class RedirectUriController < ApplicationController

  # log levels: debug, info, warn, error, fatal, and unknown

  # When I start the app using "bin/rails server" I could see the output from log_everything_info.
  # But once I got my sample Rails app working with apache2 / mod_auth_openidc / Keycloak / passenger,
  # I could not find the log_everything_info output.
  # So I am trying a brute force approach and logging at four different logging levels.

  # /home/fallstechdave/railsprojects/wire6/config/environments/production.rb
  # config.log_level = :info

  # http://localhost:3000/
  # http://localhost:3000/articles
  # http://localhost:3000/redirect_uri

  def oidc_get
    log_everything_debug
    log_everything_info
    log_everything_warn
    log_everything_error
  end

  def oidc_post
    log_everything_debug
    log_everything_info
    log_everything_warn
    log_everything_error
  end

  def oidc_put
    log_everything_debug
    log_everything_info
    log_everything_warn
    log_everything_error
  end

  def oidc_delete
    log_everything_debug
    log_everything_info
    log_everything_warn
    log_everything_error
  end

  private

  def log_everything_debug
    logger.debug " = = = = = log_everything_debug output #{Time.now} = = = = = "
    logger.debug " session = #{session}"
    logger.debug " action_name = #{action_name}"
    logger.debug " params = #{params}"
    logger.debug " cookies = #{cookies}"
    logger.debug " request = #{request}"
    logger.debug " request.method = #{request.method}"
    logger.debug " request.url() = #{request.url()}"
    logger.debug " request.protocol() = #{request.protocol()}"
    logger.debug " request.host() = #{request.host()}"
    logger.debug " request.port() = #{request.port()}"
    logger.debug " request.path() = #{request.path()}"
    logger.debug " request.query_string() = #{request.query_string()}"
    logger.debug " request.domain() = #{request.domain()}"
    logger.debug " request.host_with_port() = #{request.host_with_port()}"
    logger.debug " request.port_string() = #{request.port_string()}"
    logger.debug " request.ssl?() = #{request.ssl?()}"
    logger.debug " request.remote_ip() = #{request.remote_ip()}"
    logger.debug " request.xml_http_request?() = #{request.xml_http_request?()}"
    # logger.debug " request.env() = #{request.env()}"    # way to big to log the entire thing
    logger.debug " request.env()['HTTP_USER_AGENT'] = #{request.env()['HTTP_USER_AGENT']}"
    logger.debug " request.env()['SERVER_SOFTWARE'] = #{request.env()['SERVER_SOFTWARE']}"
    logger.debug " request.accepts() = #{request.accepts()}"
    logger.debug " request.format() = #{request.format()}"
    logger.debug " request.content_type() = #{request.content_type()}"
    logger.debug " request.headers() = #{request.headers()}"
    logger.debug " request.content_length() = #{request.content_length()}"
    logger.debug " request.body = #{request.body}"
    request.headers.each do |key, value|
      logger.debug "   key = #{key}  value = #{value}"
      # if key.downcase.starts_with?('http')
      #   logger.debug "   key = #{key}  value = #{value}"
      # end
    end
    logger.debug " params.inspect = #{params.inspect}"
    logger.debug " session.inspect = #{session.inspect}"
  end

  def log_everything_info
    logger.debug " = = = = = log_everything_info output #{Time.now} = = = = = "
    logger.info " session = #{session}"
    logger.info " action_name = #{action_name}"
    logger.info " params = #{params}"
    logger.info " cookies = #{cookies}"
    logger.info " request = #{request}"
    logger.info " request.method = #{request.method}"
    logger.info " request.url() = #{request.url()}"
    logger.info " request.protocol() = #{request.protocol()}"
    logger.info " request.host() = #{request.host()}"
    logger.info " request.port() = #{request.port()}"
    logger.info " request.path() = #{request.path()}"
    logger.info " request.query_string() = #{request.query_string()}"
    logger.info " request.domain() = #{request.domain()}"
    logger.info " request.host_with_port() = #{request.host_with_port()}"
    logger.info " request.port_string() = #{request.port_string()}"
    logger.info " request.ssl?() = #{request.ssl?()}"
    logger.info " request.remote_ip() = #{request.remote_ip()}"
    logger.info " request.xml_http_request?() = #{request.xml_http_request?()}"
    # logger.info " request.env() = #{request.env()}"    # way to big to log the entire thing
    logger.info " request.env()['HTTP_USER_AGENT'] = #{request.env()['HTTP_USER_AGENT']}"
    logger.info " request.env()['SERVER_SOFTWARE'] = #{request.env()['SERVER_SOFTWARE']}"
    logger.info " request.accepts() = #{request.accepts()}"
    logger.info " request.format() = #{request.format()}"
    logger.info " request.content_type() = #{request.content_type()}"
    logger.info " request.headers() = #{request.headers()}"
    logger.info " request.content_length() = #{request.content_length()}"
    logger.info " request.body = #{request.body}"
    request.headers.each do |key, value|
      logger.info "   key = #{key}  value = #{value}"
      # if key.downcase.starts_with?('http')
      #   logger.info "   key = #{key}  value = #{value}"
      # end
    end
    logger.info " params.inspect = #{params.inspect}"
    logger.info " session.inspect = #{session.inspect}"
  end

  def log_everything_warn
    logger.debug " = = = = = log_everything_warn output #{Time.now} = = = = = "
    logger.warn " session = #{session}"
    logger.warn " action_name = #{action_name}"
    logger.warn " params = #{params}"
    logger.warn " cookies = #{cookies}"
    logger.warn " request = #{request}"
    logger.warn " request.method = #{request.method}"
    logger.warn " request.url() = #{request.url()}"
    logger.warn " request.protocol() = #{request.protocol()}"
    logger.warn " request.host() = #{request.host()}"
    logger.warn " request.port() = #{request.port()}"
    logger.warn " request.path() = #{request.path()}"
    logger.warn " request.query_string() = #{request.query_string()}"
    logger.warn " request.domain() = #{request.domain()}"
    logger.warn " request.host_with_port() = #{request.host_with_port()}"
    logger.warn " request.port_string() = #{request.port_string()}"
    logger.warn " request.ssl?() = #{request.ssl?()}"
    logger.warn " request.remote_ip() = #{request.remote_ip()}"
    logger.warn " request.xml_http_request?() = #{request.xml_http_request?()}"
    # logger.warn " request.env() = #{request.env()}"    # way to big to log the entire thing
    logger.warn " request.env()['HTTP_USER_AGENT'] = #{request.env()['HTTP_USER_AGENT']}"
    logger.warn " request.env()['SERVER_SOFTWARE'] = #{request.env()['SERVER_SOFTWARE']}"
    logger.warn " request.accepts() = #{request.accepts()}"
    logger.warn " request.format() = #{request.format()}"
    logger.warn " request.content_type() = #{request.content_type()}"
    logger.warn " request.headers() = #{request.headers()}"
    logger.warn " request.content_length() = #{request.content_length()}"
    logger.warn " request.body = #{request.body}"
    request.headers.each do |key, value|
      logger.warn "   key = #{key}  value = #{value}"
      # if key.downcase.starts_with?('http')
      #   logger.warn "   key = #{key}  value = #{value}"
      # end
    end
    logger.warn " params.inspect = #{params.inspect}"
    logger.warn " session.inspect = #{session.inspect}"
  end

  def log_everything_error
    logger.debug " = = = = = log_everything_error output #{Time.now} = = = = = "
    logger.error " session = #{session}"
    logger.error " action_name = #{action_name}"
    logger.error " params = #{params}"
    logger.error " cookies = #{cookies}"
    logger.error " request = #{request}"
    logger.error " request.method = #{request.method}"
    logger.error " request.url() = #{request.url()}"
    logger.error " request.protocol() = #{request.protocol()}"
    logger.error " request.host() = #{request.host()}"
    logger.error " request.port() = #{request.port()}"
    logger.error " request.path() = #{request.path()}"
    logger.error " request.query_string() = #{request.query_string()}"
    logger.error " request.domain() = #{request.domain()}"
    logger.error " request.host_with_port() = #{request.host_with_port()}"
    logger.error " request.port_string() = #{request.port_string()}"
    logger.error " request.ssl?() = #{request.ssl?()}"
    logger.error " request.remote_ip() = #{request.remote_ip()}"
    logger.error " request.xml_http_request?() = #{request.xml_http_request?()}"
    # logger.error " request.env() = #{request.env()}"    # way to big to log the entire thing
    logger.error " request.env()['HTTP_USER_AGENT'] = #{request.env()['HTTP_USER_AGENT']}"
    logger.error " request.env()['SERVER_SOFTWARE'] = #{request.env()['SERVER_SOFTWARE']}"
    logger.error " request.accepts() = #{request.accepts()}"
    logger.error " request.format() = #{request.format()}"
    logger.error " request.content_type() = #{request.content_type()}"
    logger.error " request.headers() = #{request.headers()}"
    logger.error " request.content_length() = #{request.content_length()}"
    logger.error " request.body = #{request.body}"
    request.headers.each do |key, value|
      logger.error "   key = #{key}  value = #{value}"
      # if key.downcase.starts_with?('http')
      #   logger.error "   key = #{key}  value = #{value}"
      # end
    end
    logger.error " params.inspect = #{params.inspect}"
    logger.error " session.inspect = #{session.inspect}"
  end

end