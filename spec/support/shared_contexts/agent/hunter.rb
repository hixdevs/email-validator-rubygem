# frozen_string_literal: true

RSpec.shared_context "Validatemail::Agent::Hunter" do
  let(:hunter) { instance_double(Validatemail::Agent::Hunter) }

  before do
    allow(Validatemail::Agent::Hunter).to receive(:new).with(instance_of(String)).and_return(hunter)
    allow(hunter).to receive(:ok?).with(no_args).and_return(ok)
    allow(hunter).to receive(:data).with(no_args).and_return(data)
  end
end
