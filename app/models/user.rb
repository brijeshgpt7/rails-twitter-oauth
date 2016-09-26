class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth.info.name
      user.access_token_key = auth.credentials.token
      user.access_token_secret = auth.credentials.secret
      byebug
    end
  end

end
