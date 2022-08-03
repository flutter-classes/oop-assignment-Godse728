class Account{
  String accountType, accountName;
int accountBalance, accountNo, withdrawAmt, amtDeposited ;
int? balanceAfterWithdraw, balanceAfterdeposited;
Account({
  required this.accountType,
  required this.accountName,
  required this.accountBalance,
  required this.accountNo,
  required this.amtDeposited,
  required this.withdrawAmt,
});

getAccountDetails() {
print("Details of $accountName :");
print("Account Number : $accountNo");
print("Account Type : $accountType");
print("Account Balance : $accountBalance");
withdraw();
deposit();
}
deposit() {
  balanceAfterdeposited = accountBalance + amtDeposited;

print("Enter the amount to be deposited : $amtDeposited");
print("Your balance after amount deposited : $balanceAfterdeposited");
}
withdraw() {
print("Enter the amount to be withdrawn : $withdrawAmt");
if(withdrawAmt < accountBalance) {
balanceAfterWithdraw = accountBalance - withdrawAmt;
print("Your balance after amount is withdrawn : $balanceAfterWithdraw");
}
else {print("Insufficient Balance!"); }
}
}
main() {
Account bean = Account(
  accountType: "savings",
   accountName: "Bean",
    accountBalance: 45444,
     accountNo: 110022002020022,
     amtDeposited: 10000,
     withdrawAmt: 66666,
     );

     Account shere = Account(
      accountType: "saving",
       accountName: "Shere",
        accountBalance: 22000,
         accountNo: 2200110003022,
         amtDeposited: 44444,
     withdrawAmt: 10000, 
     );
bean.getAccountDetails();
shere.getAccountDetails();
}