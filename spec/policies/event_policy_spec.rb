require 'rails_helper'

RSpec.describe EventPolicy, type: :policy do
  let(:bob) { create(:user) }
  let(:mark) { create(:user) }
  let(:event) { create(:event, user: mark) }
  
  subject { described_class }
  
  context 'user does not own this event' do
    permissions :edit?, :destroy?, :update? do
      it { is_expected.not_to permit(bob, event) }
    end

    permissions :create? do
      it { is_expected.to permit(bob, Event) } # может создать своё
      it { is_expected.not_to permit(nil, Event) } # но только если залогинен
    end
  end
  
  context 'user owns this event' do
    permissions :create? do
      it { is_expected.to permit(mark, Event) } # может создать своё
      it { is_expected.not_to permit(nil, Event) } # но только если залогинен
    end

    permissions :edit?, :destroy?, :update? do
      it { is_expected.to permit(mark, event) }
    end
  end
end
