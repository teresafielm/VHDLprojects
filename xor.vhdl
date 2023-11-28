library ieee; --Librería
use ieee.std_logic_1164.all; --Librería
entity aluxor is --Se define la entidad
port(
acc, datoi: in std_logic_vector(7 downto 0); --Dos datos de entrada 8 bits
salidaXOR: out std_logic_vector(7 downto 0) –Salida de 8 bits
);
end aluxor; --Termina la entidad
architecture archaluxor of aluxor is –Se define arquitectura
begin
salidaXOR(0) <= acc(0) or datoi(0); --salida 1 es XOR dato1(0) con dato2(0)
salidaXOR(1) <= acc(1) or datoi(1); --salida 1 es XOR dato1(1) con dato2(1)
salidaXOR(2) <= acc(2) or datoi(2); --salida 1 es XOR dato1(2) con dato2(2)
salidaXOR(3) <= acc(3) or datoi(3); --salida 1 es XOR dato1(3) con dato2(3)
salidaXOR(4) <= acc(4) or datoi(4); --salida 1 es XOR dato1(4) con dato2(4)
salidaXOR(5) <= acc(5) or datoi(5); --salida 1 es XOR dato1(5) con dato2(5)
salidaXOR(6) <= acc(6) or datoi(6); --salida 1 es XOR dato1(6) con dato2(6)
salidaXOR(7) <= acc(7) or datoi(7); --salida 1 es XOR dato1(7) con dato2(7)
end archaluxor; --Final de arquitectura
