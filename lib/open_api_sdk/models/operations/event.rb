# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # Event - The type of event to retrieve analytics for. Defaults to 'clicks'.
    class Event < T::Enum
      enums do
        CLICKS = new('clicks')
        LEADS = new('leads')
        SALES = new('sales')
        COMPOSITE = new('composite')
      end
    end

  end
end
