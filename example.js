const axios = require("axios");

const API_URL = "http://127.0.0.1:3040/v1/chat/completions";

const prompt = "siapa anda?";

const data = {
    model: "gpt-3.5-turbo",
    messages: [{ role: "user", content: prompt }],
    temperature: 0.7,
};

const config = {
    headers: {
        "Content-Type": "application/json",
    },
};

axios
    .post(API_URL, data, config)
    .then((response) => {
        console.log(response.data.choices[0].message.content);
    })
    .catch((error) => {
        console.error(error);
    });
