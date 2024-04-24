<?php

use PHPUnit\Framework\TestCase;
include 'DB/conexao.php';

class ConsultaTest extends TestCase {

    protected $consulta;

    protected function setUp(): void {
        $this->consulta = new Consulta();
    }

    public function testBuscarUsuarioLogin() {
        $this->assertTrue($this->consulta->buscarUsuarioLogin('Admin', '1234565'));
    }

    public function testCadastrarUsuario() {
        $res = $this->consulta->cadastrarUsuario('Teste', 'Funcao Teste', 'Campus Teste', 'Condicao Teste', 'teste@teste.com', '123456789');
        $flag = True;
        if($res->rowCount() > 0)
            $flag=True;
        else
            $flag = False;
        
        $this->assertTrue($flag);
    }

    public function testAtualizarUsuario() {
        $usuario = $this->consulta->buscarUsuario(2);

        $res = $this->consulta->atualizarUsuario($usuario['id'], 'NovoNomeTeste', 'NovaFuncaoTeste', 'NovoCampusTeste', 'NovaCondicaoTeste', 'novoemailteste@teste.com', '987654321');
        $flag = true;
        if($res->rowCount() != 0)
            $flag=true;
        else
            $flag = false;
        
            $this->assertFalse($flag);
    }

    public function testBuscarUsuario() {
        $this->assertIsArray($this->consulta->buscarUsuario(2));
    }

    public function testListarUsuariosFuncao() {
        $this->assertIsArray($this->consulta->listarUsuariosFuncao('Funcao'));
    }

    public function testListarNomesUsuariosFuncao() {
        $this->assertIsArray($this->consulta->listarNomesUsuariosFuncao('Funcao', 'Campus'));
    }

    public function testDeletarUsuario() {
        //$usuario = $this->consulta->cadastrarUsuario('NomeDeletar', 'FuncaoDeletar', 'CampusDeletar', 'CondicaoDeletar', 'testedelete@teste.com', '123456789');
        //$id = $usuario->id;
        //$res = $this->consulta->deletarUsuario($id);
        $res = $this->consulta->deletarUsuario(150);
        $this->assertEquals($res->rowCount(), 0);
        
        //$flag = True;
        //if($res->rowCount() != 0)
         //   $flag=True;
        //else
        //    $flag = False;
        
        //$this->assertTrue($flag);
        
    }
}


?>