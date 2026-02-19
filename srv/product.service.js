const cds = require('@sap/cds');
const { message } = require('@sap/cds/lib/log/cds-error');
const { SELECT } = require('@sap/cds/lib/ql/cds-ql');

module.exports = cds.service.impl( async function(srv){
const {Product} =srv.entities
  // serv.on('READ','Product', async(req)=>{
  //   console.log("on")
  // })
  // serv.after('READ','Product', async(req)=>{
  //   console.log("before")
  // })
  // serv.before('READ','Product', async(req)=>{
  //   console.log("before")
  // })
  srv.on('myFunc', async(req)=>{
    let data= `${req.data.name} Singh  `
    return data
  })

  srv.on('myAction', async(req)=>{
    let data= `${req.data.name} Singh  `
    return data
  })  
  srv.before('orderPO', async(req)=>{
   const record = await SELECT `stock` .from(Product).where({ID:req.params[0].ID})
   if (record[0].stock > 500){
    return req.error({
      code: 500,
      message: "current stock should be lessthen 500 "
    })
   }
  })
  srv.on('orderPO', async(req)=>{})
});


