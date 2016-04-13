# frozen_string_literal: true

require 'rake'

describe 'desif_abrasf_tasks' do
  describe 'abrasf:desif:db:seed' do
    before do
      Rake.application.rake_require 'tasks/desif_abrasf_tasks'
      Rake::Task.define_task :environment

      allow(Abrasf::Desif::Engine).to receive(:load_seed)
      Rake.application.invoke_task 'abrasf:desif:db:seed'
    end

    it { expect(Abrasf::Desif::Engine).to have_received(:load_seed) }
  end
end
