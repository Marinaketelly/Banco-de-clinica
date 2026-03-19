PRAGMA foreign_keys = ON;

-- =========================
-- TABELA MEDICO
-- =========================
CREATE TABLE Medico (
    id_medico INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    crm TEXT,
    telefone TEXT,
    email TEXT
);

-- =========================
-- ESPECIALIDADE
-- =========================
CREATE TABLE Especialidade (
    id_especialidade INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_especialidade TEXT,
    descricao TEXT
);

-- =========================
-- PACIENTE
-- =========================
CREATE TABLE Paciente_Prontuario (
    id_paciente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    cpf TEXT,
    data_nascimento TEXT,
    telefone TEXT,
    email TEXT,
    tipo_sanguineo TEXT,
    alergias TEXT,
    historico_doencas TEXT,
    observacoes TEXT
);

-- =========================
-- CONSULTA
-- =========================
CREATE TABLE Consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data_consulta TEXT,
    horario TEXT,
    motivo TEXT,
    diagnostico TEXT,
    observacoes TEXT,
    id_paciente INTEGER,
    id_medico INTEGER,
    FOREIGN KEY (id_paciente) REFERENCES Paciente_Prontuario(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);

-- =========================
-- EXAME
-- =========================
CREATE TABLE Exame (
    id_exame INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_exame TEXT,
    descricao TEXT
);

-- =========================
-- RECEITA
-- =========================
CREATE TABLE Receita (
    id_receita INTEGER PRIMARY KEY AUTOINCREMENT,
    observacoes TEXT,
    id_consulta INTEGER,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);

-- =========================
-- MEDICAMENTO
-- =========================
CREATE TABLE Medicamento (
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_medicamento TEXT,
    descricao TEXT
);

-- =========================
-- RELAÇÃO MEDICO-ESPECIALIDADE
-- =========================
CREATE TABLE Tem (
    id_medico INTEGER,
    id_especialidade INTEGER,
    PRIMARY KEY (id_medico, id_especialidade),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico),
    FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id_especialidade)
);

-- =========================
-- RECEITA-MEDICAMENTO
-- =========================
CREATE TABLE Contem (
    id_receita INTEGER,
    id_medicamento INTEGER,
    PRIMARY KEY (id_receita, id_medicamento),
    FOREIGN KEY (id_receita) REFERENCES Receita(id_receita),
    FOREIGN KEY (id_medicamento) REFERENCES Medicamento(id_medicamento)
);

-- =========================
-- CONSULTA-EXAME
-- =========================
CREATE TABLE Solicita (
    id_consulta INTEGER,
    id_exame INTEGER,
    PRIMARY KEY (id_consulta, id_exame),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta),
    FOREIGN KEY (id_exame) REFERENCES Exame(id_exame)
);