-- =========================
-- CONSULTAS ORDENADAS
-- =========================
SELECT 
    c.id_consulta,
    p.nome AS paciente,
    m.nome AS medico,
    e.nome_especialidade,
    c.data_consulta,
    c.horario
FROM Consulta c
JOIN Paciente_Prontuario p ON c.id_paciente = p.id_paciente
JOIN Medico m ON c.id_medico = m.id_medico
LEFT JOIN Tem t ON m.id_medico = t.id_medico
LEFT JOIN Especialidade e ON t.id_especialidade = e.id_especialidade
ORDER BY c.data_consulta, c.horario;

-- =========================
-- FILTRAR POR MÉDICO
-- =========================
SELECT 
    p.nome AS paciente,
    m.nome AS medico,
    c.data_consulta,
    c.horario
FROM Consulta c
JOIN Paciente_Prontuario p ON c.id_paciente = p.id_paciente
JOIN Medico m ON c.id_medico = m.id_medico
WHERE m.nome = 'Dr. João Silva';

-- =========================
-- FILTRAR POR ESPECIALIDADE
-- =========================
SELECT 
    p.nome,
    e.nome_especialidade,
    c.data_consulta
FROM Consulta c
JOIN Paciente_Prontuario p ON c.id_paciente = p.id_paciente
JOIN Medico m ON c.id_medico = m.id_medico
JOIN Tem t ON m.id_medico = t.id_medico
JOIN Especialidade e ON t.id_especialidade = e.id_especialidade
WHERE e.nome_especialidade = 'Cardiologia';

-- =========================
-- CANCELAR CONSULTA
-- =========================
DELETE FROM Consulta WHERE id_paciente = (
    SELECT id_paciente
    FROM paciente
    WHERE nome = 'Carla Souza'
)
AND data_consulta = '2026-03-20';