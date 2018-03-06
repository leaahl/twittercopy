require "rails_helper"

  describe User do
    describe 'validations' do
      it { should validate_length_of(:username).is_at_most(30) }
      it { should validate_length_of(:email).is_at_most(255) }
      it { should validate_uniqueness_of(:username) }
      it { should validate_uniqueness_of(:username) }
    end

    describe 'email validation' do
      let(:user) { User.create(username: 'sddsd', email: 'asa@as') }

      it 'does not allow invalid email' do
        expect(user).to_not be_valid
      end

      it 'allows to create .....' do
        user.update(email: 'asa@as.com')
        expect(user).to be_valid
      end
    end
  end
