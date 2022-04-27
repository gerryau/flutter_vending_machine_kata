import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';

const db = admin.firestore();

// imagine a mobile game and we are trying to keep track of a users played value
// example of data aggregation
export const gameCount = functions.firestore
    .document('games/{gameId}')
    .onCreate(async (snapshot, context) => {
        const data = snapshot.data();
        
        const userRef = db.doc(`users/${data.uid}`);

        const userSnap = await userRef.get();
        const userData = userSnap.data();

        return userRef.update({
            gameCount: userData?.gameCount + 1
        });
    });


export const userTrend = functions.firestore
    .document('games/{gameId}')
    .onUpdate((snapshot, context) => {
        const before = snapshot.before.data(); //state before change occured
        const after = snapshot.after.data();
        
        let trend;

        if (after.score >= before.score){
            trend = 'Your score is improving!';
        } else {
            trend = 'Your score is on the decline.';
        }

        const userRef = db.doc(`users/${after.uid}`);

        return userRef.update({
            trend
        });
    });
