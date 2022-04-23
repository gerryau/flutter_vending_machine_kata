class VendingMachine {
  int _balance = 0;

  int insertCoin(int coin) {
    if (coin == 5) {
      return _balance;
    }

    _balance += coin;

    return _balance;
  }
}
