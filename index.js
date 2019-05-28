#!/usr/bin/env node
const fs = require('fs');
const path = process.argv[2];
const numFiles = 1500;
fs.readdir(path, function (err, items) {
    if (items.length > numFiles) {
        for (let i = numFiles; i < items.length; i++) {
            const imagenNumber = items[i].split('.')[0].replace('_Cam3', '').replace('_Cam1', '');
            if (Number(imagenNumber)) {
                //fs.unlinkSync(items[i]);
                console.log(`File ${items[i]} deleted!`);
            }
        }
    }
});