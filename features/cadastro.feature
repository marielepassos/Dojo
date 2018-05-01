#language: pt
#utf-8

@cadastro
Funcionalidade: Cadastro
	Eu como usuário do sistema
	Quero cadastrar um novo empregado
	Para obter informações do empregado


Cenario: Cadastrar Empregado
	Dado que esteja na home do site OrangeHRM
	Quando selecionar PIM > Add Employee
	Entao empregado sera cadastrado com sucesso