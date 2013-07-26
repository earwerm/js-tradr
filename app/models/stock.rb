# == Schema Information
#
# Table name: stocks
#
#  id             :integer          not null, primary key
#  symbol         :string(255)
#  shares         :integer
#  purchase_price :decimal(, )
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Stock < ActiveRecord::Base
  attr_accessible :symbol, :shares, :purchase_price
  belongs_to :user, :inverse_of => :stocks
end
