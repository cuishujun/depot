require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
    mail = Notifier.order_received(orders(:one))
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    #assert_equal ["cui.shujun@live.cn"], mail.to
    assert_equal ["shujun.cui@cubead.com"], mail.from
    assert_match /1 x Programming Ruby/, mail.body.encoded
  end

  test "order_shipped" do
    mail = Notifier.order_shipped(orders(:one))
    assert_equal "Pragmatic Store Order Shipped", mail.subject
    #assert_equal ["cui.shujun@live.cn"], mail.to
    assert_equal ["shujun.cui@cubead.com"], mail.from
    assert_match "Pragmatic", mail.body.encoded
  end

end
