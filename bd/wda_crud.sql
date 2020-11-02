-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27-Nov-2017 às 18:40
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wda_crud`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `customers`
--
CREATE Database wda_crud;
use wda_crud;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(14) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `hood` varchar(100) NOT NULL,
  `zip_code` int(8) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `ie` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `customers`
--

INSERT INTO `customers` (`id`, `name`, `cpf_cnpj`, `birthdate`, `address`, `hood`, `zip_code`, `city`, `state`, `phone`, `mobile`, `ie`, `created`, `modified`) VALUES
(62, 'Rui Vergani', '123.456.789-90', '2017-11-07', 'Rua da Web, 123', 'Centro', 37120, 'ParaguaÃ§u', 'MG', ' 3664-8599', ' 8436-0955 ', 8, '2017-11-17 21:00:56', '2017-11-25 11:42:53'),
(63, 'Pedro Afonso', '069.582.088-54', '0000-00-00', '', '', 0, '', '', ' 8754-6122', ' ', 0, '2017-11-17 21:02:22', '2017-11-17 21:41:12'),
(66, 'Jaque Alves', '145.722.456-90', '0000-00-00', '', '', 0, '', '', ' 8436-0977', ' ', 0, '2017-11-17 21:33:22', '2017-11-17 21:40:53'),
(67, 'Davi Martins', '069.584.555-98', '0000-00-00', '', '', 0, '', '', ' 8436-0977', ' ', 0, '2017-11-17 21:34:29', '2017-11-17 21:34:29'),
(68, 'FÃ¡bio Junior', '145.755.899-98', '0000-00-00', '', '', 0, '', '', ' 8574-9855', ' ', 0, '2017-11-17 21:34:47', '2017-11-17 21:35:00'),
(69, 'Herbert Faria', '574.546.985-98', '0000-00-00', '', '', 0, '', '', ' 8475-1455', ' ', 0, '2017-11-17 21:38:09', '2017-11-17 21:38:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `financials`
--

CREATE TABLE `financials` (
  `id` int(11) NOT NULL,
  `descricao_principal` varchar(255) NOT NULL,
  `tipo_conta` varchar(255) NOT NULL,
  `forma_pagamento` varchar(255) NOT NULL,
  `data_vencimento` date NOT NULL,
  `valor_total` double NOT NULL,
  `funcionario_responsavel` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `entidade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `financials`
--

INSERT INTO `financials` (`id`, `descricao_principal`, `tipo_conta`, `forma_pagamento`, `data_vencimento`, `valor_total`, `funcionario_responsavel`, `created`, `modified`, `entidade`) VALUES
(1, 'Conta de Luz', '1', '3', '2017-11-26', 10.5, '', '2017-11-25 11:19:18', '2017-11-25 11:19:18', '10'),
(2, 'ServiÃ§o p/ vacina', '1', '3', '2017-12-28', 152.99, '', '2017-11-25 11:32:56', '2017-11-25 11:32:56', '9'),
(3, 'Conta de Ãgua', '2', '5', '2017-10-24', 25.99, '', '2017-11-25 11:33:38', '2017-11-25 11:33:38', '11'),
(4, '13Â° FuncionÃ¡rio', '2', '3', '2017-11-30', 937.95, '', '2017-11-25 11:46:45', '2017-11-25 11:46:45', '10'),
(5, 'Saco de RaÃ§Ã£o', '1', '3', '2017-11-27', 259.99, '', '2017-11-26 15:58:06', '2017-11-26 15:58:06', '9');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `descricao_principal` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `tipo_produto` int(11) NOT NULL,
  `fornecedor` varchar(100) NOT NULL,
  `valor_venda` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `codigo` int(11) NOT NULL,
  `somaproduto` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `descricao_principal`, `categoria`, `tipo_produto`, `fornecedor`, `valor_venda`, `created`, `modified`, `codigo`, `somaproduto`) VALUES
(30, 'RaÃ§Ã£o Poodle', 'Grande Porte', 0, 'Special Dog', 189.99, '2017-11-20 18:03:20', '2017-11-24 22:01:20', 2, 0),
(31, 'RaÃ§Ã£o para Beagle', 'Pequeno Porte', 0, 'Premier Golden', 20.75, '2017-11-20 18:05:42', '2017-11-24 22:01:10', 1, 0),
(32, 'RaÃ§Ã£o para Gatos', 'Pequeno Porte', 0, 'Canin Premium', 126.15, '2017-11-20 18:30:56', '2017-11-24 22:01:04', 3, 0),
(33, 'RaÃ§Ã£o p/ Equinos', 'Grande Porte', 0, 'VitamÃ­nico CP', 148, '2017-11-20 18:34:14', '2017-11-24 22:00:54', 4, 0),
(34, 'RaÃ§Ã£o para Peixe', 'Pequeno Porte', 1, 'Tetra Min', 48.99, '2017-11-20 18:34:59', '2017-11-24 22:00:44', 5, 0),
(35, 'Comida Tartaruga', 'Pequeno Porte', 0, 'Turtle Nutral', 18.59, '2017-11-20 18:36:08', '2017-11-24 22:00:34', 6, 0),
(37, 'Produto Teste', 'Teste', 1, 'Fornecedor Teste', 0.01, '2017-11-24 22:07:08', '2017-11-24 22:07:08', 8, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `datacad` date DEFAULT NULL,
  `cargo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `nome`, `usuario`, `senha`, `email`, `created`, `modified`, `datacad`, `cargo`) VALUES
(14, 'Administrador', 'admin', 'libera', 'admin@gmail.com', '0000-00-00 00:00:00', '2017-11-26 17:55:11', NULL, 'Administrador'),
(15, 'Rui Vergani', 'Rui Vergani Neto', 'libera', 'vergani@gmail.com', '2017-11-23 21:16:01', '2017-11-23 21:41:07', NULL, 'Programador Jr.'),
(16, 'Jaque', 'Jaque', 'libera', 'jaque@gmail.com', '2017-11-23 21:37:14', '2017-11-23 21:37:14', NULL, 'Atendente');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financials`
--
ALTER TABLE `financials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `financials`
--
ALTER TABLE `financials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
