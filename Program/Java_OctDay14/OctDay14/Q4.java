public enum Q4 {
    INSTANCE;  // single instance

    // Example method
    public void showMessage() {
        System.out.println("Hello from Singleton Enum!");
    }

    // Example usage
    public static void main(String[] args) {
        Q4 s1 = Q4.INSTANCE;
        Q4 s2 = Q4.INSTANCE;

        s1.showMessage(); 

        System.out.println("Are both instances same? " + (s1 == s2));
    }
} 
