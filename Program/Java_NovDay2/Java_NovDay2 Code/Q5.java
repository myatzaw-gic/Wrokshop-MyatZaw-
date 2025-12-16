import java.util.*;
import java.util.stream.*;

enum TransactionType {
    DEBIT, CREDIT
}

class Transaction {
    private double amount;
    private TransactionType type;

    public Transaction(double amount, TransactionType type) {
        this.amount = amount;
        this.type = type;
    }

    public double getAmount() {
        return amount;
    }

    public TransactionType getType() {
        return type;
    }
}

public class Q5 {
    public static void main(String[] args) {
        // Sample list of transactions
        List<Transaction> transactions = Arrays.asList(
            new Transaction(100.0, TransactionType.CREDIT),
            new Transaction(50.0, TransactionType.DEBIT),
            new Transaction(200.0, TransactionType.CREDIT),
            new Transaction(75.0, TransactionType.DEBIT),
            new Transaction(150.0, TransactionType.CREDIT)
        );

        
        double totalCredit = transactions.stream()
                                         .filter(t -> t.getType() == TransactionType.CREDIT)
                                         .mapToDouble(Transaction::getAmount)
                                         .sum();

        System.out.println("Total CREDIT amount: $" + totalCredit);
    }
}
