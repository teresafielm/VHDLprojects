library IEEE; --Librerías
use IEEE.STD_LOGIC_1164.ALL; --Librerías
ENTITY Deco2 is --Definimos entidad
PORT ( EN,E7,E6,E5,E4,E3,E2,E1,E0: in STD_LOGIC; Y3,Y2,Y1,Y0 : out STD_LOGIC); 
--Definimos 8 entradas con un enable y 4 salidas para las cuatro instrucciones programadas
END Deco2; --Fin de entidad
ARCHITECTURE Behavioral OF Deco2 IS --Inicio de arquitectura
BEGIN
Y3<= E0 AND E1 AND NOT E2 AND E3 AND NOT E4 AND NOT E5 AND NOT 
E6 AND NOT E7 AND EN; --Salida 3
Y2<= NOT E0 AND NOT E1 AND E2 AND E3 AND NOT E4 AND NOT E5 AND 
NOT E6 AND NOT E7 AND EN; --Salida 2
Y1<= E0 AND NOT E1 AND E2 AND E3 AND NOT E4 AND NOT E5 AND NOT 
E6 AND NOT E7 AND EN; --Salida 1
Y0<= NOT E0 AND E1 AND E2 AND E3 AND NOT E4 AND NOT E5 AND NOT 
E6 AND NOT E7 AND EN; --Salida 0
END Behavioral; --Fin de arquitectura