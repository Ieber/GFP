-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 12/05/2023 às 19:28
-- Versão do servidor: 10.4.22-MariaDB
-- Versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `GFP`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `campus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id`, `usuario`, `senha`, `campus`) VALUES
(1, 'admin', '$2y$10$oux5mkWze0MmG9Fsbe33YOkxU41yuGCRF0CwPDHf4UHyKMQk6tryq', '*'),
(2, 'admin@natal', '$2y$10$oux5mkWze0MmG9Fsbe33YOkxU41yuGCRF0CwPDHf4UHyKMQk6tryq', 'Natal'),
(3, 'admin@mossoro', '$2y$10$oux5mkWze0MmG9Fsbe33YOkxU41yuGCRF0CwPDHf4UHyKMQk6tryq', 'Mossoró');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `funcao` varchar(45) DEFAULT NULL,
  `condicao` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `campus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `funcao`, `condicao`, `email`, `telefone`, `campus`) VALUES
(1, 'Marcos André Azevedo de Assis', 'Estagiario', 'Afastado', 'marcosassis@alu.uern.br', '(84) 99644-9431', 'Natal'),
(2, 'IÉBER SANTOS DE MOURA', 'Servidor', 'Trabalhando', 'iebermoura@uern.br', '(84) 98819-5717', 'Natal'),
(3, 'Italo Henrique Oliveira de Lima', 'Estagiario', 'Trabalhando', 'italohenrique@alu.uern.br', '(84) 99189-1989', 'Natal'),
(4, 'Lucas Vítor Florêncio Borba', 'Estagiario', 'Trabalhando', 'lucasvitor@alu.uern.br', '(84) 99636-7575', 'Natal'),
(5, 'Artur Moreira Jacome de Lira', 'Estagiario', 'Trabalhando', 'arturjacome@alu.uern.br', '(84) 99831-8197', 'Natal'),
(33, 'AGENOR TEIXEIRA DE OLIVEIRA JÚNIOR', 'Servidor', 'Trabalhando', 'agenor@uern.br', '(84) 98888-8888', 'Natal'),
(34, 'ALDA LEDA MARTINS DA COSTA', 'Servidor', 'Trabalhando', 'alda@uern.br', '(84) 98888-8888', 'Natal'),
(35, 'ALEXANDRE SOARES DA COSTA', 'Servidor', 'Trabalhando', 'alexandre@uern.br', '(84) 98888-8888', 'Natal'),
(36, 'ADRIENE FORTUNA DE FREITAS MONTE', 'Servidor', 'Trabalhando', 'adriene@uern.br', '(84) 98888-8888', 'Natal'),
(37, 'ANDRÉA REGINA FERNANDES LINHARES', 'Servidor', 'Trabalhando', 'andrea@uern.br', '(84) 98888-8888', 'Natal'),
(38, 'BRUNO DE LIRA ALVES', 'Servidor', 'Trabalhando', 'bruno@uern.br', '(84) 98888-8888', 'Natal'),
(39, 'EDILSON FERNANDES DUTRA FILHO', 'Servidor', 'Trabalhando', 'edilson@uern.br', '(84) 98888-8888', 'Natal'),
(40, 'EDILZA MOREIRA FORMIGA', 'Servidor', 'Trabalhando', 'edilza@uern.br', '(84) 98888-8888', 'Natal'),
(41, 'ERINALDO DE SOUZA MEDEIROS', 'Servidor', 'Trabalhando', 'erinaldo@uern.br', '(84) 98888-8888', 'Natal'),
(42, 'FERNANDA LOURENÇO DA SILVA', 'Servidor', 'Trabalhando', 'fernanda@uern.br', '(84) 98888-8888', 'Natal'),
(43, 'FLÁVIA FONSECA LIMA DE ARAÚJO', 'Servidor', 'Trabalhando', 'flavia@uern.br', '(84) 98888-8888', 'Natal'),
(44, 'FLAUBER SOARES DE SOUSA', 'Servidor', 'Trabalhando', 'flauber@uern.br', '(84) 98888-8888', 'Natal'),
(45, 'GENIVAL FERNANDES DOS SANTOS FILHO', 'Servidor', 'Trabalhando', 'genival@uern.br', '(84) 98888-8888', 'Natal'),
(46, 'GLÁUCIA MOISÉS M E SILVA FREIRE', 'Servidor', 'Trabalhando', 'glaucia@uern.br', '(84) 98888-8888', 'Natal'),
(47, 'HUGO FERREIRA DOS SANTOS', 'Servidor', 'Trabalhando', 'hugo@uern.br', '(84) 98888-8888', 'Natal'),
(48, 'IVANA SOARES BARROS', 'Servidor', 'Trabalhando', 'ivana@uern.br', '(84) 98888-8888', 'Natal'),
(49, 'JANAINA SAIONARA RODRIGUES DE OLIVEIRA', 'Servidor', 'Trabalhando', 'janaina@uern.br', '(84) 98888-8888', 'Natal'),
(50, 'JOBERTINO CAMELO DA SILVA', 'Servidor', 'Trabalhando', 'jobertino@uern.br', '(84) 98888-8888', 'Natal'),
(51, 'JONY SANTOS DE FREITAS', 'Servidor', 'Trabalhando', 'jony@uern.br', '(84) 98888-8888', 'Natal'),
(52, 'JOSINEIDE OLIVEIRA DE ARAUJO', 'Servidor', 'Trabalhando', 'josineide@uern.br', '(84) 98888-8888', 'Natal'),
(53, 'JÚLIO CESAR FERNANDES MEDEIROS', 'Servidor', 'Trabalhando', 'julio@uern.br', '(84) 98888-8888', 'Natal'),
(54, 'KARINNE BENTES ABREU TEIXEIRA', 'Servidor', 'Trabalhando', 'karine@uern.br', '(84) 98888-8888', 'Natal'),
(55, 'KELLY CRISTINA SOARES RODRIGUES CAMELO', 'Servidor', 'Trabalhando', 'kelly@uern.br', '(84) 98888-8888', 'Natal'),
(56, 'LAURA ALINE G PORTELA DE MELO EMÍDIO', 'Servidor', 'Trabalhando', 'laura@uern.br', '(84) 98888-8888', 'Natal'),
(57, 'LEONARDO DE BARROS E SILVA', 'Servidor', 'Trabalhando', 'leonardo@uern.br', '(84) 98888-8888', 'Natal'),
(58, 'MARCELA KARIN PEREIRA RIBEIRO', 'Servidor', 'Trabalhando', 'marcela@uern.br', '(84) 98888-8888', 'Natal'),
(59, 'MÁRCIA LEANDRA DA SILVA', 'Servidor', 'Trabalhando', 'marcia@uern.br', '(84) 98888-8888', 'Natal'),
(60, 'MARCOS LUIZ DA SILVA', 'Servidor', 'Trabalhando', 'marcos@uern.br', '(84) 98888-8888', 'Natal'),
(61, 'MARCOS MACIEL DA SILVA', 'Servidor', 'Trabalhando', 'maciel@uern.br', '(84) 98888-8888', 'Natal'),
(62, 'PATRÍCIA DE FARIAS CALADO', 'Servidor', 'Trabalhando', 'patricia@uern.br', '(84) 98888-8888', 'Natal'),
(63, 'PRISCILA NOGUEIRA KRUGER KRAMER', 'Servidor', 'Trabalhando', 'priscila@uern.br', '(84) 98888-8888', 'Natal'),
(64, 'RALINY OLIVEIRA SANTOS', 'Servidor', 'Trabalhando', 'raliny@uern.br', '(84) 98888-8888', 'Natal'),
(65, 'RANIERI DE ANDRADE LIMA SANTOS', 'Servidor', 'Trabalhando', 'ranieri@uern.br', '(84) 98888-8888', 'Natal'),
(66, 'RAYSSA SILVA GOMES MUNIZ', 'Servidor', 'Trabalhando', 'rayssa@uern.br', '(84) 98888-8888', 'Natal'),
(67, 'RICARDO SÁVIO TRIGUEIRO DE MORAIS', 'Servidor', 'Trabalhando', 'ricardo@uern.br', '(84) 98888-8888', 'Natal'),
(68, 'SHAMYRA MIRANDA DANTAS', 'Servidor', 'Trabalhando', 'shamyra@uern.br', '(84) 98888-8888', 'Natal'),
(69, 'SEBASTIÃO LOPES GALVÃO NETO', 'Servidor', 'Trabalhando', 'neto@uern.br', '(84) 98888-8888', 'Natal'),
(70, 'SILVIA ALESSANDRA FIGUEIREDO LUCENA DE SOUZA', 'Servidor', 'Trabalhando', 'silvia@uern.br', '(84) 98888-8888', 'Natal'),
(71, 'THIAGO SILVA DE MORAIS', 'Servidor', 'Trabalhando', 'thiago@uern.br', '(84) 98888-8888', 'Natal'),
(72, 'TIAGO OTACÍLIO PINTO DE LIMA', 'Servidor', 'Trabalhando', 'otacilio@uern.br', '(84) 98888-8888', 'Natal'),
(73, 'VANDILSON NUNES LOPES', 'Servidor', 'Trabalhando', 'vandilson@uern.br', '(84) 98888-8888', 'Natal'),
(74, 'VANESSA BARROS CHAVES', 'Servidor', 'Trabalhando', 'vanessa@uern.br', '(84) 98888-8888', 'Natal'),
(75, 'WAGNER DE SOUSA FONSECA', 'Servidor', 'Trabalhando', 'wagner@uern.br', '(84) 98888-8888', 'Natal'),
(76, 'WENDELL CARLOS EVANGELISTA PONTES', 'Servidor', 'Trabalhando', 'wendell@uern.br', '(84) 98888-8888', 'Natal'),
(77, 'ANDRIANO ANDRÉ ROSA DA SILVA', 'Servidor', 'Trabalhando', 'andriano@uern.br', '(84) 98888-8888', 'Natal'),
(78, 'DANIEL AUGUSTUS DE AZEVEDO SOUZA', 'Servidor', 'Trabalhando', 'daniel@uern.br', '(84) 98888-8888', 'Natal'),
(79, 'DENILSON DAVID OLIVEIRA SILVA', 'Servidor', 'Trabalhando', 'denilson@uern.br', '(84) 98888-8888', 'Natal'),
(80, 'HEVERTON PEREIRA DE MEDEIROS', 'Servidor', 'Trabalhando', 'heverton@uern.br', '(84) 98888-8888', 'Natal');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
