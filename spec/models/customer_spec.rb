require File.dirname(__FILE__) + '/../spec_helper'


describe Customer do
  fixtures :customers

  it 'should add a time log object after stoping work' do
    start_time_log_count = customers(:websanity).time_logs.size
    customers(:websanity).start_working
    end_time_log_count = customers(:websanity).time_logs.size

    (end_time_log_count > start_time_log_count).should be_true
  end

  it 'should have a current time log after starting work' do
    customers(:websanity).current_time_log.should be_nil
    customers(:websanity).start_working
    customers(:websanity).current_time_log.should_not be_nil
  end

  it 'should not have a current time log after stoping work' do
    customers(:websanity).start_working
    customers(:websanity).current_time_log.should_not be_nil
    customers(:websanity).stop_working
    customers(:websanity).current_time_log.should be_nil
  end
end
