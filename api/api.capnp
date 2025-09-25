interface PluginApi {
    struct SayHiRequest {
        name @0 :Text;
    }

    struct SayHiReply {}

    sayHi @0 (request: SayHiRequest) -> (reply: SayHiReply);
}
