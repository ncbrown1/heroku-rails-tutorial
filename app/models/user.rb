class User < ActiveRecord::Base
  class << self
    def from_omniauth(auth_hash)
      user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
      user.name = auth_hash['info']['name']
      user.image_url = auth_hash['info']['image']
      user.url = get_social_url_for user.provider, auth_hash['info']
      user.email = auth_hash['info']['email']
      user.save!
      user
    end

  def get_social_url_for(provider, hash)
    case provider
      when 'github'
        hash['GitHub']
      else
        hash['urls'][provider.capitalize]
    end
  end
  end
end
