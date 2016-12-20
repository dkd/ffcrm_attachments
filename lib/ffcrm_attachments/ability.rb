module FfcrmAttachments
  module Ability
    def initialize(user)
      super

      if user.present?
        # Attachment
        can :download, Attachment
      end
    end
  end
end
