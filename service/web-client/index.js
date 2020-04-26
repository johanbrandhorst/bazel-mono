/*
import * as messages from '../../gen/node/myorg/users/v1/users_pb';
import * as services from '../../gen/node/myorg/users/v1/users_grpc_pb';

var grpc = require('grpc');

function main() {
    var client = new services.UserServiceClient('localhost:10000',
        grpc.credentials.createInsecure());
    var request = new messages.ListUsersRequest();
    var resp = client.listUsers(request);
    resp.on("data", function (user: messages.User) {
        console.log("Role: ", user.getRole());
        console.log("Id: ", user.getId());
        console.log("CreateTime: ", user.getCreateTime().toDate());
    });
}
*/

//export const a = 'hello';
alert(1);
