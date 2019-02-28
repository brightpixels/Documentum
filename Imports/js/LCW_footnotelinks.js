/*------------------------------------------------------------------------------
Function:       footnoteLinks()
Author:         Aaron Gustafson (aaron at easy-designs dot net)
Creation Date:  8 May 2005
Version:        1.3
Homepage:       http://www.easy-designs.net/code/footnoteLinks/
License:        Creative Commons Attribution-ShareAlike 2.0 License
                http://creativecommons.org/licenses/by-sa/2.0/
Note:           If you change or improve on this script, please let us know by 
                emailing the author (above) with a link to your demo page.
------------------------------------------------------------------------------*/
/*
Modifications by Brian LePore:
 1. Eliminated the use of inArray and push from jsUtilities using Brian Hardy's code.
 2. Replaced the addClass from jsUtilities with my own version that doesn't extend object.
 3. Walks the DOM.
 4. Only adds the h2 and ol objects if links are found in containerID.
 5. Strips out "mailto:" and optional spaces from links.
 6. Ignores:
   a. if href is javascript code.
	b. if href's value is simply '#'
	c. if href is equivalent to anchor's inner text.
	d. if parent's class was ignore.

To do:
 1. Replace lastChildContainingText methods with versions that does not rip off jsUtilities' version.

Compressed code available at: http://www.cps.brockport.edu/~cpsclub/template/footnoteLinks.js
*/
function trim(c) {
	if (c)
		c = c.replace(/^\s*|\s*$/,'');
	return c;
}
function hasClass(obj, c) {
	if (!obj || !c) return false;
	c = trim(c);
	var oldC = trim(obj.className);
	if (c && oldC && oldC.match('\\b'+c+'\\b'))
		return true;
	else
		return false;
}
function addClass(obj, c) { 
	if (!obj || !c || hasClass(obj, c)) return;
	c = trim(c);
	var oldC = trim(obj.className);
	if (!c) return;
	obj.className = (oldC) ? oldC + ' ' + c :  c;
	return;
}
function lastChildContainingText(obj) { 
	var testChild = obj.lastChild;
	var contentCntnr = ['p','li','dd'];
	while (testChild.nodeType != 1) { testChild = testChild.previousSibling; }
	var tag = testChild.tagName.toLowerCase();
	var tagInArr = inArray.apply(contentCntnr, [tag]);
	if (!tagInArr && tagInArr!==0) { testChild = lastChildContainingText(testChild); }
	return testChild;
}
function walk(parent, list, contained) {
   if (!document.getElementById || 
      !document.getElementsByTagName ||
      !document.createElement) return false;
   if (!parent || !list || !contained) return false;
   var num = 0;
   for (var j in contained) {
      num = Math.max(num, contained[j]);
   }
   for (var i=0; i < parent.childNodes.length; i++) {
      if (parent.childNodes[i].nodeType != 1) continue;
      var child = parent.childNodes[i];
      if (hasClass(child, 'ignore') || hasClass(child, 'paging')) continue;
      else if ( (child.getAttribute('href') && child.nodeName=='A') || child.getAttribute('cite')) {
         var thisLink = (child.getAttribute('href') ? child.href : child.cite).replace(/^mailto:\s*/, "");
         if (thisLink == window.location + '#' || thisLink.match('^javascript:') 
		 		|| thisLink == child.innerHTML || child.innerHTML.toLowerCase().indexOf('<img')>-1 )
            continue;
         var note = document.createElement('sup');
         addClass(note,'printOnly');
         var note_txt;
         if (contained[thisLink]) { 
            note_txt = document.createTextNode(myArr[thisLink]);
         } else {
            var li = document.createElement('li');
            var li_txt = document.createTextNode(thisLink);
            li.appendChild(li_txt);
            list.appendChild(li);
            num++;
            contained[thisLink] = num;
            note_txt = document.createTextNode(num);
         }      
         note.appendChild(note_txt);
         if (child.tagName.toLowerCase() == 'blockquote') {
            var lastChild = lastChildContainingText(child);
            lastChild.appendChild(child);
         } else {
            parent.insertBefore(note, child.nextSibling);
         }
      } else {
         walk(child, list, contained);
      }
   }
}
function footnoteLinks(containerID,targetID) {
  if (!document.getElementById || 
      !document.getElementsByTagName ||
      !document.createElement) return false;
  if (!document.getElementById(containerID) ||
      !document.getElementById(targetID)) return false;
  var container = document.getElementById(containerID);
  var target    = document.getElementById(targetID);
  var h2        = document.createElement('h2');
  addClass(h2, 'printOnly');
  var h2_txt    = document.createTextNode('Links');
  h2.appendChild(h2_txt);
  var ol   = document.createElement('ol');
  addClass(ol, 'printOnly');
  //var myArr = new Array();
  walk(container, ol, myArr);
  if (ol.getElementsByTagName('li').length) {
    target.appendChild(h2);
    target.appendChild(ol);
  }
  addClass(document.getElementsByTagName('html')[0], 'noted');
  return true;
}

function footnoteLinksInit()
{
	footnoteLinks('mainContent','mainContent');
}

//setup of onload event moved to xom.js.
//window.onload = footnoteLinksInit;

var myArr = new Array();
