const express = require('express');
const router = express.Router();
const nurse = require('../controllers/nursecontroller.js');

//Nurse Routes
router.get('/getnurses',nurse.getNurses);
router.post('/createnurse',nurse.createNurse);
router.post('/updatenurse/:nurseId',nurse.updateNurse);
router.delete('/deletenurse/:nurseId',nurse.deleteNurse);


module.exports = router;