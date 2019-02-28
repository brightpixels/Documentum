var Quiz = {

	isAnsweredList : new Array(),// Array of questions answered on the quiz
	submitted : false,// flag for if a quiz has been submitted
	
	// Initializes the variables used in quiz tracking.
	// This function should be called on page load and any time the contents of a form is reset.
	// EXAMPLE
	// <body onload="Quiz.initialize();">
	// <input type="button" value="Reset" onclick="Quiz.initialize();Quiz.reset('testQuiz');"/>
	initialize : function()
	{
		Quiz.isAnsweredList = new Array();
		Quiz.submitted = false;
	},
	
	// Posts query parameters to Web Trends that indicates that a quiz has been submitted successfully.
	// This function should be called from the submit button. It is recommended that you do not use an actual submit button (<input type="submit"/>) 
	// to submit this form to ensure that the parameters are passed to WT successfully and the submitted flag is set properly to avoid an additional 
	// post to web trends via the page onunload action. There is an additional function in this script you can call to submit the form.
	// EXAMPLE
	// <input type="button" value="Submit" onclick="Quiz.submitFormToWebTrends();Quiz.submit('testQuiz');"/>
	submitFormToWebTrends : function()
	{
		Quiz.markAsSubmitted();
		dcsMultiTrack('DCSext.questions_answered_submit',Quiz.getQuestionsAnswered(),'DCSext.submitted','1','DCSext.questions_answered','0');
	},

	// Posts query parameters to Web Trends that indicate that a textline or textarea has been filled out, will only submit to Web Trends if the field has a value.
	// This function should be called from the onBlur action of the textline or textarea to ensure that the field has a value
	// Param: question_id - value of the id attribute of the input
	// EXAMPLES
	// <input type="text" id="question_1" name="question_1" onblur="Quiz.submitTextFieldToWebTrends('question_1');"/>
	// <textarea rows="2" cols="20" id="question_2" name="question_1" onblur="Quiz.submitTextFieldToWebTrends('question_2');"></textarea>
	submitTextFieldToWebTrends : function(question_id)
	{
		if(Quiz.isAnswered(question_id) == false)
		{
			if(document.getElementById(question_id).value!= null && document.getElementById(question_id).value!= "")
			{ 
				Quiz.markAsAnswered(question_id);
				dcsMultiTrack('DCSext.questions_answered','1');
			}
		}
	},

	// Posts query parameters to Web Trends that indicate that a dropdown, checkbox or radio button has been filled out
	// This function should be called from the onClick action of the checkbox or radio button and the onChange action of the dropdown
	// Param: question_id - value of the id attribute of the input
	// EXAMPLES
	// <input type="radio" id="quesiton_4" name="question_4" value="option 1" onclick="Quiz.submitFieldToWebTrends('question_4');"/> Option 1<br/>
	// <input type="checkbox" id="quesiton_5" name="question_5" value="option 1" onclick="Quiz.submitFieldToWebTrends('question_5');"/> Option 1<br/>
	// <select id="question_3" name="question_3" onchange="Quiz.submitFieldToWebTrends('question_3');">
	submitFieldToWebTrends : function(question_id)
	{
		if(Quiz.isAnswered(question_id) == false)
		{
				Quiz.markAsAnswered(question_id);
				dcsMultiTrack('DCSext.questions_answered','1');
		}
	},

	// Posts the query paramters to Web Trends that indicate the last question answered by the user before exiting the page in the event that the form has not been submitted
	// This function should be called from the onUnLoad action of the body tag
	// EXAMPLE
	// <body onunload="Quiz.submitExitQuestionToWebTrends();">
	submitExitQuestionToWebTrends : function()
	{
		if(Quiz.isSubmitted() == false)
		{
			if(Quiz.getLastQuestionAnswered()!=null){
				dcsMultiTrack('DCSext.last_question_answered',Quiz.getLastQuestionAnswered(),'DCSext.questions_answered','0');
			}else{
				dcsMultiTrack('DCSext.last_question_answered','none','DCSext.questions_answered','0');
			}
		}
	},

	//Returns the last question answered for a given quiz.
	getLastQuestionAnswered : function()
	{
		if(Quiz.isAnsweredList.length-1 >=0)
			return Quiz.isAnsweredList[Quiz.isAnsweredList.length-1];
		else
			return null;
	},

	//Returns the number of questions that have been answered for a given quiz.
	getQuestionsAnswered : function()
	{
		return Quiz.isAnsweredList.length;
	},

	//Returns the number of questions contained in a given quiz based on the value of a hidden field with ID num_questions
	//<input type="hidden" id="num_questions" name="num_questions" value="5"/>
	getNumberOfQuestions : function ()
	{
		return document.getElementById('num_questions').value;
	},
	
	// Returns the the path of the current page
	getQuizPage : function ()
	{
		return window.location.pathname;
	},
	
	//Returns whether or not a given question has been answered
	//Param: question_id - value of the id attribute of the input
	isAnswered : function(question_id)
	{
		for(var i=0;i<Quiz.isAnsweredList.length;i++)
		{
			if(Quiz.isAnsweredList[i] == question_id)
				return true;
		}
		return false;
	},

	//Adds a given question to the list of answered questions
	//Param: question_id - value of the id attribute of the input
	markAsAnswered : function(question_id)
	{
		Quiz.isAnsweredList.push(question_id);
	},
	
	// Marks the quiz as submitted
	markAsSubmitted : function()
	{
		Quiz.submitted = true;
	},
	
	// Returns whether or not the quiz has been submitted
	isSubmitted : function()
	{
		return Quiz.submitted;
	},

	//Calls the submit action of a given form with ID
	//Param: id - value of the id attribute of the form
	submit : function(id)
	{
		document.getElementById(id).submit()
	},

	//Calls the reset action of a given form with ID
	//Param: id - value of the id attribute of the form
	reset : function (id)
	{
		document.getElementById(id).reset();
	}

};