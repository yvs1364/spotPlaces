# frozen_string_literal: true

require 'test_helper'

class SpotsVttsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get spots_vtts_index_url
    assert_response :success
  end
end
