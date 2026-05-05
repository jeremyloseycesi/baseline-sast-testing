# frozen_string_literal: true
class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticated
  before_action :valid_api_token
  before_action :extrapolate_user

  respond_to :json

  def index
    respond_with @user.admin ? User.all : @user
  end

  def show
    respond_with @user.as_json
  end

  private

  def valid_api_token
    authenticate_or_request_with_http_token do |token, options|
      unless identify_user(token)
        head :unauthorized
        return false
      end
    end
  end

  def identify_user(token = "")
    return false if token.blank?
    
    # Normalize the user's token to handle URL encoding issues
    unescape_token(token)
    
    return false unless @clean_token =~ /\A(\d+)-([\da-f]+)\z/
    
    id = Regexp.last_match(1)
    hash = Regexp.last_match(2)

    check_hash(id, hash)
  end

  def check_hash(id, hash)
    return false if id.blank? || hash.blank?
    
    digest = OpenSSL::Digest::SHA1.hexdigest("#{ACCESS_TOKEN_SALT}:#{id}")
    ActiveSupport::SecurityUtils.secure_compare(hash, digest)
  end

  # We had some issues with the token and url encoding...
  # this is an attempt to normalize the data.
  def unescape_token(token = "")
    @clean_token = CGI::unescape(token)
  end

  # Added a method to make it easy to figure out who the user is.
  def extrapolate_user
    @user = User.find_by_id(@clean_token.split("-").first)
  end
end