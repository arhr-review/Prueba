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

  /// Raíz cuadrada de a. Lanza ArgumentError si a < 0.
  double sqrt(num a) {
    if (a < 0) throw ArgumentError('Square root of negative number');
    return math.sqrt(a.toDouble());
  }
}

// Bloque principal para demostrar el uso de la clase Calculator.
// esto es una nueva prueba del workflow de N8N