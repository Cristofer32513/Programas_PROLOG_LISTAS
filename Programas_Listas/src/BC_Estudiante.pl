%estudiante(Id, nombre([apellido, nombre]), grados([a1, a2, a3, prueba])).

estudiante(1001, nombre([alteron, alice]), 	grados([92, 75, 100, 85])).
estudiante(1002, nombre([boberson, bob]), 	grados([50, 64, 73, 66])).
estudiante(1003, nombre([charleston, charlie]), grados([65, 75, 85, 100])).
estudiante(1004, nombre([davidson, dave]), 	grados([10, 92, 34, 87])).
estudiante(1005, nombre([ellenovitch, ellen]), 	grados([72, 87, 82, 70])).

%¿Como le fue a alice en la tarea 1?
% estudiante(_, nombre([_, alice]), grados([A1 |_])).

%¿Como le fue a alice en la tarea 2?
% estudiante(_, nombre([_, alice]), grados([_, A2 |_])).

%¿Como le fue al estudiante 1002 en la prueba?
% estudiante(1002, _, grados([_, _, _, Prueba])).
% estudiante(1002, _, grados(Lista)), last(Lista, Prueba).

%¿Quien sacó 100 en la prueba?
% estudiante(_, nombre(Nombre), grados(Lista)), last(Lista, Prueba), Prueba == 100.

%¿Alguien obtuvo 100 en algo?
% estudiante(_, nombre(Nombre), grados(Lista)), member(100, Lista).

%¿Cual es la calificacion promedio de cada estudiante? (asumir la misma ponderación)
% estudiante(_, nombre(Nombre), grados([A1, A2, A3, Prueba])), Promedio is (A1 + A2 + A3 + Prueba) / 4.