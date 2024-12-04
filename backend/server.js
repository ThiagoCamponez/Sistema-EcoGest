require('dotenv').config();
const express = require("express");
const cors = require("cors");  
const authRoutes = require('./routers/authRoutes');
const relatoriosRoute =require('./routers/relatoriosRoutes')

/** Rotas */

const atividadeRouters = require('./routers/AtividadesRouters')
const colaboradoresRoutes = require('./routers/ColaboradoresRoutes')
const beneficiarioRoutes = require('./routers/BeneficiarioRoutes')
const maquinarioRouter = require('./routers/MaquinarioRouter')
const servicoRouters = require('./routers/ServicoRouters')
const RealizarAgServRouters = require('./routers/RealizarAgServRoutes')
const tipoMaquinarioRouter = require('./routers/TipoMaquinarioRouters')
const criarAtivSustRouter = require('./routers/CriarAtivSustRouter')
const GerenciarCicloServicoRoutes = require('./routers/GerenciarCicloServicoRoutes');
const secretariaRouters = require('./routers/SecretariaRouters')
const TramitarServRouter = require('./routers/TramitarServRouters')

const app = express();
const port = 3001;
app.use(express.json());
app.use(cors());

app.use('/api/auth', authRoutes)
app.use('/api/relatorios', relatoriosRoute);

app.use(atividadeRouters);
app.use(colaboradoresRoutes);
app.use(beneficiarioRoutes);
app.use(maquinarioRouter);
app.use(servicoRouters);
app.use(RealizarAgServRouters);
app.use(tipoMaquinarioRouter); 
app.use(criarAtivSustRouter);
app.use(secretariaRouters);
app.use(TramitarServRouter);

const mysql = require("mysql2");
app.listen(port, () => console.log('Servidor rodando na porta ' + port));

app.use('/api', atividadeRouters); 
app.use('/api', colaboradoresRoutes);
app.use('/api', beneficiarioRoutes);
app.use('/api', maquinarioRouter);
app.use('/api', servicoRouters);
app.use('/api', RealizarAgServRouters);
app.use('/api', tipoMaquinarioRouter); 
app.use('/api', criarAtivSustRouter);
app.use('/api', GerenciarCicloServicoRoutes);
app.use('./api', secretariaRouters);
app.use('./api', TramitarServRouter);

const tutorialData = [
    {
        "id": 1,
        "title": "Botão de Sair",
        "description": "Após o login, clique no botão 'Sair' no canto superior direito para sair do sistema. Segue guia abaixo.",
        "icon": "logout-icon.png"
      },
    {
      "id": 2,
      "title": "Menus do Site",
      "description": "No canto esquerdo, há uma coluna de menus. Clique em qualquer menu para abrir suas opções e acessar as tarefas disponíveis. Segue guia abaixo.",
      "icon": "menututorial.PNG",
    },
    {
      "id": 3,
      "title": "Cadastro e Agendamento",
      "description": "Para realizar um cadastro ou agendamento, basta preencher os formulários e clicar em 'Cadastrar' para salvar os dados. Segue guia abaixo.",
      "icon": "cadastrotutorial.PNG",
    },
    {
      "id": 4,
      "title": "Atualizar Registros",
      "description": "Para atualizar um Registro já existente basta em primeiro lugar clicar no Icone de edição que fica na tabela, em seguida os dados do Registro selecionado serão preenchidos no formulário, faltando somente realizar a alteração desejada em seu respectivo campo e clicar no botão de Atualizar. Segue guia abaixo passo I e II.",
      "icon": "atualizartutorial.PNG",
    },
    {
        "id": 5,
        "title": "Excluir Registros",
        "description": "Para excluir um Registro basta clicar no Icone de excluir (lixeira) que corresponde ao Registro desejado, em seguida irá abrir uma mensagem para confirmação da exclusão. Segue guia abaixo.",
        "icon": "excluirtutorial.PNG",
      },
    {
      "id": 6,
      "title": "Filtros e Pesquisa",
      "description": "Digite nos campos de filtro ou pesquisa para encontrar registros. Em seguida clique na Lupa para realizar a filtragem. Segue guia abaixo.",
      "icon": "pesquisatutorial.PNG",
    },
    {
      "id": 7,
      "title": "Relatórios",
      "description": "Clique nos botões para gerar relatórios em PDF ou XLS.",
      icon: "report-icon.png",
    },
  ];

  app.get('/api/tutorial', (req, res) => {
    res.json(tutorialData);
  });
  









