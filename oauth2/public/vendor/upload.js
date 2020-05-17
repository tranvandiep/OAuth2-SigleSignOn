function uploadFileCloudinary(e, url_upload, target_id) {
  file = e.target.files[0];
  var arr = url_upload.split('#')
  var url = arr[0];//url_upload;//`https://api.cloudinary.com/v1_1/gokisoft-com/upload`;
  var xhr = new XMLHttpRequest();
  var fd = new FormData();
  xhr.open('POST', url, true);
  xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');

  xhr.onreadystatechange = function(e) {
    if (xhr.readyState == 4 && xhr.status == 200) {
      // File uploaded successfully
      var response = JSON.parse(xhr.responseText);
      // https://res.cloudinary.com/cloudName/image/upload/v1483481128/public_id.jpg
      var url = response.secure_url;

      document.getElementById(target_id).value = url;
      // document.getElementById(target_id).onchange();
      $("#"+target_id).trigger('change')
    }
  };

  if(arr.length >= 2) {
    fd.append('upload_preset', arr[1]);
  } else {
    fd.append('upload_preset', 'pedvptmj');
  }
  fd.append('tags', 'browser_upload'); // Optional - add tag for image admin in Cloudinary
  fd.append('file', file);
  xhr.send(fd);
}

function uploadURLCloudinary(file, url_upload, callback) {
  if(url_upload == null || url_upload == '') {
    url_upload = 'https://api.cloudinary.com/v1_1/wegoup/upload#e0b6fjvh'
  }

  var arr = url_upload.split('#')
  var url = arr[0];//url_upload;//`https://api.cloudinary.com/v1_1/gokisoft-com/upload`;
  var xhr = new XMLHttpRequest();
  var fd = new FormData();
  xhr.open('POST', url, true);
  xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');

  xhr.onreadystatechange = function(e) {
    if (xhr.readyState == 4 && xhr.status == 200) {
      // File uploaded successfully
      var response = JSON.parse(xhr.responseText);
      // https://res.cloudinary.com/cloudName/image/upload/v1483481128/public_id.jpg
      var url = response.secure_url;

      callback(url)
    }
  };

  fd.append('upload_preset', arr[1]);
  fd.append('tags', 'browser_upload'); // Optional - add tag for image admin in Cloudinary
  fd.append('file', file);
  xhr.send(fd);
}