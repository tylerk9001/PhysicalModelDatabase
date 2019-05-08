var keywordCounter = 1;
var keywordLimit = 10;
function aaddInput(divName){
     if (keywordCounter == keywordLimit)  {
          alert("You have reached the limit of adding " + keywordCounter + " inputs");
     }
     else {
          var newdiv = document.createElement('div');
          newdiv.innerHTML = "Keyword " + (keywordCounter + 1) + " <br><input type='text' class='keywords gen-form-input' name='keywords[]' placeholder='Keyword...' required>";
          document.getElementById(divName).appendChild(newdiv);
          keywordCounter++;
     }
}