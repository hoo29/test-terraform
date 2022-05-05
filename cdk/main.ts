import { Construct } from "constructs";
import { App, RemoteBackend, TerraformStack } from "cdktf";
import { AwsProvider } from "@cdktf/provider-aws";

import { Module1 } from "./.gen/modules/module1";

class MyStack extends TerraformStack {
  constructor(scope: Construct, name: string) {
    super(scope, name);

    new AwsProvider(this, "aws", {
      region: "eu-west-1",
    });

    new Module1(this, "mod1", {
      suffix: "cdk",
      value: "please work",
    });
  }
}

const app = new App();
const stack = new MyStack(app, "cdk");
new RemoteBackend(stack, {
  hostname: "ablyrealtime.scalr.io",
  organization: "env-u1aqjv6cn31b070",
  workspaces: {
    name: "cdk",
  },
});
app.synth();
