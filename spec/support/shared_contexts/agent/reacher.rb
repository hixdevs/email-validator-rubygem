# frozen_string_literal: true

RSpec.shared_context "Validatemail::Agent::Reacher" do
  let(:reacher) { instance_double(Validatemail::Agent::Reacher) }

  before do
    allow(Validatemail::Agent::Reacher).to receive(:new).with(instance_of(String)).and_return(reacher)
    allow(reacher).to receive(:ok?).with(no_args).and_return(ok)
    allow(reacher).to receive(:data).with(no_args).and_return(data)
  end
end
