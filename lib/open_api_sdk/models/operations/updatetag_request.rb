# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class UpdateTagRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the tag
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :request_body, T.nilable(::OpenApiSDK::Operations::UpdateTagRequestBody), { 'request': { 'media_type': 'application/json' } }
      # The ID of the workspace.
      field :workspace_id, T.nilable(::String), { 'query_param': { 'field_name': 'workspaceId', 'style': 'form', 'explode': true } }


      sig { params(id: ::String, request_body: T.nilable(::OpenApiSDK::Operations::UpdateTagRequestBody), workspace_id: T.nilable(::String)).void }
      def initialize(id: nil, request_body: nil, workspace_id: nil)
        @id = id
        @request_body = request_body
        @workspace_id = workspace_id
      end
    end
  end
end
