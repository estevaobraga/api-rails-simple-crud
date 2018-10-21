require 'rails_helper'

RSpec.describe Filme, type: :model do
  it { should validate_presence_of(:titulo) }
  it { should validate_presence_of(:created_by) }
end
