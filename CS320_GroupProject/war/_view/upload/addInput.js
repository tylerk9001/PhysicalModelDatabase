var authorCounter = 1;
var authorLimit = 10;
function addInput(divName){
     if (authorCounter == authorLimit)  {
          alert("You have reached the limit of adding " + authorCounter + " inputs");
     }
     else {
          var newdiv = document.createElement('div');
          newdiv.innerHTML = "Author " + (authorCounter + 1) + " <br><input type='text' class='author gen-form-input' name='authors[]' placeholder='Author name...' >";
          document.getElementById(divName).appendChild(newdiv);
          authorCounter++;
     }
}