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
    		<td>MOVWF</td>
    		<td><tt>0 0000 0100 0000</tt></td>
  	</tr>
  	<tr>
		<th>4</th>
    		<td>SLEEP</td>
    		<td><tt>0 0000 0110 0011</tt></td>
  	</tr>
  	<tr>
		<th>5</th>
    		<td>CLRWDT</td>
    		<td><tt>0 0000 0110 0100</tt></td>
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
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>17</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>18</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>19</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>20</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>21</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>22</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>23</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>24</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>25</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>26</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>27</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>28</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>29</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>30</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>31</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>32</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>33</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>34</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
  	<tr>
		<th>35</th>
    		<td></td>
    		<td><tt></tt></td>
  	</tr>
</table> 
