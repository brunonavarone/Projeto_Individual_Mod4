CREATE TABLE `instituicao` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cnpj` int NOT NULL
);

CREATE TABLE `curso` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `id_instituicao` varchar(100) NOT NULL
);

CREATE TABLE `turma` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `codigo` char(3) NOT NULL,
  `turno` varchar(10) NOT NULL,
  `id_curso` int
);

CREATE TABLE `aluno` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` int(11) NOT NULL,
  `email` varchar(255),
  `telefone` int(11),
  `endereco` varchar(255),
  `id_turma` int
);

CREATE TABLE `facilitador` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` int(11) NOT NULL,
  `email` varchar(255),
  `telefone` int(11),
  `competencia_1` varchar(255) NOT NULL,
  `competencia_2` varchar(255)
);

CREATE TABLE `monitor` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` int(11) NOT NULL,
  `email` varchar(255),
  `telefone` int(11)
);

ALTER TABLE `curso` ADD FOREIGN KEY (`id_instituicao`) REFERENCES `instituicao` (`id`);

ALTER TABLE `turma` ADD FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

ALTER TABLE `aluno` ADD FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id`);

CREATE TABLE `turma_facilitador` (
  `turma_id` int,
  `facilitador_id` int,
  PRIMARY KEY (`turma_id`, `facilitador_id`)
);

ALTER TABLE `turma_facilitador` ADD FOREIGN KEY (`turma_id`) REFERENCES `turma` (`id`);

ALTER TABLE `turma_facilitador` ADD FOREIGN KEY (`facilitador_id`) REFERENCES `facilitador` (`id`);


CREATE TABLE `turma_monitor` (
  `turma_id` int,
  `monitor_id` int,
  PRIMARY KEY (`turma_id`, `monitor_id`)
);

ALTER TABLE `turma_monitor` ADD FOREIGN KEY (`turma_id`) REFERENCES `turma` (`id`);

ALTER TABLE `turma_monitor` ADD FOREIGN KEY (`monitor_id`) REFERENCES `monitor` (`id`);

