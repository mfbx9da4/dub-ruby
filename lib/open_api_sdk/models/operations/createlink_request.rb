# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateLinkRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :request_body, T.nilable(::OpenApiSDK::Operations::CreateLinkRequestBody), { 'request': { 'media_type': 'application/json' } }
      # The ID of the workspace.
      field :workspace_id, T.nilable(::String), { 'query_param': { 'field_name': 'workspaceId', 'style': 'form', 'explode': true } }


      sig { params(request_body: T.nilable(::OpenApiSDK::Operations::CreateLinkRequestBody), workspace_id: T.nilable(::String)).void }
      def initialize(request_body: nil, workspace_id: nil)
        @request_body = request_body
        @workspace_id = workspace_id
      end
    end
  end
end
