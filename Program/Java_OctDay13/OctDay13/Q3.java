public class Q3 {
 

    public static boolean hasAccess(boolean isAdmin, boolean isRegistered, boolean isActive) {
        
        return isAdmin || (isRegistered && isActive);
    }

    public static void main(String[] args) {
      
        boolean[][] testCases = {
            {true, false, false},   // Admin only
            {false, true, true},    // Registered and active
            {false, true, false},   // Registered but not active
            {false, false, true},   // Active but not registered/admin
            {true, true, false}     // Admin and registered but inactive
        };

        for (int i = 0; i < testCases.length; i++) {
            boolean isAdmin = testCases[i][0];
            boolean isRegistered = testCases[i][1];
            boolean isActive = testCases[i][2];

            boolean access = hasAccess(isAdmin, isRegistered, isActive);

            System.out.println("Test case " + (i+1) + ": isAdmin=" + isAdmin 
                + ", isRegistered=" + isRegistered + ", isActive=" + isActive 
                + " => Access " + (access ? "granted" : "denied"));
        }
    }
}
