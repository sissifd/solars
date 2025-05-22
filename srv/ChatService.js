const cds = require("@sap/cds");

let chatFunc = null;

module.exports = class ChatService extends cds.ApplicationService {
    init() {
        return super.init();
    }

    async question(question) {
        console.log("Question", question);

        const responseContent = "Im a bot. I am here to help you with your questions. Please ask me anything";

        console.log(responseContent);
        
        return { abswer: responseContent };
    }
}