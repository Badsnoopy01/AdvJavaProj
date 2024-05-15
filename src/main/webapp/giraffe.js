class Giraffe {
    constructor() {

    }

    login(){
        let username = document.getElementById("loginUsername").value;
        let password = document.getElementById("loginPassword").value;
        console.log(username + " " + password)

        // Send request to API, if succesful navigate to giraffes.html
        window.location = "giraffes.jsp";
    }

    signup(){
        let username = document.getElementById("signupUsername").value;
        let password = document.getElementById("signupPassword").value;
        console.log(username + " " + password)

        // Send request to API, if succesful navigate to giraffes.html
        window.location = "giraffes.jsp";
    }

    updateAccount(){
        let password = document.getElementById("updatePassword").value;
        console.log(`New password: ${password}`)
    }

    logout(){
        console.log("Logging out...")
    }
}

const giraffe = new Giraffe();
