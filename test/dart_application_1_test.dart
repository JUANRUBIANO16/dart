import 'package:dart_application_1/dart_application_1.dart';
import 'package:test/test.dart';

void main() {
  group('Taller Algoritmos', () {
    test('promedioTresEdades', () {
      expect(promedioTresEdades(10, 20, 30), closeTo(20, 1e-6));
    });

    test('interes mensual', () {
      final resultado = calcularInteresMensual(1000);
      expect(resultado.ganancia, closeTo(20, 1e-6));
      expect(resultado.capitalFinal, closeTo(1020, 1e-6));
    });

    test('resolver sistema 2x2', () {
      final solucion = resolverSistema2x2(
        a: 2,
        b: -1,
        c: 3,
        d: 1,
        e: 2,
        f: 0,
      );
      expect(solucion.x, closeTo(1, 1e-6));
      expect(solucion.y, closeTo(-1, 1e-6));
    });

    test('porcentaje recargo en cuotas', () {
      final recargo = porcentajeRecargoCuotas(
        precioContado: 1000,
        cuotaMensual: 120,
      );
      expect(recargo, closeTo(44, 1e-6));
    });
  });
}
