
const express = require('express');
const router = express.Router();
const usrController = require('../controllers/userController');

router.get('/', usrController.getAllUsers);
router.get('/:id',usrController.getUsrById);
router.post('/', usrController.crearUsuario);
router.put('/:id',usrController.updateUsuario);
router.delete('/:id', usrController.borrarUsuario);
router.post('/register', usrController.crearUsuario);


module.exports = router;