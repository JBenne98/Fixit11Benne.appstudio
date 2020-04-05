let req=''
let query=''
let customers=''
let allEntries=[]

customerSelect.onshow=function(){
  tarCust_contents.style.height='150px'
  query='SELECT * FROM customer'
  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) 

  if(req.status==200) {
    customers=JSON.parse(req.responseText)
    console.log(customers)
    allEntries=customers
    
    if(customers.length==0){
      NSB.MsgBox("There are no customers.")
    } else{
      let message=''
      for(i=0;i<=customers.length-1;i++){
        dpdCustomer.addItem(customers[i][1])
        }
    }
  } else {
    NSB.MsgBox('AN ERROR OCCURRED WITH CODE ' + req.status)
  }
}

dpdCustomer.onclick=function(choice){
  let company=''
  let st=''
  let options=[]
  
  if (typeof(choice)=='object'){
    return
  } else {
    dpdCustomer.value=choice
    company=dpdCustomer.selection
    for(i=0;i<=allEntries.length-1;i++){
      if(company==allEntries[i][1]){
        st=allEntries[i][4]
        console.log(st)
        break
      }
    }
    
    for(i=0;i<=allEntries.length-1;i++){
      if(st==allEntries[i][4]){
        options.push(allEntries[i][1])
        console.log(options)
      }
    }
    
    query=`SELECT name FROM customer WHERE state='${st}'`
    
    req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query)
    
   if(req.status==200){
      customers=JSON.parse(req.responseText)
      
      if(customers.length==0){
        NSB.MsgBox('There are no customers')
      } else {
        let mes=''
        for(i=0;i<=options.length-1;i++){
          mes=mes+options[i]+'\n'
        tarCust.value=mes
        }
      
      } 
    }else{
        NSB.MsgBox('ERROR WITH CODE ' + req.status)
    }
  }
}
