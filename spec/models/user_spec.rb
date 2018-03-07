require "rails_helper"

  describe User do
    describe 'validations' do
      it { should validate_length_of(:username).is_at_most(30) }
      it { should validate_length_of(:email).is_at_most(255) }
      # it { should validate_uniqueness_of(:username) }
      # it { should validate_uniqueness_of(:email) }
    end

    describe 'email validation' do
      let(:user) { User.create(username: 'sddsd', email: 'asa@asa.com') }

      it 'does not allow invalid email' do
        user.update(email: 'asa@am')
        expect(user).not_to be_valid
      end
    end
  end
