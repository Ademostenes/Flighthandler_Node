const db = require('../db/db');

const getAllUsers = (req,res) => {
    const sql = 'SELECT * FROM usuario';
    db.query(sql, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
};


const getUsrById = (req,res) => {
    const { id } = req.params;
    const sql = 'SELECT * FROM usuario WHERE id = ?';
    db.query(sql, [id], (err, results) => {
        if (err) throw err;
        res.json(results);
    });
};

const crearUsuario = (req, res) => {
    const {usrName, usrPass, nombres, apellido, mail, cel, idNumero, countrId} = req.body;
    const sql = 'INSERT INTO usuario (userName, userPass, firstname, lastname, email, phone, idnumber, countryId) VALUES (?,?,?,?,?,?,?,?)';
   db.query(sql,[usrName, usrPass, nombres, apellido, mail, cel, idNumero, countrId],(err,result) => {
        if (err) throw err;
        res.json({ message: 'Usuario creado', usrId: result.insertId});
    });
};

const updateUsuario = (req,res) => {
    const { id } = req.params;
    const {usrName, usrPass, nombres, apellido, mail, cel, idNumero, countrId} = req.body;
    const sql = 'UPDATE usuario SET userName = ?, userPass = ?, firstname = ?, lastname = ?, email = ?, phone = ?, idnumber = ?, countryId = ? WHERE id= ?';
    db.query(sql,[usrName, usrPass, nombres, apellido, mail, cel, idNumero, countrId, id], (err, result)=> {
        if (err) throw err;
        res.json({ message: 'Usuario actualizado'});
    });
}

const borrarUsuario = (req, res) => {
    const { id } = req.params;
    const sql = 'DELETE FROM usuario WHERE id = ?';
    db.query(sql, [id], (err, result) => {
        if(err) throw err;
        res.json({message:'Usuario eliminado'});
    });
}

module.exports = {
    getAllUsers,
    getUsrById,
    crearUsuario,
    updateUsuario,
    borrarUsuario

};
