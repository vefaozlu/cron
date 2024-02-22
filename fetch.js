const axios = require("axios");
const {exec} = require("child_process");

let config = {
  method: 'get',
  maxBodyLength: Infinity,
  url: 'http://localhost:4000/test',
  headers: { }
};

axios.request(config)
.then((response) => {
  console.log(JSON.stringify(response.data));
})
.catch((error) => {
  console.log(error);
  const data = {
    error: error,
    date: "01-01-2024",
    meta: "meta"
  }

  const json = JSON.stringify(data);
  
  console.log(json);
  exec(`echo '${json}' > /root/Projects/test/log`);
  exec("./delete_cron.sh");
  return;	
});
