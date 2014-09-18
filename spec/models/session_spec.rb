require 'rails_helper'

describe Session, type: :model do
  let!(:session) { create :session }

  context 'model properties' do
    it { expect(session).to be_valid }
    it { is_expected.to belong_to :network }

    it { is_expected.to have_db_column :start_time }
    it { is_expected.to have_db_column :network_id }
    it { is_expected.to have_db_column :uuid }

  end

  context 'db constraints' do
    it { is_expected.to have_db_index(:uuid).unique(true) }
    it { is_expected.to have_db_index(:network_id) }
    it { is_expected.to have_foreign_key_for :networks }
  end
end
