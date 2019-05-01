var counter = 1;
var limit = 10;
function addInput(divName){
     if (counter == limit)  {
          alert("You have reached the limit of adding " + counter + " inputs");
     }
     else {
          var newdiv = document.createElement('div');
          newdiv.innerHTML = "Author " + (counter + 1) + " <br><input type='text' class='author gen-form-input' name='myInputs[]' placeholder='Author name...' required>";
          document.getElementById(divName).appendChild(newdiv);
          counter++;
     }
}