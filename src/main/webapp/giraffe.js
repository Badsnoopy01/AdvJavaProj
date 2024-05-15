class Giraffe {
    constructor() {

    }

    login(){
        let username = document.getElementById("loginUsername").value;
        let password = document.getElementById("loginPassword").value;
        console.log(username + " " + password)

        // Send request to API, if succesful navigate to giraffes.html
        window.location = "giraffes.html";
    }

    signup(){
        let username = document.getElementById("signupUsername").value;
        let password = document.getElementById("signupPassword").value;
        console.log(username + " " + password)

        // Send request to API, if succesful navigate to giraffes.html
        window.location = "giraffes.html";
    }

    updateAccount(){
        let username = document.getElementById("updateUsername").value;
        console.log(`New username: ${username}`)
    }

    logout(){
        console.log("Logging out...")
    }
}

const giraffe = new Giraffe();
