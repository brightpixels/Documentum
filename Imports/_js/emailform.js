/*------------------------------------------------------------------------------
Author:         Orawan Meeporncharoenkit
Creation Date:  30 August 2010
Version:        1.0
Note:           Refer to Corporate WebTrends SWI, there is a requirment to tag total number of visits that complete the email friend form. The purpose of validation is to ensure that the form will pass the validation at server, so that it will not throw any errors to client. This validation is  for Corporate site only and do not use this for PA site unless a need for WebTrends Tagging.
------------------------------------------------------------------------------*/

function trim(strValue){
 var objRegExp = /^(\s*)$/;

    //check for all spaces
    if(objRegExp.test(strValue)) {
       strValue = strValue.replace(objRegExp, '');
       if( strValue.length == 0)
          return strValue;
    }

   //check for leading & trailing spaces
   objRegExp = /^(\s*)([\W\w]*)(\b\s*$)/;
   if(objRegExp.test(strValue)) {
       //remove leading and trailing whitespace characters
       strValue = strValue.replace(objRegExp, '$2');
    }
  return strValue;

}

function isWord(strValue){
	if(strValue.length ==0 ){
		return true;
	}else{
		var objRegExp = /^([\w.\s][^0-9]{0,40})$/
		return objRegExp.test(strValue);
	}
}

function isEmail(strValue){
	var objRegExp = /^[\w-\.]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]{2,3}$/
	return objRegExp.test(strValue);
}

function isMessage(strValue){
	if(strValue.length ==0 ){
		return true;
	}else{
		var objRegExp = /^([\w+0-9'.:;_ ^!@#$&*()/%-?~`\s\n\W\D]{1,4000})/
		return objRegExp.test(strValue);
	}
}

function ValidateInput(){
			// Validate Sender Name
			if (!isWord(document.EmailForm.txtName.value))
			{
				return false;
			}
			
			//Validate Sender Email
			if(document.EmailForm.txtEmail.value.length ==0){
				return false;
			}
			if(!isEmail(trim(document.EmailForm.txtEmail.value))){
				return false;
			}
			
			//Validate Recipient Name
			if (!isWord(document.EmailForm.txtFriend.value))
			{
				return false;
			}
			
			//Validate Recipient Email
			if(document.EmailForm.txtFriendEmail.value.length ==0){
				return false;
			}
			if(!isEmail(trim(document.EmailForm.txtFriendEmail.value))){
				return false;
			}
				
			//Validate Message
			if (!isMessage(document.EmailForm.txtMessage.value))
			{
				return false;
			}
			
			if(!document.EmailForm.chkAccept.checked){
				return false;
			}
			
			return true;

}