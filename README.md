# ProcArOC

especificações do processados

<hr>

opcode: 13 bits <br />
endereço: 6 bits <br />
registrador: 8 bits <br />

<hr>

<h5> Relação de Opcode</h5>

<table style="width:100%">
	<tr>
		<th>id</th>
		<th>função</th>
    		<th>opcode</th>
  	</tr>
  	<tr>
		<th>0</th>
    		<td>NOP</td>
    		<td><tt>0 0000 0000 0000</tt></td>
  	</tr>
  	<tr>
		<th>1</th>
    		<td>RETURN</td>
    		<td><tt>0 0000 0000 1000</tt></td>
  	</tr>
  	<tr>
		<th>2</th>
    		<td>RETFIE</td>
    		<td><tt>0 0000 0000 1001</tt></td>
  	</tr>
  	<tr>
		<th>3</th>
    		<td>SLEEP</td>
    		<td><tt>0 0000 0010 0011</tt></td>
  	</tr>
  	<tr>
		<th>4</th>
    		<td>CLRWDT</td>
    		<td><tt>0 0000 0010 0100</tt></td>
  	</tr>
  	<tr>
		<th>5</th>
    		<td>MOVWF</td>
    		<td><tt>0 0000 01ff ffff</tt></td>
  	</tr>
  	<tr>
		<th>6</th>
    		<td>CLRW</td>
    		<td><tt>0 0000 10xx xxxx</tt></td>
  	</tr>
	<tr>
		<th>7</th>
    		<td>CLRF</td>
		<td><tt>0 0000 11ff ffff</tt></td>
  	</tr>
  	<tr>
		<th>8</th>
    		<td>SUBWF</td>
    		<td><tt>0 0001 0dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>9</th>
    		<td>DECF</td>
    		<td><tt>0 0001 1dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>10</th>
    		<td>IORWF</td>
    		<td><tt>0 0010 0dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>11</th>
    		<td>ANDWF</td>
    		<td><tt>0 0010 1dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>12</th>
    		<td>XORWF</td>
    		<td><tt>0 0011 0dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>13</th>
    		<td>ADDWF</td>
    		<td><tt>0 0011 1dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>14</th>
    		<td>MOVF</td>
    		<td><tt>0 0100 0dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>15</th>
    		<td>COMF</td>
    		<td><tt>0 0100 1dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>16</th>
    		<td>INCF</td>
    		<td><tt>0 0101 0dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>17</th>
    		<td>DECFSZ</td>
    		<td><tt>0 0101 1dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>18</th>
    		<td>RRF</td>
    		<td><tt>0 0110 0dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>19</th>
    		<td>RLF</td>
    		<td><tt>0 0110 1dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>20</th>
    		<td>SWAPF</td>
    		<td><tt>0 0111 0dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>21</th>
    		<td>INCFSZ</td>
    		<td><tt>0 0111 1dff ffff</tt></td>
  	</tr>
  	<tr>
		<th>22</th>
    		<td>BCF</td>
    		<td><tt>0 100b bbff ffff</tt></td>
  	</tr>
  	<tr>
		<th>23</th>
    		<td>BSF</td>
    		<td><tt>0 101b bbff ffff</tt></td>
  	</tr>
  	<tr>
		<th>24</th>
    		<td>BTFSC</td>
    		<td><tt>0 110b bbff ffff</tt></td>
  	</tr>
  	<tr>
		<th>25</th>
    		<td>BTFSS</td>
    		<td><tt>0 111b bbff ffff</tt></td>
  	</tr>
  	<tr>
		<th>26</th>
    		<td>CALL</td>
    		<td><tt>1 00kk kkkk kkkk</tt></td>
  	</tr>
  	<tr>
		<th>27</th>
    		<td>GOTO</td>
    		<td><tt>1 01kk kkkk kkkk</tt></td>
  	</tr>
  	<tr>
		<th>28</th>
    		<td>MOVLW</td>
    		<td><tt>1 1000 kkkk kkkk</tt></td>
  	</tr>
  	<tr>
		<th>29</th>
    		<td>ANDLW</td>
    		<td><tt>1 1001 kkkk kkkk</tt></td>
  	</tr>
  	<tr>
		<th>30</th>
    		<td>RETLW</td>
    		<td><tt>1 1010 kkkk kkkk</tt></td>
  	</tr>
  	<tr>
		<th>31</th>
    		<td>IORLW</td>
    		<td><tt>1 1100 kkkk kkkk</tt></td>
  	</tr>
  	<tr>
		<th>32</th>
    		<td>XORLW</td>
    		<td><tt>1 1101 kkkk kkkk</tt></td>
  	</tr>
  	<tr>
		<th>33</th>
    		<td>SUBLW</td>
    		<td><tt>1 1110 kkkk kkkk</tt></td>
  	</tr>
  	<tr>
		<th>34</th>
    		<td>ADDLW</td>
    		<td><tt>1 1111 kkkk kkkk</tt></td>
  	</tr>
    <tr>
    <th>35</th>
        <td>ERROR</td>
        <td></td>
    </tr>
</table> 

<h5> Organização de memoria</h5>

<table style="width:100%">
	<tr>
		<th>endereço</th>
		<th>função</th>
    		<th>descrição</th>
  	</tr>
	<tr>
		<th>0</th>
		<th>$0</th>
    		<th>constante zero</th>
  	</tr>
	<tr>
		<th>1</th>
		<th>FSR</th>
    		<th>endereço de acesso a RAM</th>
  	</tr>
	<tr>
		<th>2</th>
		<th>TRISA</th>
    		<th>controle de estasdos PORTA</th>
  	</tr>
	<tr>
		<th>3</th>
		<th>TRISB</th>
    		<th>controle de estasdos PORTB</th>
  	</tr>
	<tr>
		<th>4</th>
		<th>PORTA</th>
    		<th>pinos externos A</th>
  	</tr>
	<tr>
		<th>5</th>
		<th>PORTB</th>
    		<th>pinos externos B</th>
  	</tr>
	<tr>
		<th>6</th>
		<th>$1</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>7</th>
		<th>$2</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>8</th>
		<th>$3</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>9</th>
		<th>$4</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>10</th>
		<th>$5</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>11</th>
		<th>$6</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>12</th>
		<th>$7</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>13</th>
		<th>$8</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>14</th>
		<th>$9</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>15</th>
		<th>$10</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>16</th>
		<th>$11</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>17</th>
		<th>$12</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>18</th>
		<th>$13</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>19</th>
		<th>$14</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>20</th>
		<th>$15</th>
    		<th>valor no registrador</th>
  	</tr>
	<tr>
		<th>21:60</th>
		<th>...</th>
    		<th>...</th>
  	</tr>
	<tr>
		<th>61</th>
		<th>STATUS</th>
    		<th>Valor na RAM no endereço FSR</th>
  	</tr>
	<tr>
	<tr>
		<th>62</th>
		<th>INDF</th>
    		<th>Valor na RAM no endereço FSR</th>
  	</tr>
		<th>62</th>
		<th>INDF</th>
    		<th>Valor na RAM no endereço FSR</th>
  	</tr>
	<tr>
		<th>63</th>
		<th>W</th>
    		<th>registrador de trabalho</th>
  	</tr>
</table> 

<h5>Conversão</h5>
<img src="http://redirect.viglink.com/?format=go&jsonp=vglnk_152842405906911&key=172579b97fa4d5e8c1a3c2918a03e499&libId=ji5c7yd801012xfz000DAc0q09t6i&loc=http%3A%2F%2Fhdl-fpga.blogspot.com%2F2011%2F06%2Fieeenumericstdall-funciones-de.html&v=1&out=http%3A%2F%2F4.bp.blogspot.com%2F-p0tEPSEQRds%2FTga9s9-EjXI%2FAAAAAAAABXw%2FC4XqIE2AtnY%2Fs1600%2FTypes_Conversion_Diagram.png&ref=https%3A%2F%2Fwww.google.com%2F&title=Dise%C3%B1o%20de%20Sistemas%20Digitales%20Avanzados%20con%20VHDL-FPGA%3A%20ieee.numeric_std.all%20-%20Funciones%20de%20Conversi%C3%B3n%20%2F%20Cast&txt=">
