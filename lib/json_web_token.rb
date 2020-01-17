class JsonWebToken

  def self.encode(payload)
    JWT.encode(payload, '123')
  end

  def self.decode(token)
    return HashWithIndifferentAccess.new(JWT.decode(token, '123')[0])
  rescue
    nil
  end
end