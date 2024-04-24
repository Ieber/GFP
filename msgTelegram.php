<?php
// Substitua 'seu_token' pelo token do seu bot
$token = '6859552739:AAE_Dvpl6x8wkJa7vLFW_vBaWO1T6EQwbCk';
$chat_id = '7173390962'; // Substitua 'id_do_chat' pelo ID do chat para onde deseja enviar a mensagem

// Mensagem que será enviada para o Telegram
$message = 'Olá! Esta é uma mensagem enviada pelo meu bot do Telegram.';

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
    echo 'Erro ao enviar mensagem para o Telegram.';
} else {
    echo 'Mensagem enviada com sucesso para o Telegram.';
}
?>