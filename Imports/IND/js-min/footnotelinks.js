function trim(c){if(c)c=c.replace(/^\s*|\s*$/,'');return c;}function hasClass(obj,c){if(!obj||!c)return false;c=trim(c);var oldC=trim(obj.className);if(c&&oldC&&oldC.match('\\b'+c+'\\b'))return true;else
return false;}function addClass(obj,c){if(!obj||!c||hasClass(obj,c))return;c=trim(c);var oldC=trim(obj.className);if(!c)return;obj.className=(oldC)?oldC+' '+c:c;return;}function lastChildContainingText(obj){var testChild=obj.lastChild;var contentCntnr=['p','li','dd'];while(testChild.nodeType!=1){testChild=testChild.previousSibling;}var tag=testChild.tagName.toLowerCase();var tagInArr=inArray.apply(contentCntnr,[tag]);if(!tagInArr&&tagInArr!==0){testChild=lastChildContainingText(testChild);}return testChild;}function walk(parent,list,contained){if(!document.getElementById||!document.getElementsByTagName||!document.createElement)return false;if(!parent||!list||!contained)return false;var num=0;for(var j in contained){num=Math.max(num,contained[j]);}for(var i=0;i<parent.childNodes.length;i++){if(parent.childNodes[i].nodeType!=1)continue;var child=parent.childNodes[i];if(hasClass(child,'ignore')||hasClass(child,'paging'))continue;else if((child.getAttribute('href')&&child.nodeName=='A')||child.getAttribute('cite')){var thisLink=(child.getAttribute('href')?child.href:child.cite).replace(/^mailto:\s*/,"");if(thisLink==window.location+'#'||thisLink.match('^javascript:')||thisLink==child.innerHTML||child.innerHTML.toLowerCase().indexOf('<img')>-1)continue;var note=document.createElement('sup');addClass(note,'printOnly');var note_txt;if(contained[thisLink]){note_txt=document.createTextNode(myArr[thisLink]);}else{var li=document.createElement('li');var li_txt=document.createTextNode(thisLink);li.appendChild(li_txt);list.appendChild(li);num++;contained[thisLink]=num;note_txt=document.createTextNode(num);}note.appendChild(note_txt);if(child.tagName.toLowerCase()=='blockquote'){var lastChild=lastChildContainingText(child);lastChild.appendChild(child);}else{parent.insertBefore(note,child.nextSibling);}}else{walk(child,list,contained);}}}function footnoteLinks(containerID,targetID){if(!document.getElementById||!document.getElementsByTagName||!document.createElement)return false;if(!document.getElementById(containerID)||!document.getElementById(targetID))return false;var container=document.getElementById(containerID);var target=document.getElementById(targetID);var h2=document.createElement('h2');addClass(h2,'printOnly');var h2_txt=document.createTextNode('Links');h2.appendChild(h2_txt);var ol=document.createElement('ol');addClass(ol,'printOnly');walk(container,ol,myArr);if(ol.getElementsByTagName('li').length){target.appendChild(h2);target.appendChild(ol);}addClass(document.getElementsByTagName('html')[0],'noted');return true;}function footnoteLinksInit(){footnoteLinks('mainContent','mainContent');}var myArr=new Array();