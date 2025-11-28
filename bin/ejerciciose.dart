
void main(){
  promedioEdad();
}

void promedioEdad() {
  double a = 20, b = 25, c = 30;
  double promedio = (a + b + c) / 3;
  print("Promedio de edad: $promedio");
}

void inversion() {
  double capital = 100000;
  double ganancia = capital * 0.02;
  print("Ganancia después de un mes: $ganancia");
}

void sueldoVendedor() {
  double sueldoBase = 1200000;
  double v1 = 300000, v2 = 500000, v3 = 200000;

  double comision = (v1 + v2 + v3) * 0.10;
  double total = sueldoBase + comision;

  print("Comisiones: $comision");
  print("Total a recibir: $total");
}


void descuento() {
  double totalCompra = 250000;
  double totalFinal = totalCompra * 0.85;
  print("Total a pagar: $totalFinal");
}

void notaFinal() {
  double p1 = 4.0, p2 = 3.5, p3 = 5.0;
  double examenFinal = 4.2;
  double trabajoFinal = 4.8;

  double promedioParciales = (p1 + p2 + p3) / 3;
  double nota = promedioParciales * 0.55 +
                examenFinal * 0.30 +
                trabajoFinal * 0.15;

  print("Nota final: $nota");
}


void porcentajeGenero() {
  int hombres = 12;
  int mujeres = 18;
  int total = hombres + mujeres;

  print("Hombres: ${(hombres / total) * 100}%");
  print("Mujeres: ${(mujeres / total) * 100}%");
}

void convertirMetros() {
  double metros = 2;

  double pulgadas = metros * 39.27;
  double pies = pulgadas / 12;

  print("Pulgadas: $pulgadas");
  print("Pies: $pies");
}

void salarioNeto() {
  double horas = 40;
  double precioHora = 15000;

  double sueldoBase = horas * precioHora;
  double descuento = sueldoBase * 0.20;
  double neto = sueldoBase - descuento;

  print("Salario neto: $neto");
}


void conversionMonedas() {
  // datos
  double chelines = 100;
  double dracmas = 200;
  double pesetas = 5000;

  double pesetasPorChelin = 956.871 / 100;
  double pesetasPorDracma = 88.607 / 100;
  double pesetasPorFrancoFrances = 20.110;
  double pesetasPorDolar = 122.499;
  double pesetasPorLira = 9.289 / 100;

  double chelinesToPesetas = chelines * pesetasPorChelin;
  double dracmasToPesetas = dracmas * pesetasPorDracma;
  double dracmasToFrancos =
      dracmasToPesetas / pesetasPorFrancoFrances;

  double pesetasToDolares = pesetas / pesetasPorDolar;
  double pesetasToLiras = pesetas / pesetasPorLira;

  print("Chelines → Pesetas: $chelinesToPesetas");
  print("Dracmas → Francos franceses: $dracmasToFrancos");
  print("Pesetas → Dólares: $pesetasToDolares");
  print("Pesetas → Liras italianas: $pesetasToLiras");
}


void sueldoTrabajador() {
  String nombre = "Juan";
  double horasNormales = 40;
  double pagoHora = 20000;
  double horasExtras = 10;

  // horas extras = 25% más
  double pagoExtra = pagoHora * 1.25;

  double sueldoBase = horasNormales * pagoHora;
  double sueldoExtra = horasExtras * pagoExtra;

  // deducciones
  double paroForzoso = sueldoBase * 0.05;
  double politicaHab = sueldoBase * 0.02;
  double cajaAhorro = sueldoBase * 0.07;

  double totalDeducciones =
      paroForzoso + politicaHab + cajaAhorro;

  // asignaciones
  double acad = 25000;
  double hijos = 2 * 17300;
  double prima = 18000;

  double totalAsignaciones = acad + hijos + prima;

  double sueldoNeto =
      sueldoBase + sueldoExtra + totalAsignaciones - totalDeducciones;

  print("Asignaciones: $totalAsignaciones");
  print("Deducciones: $totalDeducciones");
  print("Sueldo neto final: $sueldoNeto");
}





void promedioTresMaterias() {
  // Ejemplo de datos:
  double examenMat = 4.5;
  List<double> tareasMat = [4.0, 4.2, 4.8];

  double examenFis = 4.0;
  List<double> tareasFis = [3.8, 4.2];

  double examenQui = 4.2;
  List<double> tareasQui = [4.0, 4.5, 4.1];

  double promTareasMat = tareasMat.reduce((a, b) => a + b) / tareasMat.length;
  double notaMat = examenMat * 0.90 + promTareasMat * 0.10;

  double promTareasFis = tareasFis.reduce((a, b) => a + b) / tareasFis.length;
  double notaFis = examenFis * 0.80 + promTareasFis * 0.20;

  double promTareasQui = tareasQui.reduce((a, b) => a + b) / tareasQui.length;
  double notaQui = examenQui * 0.85 + promTareasQui * 0.15;

  double promedioGeneral = (notaMat + notaFis + notaQui) / 3;

  print("Matemática: ${notaMat.toStringAsFixed(2)} (tareas: ${promTareasMat.toStringAsFixed(2)})");
  print("Física:     ${notaFis.toStringAsFixed(2)} (tareas: ${promTareasFis.toStringAsFixed(2)})");
  print("Química:    ${notaQui.toStringAsFixed(2)} (tareas: ${promTareasQui.toStringAsFixed(2)})");
  print("Promedio general: ${promedioGeneral.toStringAsFixed(2)}");
}


void totalBilletes({
  required int n50000,
  required int n20000,
  required int n10000,
  required int n5000,
  required int n2000,
  required int n1000,
  required int n500,
  required int n100,
}) {
  int total = n50000 * 50000 +
      n20000 * 20000 +
      n10000 * 10000 +
      n5000 * 5000 +
      n2000 * 2000 +
      n1000 * 1000 +
      n500 * 500 +
      n100 * 100;

  print("Total en el banco: $total");
}


void resolverSistema({
  required double a,
  required double b,
  required double c,
  required double d,
  required double e,
  required double f,
}) {
  double denom = a * e - b * d;
  if (denom == 0) {
    print("El sistema no tiene solución única (determinante 0).");
    return;
  }
  double x = (c * e - b * f) / denom;
  double y = (a * f - c * d) / denom;
  print("X = ${x.toStringAsFixed(4)}, Y = ${y.toStringAsFixed(4)}");
}


void facturaLuz({
  required double lecturaAnterior,
  required double lecturaActual,
  required double costoPorKwh,
}) {
  double consumo = lecturaActual - lecturaAnterior;
  if (consumo < 0) {
    print("Error: lectura actual menor que lectura anterior.");
    return;
  }
  double monto = consumo * costoPorKwh;
  print("Consumo: ${consumo.toStringAsFixed(2)} kWh. Monto a pagar: ${monto.toStringAsFixed(2)}");
}


void piezasPorLamima({
  double largo = 4.0,
  double ancho = 1.5,
  double areaPorPieza = 0.5,
}) {
  double areaLamina = largo * ancho; // m^2
  int piezas = (areaLamina / areaPorPieza).floor();
  double desperdicio = areaLamina - piezas * areaPorPieza;
  print("Área lámina: ${areaLamina.toStringAsFixed(2)} m²");
  print("Piezas fabricables: $piezas");
  print("Desperdicio: ${desperdicio.toStringAsFixed(2)} m²");
}


void porcentajeDescuento({
  required double precioPVP,
  required double precioPagado,
}) {
  if (precioPVP == 0) {
    print("PVP no puede ser 0.");
    return;
  }
  double descuento = (precioPVP - precioPagado) / precioPVP * 100;
  print("Porcentaje de descuento aplicado: ${descuento.toStringAsFixed(2)}%");
}

void cobroGasolina({
  required double galones,
  double litrosPorGalon = 3.785,
  double precioPorLitro = 100.0,
}) {
  double litros = galones * litrosPorGalon;
  double total = litros * precioPorLitro;
  print("Galones: ${galones.toStringAsFixed(3)}, Litros: ${litros.toStringAsFixed(3)}");
  print("Total a cobrar: ${total.toStringAsFixed(2)} Bolívares");
}


void repartirPresupuesto(double presupuestoAnual) {
  double gine = presupuestoAnual * 0.40;
  double trauma = presupuestoAnual * 0.30;
  double ped = presupuestoAnual * 0.30;
  print("Ginecología: ${gine.toStringAsFixed(2)}");
  print("Traumatología: ${trauma.toStringAsFixed(2)}");
  print("Pediatría: ${ped.toStringAsFixed(2)}");
}

void main() {
  
  print("----- 12 -----");
  promedioTresMaterias();

  print("\n----- 13 -----");
  totalBilletes(
    n50000: 2,
    n20000: 3,
    n10000: 5,
    n5000: 10,
    n2000: 20,
    n1000: 50,
    n500: 100,
    n100: 200,
  );

  print("\n----- 14 -----");
  resolverSistema(a: 2, b: 3, c: 5, d: 1, e: -4, f: 2);

  print("\n----- 15 -----");
  facturaLuz(lecturaAnterior: 1250, lecturaActual: 1305.5, costoPorKwh: 120.75);

  print("\n----- 16 -----");
  piezasPorLamima();

  print("\n----- 17 -----");
  porcentajeDescuento(precioPVP: 100000, precioPagado: 85000);

  print("\n----- 18 -----");
  cobroGasolina(galones: 10);

  print("\n----- 19 -----");
  repartirPresupuesto(100000000); // ejemplo: 100 millones
}
