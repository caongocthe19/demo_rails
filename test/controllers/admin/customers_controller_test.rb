# frozen_string_literal: true

require "test_helper"

module Admin
  class CustomersController < ActionDispatch::IntegrationTest
    test "should get edit" do
      get admin_customers_edit_url
      assert_response :success
    end

    test "should get index" do
      get admin_customers_index_url
      assert_response :success
    end

    test "should get new" do
      get admin_customers_new_url
      assert_response :success
    end
  end
end
