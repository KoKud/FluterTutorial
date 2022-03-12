const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

exports.myFunction = functions.firestore
    .document("chat/{message}")
    .onCreate((snapshot, context) => {
    //   console.log(snapshot.data());
      admin.messaging().sendToTopic("chat", {notification: {
        title: snapshot.data().username,
        body: snapshot.data().text,
        clickAction: "FLUTTER_NOTIFICATION_CLICK",
      }});
      return;
    });

// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });
