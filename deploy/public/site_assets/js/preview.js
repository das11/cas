function preview_image(event) 
{
      console.log("Asd");
      var reader = new FileReader();
      reader.onload = function()
      {
      var output = document.getElementById('output_image');
      output.src = reader.result;
      }
      reader.readAsDataURL(event.target.files[0]);
}