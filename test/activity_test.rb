require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_it_exists
    activity = Activity.new("hiking")

    assert_instance_of Activity, activity
  end

  def test_for_name
    activity = Activity.new("hiking")

    assert_equal "hiking", activity.name
  end

  def test_for_participants
    activity = Activity.new("hiking")

    assert_equal ({}), activity.participants
  end

  def test_can_add_particpants
    activity = Activity.new("hiking")

    assert_equal ({"gabe" => 40}), activity.add_participants
  end

  def test_for_total_cost_of_activity
    activity = Activity.new("hiking")
    activity.add_participants(key, value)

    assert_equal 40, activity.total_cost
  end
end
