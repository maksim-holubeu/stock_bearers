require 'rails_helper'
require 'models/shared/name_uniqueness_spec'

RSpec.describe Stock, type: :model do
  include_examples "name uniqueness preserved", SecureRandom.uuid
end
