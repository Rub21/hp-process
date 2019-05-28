#!/usr/bin/env node
const csv = require('csvtojson');
const fs = require('fs');
var path = process.argv[2];
fs.readdir(path, function (err, items) {
    if (items.length > 3) {
        for (var i = 0; i < items.length; i++) {
            const imagenNumber = items[i].split('.')[0];
            if (Number(imagenNumber)) {
                // fs.unlinkSync(items[i]);
                console.log(`File ${items[i]} deleted!`);
            }
        }
    }
});