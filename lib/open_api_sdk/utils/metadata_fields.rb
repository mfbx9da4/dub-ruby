# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module OpenApiSDK
  module MetadataFields
    extend T::Sig

    class Field
      attr_accessor :name, :type, :metadata

      def initialize(name, type, metadata)
        @name = name
        @type = type
        @metadata = metadata
      end
    end

    module ClassMethods
      extend T::Sig

      def fields
        @__fields__ = [] if @__fields__.nil?

        @__fields__
      end

      def field(field_name, type, metadata = {})
        attr_accessor field_name

        fields << Field.new(field_name, type, metadata)
      end

      def unmarshal_single(field_type, value, decoder = nil)
        if field_type.respond_to? :unmarshal_json
          unmarshalled = field_type.unmarshal_json(value)
          return unmarshalled
        elsif field_type.to_s == 'Object'
          # rubocop:disable Lint/SuppressedException
          begin
            value = JSON.parse(value)
          rescue TypeError, JSON::ParserError
          end
          # rubocop:enable Lint/SuppressedException
          return value
        end
        if decoder.nil?
          value
        else
          decoder.call(value)
        end
      end

      sig { params(json_obj: T.any(String, T::Hash[Symbol, String])).returns(Utils::FieldAugmented) }
      def unmarshal_json(json_obj)
        to_build = new
        begin
          d = JSON.parse(json_obj)
        rescue TypeError, JSON::ParserError
          d = json_obj
        end
        fields.each do |field|
          field_type = field.type
          if T.nilable? field_type
            field_type = T.nilable_of(field_type)
          end

          key = "#{field.name}="
          lookup = field.metadata.fetch(:format_json, {}).fetch(:letter_case, nil).call
          value = d[lookup]
          next if value.nil?

          if T.arr? field_type
            inner_type = T.arr_of(field_type)
            unmarshalled_array = value.map { |f| unmarshal_single(inner_type, f) }
            to_build.send(key, unmarshalled_array)
          elsif T.hash? field_type
            val_type = T.hash_of(field_type)

            # rubocop:disable Style/HashTransformValues
            unmarshalled_hash = value.map { |k, v| [k, unmarshal_single(val_type, v)] }.to_h
            # rubocop:enable Style/HashTransformValues
            to_build.send(key, unmarshalled_hash)
          else
            decoder = field.metadata.fetch(:format_json, {}).fetch(:decoder, nil)
            final_value = unmarshal_single(field_type, value, decoder)
            to_build.send(key, final_value)
          end
        end
        to_build
      end
    end

    def initialize
      instance = allocate
      fields.each { |mod| instance.singleton_class.include(mod) }
      instance.send(:initialize)
    end

    def self.included(base)
      base.extend(ClassMethods)
    end

    def fields
      self.class.fields
    end

    def field(field_name)
      fields.each do |f|
        return f if f.name == field_name
      end
    end

    def marshal_single(field)
      if field.respond_to? :marshal_json
        field.marshal_json(encode: false)
      else
        Utils.val_to_string(field, primitives: false)
      end
    end

    def marshal_json(encode: true)
      d = {}
      fields.sort_by(&:name).each do |field|
        f = send(field.name)
        next if f.nil?

        format_json_meta = field.metadata[:format_json]
        if !format_json_meta.nil? && format_json_meta.include?(:letter_case)
          key = format_json_meta[:letter_case].call(field.name)
        else
          key = field.name
        end
        if f.is_a? Array
          d[key] = f.map { |o| marshal_single(o) }
        elsif f.is_a? Hash
          d[key] = f.map { |k, v| [k, marshal_single(v)] }
        else
          d[key] = marshal_single(f)
        end
      end
      if encode
        JSON.dump(d)
      else
        d
      end
    end
  end
end
