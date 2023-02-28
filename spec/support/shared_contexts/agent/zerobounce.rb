# frozen_string_literal: true

RSpec.shared_context "Validatemail::Agent::Zerobounce" do
  let(:zerobounce) { instance_double(Validatemail::Agent::Zerobounce) }

  before do
    allow(Validatemail::Agent::Zerobounce).to receive(:new).with(instance_of(String)).and_return(zerobounce)
    allow(zerobounce).to receive(:ok?).with(no_args).and_return(ok)
    allow(zerobounce).to receive(:data).with(no_args).and_return(data)
  end
end
