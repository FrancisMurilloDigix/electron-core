# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'support@electron.com'

  layout 'mailer'
end
