# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class UpdateDomainRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Whether to archive this domain. `false` will unarchive a previously archived domain.
      field :archived, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('archived') } }
      # Redirect users to a specific URL when any link under this domain has expired.
      field :expired_url, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('expiredUrl') } }
      # Prevent search engines from indexing the domain. Defaults to `false`.
      field :noindex, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('noindex') } }
      # Provide context to your teammates in the link creation modal by showing them an example of a link to be shortened.
      field :placeholder, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('placeholder') } }
      # Name of the domain.
      field :slug, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('slug') } }
      # The page your users will get redirected to when they visit your domain.
      field :target, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('target') } }
      # The type of redirect to use for this domain.
      field :type, T.nilable(::OpenApiSDK::Operations::UpdateDomainType), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::UpdateDomainType, true) } }


      sig { params(archived: T.nilable(T::Boolean), expired_url: T.nilable(::String), noindex: T.nilable(T::Boolean), placeholder: T.nilable(::String), slug: T.nilable(::String), target: T.nilable(::String), type: T.nilable(::OpenApiSDK::Operations::UpdateDomainType)).void }
      def initialize(archived: nil, expired_url: nil, noindex: nil, placeholder: nil, slug: nil, target: nil, type: nil)
        @archived = archived
        @expired_url = expired_url
        @noindex = noindex
        @placeholder = placeholder
        @slug = slug
        @target = target
        @type = type
      end
    end
  end
end
