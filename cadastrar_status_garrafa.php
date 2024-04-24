<?php
    session_start();
    ob_start();


    include 'DB/conexao.php';

    $consulta = new Consulta();


        $temp_amb1 = $_GET["temp_amb1"];
		$temp_amb2 = $_GET["temp_amb2"];
		$temp_foco = $_GET["temp_foco"];
		$umidade = $_GET["umidade"];
       

        $cadastro = $consulta->cadastrarStatusGarrafa($temp_amb1, $temp_amb2, $temp_foco, $umidade);

        if($cadastro->rowCount() > 0){
            
			// Substitua 'seu_token' pelo token do seu bot
			$token = '6859552739:AAE_Dvpl6x8wkJa7vLFW_vBaWO1T6EQwbCk';
			$chat_id = '7173390962'; // Substitua 'id_do_chat' pelo ID do chat para onde deseja enviar a mensagem


			// Mensagem que será enviada para o Telegram

			if((floatval($temp_amb1) - floatval($temp_foco)) < 0.5){
				$message = 'Monitoramento de água: Temperatura ambiente 1: ' . $temp_amb1 . ' Temperatura ambiente 2: ' . $temp_amb2 . ' Temperatura do foco: ' . $temp_foco . ' Umidade: ' . $umidade . ' *** Nível da água chegou a limite! ***' ;
			
			}

			// URL da API do Telegram para enviar a mensagem
			$url = 'https://api.telegram.org/bot' . $token . '/sendMessage';

			// Parâmetros da requisição POST
			$params = [
				'chat_id' => $chat_id,
				'text' => $message
			];

			// Inicializa a sessão cURL
			$ch = curl_init($url);
	
			// Configura as opções da requisição cURL
			curl_setopt($ch, CURLOPT_POST, true);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

			// Executa a requisição cURL e obtém a resposta
			$response = curl_exec($ch);

			// Fecha a sessão cURL
			curl_close($ch);

			// Verifica se houve erro na requisição
			if (!$response) {
				echo 'Erro ao enviar mensagem.';
			} else {
				echo 'Mensagem enviada.';
				}
		
        }else{
			echo 'Erro ao salvar no banco';
		}
            
?>
Cadastro de medições de nível de água.
