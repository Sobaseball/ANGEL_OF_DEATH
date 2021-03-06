class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items
  enum payment: { '銀行振込': 0, 'クレジットカード': 1 }
  enum is_order: { 入金待ち: 0, 入金確認: 1, 製作中: 2, 発送準備中: 3, 発送済み: 4 }
end