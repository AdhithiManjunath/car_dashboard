const express = require('express')
const app = express();

const PORT = process.env.PORT || 8000

app.get('/',(req,res)=>{
  return res.json({message:'Hey , i am nodejs in a container'});
});

app.listen(PORT, ()=>console.log(`server started on port : ${PORT}`));