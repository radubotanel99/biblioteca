const users = {
  phoneNumber : "40760988031"
}

function sendSMSMessagesToUsersWithVonage(users) {
    const { Vonage } = require('@vonage/server-sdk')
    const client = new Vonage({
        apiKey: "27945288",
        apiSecret: "0ZTzkzB6FWjbEk95"
    })

    const from = "Vonage APIs"
    const to = users.phoneNumber
    const text = 'Hello (de la Radu)';

    async function sendSMS() {
        await client.sms.send({
                to,
                from,
                text
            })
            .then(resp => {
                console.log('Message sent successfully');
                console.log(resp);
            })
            .catch(err => {
                console.log('There was an error sending the messages.');
                console.error(err);
            });
    }

    sendSMS();
}

sendSMSMessagesToUsersWithVonage(users, "Hello World");