module SavingsAccount
  def self.interest_rate(balance)
    return 3.213 if balance < 0
    return 0.5 if balance < 1000 
    return 1.621 if balance < 5000 
    return 2.475 
  end

  def self.annual_balance_update(balance)
    raise 'Please implement the SavingsAccount.annual_balance_update method'
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    raise 'Please implement the SavingsAccount.years_before_desired_balance method'
  end
end

# In this exercise you will be working with savings accounts. Each year, the balance of a savings account 
# is updated based on the interest rate. The interest rate the bank gives depends on the amount of money 
# in the accounts (its balance):

# 0.5% for a non-negative balance less than 1000 dollars.
# 1.621% for a positive balance greater than or equal to 1000 dollars and less than 5000 dollars.
# 2.475% for a positive balance greater than or equal to 5000 dollars.
# 3.213% for a negative balance (results in negative interest).
# You have three tasks, each of which will deal with the balance and its interest rate.

# 1. Calculate the interest rate
# Implement the SavingsAccount.interest_rate method to calculate the interest rate based on the specified balance:

# SavingsAccount.interest_rate(200.75)
# #=> 0.5