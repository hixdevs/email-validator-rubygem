# frozen_string_literal: true

RSpec.shared_context "Validatemail::Agent::Abstract" do
  let(:abstract) { instance_double(Validatemail::Agent::Abstract) }

  before do
    allow(Validatemail::Agent::Abstract).to receive(:new).with(instance_of(String)).and_return(abstract)
    allow(abstract).to receive(:ok?).with(no_args).and_return(ok)
    allow(abstract).to receive(:data).with(no_args).and_return(data)
  end
end
