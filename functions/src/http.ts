import * as functions from 'firebase-functions';
//run `npm serve` to debug

import * as admin from 'firebase-admin';
admin.initializeApp(); // only needs to be called once

import * as express from 'express';

import * as cors from 'cors';

export const basicHTTP = functions.https.onRequest((request, response) => {
    const name = request.query.name;
    if (!name){
        response.status(400).send('You must supply a name');
    }
    response.send(`hello ${name}`);
});

// Custom Middleware
const auth = (request:any, response:any, next:any) => {
    if (!request.header.authorization) {
      response.status(400).send('unauthorized');
    }
  
    next();
  };
    
// Multi Route ExpressJS HTTP Function
const app = express();
app.use(cors({ origin: true }));
app.use(auth);

// by default it uses CORS Cross Origin Resource Sharing
// meaning if origin is different than hosting you will get an error

//can use any http verbs here (post, put, etc.)
app.get('/cat', (request, response)=> {
    response.send('CAT');
});

app.get('/dog', (request, response)=> {
    response.send('DOG');
});

export const api = functions.https.onRequest(app);

