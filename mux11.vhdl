library IEEE; --Liberías
use IEEE.STD_LOGIC_1164.ALL; --Librerias
ENTITY mux is--Definimos entidad
PORT (d,m,r,j,c,n,o,a,s,ic,x: in STD_LOGIC; --Definimos las once entradas del deco
I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10: in std_logic_vector(2 downto 0); --Se definen 11 entradas 
para las salidas de las operaciones de la ALU de 3 en 3 para tener solo tres multiplexores para toda la 
ALU
 Y: out std_logic_vector(2 downto 0)--3 bits de salida por multiplexor
); 
END mux;--Final de entidad
ARCHITECTURE Behavioral OF mux IS --Inicio de arquitectura
BEGIN
Y(0)<=(not d and not m and not r and not j and not c and not n and not o and not a and not s 
and not ic and x and I0(0)) OR (not d and not m and not r and not j and not c and not n and not o and 
not a and not s and ic and not x and I1(0)) OR (not d and not m and not r and not j and not c and not 
n and not o and not a and s and not ic and not x and I2(0)) OR (not d and not m and not r and not j 
and not c and not n and not o and a and not s and not ic and not x and I3(0)) OR (not d and not m and 
not r and not j and not c and not n and o and not a and not s and not ic and not x and I4(0)) OR (not d 
and not m and not r and not j and not c and n and not o and not a and not s and not ic and not x and 
I5(0)) OR (not d and not m and not r and not j and c and not n and not o and not a and not s and not 
ic and not x and I6(0)) or (not d and not m and not r and j and not c and not n and not o and not a and 
not s and not ic and not x and I7(0)) or (not d and not m and r and not j and not c and not n and not o 
and not a and not s and not ic and not x and I8(0)) or (not d and m and not r and not j and not c and 
not n and not o and not a and not s and not ic and not x and I9(0)) or (d and not m and not r and not j 
and not c and not n and not o and not a and not s and not ic and not x and I10(0)); --Salida 0
Y(1)<=(not d and not m and not r and not j and not c and not n and not o and not a and not s 
and not ic and x and I0(1)) OR (not d and not m and not r and not j and not c and not n and not o and 
not a and not s and ic and not x and I1(1)) OR (not d and not m and not r and not j and not c and not 
n and not o and not a and s and not ic and not x and I2(1)) OR (not d and not m and not r and not j 
and not c and not n and not o and a and not s and not ic and not x and I3(1)) OR (not d and not m and 
not r and not j and not c and not n and o and not a and not s and not ic and not x and I4(1)) OR (not d 
and not m and not r and not j and not c and n and not o and not a and not s and not ic and not x and 
I5(1)) OR (not d and not m and not r and not j and c and not n and not o and not a and not s and not 
ic and not x and I6(1)) or (not d and not m and not r and j and not c and not n and not o and not a and 
not s and not ic and not x and I7(1)) or (not d and not m and r and not j and not c and not n and not o 
and not a and not s and not ic and not x and I8(1)) or (not d and m and not r and not j and not c and 
not n and not o and not a and not s and not ic and not x and I9(1)) or (d and not m and not r and not j 
and not c and not n and not o and not a and not s and not ic and not x and I10(1)); --Salida 1
Y(2)<=(not d and not m and not r and not j and not c and not n and not o and not a and not s 
and not ic and x and I0(2)) OR (not d and not m and not r and not j and not c and not n and not o and 
not a and not s and ic and not x and I1(2)) OR (not d and not m and not r and not j and not c and not 
n and not o and not a and s and not ic and not x and I2(2)) OR (not d and not m and not r and not j 
and not c and not n and not o and a and not s and not ic and not x and I3(2)) OR (not d and not m and 
not r and not j and not c and not n and o and not a and not s and not ic and not x and I4(2)) OR (not d 
and not m and not r and not j and not c and n and not o and not a and not s and not ic and not x and 
I5(2)) OR (not d and not m and not r and not j and c and not n and not o and not a and not s and not 
ic and not x and I6(2)) or (not d and not m and not r and j and not c and not n and not o and not a and 
not s and not ic and not x and I7(2)) or (not d and not m and r and not j and not c and not n and not o 
and not a and not s and not ic and not x and I8(2)) or (not d and m and not r and not j and not c and 
not n and not o and not a and not s and not ic and not x and I9(2)) or (d and not m and not r and not j 
and not c and not n and not o and not a and not s and not ic and not x and I10(2)); --Salida 2
end Behavioral; --Final de arquitectura