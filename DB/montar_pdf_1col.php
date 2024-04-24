<!DOCTYPE html>
<html lang='pt-br'>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Folha de <?= $nomeMes[$mes] ?> de <?= $campus ?> Gerada</title>
        <link rel='stylesheet' type='text/css' href='frontend/estilo.css'>
    </head>
    <body>
        <div class="cabecalho">
            <img width="150" src="./frontend/img/uern.png" alt="logo">
            <div class="nomesUERN">
                <p>DINF <br>
                www.uern.br</p>
            </div>
            
        
        <div style="clear: both">
</div>

        <h3>FOLHA DE PONTO MENSAL</h3>
        
        <table>
            <tr>
                <th >NOME: <?php echo mb_strtoupper($nome) ?></th>
                <th>FUNÇÃO: <?php echo mb_strtoupper($funcao) ?> </th>
            </tr>
            <tr>
                <th>
                    CAMPUS: <?php echo mb_strtoupper($campus)?>
                </th>
                <th>
                    MÊS: <?php echo mb_strtoupper($nomeMes[$mes]) ?>
                </th>

            </tr>
            
            </thead>
            </table>
            <br>
            <table>
            <tbody>
                <tr class='legenda'>
                    <th class='colunaData'>DATA</th>
                    <th class='colunaEntrada'>ENTRADA</th>
                    <th class='colunaAssinatura'>ASSINATURA</th>
                    <th class='colunaSaida'>SAÍDA</th>
                </tr>
                <?php
                    $sabado = false;

                    for($dia = 1; $dia <= $qtdDiasMes; $dia++) {
                        $data = sprintf("%02d/%02d", $dia, $mes);
                        $feriado = isset($_POST[$dia]);

                        if($dia % 7 == $primeiroDiaMes) {
                            echo "<tr class='naoLetivo'>
                                <td class='colunaData'>$data</td>
                                <td class='colunaEntrada'></td>
                                <td class='colunaAssinatura'>SÁBADO</td>
                                <td class='colunaSaida'></td>";
                            $sabado = true;
                        } else if($dia % 7 == $primeiroDiaMes + 1 || $sabado == true) {
                            echo "<tr class='naoLetivo'>
                                <td class='colunaData'>$data</td>
                                <td class='colunaEntrada'></td>
                                <td class='colunaAssinatura'>DOMINGO</td>
                                <td class='colunaSaida'></td>";
                            $sabado = false;
                        } else if($feriado == true && $mes < 12)
                            echo "<tr class='naoLetivo'>
                                <td class='colunaData'>$data</td>
                                <td class='colunaEntrada'></td>
                                <td class='colunaAssinatura'>FERIADO</td>
                                <td class='colunaSaida'></td>";
                        else if($feriado == true && $mes == 12)
                            echo "<tr class='naoLetivo'>
                                <td class='colunaData'>$data</td>
                                <td class='colunaEntrada'></td>
                                <td class='colunaAssinatura'>RECESSO NATALINO</td>
                                <td class='colunaSaida'></td>";
                        else
                            echo "<tr>
                                <td class='colunaData'>$data</td>
                                <td class='colunaEntrada'>:</td>
                                <td class='colunaAssinatura'></td>
                                <td class='colunaSaida'>:</td>";
                        echo "</tr>";
                    }
                ?>
            </tbody>
        </table>
        <p>STI - GFP</p>
        </div>
    </body>
</html>
