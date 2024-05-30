# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetTagsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The slug of the project. This field is deprecated – use `workspaceId` instead.
      field :project_slug, T.nilable(::String), { 'query_param': { 'field_name': 'projectSlug', 'style': 'form', 'explode': true } }
      # The ID of the workspace.
      field :workspace_id, T.nilable(::String), { 'query_param': { 'field_name': 'workspaceId', 'style': 'form', 'explode': true } }


      sig { params(project_slug: T.nilable(::String), workspace_id: T.nilable(::String)).void }
      def initialize(project_slug: nil, workspace_id: nil)
        @project_slug = project_slug
        @workspace_id = workspace_id
      end
    end
  end
end
