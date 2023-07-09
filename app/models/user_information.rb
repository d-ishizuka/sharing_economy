class UserInformation < ApplicationRecord
  belongs_to :user

  ZENKAKU_REGEXP = /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/.freeze
  ZENKAKU_KANA_REGEXP = /\A[ァ-ヶー－]+\z/.freeze

  validates :family_name, presence: true
  validates :family_name, format: { with: ZENKAKU_REGEXP, message: 'は全角で入力してください' }
  validates :given_name, presence: true
  validates :given_name, format: { with: ZENKAKU_REGEXP, message: 'は全角で入力してください' }
  validates :family_name_kana, presence: true
  validates :family_name_kana, format: { with: ZENKAKU_KANA_REGEXP, message: 'は全角カタカナで入力してください' }, allow_blank: true
  validates :given_name_kana, presence: true
  validates :given_name_kana, format: { with: ZENKAKU_KANA_REGEXP, message: 'は全角カタカナで入力してください' }, allow_blank: true
  validates :birth_date, presence: true
end
