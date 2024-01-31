module SavingsAccount
  def self.interest_rate(balance)
    return 3.213 if balance < 0
    return 0.5 if balance < 1000 
    return 1.621 if balance < 5000 
    return 2.475 
  end

  def self.annual_balance_update(balance)
    balance + (balance * interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
  end
end

# 2. Calculate the annual balance update
# Implement the SavingsAccount.annual_balance_update method to calculate the annual balance update, 
# taking into account the interest rate:

# SavingsAccount.annual_balance_update(200.75)
# #=> 201.75375
# Note that the value returned is an instance of Float.