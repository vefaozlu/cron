const {exec} = require("child_process");

async function index() {
	exec("./new_cron.sh");
	return 0;
}

index();
