PRAGMA foreign_keys = ON;

-- =========================
-- MEDICOS (5)
-- =========================
INSERT INTO Medico (nome, crm, telefone, email) VALUES
('Dr. João Silva', '1111', '81999990001', 'joao@clinica.com'),
('Dra. Maria Souza', '2222', '81999990002', 'maria@clinica.com'),
('Dr. Pedro Lima', '3333', '81999990003', 'pedro@clinica.com'),
('Dra. Ana Costa', '4444', '81999990004', 'ana@clinica.com'),
('Dr. Carlos Mendes', '5555', '81999990005', 'carlos@clinica.com');

-- =========================
-- ESPECIALIDADES (5)
-- =========================
INSERT INTO Especialidade (nome_especialidade, descricao) VALUES
('Cardiologia','Coração'),
('Ortopedia','Ossos'),
('Dermatologia','Pele'),
('Neurologia','Sistema nervoso'),
('Pediatria','Crianças');

-- RELAÇÃO
INSERT INTO Tem VALUES
(1,1),(2,2),(3,3),(4,4),(5,5);

-- =========================
-- PACIENTES (10)
-- =========================
INSERT INTO Paciente_Prontuario (nome, cpf, telefone, email) VALUES
('Zé Juvenal','111','81911111111','ze@email.com'),
('Ana Clara','222','81922222222','ana@email.com'),
('Bruno Silva','333','81933333333','bruno@email.com'),
('Carla Souza','444','81944444444','carla@email.com'),
('Daniel Lima','555','81955555555','daniel@email.com'),
('Eduarda Alves','666','81966666666','eduarda@email.com'),
('Felipe Costa','777','81977777777','felipe@email.com'),
('Gabriela Rocha','888','81988888888','gabriela@email.com'),
('Henrique Dias','999','81999999999','henrique@email.com'),
('Isabela Melo','000','81900000000','isabela@email.com');

-- =========================
-- CONSULTAS (10)
-- =========================
INSERT INTO Consulta (data_consulta, horario, motivo, diagnostico, observacoes, id_paciente, id_medico) VALUES
('2025-06-01','10:00','Dor no peito','Arritmia','Precisa exame',1,1),
('2025-06-02','11:00','Dor joelho','Lesão','Repouso',2,2),
('2025-06-03','09:00','Manchas pele','Dermatite','Pomada',3,3),
('2025-06-04','14:00','Dor cabeça','Enxaqueca','Analgésico',4,4),
('2025-06-05','15:00','Febre','Virose','Descanso',5,5),
('2025-06-06','10:30','Checkup','Normal','OK',6,1),
('2025-06-07','13:00','Dor coluna','Hérnia','Fisioterapia',7,2),
('2025-06-08','16:00','Alergia','Alergia leve','Anti-alérgico',8,3),
('2025-06-09','08:00','Tontura','Labirintite','Remédio',9,4),
('2025-06-10','12:00','Rotina','Normal','OK',10,5);

-- =========================
-- EXAMES (5)
-- =========================
INSERT INTO Exame (nome_exame, descricao) VALUES
('Eletrocardiograma','Coração'),
('Raio-X','Imagem'),
('Sangue','Laboratório'),
('Ressonância','Imagem detalhada'),
('Ultrassom','Imagem interna');

-- RELAÇÃO CONSULTA-EXAME
INSERT INTO Solicita VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,1),(7,2),(8,3),(9,4),(10,5);

-- =========================
-- MEDICAMENTOS (5)
-- =========================
INSERT INTO Medicamento (nome_medicamento, descricao) VALUES
('Atenolol','Pressão'),
('Ibuprofeno','Dor'),
('Paracetamol','Febre'),
('Amoxicilina','Antibiótico'),
('Omeprazol','Estômago');

-- =========================
-- RECEITAS (10)
-- =========================
INSERT INTO Receita (observacoes, id_consulta) VALUES
('Tomar diariamente',1),
('2x ao dia',2),
('Após refeições',3),
('Se dor',4),
('3 dias',5),
('Uso contínuo',6),
('Repouso',7),
('7 dias',8),
('Manhã',9),
('Noite',10);

-- RELAÇÃO RECEITA-MEDICAMENTO
INSERT INTO Contem VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,1),(7,2),(8,3),(9,4),(10,5);