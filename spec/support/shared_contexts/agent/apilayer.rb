# frozen_string_literal: true

RSpec.shared_context "Validatemail::Agent::Apilayer" do
  let(:apilayer) { instance_double(Validatemail::Agent::Apilayer) }

  before do
    allow(Validatemail::Agent::Apilayer).to receive(:new).with(instance_of(String)).and_return(apilayer)
    allow(apilayer).to receive(:ok?).with(no_args).and_return(ok)
    allow(apilayer).to receive(:data).with(no_args).and_return(data)
  end
end
