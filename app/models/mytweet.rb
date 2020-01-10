class Mytweet < ApplicationRecord
  validates :content,
    length: { in: 1..140, message: 'は1文字以上140文字以下で入力してください。'},
    presence: {message: 'を入力してください。'}
end
