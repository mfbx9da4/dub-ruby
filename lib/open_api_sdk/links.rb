# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Links
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::OpenApiSDK::Operations::GetLinksRequest)).returns(::OpenApiSDK::Operations::GetLinksResponse) }
    def list(request)
      # list - Retrieve a list of links
      # Retrieve a list of links for the authenticated workspace. The list will be paginated and the provided query parameters allow filtering the returned links.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/links"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetLinksRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetLinksResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::LinkSchema])
          res.link_schemas = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end
      res
    end


    sig { params(workspace_id: T.nilable(::String), project_slug: T.nilable(::String), request_body: T.nilable(::OpenApiSDK::Operations::CreateLinkRequestBody)).returns(::OpenApiSDK::Operations::CreateLinkResponse) }
    def create(workspace_id = nil, project_slug = nil, request_body = nil)
      # create - Create a new link
      # Create a new link for the authenticated workspace.
      request = ::OpenApiSDK::Operations::CreateLinkRequest.new(
        
        workspace_id: workspace_id,
        project_slug: project_slug,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/links"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::CreateLinkRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::CreateLinkResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::LinkSchema)
          res.link_schema = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::OpenApiSDK::Operations::GetLinksCountRequest)).returns(::OpenApiSDK::Operations::GetLinksCountResponse) }
    def count(request)
      # count - Retrieve the number of links
      # Retrieve the number of links for the authenticated workspace. The provided query parameters allow filtering the returned links.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/links/count"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetLinksCountRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetLinksCountResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::Float)
          res.number = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::OpenApiSDK::Operations::GetLinkInfoRequest)).returns(::OpenApiSDK::Operations::GetLinkInfoResponse) }
    def get(request)
      # get - Retrieve a link
      # Retrieve the info for a link.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/links/info"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetLinkInfoRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetLinkInfoResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::LinkSchema)
          res.link_schema = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end
      res
    end


    sig { params(link_id: ::String, workspace_id: T.nilable(::String), project_slug: T.nilable(::String)).returns(::OpenApiSDK::Operations::DeleteLinkResponse) }
    def delete(link_id, workspace_id = nil, project_slug = nil)
      # delete - Delete a link
      # Delete a link for the authenticated workspace.
      request = ::OpenApiSDK::Operations::DeleteLinkRequest.new(
        
        link_id: link_id,
        workspace_id: workspace_id,
        project_slug: project_slug
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::DeleteLinkRequest,
        base_url,
        '/links/{linkId}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::DeleteLinkRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::DeleteLinkResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::DeleteLinkResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end
      res
    end


    sig { params(link_id: ::String, workspace_id: T.nilable(::String), project_slug: T.nilable(::String), request_body: T.nilable(::OpenApiSDK::Operations::UpdateLinkRequestBody)).returns(::OpenApiSDK::Operations::UpdateLinkResponse) }
    def update(link_id, workspace_id = nil, project_slug = nil, request_body = nil)
      # update - Update a link
      # Update a link for the authenticated workspace. If there's no change, returns it as it is.
      request = ::OpenApiSDK::Operations::UpdateLinkRequest.new(
        
        link_id: link_id,
        workspace_id: workspace_id,
        project_slug: project_slug,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::UpdateLinkRequest,
        base_url,
        '/links/{linkId}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::UpdateLinkRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::UpdateLinkResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::LinkSchema)
          res.link_schema = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end
      res
    end


    sig { params(workspace_id: T.nilable(::String), project_slug: T.nilable(::String), request_body: T.nilable(T::Array[::OpenApiSDK::Operations::RequestBody])).returns(::OpenApiSDK::Operations::BulkCreateLinksResponse) }
    def create_many(workspace_id = nil, project_slug = nil, request_body = nil)
      # create_many - Bulk create links
      # Bulk create up to 100 links for the authenticated workspace.
      request = ::OpenApiSDK::Operations::BulkCreateLinksRequest.new(
        
        workspace_id: workspace_id,
        project_slug: project_slug,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/links/bulk"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::BulkCreateLinksRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::BulkCreateLinksResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::LinkSchema])
          res.link_schemas = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end
      res
    end


    sig { params(workspace_id: T.nilable(::String), project_slug: T.nilable(::String), request_body: T.nilable(::OpenApiSDK::Operations::UpsertLinkRequestBody)).returns(::OpenApiSDK::Operations::UpsertLinkResponse) }
    def upsert(workspace_id = nil, project_slug = nil, request_body = nil)
      # upsert - Upsert a link
      # Upsert a link for the authenticated workspace by its URL. If a link with the same URL already exists, return it (or update it if there are any changes). Otherwise, a new link will be created.
      request = ::OpenApiSDK::Operations::UpsertLinkRequest.new(
        
        workspace_id: workspace_id,
        project_slug: project_slug,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/links/upsert"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::UpsertLinkRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::UpsertLinkResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::LinkSchema)
          res.link_schema = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::BadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Unauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Forbidden)
          res.forbidden = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::NotFound)
          res.not_found = out
        end
      elsif r.status == 409
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Conflict)
          res.conflict = out
        end
      elsif r.status == 410
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InviteExpired)
          res.invite_expired = out
        end
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntity)
          res.unprocessable_entity = out
        end
      elsif r.status == 429
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::RateLimitExceeded)
          res.rate_limit_exceeded = out
        end
      elsif r.status == 500
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::InternalServerError)
          res.internal_server_error = out
        end
      end
      res
    end
  end
end
