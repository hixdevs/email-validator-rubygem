# frozen_string_literal: true

RSpec.shared_context "Validatemail::Agent::Whoisxml" do
  let(:whoisxml) { instance_double(Validatemail::Agent::Whoisxml) }

  before do
    allow(Validatemail::Agent::Whoisxml).to receive(:new).with(instance_of(String)).and_return(whoisxml)
    allow(whoisxml).to receive(:ok?).with(no_args).and_return(ok)
    allow(whoisxml).to receive(:data).with(no_args).and_return(data)
  end
end
