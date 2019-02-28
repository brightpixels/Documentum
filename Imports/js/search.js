//Function clearBox() is activated on the onClick event of the Search Input Box.
//This function clears the contents of the Search Input Box.
			
				function clearBox() 
				{
					document.frmSimpleSearch[0].q.value = "" ;
					document.frmSimpleSearch[1].q.value = "" ;
					document.frmSimpleSearch[2].qt.value = "" ;
				}  //end clearBox()
				function clearBoxTop() 
				{
					document.searchForm.qt.value = "" ;
				}  //end clearBox()

			
//Function CheckInput() is activated on the onSubmit event of the Search Form.
//This function checks the contents of the Search Input Box for unchanged default input or blank input.
			
				function CheckInput() 
				{	
					validity = false;
					
					if (document.frmSimpleSearch.qt.value == "" || document.frmSimpleSearch.qt.value == "Search for:" )
					{
						alert("Please Enter Search Criteria in the Search box") ;
						document.frmSimpleSearch.qt.value = "" ;
						document.frmSimpleSearch.qt.focus();
					}//end if
					
					else
					{
						validity = true;
					}
					
					return validity;
				}  //end CheckInput()

			
				function CheckInputTop() 
				{	
					validity = false;
					
					if (document.searchForm.qt.value == "" || document.searchForm.qt.value == "Search for:" )
					{
						alert("Please Enter Search Criteria in the Search box") ;
						document.searchForm.qt.value = "" ;
						document.searchForm.qt.focus();
					}//end if
					
					else
					{
						validity = true;
					}
					
					return validity;
				}  //end CheckInput()
			