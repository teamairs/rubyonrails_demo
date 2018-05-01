require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select 'nav.side_nav a', minimum: 4
    assert_select 'main ul.catalog li', 3
    assert_select 'h2', 'Programming Ruby 1.9'
    # 我们验证有价格包含美元符号后跟任意数字（但至少一个），逗号或数字的价格; 后跟小数点; 接着是两位数字
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
