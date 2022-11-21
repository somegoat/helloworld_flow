import HelloWorld from "../contracts/HelloWorld.cdc"

transaction {

  prepare(acct: AuthAccount) {}

  execute {
    HelloWorld.set_greeting(greet: "konnichiwa")
    log(HelloWorld.hello())
  }
}