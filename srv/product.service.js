const cds = require('@sap/cds');

module.exports = cds.service.impl( async function(serv){

  // serv.on('READ','Product', async(req)=>{
  //   console.log("on")
  // })
  // serv.after('READ','Product', async(req)=>{
  //   console.log("before")
  // })
  // serv.before('READ','Product', async(req)=>{
  //   console.log("before")
  // })
  serv.on('myFunc', async(req)=>{
    let data= `${req.data.name} Singh  `
    return data
  })

  serv.on('myAction', async(req)=>{
    let data= `${req.data.name} Singh  `
    return data
  })  
});


