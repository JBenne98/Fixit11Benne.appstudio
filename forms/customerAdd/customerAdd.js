customerAdd.onshow=function(){
  tarDelete_contents.style.height='150px'
  query='SELECT * FROM customer'
  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) 
      
      customers=JSON.parse(req.responseText)
      
    if(req.status==200){
          let mes='These are the current customers'
          
          for(i=0;i<=customers.length-1;i++){
          mes=mes+'\n'+customers[i][1]
        tarAdd.value=mes
        }
      }else{
        tarAdd.value=(`There was an error with code ${req.status}`)
      }
}

btnAdd.onclick=function(){
  query=`INSERT INTO customer (name,street,city,state,zipcode) VALUES ('Jesse Antiques', '1113 F St', 'Omaha', 'NE', '68178')`
  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) 
   
  if (req.status==200){
    if(req.responseText==500){
      query='SELECT * FROM customer'
  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) 
      
      customers=JSON.parse(req.responseText)
      
    if(req.status==200){
          let mes='The customer was added. New Customer List:'
          
          for(i=0;i<=customers.length-1;i++){
          mes=mes+'\n'+customers[i][1]
        tarAdd.value=mes
        }
      } else{
        tarAdd.value=(`There was an error with code ${req.status}`)
      }
    }else{
      tarAdd.value(`Error`)
    }
  }else{
    tarAdd.value(`Error`)
  }
}