const app = require('express')();
const bodyParser = require('body-parser');

app.use(bodyParser.json())

app.get('/', (req, res)=> {
<<<<<<< HEAD
res.send('Hello _MY_ENV_VAR');
=======
res.send('Hello Manoj');
>>>>>>> 5a6ab725c699539ac559243ec26dfeb3140fdbea
});

app.post('/getIndexes', (req, res)=> {
    var indexingQuery = `ALTER TABLE ${req.body.tablename} `;
    const columns  = req.body.columns;

    columns.forEach((element, index) => {
        if(index === 0) {
            indexingQuery = indexingQuery + ` ADD INDEX \`idx_${element}\`(\`${element}\`)`;
        } else {
            indexingQuery = indexingQuery + `, ADD INDEX \`idx_${element}\`(\`${element}\`)`;
        }
    });

    const output = {
        tableName: req.tableName,
        indexingQuery: indexingQuery + ';'
    }

    res.send(output)
    


})

app.listen(3000, ()=> console.log('Server is up and running'));
