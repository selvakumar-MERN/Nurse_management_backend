const db = require('../config/db.js');


//Get Nurses
const getNurses = async (req, res) => {

    const sql = `SELECT * FROM nurse WHERE status = 1`;

    const queryPromise = new Promise((resolve, reject) => {
        db.query(sql, (err, result) => {
            if (err) {
                reject(err);  
            } else {
                resolve(result);  
            }
        });
    });

    queryPromise
        .then((result) => {
            if (result.length === 0) {
                return res.status(404).send({ success: false, message: 'No Records Found' });
            }
            res.status(200).send({ success: true, data: result });
        })
        .catch((err) => {
            res.status(400).send({ success: false, message: err.message });
        });
}


//Create Nurse
const createNurse = (req, res) => {
    const { name, license, age, dob } = req.body;
    const datetime = new Date();
    const status = 1;

    const sql = `INSERT INTO nurse (nurseName, licenseNo, age, dob, created_At, updated_At, status) VALUES (?, ?, ?, ?, ?, ?, ?)`;

    db.query(sql, [name, license, age, dob, datetime, datetime, status], (err, result) => {
        if (err) {
            res.status(400).send({ success: false, message: err });
        } else {
            res.status(200).send({ success: true, data: result });
        }
    });
}


//Update Nurse
const updateNurse = (req, res) => {
    const { nurseName, licenseNo, age, dob } = req.body;
    const { nurseId } = req.params;
    const datetime = new Date();

    const sql = `UPDATE nurse SET nurseName = ?, licenseNo = ?, age = ?, dob = ?, updated_At = ? WHERE id = ?`;

    db.query(sql, [nurseName, licenseNo, age, dob, datetime, nurseId], (err, result) => {
        if (err) {
            res.status(400).send({ success: false, message: err });
        }  else {
            res.status(200).send({ success: true, data: result });
        }
    });
}

//delete Nurse
const deleteNurse = (req, res) => {
    const { nurseId } = req.params;

    const sql = `DELETE FROM nurse WHERE id = ?`;

    db.query(sql, [nurseId], (err, result) => {
        if (err) {
            res.status(400).send({ success: false, message: err });
        } else {
            res.status(200).send({ success: true, data: result });
        }
    });
}

module.exports.getNurses = getNurses;
module.exports.createNurse = createNurse;
module.exports.updateNurse = updateNurse;
module.exports.deleteNurse = deleteNurse;