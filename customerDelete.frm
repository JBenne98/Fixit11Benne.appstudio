{
  "!type": "Form",
  "_uuid": "590b120157a843fb8351fa3d1d44f611",
  "HTML": "",
  "attributes": "",
  "background": "",
  "backgroundimage": "",
  "borderColor": "",
  "borderStyle": "",
  "borderWidth": "",
  "cached_js": "customerDelete.onshow=function(){\n tarDelete_contents.style.height='150px'\n  query='SELECT * FROM customer'\n  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) \n\n  if(req.status==200) {\n    customers=JSON.parse(req.responseText)\n    console.log(customers)\n    allEntries=customers\n    \n    if(customers.length==0){\n      NSB.MsgBox(\"There are no customers.\")\n    } else{\n      for(i=0;i<=customers.length-1;i++){\n        dpdDelete.addItem(customers[i][1])\n        }\n    }\n  } else {\n    NSB.MsgBox('AN ERROR OCCURRED WITH CODE ' + req.status)\n  }\n}\n\ndpdDelete.onclick=function(choice){\n  if (typeof(choice)=='object'){\n    return\n  } else {\n    dpdDelete.value=choice\n    company=dpdDelete.selection\n  }\n  \n    query=`DELETE FROM customer WHERE name='${company}'`\n    \n    req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query)\n    \n   if(req.status==200){\n      if(req.responseText==500){\n        query='SELECT * FROM customer'\n  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) \n          \n          customers=JSON.parse(req.responseText)\n          if(req.status==200){\n          let mes='The customer has been deleted'\n          \n          for(i=0;i<=customers.length-1;i++){\n          mes=mes+'\\n'+customers[i][1]\n        tarDelete.value=mes\n        }\n      }else{\n        tarDelere.value=(`The customer was deleted but error in displaying remaining customers`)\n        }\n      } else {\n        tarDelete.value=(`The customer was not deleted. Possible Error.`)\n        }\n    }else{\n        tarDelete.value= (`ERROR WITH CODE ${req.status}`)\n    }\n}\n",
  "cached_js_script_hash": "04d3e452247906d321e7ec4df418756e",
  "children": [
    {
      "!type": "Dropdown_bs4",
      "_uuid": "8d53c1bb1b8346158849bc275dc3638f",
      "align": "",
      "appearance": " btn-secondary",
      "backgroundColor": "",
      "badge": "",
      "badgeAppearance": " badge-info",
      "blockLevel": "",
      "borderColor": "",
      "borderStyle": "",
      "borderWidth": "",
      "bottom": "auto",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "class": "",
      "color": "",
      "disabled": "",
      "display": "",
      "dropdown": "dropdown",
      "expanded_pmp": true,
      "filter": "false",
      "filterPlaceholder": "Search...",
      "fontFamily": "",
      "fontSize": "",
      "fontStyle": "",
      "fontWeight": "",
      "groupStyle": "",
      "grouping": "",
      "height": "auto",
      "hidden": "",
      "icon": "caret",
      "id": "dpdDelete",
      "items": "",
      "left": 26,
      "mAll": "",
      "mBottom": "",
      "mLeft": "",
      "mRight": "",
      "mTop": "",
      "onclick": "dpdDelete.onclick()",
      "onmousedown": "",
      "onmousemove": "",
      "onmouseout": "",
      "onmouseup": "",
      "onresize": "",
      "ontouchend": "",
      "ontouchmove": "",
      "ontouchstart": "",
      "outline": "",
      "pAll": "",
      "pBottom": "",
      "pLeft": "",
      "pRight": "",
      "pTop": "",
      "popBody": "Body",
      "popClose": "hover",
      "popPosition": "",
      "popStyle": "popover",
      "popTitle": "Title",
      "right": "auto",
      "script": "",
      "size": " btn-md",
      "style": "",
      "top": 23,
      "value": "Customer",
      "width": "auto"
    },
    {
      "!type": "Textarea_bs4",
      "_uuid": "29a7551e49ea49119cecf2ac74ea3df8",
      "align": "",
      "autocapitalize": "",
      "autocomplete": "",
      "autocorrect": "",
      "backgroundColor": "",
      "badge": "",
      "badgeAppearance": " badge-info",
      "bottom": "auto",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "class": "",
      "color": "",
      "disabled": "",
      "display": "",
      "expanded_pmp": true,
      "fontFamily": "",
      "fontSize": "",
      "fontStyle": "",
      "fontWeight": "",
      "footer": "",
      "header": "",
      "headerCols": 2,
      "height": "auto",
      "hidden": "",
      "icon": "",
      "iconTitle": "",
      "id": "tarDelete",
      "inputmode": "",
      "left": 18,
      "mAll": "",
      "mBottom": "",
      "mLeft": "",
      "mRight": "",
      "mTop": "",
      "maxlength": "",
      "name": "",
      "onchange": "",
      "onclick": "",
      "oncopy": "",
      "oncut": "",
      "onfocus": "",
      "onfocusout": "",
      "onkeypress": "",
      "onkeyup": "",
      "onmousedown": "",
      "onmousemove": "",
      "onmouseout": "",
      "onmouseup": "",
      "onpaste": "",
      "onresize": "",
      "ontouchend": "",
      "ontouchmove": "",
      "ontouchstart": "",
      "pAll": "",
      "pBottom": "",
      "pLeft": "",
      "pRight": "",
      "pTop": "",
      "placeholder": "",
      "popBody": "Body",
      "popClose": "hover",
      "popPosition": "",
      "popStyle": "popover",
      "popTitle": "Title",
      "readonly": "",
      "required": "",
      "right": "auto",
      "rows": "",
      "script": "",
      "spellcheck": "true",
      "style": "",
      "top": 369,
      "validation": "",
      "value": "",
      "valueCols": 10,
      "width": 298
    }
  ],
  "class": "",
  "designHeight": 0,
  "designWidth": 0,
  "expanded_pmp": false,
  "fullScreen": "true",
  "height": 460,
  "id": "customerDelete",
  "language": "JavaScript",
  "left": "0",
  "locked": false,
  "modal": "false",
  "onhide": "",
  "onkeypress": "",
  "onresize": "",
  "onshow": "customerDelete.onshow()",
  "openMode": "none",
  "parentForm": "",
  "position": "absolute",
  "script": "customerDelete.onshow=function(){\n tarDelete_contents.style.height='150px'\n  query='SELECT * FROM customer'\n  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) \n\n  if(req.status==200) {\n    customers=JSON.parse(req.responseText)\n    console.log(customers)\n    allEntries=customers\n    \n    if(customers.length==0){\n      NSB.MsgBox(\"There are no customers.\")\n    } else{\n      for(i=0;i<=customers.length-1;i++){\n        dpdDelete.addItem(customers[i][1])\n        }\n    }\n  } else {\n    NSB.MsgBox('AN ERROR OCCURRED WITH CODE ' + req.status)\n  }\n}\n\ndpdDelete.onclick=function(choice){\n  if (typeof(choice)=='object'){\n    return\n  } else {\n    dpdDelete.value=choice\n    company=dpdDelete.selection\n  }\n  \n    query=`DELETE FROM customer WHERE name='${company}'`\n    \n    req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query)\n    \n   if(req.status==200){\n      if(req.responseText==500){\n        query='SELECT * FROM customer'\n  req=Ajax('https://ormond.creighton.edu/courses/375/ajax-connection.php', 'POST', 'host=ormond.creighton.edu&user=jgb83474&pass=Iwbn0KS@11:52&database=jgb83474&query=' + query) \n          \n          customers=JSON.parse(req.responseText)\n          if(req.status==200){\n          let mes='The customer has been deleted Remaing Customers:'\n          \n          for(i=0;i<=customers.length-1;i++){\n          mes=mes+'\\n'+customers[i][1]\n        tarDelete.value=mes\n        }\n      }else{\n        tarDelere.value=(`The customer was deleted but error in displaying remaining customers`)\n        }\n      } else {\n        tarDelete.value=(`The customer was not deleted. Possible Error.`)\n        }\n    }else{\n        tarDelete.value= (`ERROR WITH CODE ${req.status}`)\n    }\n}\n",
  "setFocusID": "",
  "style": "",
  "theme": "",
  "top": "0",
  "width": 320,
  "_functions": [
    {
      "!type": "Form",
      "_uuid": "b86b76a5ab914621b5fcfb6415f0b77a",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "customerDelete.onshow",
      "location": [
        0,
        1
      ],
      "script": "",
      "signature": "customerDelete.onshow()"
    },
    {
      "!type": "Form",
      "_uuid": "20114a4a57214968b8219dfcff6341d0",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "dpdDelete.onclick",
      "location": [
        22,
        23
      ],
      "script": "",
      "signature": "dpdDelete.onclick(choice)"
    }
  ]
}