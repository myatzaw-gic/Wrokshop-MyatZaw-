public class Q1 {
    // Encapsulated balance
    private double balance;

    // Constructor to initialize balance (optional)
    public Q1(double initialBalance) {
        if (initialBalance > 0) {
            balance = initialBalance;
        } else {
            balance = 0;
        }
    }

    // Deposit method
    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            System.out.println(amount + " deposited. New balance: " + balance);
        } else {
            System.out.println("Invalid deposit amount.");
        }
    }

    // Withdraw method
    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.out.println(amount + " withdrawn. New balance: " + balance);
        } else {
            System.out.println("Invalid withdrawal amount or insufficient funds.");
        }
    }

    // Method to check balance
    private double getBalance() {
        return balance;
    }

    // Main method to test the class
    public static void main(String[] args) {
        Q1 account = new Q1(1000); // Create account with initial balance
        account.deposit(500);   // Deposit money
        account.withdraw(200);  // Withdraw money
        System.out.println("Final balance: " + account.getBalance());
    }
}
