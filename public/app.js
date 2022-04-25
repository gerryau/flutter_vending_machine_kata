document.addEventListener('DOMContentLoaded', function() {

    let app = firebase.app();

    fetch('http://localhost:5001/sample-flutter-data-model/us-central1/api/cat').then(console.log);
});
