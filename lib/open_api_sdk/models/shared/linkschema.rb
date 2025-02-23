# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class LinkSchema < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The Android destination URL for the short link for Android device targeting.
      field :android, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('android') } }
      # Whether the short link is archived.
      field :archived, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('archived') } }
      # The number of clicks on the short link.
      field :clicks, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('clicks') } }
      # The comments for the short link.
      field :comments, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('comments') } }
      # The date and time when the short link was created.
      field :created_at, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('createdAt') } }
      # The description of the short link generated via `api.dub.co/metatags`. Will be used for Custom Social Media Cards if `proxy` is true.
      field :description, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # Whether to allow search engines to index the short link.
      field :do_index, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('doIndex') } }
      # The domain of the short link. If not provided, the primary domain for the workspace will be used (or `dub.sh` if the workspace has no domains).
      field :domain, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('domain') } }
      # The URL to redirect to when the short link has expired.
      field :expired_url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('expiredUrl') } }
      # The date and time when the short link will expire in ISO-8601 format.
      field :expires_at, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('expiresAt') } }
      # This is the ID of the link in your database. If set, it can be used to identify the link in the future. Must be prefixed with 'ext_' when passed as a query parameter.
      field :external_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('externalId') } }
      # Geo targeting information for the short link in JSON format `{[COUNTRY]: https://example.com }`. Learn more: https://d.to/geo
      field :geo, ::OpenApiSDK::Shared::Geo, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('geo') } }
      # The unique ID of the short link.
      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The image of the short link generated via `api.dub.co/metatags`. Will be used for Custom Social Media Cards if `proxy` is true.
      field :image, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('image') } }
      # The iOS destination URL for the short link for iOS device targeting.
      field :ios, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ios') } }
      # The short link slug. If not provided, a random 7-character slug will be generated.
      field :key, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }
      # The date and time when the short link was last clicked.
      field :last_clicked, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('lastClicked') } }
      # [BETA]: The number of leads the short links has generated.
      field :leads, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('leads') } }
      # The password required to access the destination URL of the short link.
      field :password, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('password') } }
      # The project ID of the short link. This field is deprecated – use `workspaceId` instead.
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :project_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('projectId') } }
      # Whether the short link uses Custom Social Media Cards feature.
      field :proxy, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('proxy') } }
      # Whether the short link's stats are publicly accessible.
      field :public_stats, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('publicStats') } }
      # The full URL of the QR code for the short link (e.g. `https://api.dub.co/qr?url=https://dub.sh/try`).
      field :qr_code, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('qrCode') } }
      # Whether the short link uses link cloaking.
      field :rewrite, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('rewrite') } }
      # [BETA]: The number of sales the short links has generated.
      field :sales, ::Float, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('sales') } }
      # The full URL of the short link, including the https protocol (e.g. `https://dub.sh/try`).
      field :short_link, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('shortLink') } }
      # The unique ID of the tag assigned to the short link. This field is deprecated – use `tags` instead.
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :tag_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tagId') } }
      # The tags assigned to the short link.
      field :tags, T::Array[::OpenApiSDK::Shared::TagSchema], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tags') } }
      # The title of the short link generated via `api.dub.co/metatags`. Will be used for Custom Social Media Cards if `proxy` is true.
      field :title, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }
      # [BETA] Whether to track conversions for the short link.
      field :track_conversion, T::Boolean, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('trackConversion') } }
      # The date and time when the short link was last updated.
      field :updated_at, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('updatedAt') } }
      # The destination URL of the short link.
      field :url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('url') } }
      # The user ID of the creator of the short link.
      field :user_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('userId') } }
      # The UTM campaign of the short link.
      field :utm_campaign, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('utm_campaign') } }
      # The UTM content of the short link.
      field :utm_content, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('utm_content') } }
      # The UTM medium of the short link.
      field :utm_medium, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('utm_medium') } }
      # The UTM source of the short link.
      field :utm_source, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('utm_source') } }
      # The UTM term of the short link.
      field :utm_term, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('utm_term') } }
      # The workspace ID of the short link.
      field :workspace_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('workspaceId') } }


      sig { params(android: ::String, archived: T::Boolean, clicks: ::Float, comments: ::String, created_at: ::String, description: ::String, do_index: T::Boolean, domain: ::String, expired_url: ::String, expires_at: ::String, external_id: ::String, geo: ::OpenApiSDK::Shared::Geo, id: ::String, image: ::String, ios: ::String, key: ::String, last_clicked: ::String, leads: ::Float, password: ::String, project_id: ::String, proxy: T::Boolean, public_stats: T::Boolean, qr_code: ::String, rewrite: T::Boolean, sales: ::Float, short_link: ::String, tag_id: ::String, tags: T::Array[::OpenApiSDK::Shared::TagSchema], title: ::String, track_conversion: T::Boolean, updated_at: ::String, url: ::String, user_id: ::String, utm_campaign: ::String, utm_content: ::String, utm_medium: ::String, utm_source: ::String, utm_term: ::String, workspace_id: ::String).void }
      def initialize(android: nil, archived: nil, clicks: nil, comments: nil, created_at: nil, description: nil, do_index: nil, domain: nil, expired_url: nil, expires_at: nil, external_id: nil, geo: nil, id: nil, image: nil, ios: nil, key: nil, last_clicked: nil, leads: nil, password: nil, project_id: nil, proxy: nil, public_stats: nil, qr_code: nil, rewrite: nil, sales: nil, short_link: nil, tag_id: nil, tags: nil, title: nil, track_conversion: nil, updated_at: nil, url: nil, user_id: nil, utm_campaign: nil, utm_content: nil, utm_medium: nil, utm_source: nil, utm_term: nil, workspace_id: nil)
        @android = android
        @archived = archived
        @clicks = clicks
        @comments = comments
        @created_at = created_at
        @description = description
        @do_index = do_index
        @domain = domain
        @expired_url = expired_url
        @expires_at = expires_at
        @external_id = external_id
        @geo = geo
        @id = id
        @image = image
        @ios = ios
        @key = key
        @last_clicked = last_clicked
        @leads = leads
        @password = password
        @project_id = project_id
        @proxy = proxy
        @public_stats = public_stats
        @qr_code = qr_code
        @rewrite = rewrite
        @sales = sales
        @short_link = short_link
        @tag_id = tag_id
        @tags = tags
        @title = title
        @track_conversion = track_conversion
        @updated_at = updated_at
        @url = url
        @user_id = user_id
        @utm_campaign = utm_campaign
        @utm_content = utm_content
        @utm_medium = utm_medium
        @utm_source = utm_source
        @utm_term = utm_term
        @workspace_id = workspace_id
      end
    end
  end
end
