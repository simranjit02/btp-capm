const cds = require('@sap/cds');

module.exports = cds.service.impl( async function(serv){
  serv.on('myFunc', async(req)=>{
    let data= `${req.data.name} Singh  `
    return data
  })  
})