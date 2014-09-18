require 'rails_helper'

describe Network, type: :model do

  it { is_expected.to have_many :sessions }

  it "has many sessions" do
    network = FactoryGirl.create(:network)
    network.sessions << FactoryGirl.create(:session)
    expect(network.errors_on(:sessions).size).to eq(0)
    expect(network.sessions.count).to be >= 1
  end

  it "has a valid factory" do
    expect(FactoryGirl.create(:network)).to be_valid
  end

  it "has an UUID auto-generated by Postgres" do
    network = FactoryGirl.create(:network)
    network.reload
    expect(network.uuid).not_to be_nil
  end

end
