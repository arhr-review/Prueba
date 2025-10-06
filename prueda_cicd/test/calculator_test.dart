// test/calculator_test.dart
import 'package:test/test.dart';
// Asegúrate de cambiar 'mi_proyecto' por el nombre real de tu paquete si es diferente.
// Si no estás usando un paquete y solo es un archivo, usa la ruta relativa, por ejemplo:
// import '../lib/calculator.dart';
import 'package:prueda_cicd/calculator.dart'; 

void main() {
  // Inicializa una instancia de Calculator que se usará en todas las pruebas.
  final calculator = Calculator();

  // Define el grupo de pruebas para la clase Calculator.
  group('Calculator Operations', () {
    // --- Pruebas de Suma (add) ---
    test('should correctly add two positive numbers', () {
      expect(calculator.add(5, 3), equals(8.0));
    });

    test('should correctly add a positive and a negative number', () {
      expect(calculator.add(10, -4), equals(6.0));
    });

    test('should handle addition with zero', () {
      expect(calculator.add(7, 0), equals(7.0));
    });

    // --- Pruebas de Resta (subtract) ---
    test('should correctly subtract two positive numbers', () {
      expect(calculator.subtract(10, 3), equals(7.0));
    });

    test('should result in a negative number when subtracting a larger number', () {
      expect(calculator.subtract(5, 12), equals(-7.0));
    });

    test('should handle subtraction with zero', () {
      expect(calculator.subtract(5, 0), equals(5.0));
    });
    
    // --- Pruebas de Multiplicación (multiply) ---
    test('should correctly multiply two positive numbers', () {
      expect(calculator.multiply(4, 5), equals(20.0));
    });

    test('should correctly multiply with a negative number', () {
      expect(calculator.multiply(-3, 6), equals(-18.0));
    });

    test('should handle multiplication by zero', () {
      expect(calculator.multiply(100, 0), equals(0.0));
    });
    
    // --- Pruebas de División (divide) ---
    test('should correctly divide two positive numbers', () {
      expect(calculator.divide(10, 2), equals(5.0));
    });

    test('should correctly handle division resulting in a decimal', () {
      expect(calculator.divide(10, 4), equals(2.5));
    });

    test('should throw ArgumentError when dividing by zero', () {
      // Usa throwsA para verificar que se lanza una excepción específica.
      expect(() => calculator.divide(10, 0), throwsA(isA<ArgumentError>()));
    });
    
    // --- Pruebas de Módulo (modulo) ---
    test('should correctly calculate the remainder', () {
      expect(calculator.modulo(10, 3), equals(1.0));
    });
    
    test('should handle modulo with negative numbers', () {
      expect(calculator.modulo(-10, 3), equals(2.0)); 
    });
    test('should throw ArgumentError when calculating modulo by zero', () {
      expect(() => calculator.modulo(10, 0), throwsA(isA<ArgumentError>()));
    });
    
    // --- Pruebas de Potencia (power) ---
    test('should correctly calculate positive integer power', () {
      expect(calculator.power(2, 3), equals(8.0)); // 2^3 = 8
    });

    test('should correctly handle power of zero exponent', () {
      expect(calculator.power(5, 0), equals(1.0)); // 5^0 = 1
    });
    
    test('should correctly handle negative base with integer exponent', () {
      expect(calculator.power(-2, 3), equals(-8.0)); // (-2)^3 = -8
    });
    
    test('should correctly handle negative exponent', () {
      expect(calculator.power(2, -1), equals(0.5)); // 2^-1 = 0.5
    });
    
  });
}