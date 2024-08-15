<?php
require_once 'dao/dao.php';
  /**
     *
     * *Clase UsuarioControlador
     * Maneja las solicitudes HTTP para la gestión de usuarios.
     * *Constructor de UsuarioControlador.
     * Inicializa el DAO y establece el tipo de contenido como JSON.
*/

class UsuarioControlador {
    private $dao;

    public function __construct() {
        header('Content-Type: application/json');
        $this->dao = new UsuarioDAO();
    }
    public function rutas() {
        $metodo = $_SERVER['REQUEST_METHOD'];
        $uri = $_SERVER['REQUEST_URI'];
         if($uri=='/usuarios') {
            switch($metodo) {
                case 'GET':
                    $usuarios = $this->dao->getUsuarios();
                    echo json_encode($usuarios);
                    break;
                    
                case 'POST':
                    $body = json_decode(file_get_contents('php://input'), true);
                    if (empty($body["usuario"]) || empty($body["password"]) || empty($body["email"]) ||
                        empty($body["direccion"]) || empty($body["cedula"]) || empty($body["edad"])) {
                        echo json_encode(['message' => 'Todos los campos son obligatorios y no deben estar vacíos.']);
                        break;
                    }
                    $usuario = $body["usuario"];
                    $password = $body["password"];
                    $email = $body["email"];
                    $direccion = $body["direccion"];
                    $cedula = $body["cedula"];
                    $edad = $body["edad"];
                    $emailExiste = $this->dao->existeEmail($email);
                    $cedulaExiste = $this->dao->existeCedula($cedula);
                    if ($emailExiste) {
                        echo json_encode(['message' => 'El email ya está registrado.']);
                        break;
                    }
                    if ($cedulaExiste) {
                        echo json_encode(['message' => 'La cédula ya está registrada.']);
                        break;
                    }
                    $result = $this->dao->crearUsuario($usuario, $password, $email, $direccion, $cedula, $edad);
                    if ($result) {
                        echo json_encode(["message" => 'Usuario creado']);
                    } else {
                        echo json_encode(['message' => 'Ocurrió un error al crear el usuario']);
                    }
                    break;

                case 'PUT':
                    $body = json_decode(file_get_contents('php://input'), true);
                    $id= $body['id'];
                    $usuario= $body["usuario"];
                    $password = $body["password"];
                    $email = $body["email"];    
                    $direccion = $body["direccion"];
                    $cedula = $body["cedula"];
                    $edad = $body["edad"];
                    $result = $this->dao->actualizarUsuario($id,$usuario, $password, $email, $direccion, $cedula, $edad);
                    if($result){
                        echo json_encode(["message"=>'usuario actualizado']);
                    } else{
                        echo json_encode(['message'=> 'ocurrio un error al actualizar usuario']);
                    }
                    break;

                case 'DELETE':
                        $body = json_decode(file_get_contents('php://input'), true);
                        $id= $body["id"];
                        $result = $this->dao->eliminarUsuario($id);
                        if($result){
                            echo json_encode(["message"=>'usuario eliminado']);
                        } else{
                            echo json_encode(['message'=> 'ocurrio un error al eliminar usuario']);
                        }
                        break;
            }
        } 
    } 
     
}


