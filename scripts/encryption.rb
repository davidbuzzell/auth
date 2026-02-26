# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
secret = "balls"
# puts secret

# 2. prepare encrypted string for testing
salt = BCrypt::Password.create(secret)
# puts salt

# 3. test secret against prepared encrypted string
test_string = "ballsy"
if BCrypt::Password.new(salt) == test_string
  puts "Hell yeah!"
else
  puts "Nah..."
end