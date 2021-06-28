require 'user'

describe 'User' do
  describe '.create' do
    it 'creates a new user' do
      user = User.create(username: 'User2', email: 'user2@email.com', password: "Password123")
      persisted_data = persisted_data(table: 'users', id: user.id)

      expect(user).to be_a User
      expect(user.id).to eq persisted_data.first['id']
      expect(user.username).to eq persisted_data.first['username']
      expect(user.email).to eq 'user2@email.com'
    end
  end
  describe '.find' do
    it 'finds a user by ID' do
      user = User.create(username: 'User3', email: 'user3@email.com', password: "Password123")
      result = User.find(id: user.id)

      expect(result.id).to eq user.id
      expect(result.email).to eq user.email
      expect(result.username).to eq user.username
    end
  end
end