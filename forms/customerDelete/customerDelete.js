customerDelete.onshow=function(){
 tarDelete_contents.style.height='150px'
  query='SELECT * FROM customer'
  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) 

  if(req.status==200) {
    customers=JSON.parse(req.responseText)
    console.log(customers)
    allEntries=customers
    
    if(customers.length==0){
      NSB.MsgBox("There are no customers.")
    } else{
      for(i=0;i<=customers.length-1;i++){
        dpdDelete.addItem(customers[i][1])
        }
    }
  } else {
    NSB.MsgBox('AN ERROR OCCURRED WITH CODE ' + req.status)
  }
}

dpdDelete.onclick=function(choice){
  if (typeof(choice)=='object'){
    return
  } else {
    dpdDelete.value=choice
    company=dpdDelete.selection
  }
  
    query=`DELETE FROM customer WHERE name='${company}'`
    
    req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query)
    
   if(req.status==200){
      if(req.responseText==500){
        query='SELECT * FROM customer'
  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) 
          
          customers=JSON.parse(req.responseText)
          if(req.status==200){
          let mes='The customer has been deleted Remaing Customers:'
          
          for(i=0;i<=customers.length-1;i++){
          mes=mes+'\n'+customers[i][1]
        tarDelete.value=mes
        }
      }else{
        tarDelete.value=(`The customer was deleted but error in displaying remaining customers`)
        }
      } else {
        tarDelete.value=(`The customer was not deleted. Possible Error.`)
        }
    }else{
        tarDelete.value= (`ERROR WITH CODE ${req.status}`)
    }
}
