package tests;

import tink.unit.Assert.*;

enum Gen<A, B> {
  Single:Gen<String, A>;
  Multi(a: A, b: B):Gen<Bool, B>;
  More<T>(a : A, b : B, c : T) : Gen<T, T>;
}

enum abstract Str(String) to String {
  final A = 'a';
}

class TestEnum {
  public function new() {}

  public function test()
    return assert(Gen.Single == Gen.Single);

  public function testAbstract() {
    return assert((Str.A : String) == 'a');
  }
}
