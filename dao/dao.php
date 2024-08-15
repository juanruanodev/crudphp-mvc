<?php

require_once 'DB/database.php';
/**
     * Creacion / Actualización de Usuarios
     * 
     * @param string $usuario Nombre de usuario.
     * @param string $password Contraseña.
     * @param string $email Correo electrónico.
     * @param string $direccion Dirección.
     * @param string $cedula Cédula.
     * @param int $edad Edad.
     * @return bool True si se ejecuto con éxito, falso en caso contrario.
     */
 /**
     * Verifica si un email / cedula ya están registrados.
     * 
     * @param string $email Correo electrónico.
     * @param string $cedula Cédula.
     * @return bool True si el email/cedula ya está registrado, falso en caso contrario.
 */
 /**
     * Obtiene todos los usuarios.
     * 
     * @return array Lista de usuarios.
     */
 /**
     * Eliminar un usuario por ID.
     * 
     * @param int $id ID del usuario.
     * @return bool True si se eliminó con éxito, falso en caso contrario.
     */
class UsuarioDAO {
    private $pdo;
    public function __construct() {
        $this->pdo = DBase::getInstancia()->getConexion();
    }
    public function getUsuarios() {
        $stmt = $this->pdo->query("SELECT * FROM usuarios");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function crearUsuario($usuario, $password, $email, $direccion, $cedula,$edad) {
            $stmt = $this->pdo->prepare("INSERT INTO usuarios (usuario, password, email, direccion, cedula, edad) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->execute([$usuario, $password, $email, $direccion, $cedula, $edad]);
        if($stmt->rowCount() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function actualizarUsuario($id, $usuario, $password, $email, $direccion, $cedula,$edad) {
        $stmt = $this->pdo->prepare("UPDATE usuarios SET usuario = ?, password = ?, email = ?, direccion = ?, cedula= ?, edad= ? WHERE id = ?");
        $stmt->execute([$usuario, $password,$email,$direccion,$cedula,$edad, $id]);
        if($stmt->rowCount()>0){
            return true;
        }else {
            return false;
        }
    }
    public function eliminarUsuario($id) {
        $stmt = $this->pdo->prepare("DELETE FROM usuarios WHERE id = ?");
        $stmt->execute([$id]); 
        if($stmt->rowCount()>0){
            return true;
        }else {
            return false;
        }
    }
    public function existeEmail($email) {
        $stmt = $this->pdo->prepare("SELECT COUNT(*) FROM usuarios WHERE email = ?");
        $stmt->execute([$email]);
        return $stmt->fetchColumn() > 0;
    }
    public function existeCedula($cedula) {
        $stmt = $this->pdo->prepare("SELECT COUNT(*) FROM usuarios WHERE cedula = ?");
        $stmt->execute([$cedula]);
        return $stmt->fetchColumn() > 0;
    }
}
