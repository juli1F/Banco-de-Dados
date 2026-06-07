-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/06/2026 às 20:48
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtos`
--
CREATE DATABASE IF NOT EXISTS `produtos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `categoria`, `descricao`) VALUES
(1, 'Eletrônicos', 'Aparelhos Celulares, notebooks, tablets etc....'),
(2, 'Limpeza', 'Produto de limpeza'),
(3, 'Decoração', ''),
(4, 'Eletrônicos', 'Aparelhos Celulares, notebooks, tablets etc...'),
(5, 'Limpeza', 'Produto de limpeza'),
(6, 'Decoracao', ''),
(7, 'Instrumentos', 'Instrumentos de música e som'),
(8, 'Informática', 'Cabos, impressoras, etc'),
(9, 'Vestuário', 'Peças de roupas dos dois gêneros'),
(10, 'Calçados', 'Tênis, Calçado'),
(11, 'Livros', 'Romance, terror, comédia, aventura e etec'),
(12, 'Alimentos', 'Arroz, feijão, carne etc'),
(13, 'Bebidas', 'Suco, refrigerante, cerveja etc'),
(14, 'Móveis', 'Sofá, mesa, cadeira, cama etc'),
(15, 'Esportes', 'futebol, basquete, volei, tenis de mesa etc'),
(16, 'Beleza', 'Base, corretivo, pó, blush etc'),
(17, 'Mercearia', 'Alimentos e produtos de uso diário'),
(18, 'Materiais de Construção', 'Para construções de vários padrões'),
(19, 'Brinquedos', 'Serve para todas as idades brincarem e ter muita diversão');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `nomeproduto` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `datacadastro` date NOT NULL,
  `ativo` bit(1) NOT NULL,
  `marca` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `idcategoria`, `nomeproduto`, `preco`, `qtde`, `datacadastro`, `ativo`, `marca`) VALUES
(1, 3, 'Cortina de 3m', 495.65, 20, '2026-05-27', b'1', 'Bella Janela'),
(2, 2, 'Detergente Ypê', 2.99, 100, '2026-04-10', b'1', 'Ypê'),
(3, 7, 'Violão', 899.99, 15, '2026-05-30', b'1', 'Tagima'),
(4, 8, 'Cabo da fonte', 20.00, 50, '2024-09-12', b'1', 'Gigabyte'),
(5, 9, 'Camiseta Social', 70.00, 47, '2023-01-09', b'1', 'Renner'),
(6, 10, 'Salto alto', 190.00, 39, '2025-06-01', b'1', 'YSL'),
(7, 11, 'Livro de Romance', 50.00, 128, '2021-08-01', b'1', 'Panini'),
(8, 12, 'Chocolate', 10.00, 230, '2020-07-22', b'1', 'Cacau Show'),
(9, 13, 'Suco de Goiaba', 12.00, 170, '2023-09-03', b'1', 'Natural One'),
(10, 14, 'Painel da TV', 350.00, 10, '2019-04-23', b'1', 'DJ Móveis'),
(11, 15, 'Bola de futebol', 90.00, 49, '2018-03-28', b'1', 'Adidas'),
(12, 16, 'Blush', 15.00, 130, '2017-02-17', b'1', 'Dior'),
(13, 17, 'Café', 35.00, 40, '2017-09-07', b'1', 'Pilão'),
(14, 18, 'Cimento 10kg', 150.00, 10, '2015-02-07', b'1', 'Votoran'),
(15, 19, 'Boneca', 78.00, 207, '2016-01-02', b'1', 'Barbie');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
