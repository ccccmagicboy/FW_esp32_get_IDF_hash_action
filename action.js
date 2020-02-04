const core = require('@actions/core');

function run() {
  try {
    // This is just a thin wrapper around bash
    
    const exec = require('child_process').exec, child;
    const testscript = exec('sh script.sh');

    testscript.stdout.on('data', function(data){
        console.log(data);
        // sendBackInfo();
    });

    testscript.stderr.on('data', function(data){
        console.log(data);
        // triggerErrorStuff();
    });    

    testscript.on('close', (code) => {
      console.log(`testscript process exited with code ${code}`);
      process.exit(code);
    });
  }
  catch (error) {
    core.setFailed(error.message);
  }
}

run()


