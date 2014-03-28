class CashGame < ActiveRecord::Base
  belongs_to :user
  validates :start_session, :end_session, :location, :game, :buyin_and_rebuys, :cash_out, presence: true
  validates :buyin_and_rebuys, :cash_out, numericality: true
  validate :validate_end_session_after_start_session

  def validate_end_session_after_start_session
    if end_session && start_session
      errors.add(:end_session, "End of session must be after start of session") if end_session < start_session
    end
  end

end
