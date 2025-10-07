import 'dart:math' as math;

/// Clase que contiene las operaciones básicas de una calculadora.
class Calculator {
   /// Suma a + b
  double add(num a, num b) => a + b.toDouble();

  /// Resta a - b
  double subtract(num a, num b) => a - b.toDouble();

  /// Multiplicación a * b
  double multiply(num a, num b) => a * b.toDouble();

  /// División a / b. Lanza ArgumentError si b == 0.
  double divide(num a, num b) {
    if (b == 0) throw ArgumentError('Division by zero');
    return a / b.toDouble();
  }

  /// Módulo a % b. Lanza ArgumentError si b == 0.
  double modulo(num a, num b) {
    if (b == 0) throw ArgumentError('Modulo by zero');
    return a % b.toDouble();
  }

  /// Potencia a^b
  double power(num a, num b) => math.pow(a.toDouble(), b.toDouble()).toDouble();
}

// Bloque principal para demostrar el uso de la clase Calculator.
// cambio minimo prueba pr