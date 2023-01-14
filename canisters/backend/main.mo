import Debug "mo:base/Debug";

actor {
  stable var counter: Nat = 0;

  private query func getCurrentValue(): async Nat {
    Debug.print(debug_show(counter));
    return counter;
  };

  private func incrementValue(): async Nat {
    counter := counter + 1;
    return counter;
  };
};