// Define a custom exception for handling overdraft situations
class OverdraftException implements Exception {
  String errorMessage() {
    return 'Withdrawal amount exceeds account balance.'; // Error message for overdraft
  }
}

// Define the BankAccount class
class BankAccount {
  double _balance = 0; // Private variable to store account balance

  // Method to deposit money into the account
  void deposit(double amount) {
    _balance += amount; // Add deposited amount to the balance
    print('Deposited: \$${amount.toStringAsFixed(2)}'); // Confirmation message
    print('Current Balance: \$${_balance.toStringAsFixed(2)}'); // Display updated balance
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount > _balance) {
      throw OverdraftException(); // Throw custom exception if withdrawal amount exceeds balance
    } else {
      _balance -= amount; // Deduct withdrawal amount from the balance
      print('Withdrawn: \$${amount.toStringAsFixed(2)}'); // Confirmation message
      print('Current Balance: \$${_balance.toStringAsFixed(2)}'); // Display updated balance
    }
  }
}

void main() {
  // Create an instance of BankAccount
  var account = BankAccount();

  // Perform deposit and withdrawal operations
  account.deposit(1000.0); // Deposit $1000
  print('');

  try {
    account.withdraw(500.0); // Withdraw $500 (should succeed)
    print('');

    account.withdraw(700.0); // Attempt to withdraw $700 (should throw exception)
  } catch (e) {
    // Check if the caught exception is an instance of OverdraftException
    if (e is OverdraftException) {
      // Cast 'e' to OverdraftException to access its methods
      print('Exception caught: ${e.errorMessage()}'); // Display custom exception message
    } else {
      // Handle other types of exceptions if necessary
      print('Exception caught: $e');
    }
  }
}
