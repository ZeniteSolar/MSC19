# MSC19

**M**ódulo **S**ensor **C**an 2019 

Embarcação Guarapuvu II

Equipe Zênite Solar



### Sobre

Este módulo é reponsável por realizar as medições de tensão ou corrente e enviar pela rede CAN

![](https://github.com/ZeniteSolar/MSC19/blob/master/hardware/IMG/3Ddown.png?raw=true)

![](https://github.com/ZeniteSolar/MSC19/blob/master/hardware/IMG/3Dup.png?raw=true)



#### Requisitos e Abordagens

1. Medições

   - Tensões em modo diferencial (banco de baterias).

   - Corrente de entrada (carga das baterias).

   - Corrente consumida.

     

2. Linearizações

   - Ensaio de funcionamento com cada sensor.

   - Utilização de métodos matemáticos para determinar a equação que rege o comportamento do sensor, fornecendo uma leitura com melhor precisão.

     

3. Envio das informações

   - Utilização de média dos valores.
   - Envio deve ser feito a uma taxa que permita o acompanhamento dos parâmetros.



#### Sensores Utilizados

##### Medição de Corrente (LA 150-P LEM)

![mecanico](https://trello-attachments.s3.amazonaws.com/5919f0295143dec2859d8718/591a12fca1383a2ca400ae1b/a45ee32b4eb17fe8bbf9fde728f42620/mecanico.png)	

​	Este é um sensor de efeito hall que apresenta em sua saída uma corrente proporcional à corrente que circula por sua janela. É necessário a utilização de um resistor para apresentar um valor de tensão, possibilitando assim a leitura pelo ADC de um microcontrolador. O sinal fornecido pelo sensor passa por uma etapa de filtragem, eliminando possíveis interferências. 



*******
**Limites elétricos:**

*******


**Corrente nominal RMS:**    máx AC 150 [A]

**Valor de Pico a Pico:** máx 212 [A]

**Valores Aplicáveis Para Resistores  de Medidas (componente "Rm"):**

   *12V de alimentação e 85°C ambiente.*
          Para ±150A(máx): 0Ω - 40Ω
          Para ±212A(máx): 0Ω - 3Ω

   *15V de alimentação e 85°C ambiente.*
          Para ±150A(máx): 0Ω - 78Ω
          Para ±212A(máx): 0Ω - 30Ω



### Sinal de saída

![Curva de saída](https://github.com/ZeniteSolar/MSC19/blob/master/sensor/img/output_example.png?raw=true)



