<?php
/**
 * Script de enrutamiento
 * Inicializa el controlador de usuarios y delega la gestión de rutas.
 */
require_once 'controlador/controlador.php';
$controlador = new UsuarioControlador();
$controlador->rutas();
