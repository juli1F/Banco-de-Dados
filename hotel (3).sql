-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/08/2026 às 21:17
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `Codcliente` int(11) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`Codcliente`, `cliente`, `email`, `cpf`) VALUES
(1, 'Cintia Pinho', 'cintia@gmail.com', '123.456.789-12'),
(2, 'Sandra Maria', 'sandra@gmail.com', '183.256.389-92'),
(3, 'Sara Cato', 'sara@gmail.com', '113.456.529-12'),
(4, 'Gael Silva', 'gael@gmail.com', '873.457.723-87'),
(5, 'Samira Costa', 'samira@gmail.com', '542.426.726-40');

-- --------------------------------------------------------

--
-- Estrutura para tabela `hospedagem`
--

CREATE TABLE `hospedagem` (
  `codhospedagem` int(11) NOT NULL,
  `dataentrada` date DEFAULT NULL,
  `datasaida` date DEFAULT NULL,
  `horaentrada` time DEFAULT NULL,
  `horasaida` time DEFAULT NULL,
  `totalhospedagem` decimal(7,2) DEFAULT NULL,
  `codcli` int(11) DEFAULT NULL,
  `codquarto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hospedagem`
--

INSERT INTO `hospedagem` (`codhospedagem`, `dataentrada`, `datasaida`, `horaentrada`, `horasaida`, `totalhospedagem`, `codcli`, `codquarto`) VALUES
(1, '2026-07-22', NULL, '11:13:07', NULL, NULL, 1, 7),
(2, '2026-08-01', NULL, '10:30:07', NULL, NULL, 3, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `quarto`
--

CREATE TABLE `quarto` (
  `Codquarto` int(11) NOT NULL,
  `quarto` varchar(255) NOT NULL,
  `andar` varchar(255) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `quarto`
--

INSERT INTO `quarto` (`Codquarto`, `quarto`, `andar`, `tipo`) VALUES
(1, '11', '1° Andar', 'Individual'),
(2, '12', '1° Andar', 'Casal'),
(3, '13', '1° Andar', 'Familia + Cama de solteiro'),
(4, '14', '1° Andar', 'Familia + 2 camas de solteiro'),
(5, '21', '2° Andar', 'Familia + cama de solteiro'),
(6, '22', '2° Andar', 'Familia +  2 camas de solteiro'),
(7, '23', '2° Andar', 'Mega Familia'),
(8, '24', '2° Andar', 'Suite Presidencial'),
(9, '31', '3° Andar', 'Familia + cama de solteiro'),
(10, '32', '3° Andar', 'Familia + 2 camas de solteiro'),
(11, '33', '3° Andar', 'Mega Familia'),
(12, '34', '3° Andar', 'Suite Presidencial');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `Codservico` int(11) NOT NULL,
  `servico` varchar(255) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`Codservico`, `servico`, `valor`, `qtde`, `tipo`) VALUES
(1, 'Coca Cola Lata', 5.00, 0, 'Bebida'),
(2, 'Coca Cola 2L', 20.00, 0, 'Bebida'),
(3, 'Coca Cola 600', 8.00, 0, 'Bebida'),
(4, 'Cerveja Lata - Skol', 10.50, 0, 'Bebida'),
(5, 'Cerveja Lata - Amstel', 12.90, 0, 'Bebida'),
(6, 'Cerveja Lata - Amstel Ultra', 15.00, 0, 'Bebida'),
(7, 'Massagem Simples', 100.00, 0, 'Cuidados Estéticos'),
(8, 'Massagem Completa', 200.00, 0, 'Cuidados Estéticos'),
(9, 'Almoço - Buffet Completo ', 69.00, 0, 'Alimentação'),
(10, 'Janta - Buffet Completo ', 90.00, 0, 'Alimentação'),
(11, 'Café da Manhã \r\n  - Buffet Completo', 50.00, 0, 'Alimentação');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicoshospedagem`
--

CREATE TABLE `servicoshospedagem` (
  `codhospedagem` int(11) DEFAULT NULL,
  `codservico` int(11) DEFAULT NULL,
  `datacompra` date NOT NULL,
  `horacompra` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicoshospedagem`
--

INSERT INTO `servicoshospedagem` (`codhospedagem`, `codservico`, `datacompra`, `horacompra`) VALUES
(1, 9, '2026-07-22', '10:15:50'),
(2, 11, '2026-08-01', '19:45:50');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Codcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD PRIMARY KEY (`codhospedagem`),
  ADD KEY `codcli` (`codcli`),
  ADD KEY `codquarto` (`codquarto`);

--
-- Índices de tabela `quarto`
--
ALTER TABLE `quarto`
  ADD PRIMARY KEY (`Codquarto`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`Codservico`);

--
-- Índices de tabela `servicoshospedagem`
--
ALTER TABLE `servicoshospedagem`
  ADD KEY `codhospedagem` (`codhospedagem`),
  ADD KEY `codservico` (`codservico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  MODIFY `codhospedagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `quarto`
--
ALTER TABLE `quarto`
  MODIFY `Codquarto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `Codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD CONSTRAINT `hospedagem_ibfk_1` FOREIGN KEY (`codcli`) REFERENCES `cliente` (`Codcliente`),
  ADD CONSTRAINT `hospedagem_ibfk_2` FOREIGN KEY (`codquarto`) REFERENCES `quarto` (`Codquarto`);

--
-- Restrições para tabelas `servicoshospedagem`
--
ALTER TABLE `servicoshospedagem`
  ADD CONSTRAINT `servicoshospedagem_ibfk_1` FOREIGN KEY (`codhospedagem`) REFERENCES `hospedagem` (`codhospedagem`),
  ADD CONSTRAINT `servicoshospedagem_ibfk_2` FOREIGN KEY (`codservico`) REFERENCES `servico` (`Codservico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
