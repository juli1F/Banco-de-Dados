-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Jun-2026 às 21:11
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

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
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `categoria`, `descricao`) VALUES
(1, 'Eletrônicos', 'Aparelhos celulares, notebooks, tablets etc...'),
(2, 'Limpeza', 'Produto de Limpeza'),
(3, 'Decoração', ''),
(4, 'Instrumentos', 'Instrumentos de música e som'),
(5, 'Informática', 'Manutenção  de computadores'),
(6, 'Vestuário', 'Peças de roupa'),
(7, 'Calçados', 'Calçados em geral'),
(8, 'Livros', 'Romance, terror, comédia, aventura e etc'),
(9, 'Alimentos', 'arroz, feijão, carne etc'),
(10, 'Bebidas', 'Suco, refrigerante, cerveja etc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `nomeproduto` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `datacadastro` date NOT NULL,
  `ativo` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `idcategoria`, `nomeproduto`, `preco`, `qtde`, `datacadastro`, `ativo`) VALUES
(1, 3, 'Cortina de 3 metros', '495.65', 20, '2026-05-27', b'1'),
(2, 2, 'Detergente', '2.99', 100, '2026-04-10', b'1');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
