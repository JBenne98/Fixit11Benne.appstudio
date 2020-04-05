customerUpdate.onshow=function(){
  tarUpdate_contents.style.height='150px'
  query='SELECT * FROM customer'
  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) 

  if(req.status==200) {
    customers=JSON.parse(req.responseText)
    console.log(customers)
    allEntries=customers
    
    if(customers.length==0){
      tarUpdate.value=(`There are no customers.`)
    } else{
      for(i=0;i<=customers.length-1;i++){
        dpdUpdate.addItem(customers[i][1])
        }
    }
  } else {
    tarUpdate.value=(`There was an error with code ${req.status}`)
  }
}

dpdUpdate.onclick=function(choice){
      let newCompany=iptUpdate.value
      
    if (typeof(choice)=='object'){
    return
  } else {
    dpdUpdate.value=choice
    company=dpdUpdate.selection
  }
  
    query=`UPDATE customer SET name='${newCompany}' WHERE name='${company}'`
    
   req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query)
    
   if(req.status==200){
      if(req.responseText==500){
        query='SELECT * FROM customer'
  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) 
          
          customers=JSON.parse(req.responseText)
          if(req.status==200){
          let mes='The customer has been Updated. Updated Customers:'
          
          for(i=0;i<=customers.length-1;i++){
          mes=mes+'\n'+customers[i][1]
        tarUpdate.value=mes
        }
      }else{
        tarUpdate.value=(`The customer was updated but error in displaying remaining customers`)
        }
      } else {
        tarUpdate.value=(`The customer was not updated. Possible Error.`)
        }
    }else{
        tarUpdate.value= (`ERROR WITH CODE ${req.status}`)
    }
}
