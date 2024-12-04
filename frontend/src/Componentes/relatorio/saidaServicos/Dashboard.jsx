import React, { useState, useEffect } from 'react';
import { Container, Row, Col } from "react-bootstrap";
import ChartBarComponent from "./ChartBarComponent";
import { processarDadosGraficoPorMes } from '../../../utils/relatorioServicosRealizados';
import GerenciarCicloServService from '../../../services/GerenciarCicloServService';

function Dashboard() {
  const [servicosPorMes, setServicosPorMes] = useState({
    labels: ['Jan','Fev','Mar','Abr','Mai','Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
    data: new Array(12).fill(0)
  });

  useEffect(() => {
    const carregarDadosServicos = async () => {
      try {
        // Obtém todos os serviços
        const todosServicos = await GerenciarCicloServService.obterTodos();
        
        // Processa os dados para o gráfico
        const dadosGrafico = processarDadosGraficoPorMes(todosServicos);
        
        setServicosPorMes(dadosGrafico);
      } catch (error) {
        console.error("Erro ao carregar dados dos serviços:", error);
      }
    };

    carregarDadosServicos();
  }, []);

  return (
    <>
      <h1>Dashboard</h1>
      <Container>
        <Row>
          <Col>
            <ChartBarComponent 
              labels={servicosPorMes.labels}
              data={servicosPorMes.data}
              label="Serviços da Secretaria de Meio Ambiente"
            />
          </Col>
        </Row>
      </Container>
    </>
  );
}

export default Dashboard;