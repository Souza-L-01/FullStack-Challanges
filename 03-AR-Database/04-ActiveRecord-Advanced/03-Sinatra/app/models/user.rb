class User < ActiveRecord::Base
  has_many :posts

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

  before_validation :strip_email
  after_create :send_welcome_email

  private

  def strip_email
    self.email = email.strip if email.present?
  end

  def send_welcome_email
    FakeMailer.instance.mail(email, "Welcome to HN!")
  end
end
