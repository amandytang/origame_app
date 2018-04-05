$(document).ready( function () {

if (window.location.pathname == '/new') {

  Dropzone.autoDiscover = false;

    var myDropzone = new Dropzone(document.getElementById('dropzone-area'), {
      clickable: '#dropzone-area',
    	url: 'https://api.cloudinary.com/v1_1/origame/image/upload'
    });

    myDropzone.on('sending', function (file, xhr, formData) {
    	formData.append('api_key', 413945928742392);
    	formData.append('timestamp', Date.now() / 1000 | 0);
    	formData.append('upload_preset', 'cz22bnos');
    });

    myDropzone.on('success', function (file, response) {
      $('#image_link').val(response.secure_url);
    	console.log('Success! Cloudinary public ID is', response.public_id);
    });
  }


})
