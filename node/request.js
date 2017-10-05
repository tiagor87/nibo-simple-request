const request = require('request');

const token = '<PUT YOUR TOKEN HERE>';
const organization = '<PUT YOUR ORGANIZATION ID HERE>';
const url = 'https://api.nibo.com.br/empresas/v1/Organizations';

let params = {
  Organization: organization
};

request.get(
  {
    url: url,
    headers: {
      apitoken: token
    },
    qs: params
  },
  (error, response, body) => {
    if (error) {
      return console.error(error);
    }
    console.log(body);
  }
);
