require 'test_helper'

class WidgetTest < ActiveSupport::TestCase
  
  test "validations" do
    #failure - needs name and size
    widget = Widget.new()
    assert_equal false, widget.valid?

    widget = Widget.new(name: "Sump Pump")
    assert_equal false, widget.valid?

    widget = Widget.new()
    assert_equal false, widget.valid?

    widget = Widget.new(name: "foo widget 1", size: 10)
    assert_equal true, widget.valid?
  end
end
