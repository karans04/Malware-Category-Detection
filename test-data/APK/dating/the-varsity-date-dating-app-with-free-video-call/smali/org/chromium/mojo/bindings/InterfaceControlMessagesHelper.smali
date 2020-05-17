.class public Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;
.super Ljava/lang/Object;
.source "InterfaceControlMessagesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 6
    .param p0, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "message"    # Lorg/chromium/mojo/bindings/ServiceMessage;
    .param p3, "responder"    # Lorg/chromium/mojo/bindings/MessageReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(",
            "Lorg/chromium/mojo/system/Core;",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TI;TP;>;",
            "Lorg/chromium/mojo/bindings/ServiceMessage;",
            "Lorg/chromium/mojo/bindings/MessageReceiver;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    new-instance v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;

    invoke-direct {v0}, Lorg/chromium/mojo/bindings/RunResponseMessageParams;-><init>()V

    .line 68
    .local v0, "response":Lorg/chromium/mojo/bindings/RunResponseMessageParams;
    const/16 v1, 0x10

    iput v1, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved0:I

    .line 69
    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved1:I

    .line 70
    new-instance v1, Lorg/chromium/mojo/bindings/QueryVersionResult;

    invoke-direct {v1}, Lorg/chromium/mojo/bindings/QueryVersionResult;-><init>()V

    iput-object v1, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

    .line 71
    iget-object v1, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$Manager;->getVersion()I

    move-result v2

    iput v2, v1, Lorg/chromium/mojo/bindings/QueryVersionResult;->version:I

    .line 73
    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v1

    return v1
.end method

.method public static handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z
    .locals 4
    .param p1, "message"    # Lorg/chromium/mojo/bindings/ServiceMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TI;TP;>;",
            "Lorg/chromium/mojo/bindings/ServiceMessage;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    .line 86
    .local v0, "payload":Lorg/chromium/mojo/bindings/Message;
    invoke-static {v0}, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;

    move-result-object v1

    .line 87
    .local v1, "query":Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;
    iget-object v2, v1, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->requireVersion:Lorg/chromium/mojo/bindings/RequireVersion;

    iget v2, v2, Lorg/chromium/mojo/bindings/RequireVersion;->version:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Manager;->getVersion()I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static sendRunMessage(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;Lorg/chromium/mojo/bindings/RunMessageParams;Lorg/chromium/mojo/bindings/Callbacks$Callback1;)V
    .locals 6
    .param p0, "core"    # Lorg/chromium/mojo/system/Core;
    .param p1, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;
    .param p2, "params"    # Lorg/chromium/mojo/bindings/RunMessageParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            "Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;",
            "Lorg/chromium/mojo/bindings/RunMessageParams;",
            "Lorg/chromium/mojo/bindings/Callbacks$Callback1",
            "<",
            "Lorg/chromium/mojo/bindings/RunResponseMessageParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "callback":Lorg/chromium/mojo/bindings/Callbacks$Callback1;, "Lorg/chromium/mojo/bindings/Callbacks$Callback1<Lorg/chromium/mojo/bindings/RunResponseMessageParams;>;"
    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {p2, p0, v1}, Lorg/chromium/mojo/bindings/RunMessageParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 49
    .local v0, "message":Lorg/chromium/mojo/bindings/Message;
    new-instance v1, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;

    invoke-direct {v1, p3}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;-><init>(Lorg/chromium/mojo/bindings/Callbacks$Callback1;)V

    invoke-interface {p1, v0, v1}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 50
    return-void
.end method

.method public static sendRunOrClosePipeMessage(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;)V
    .locals 3
    .param p0, "core"    # Lorg/chromium/mojo/system/Core;
    .param p1, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;
    .param p2, "params"    # Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;

    .prologue
    .line 57
    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {p2, p0, v1}, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 59
    .local v0, "message":Lorg/chromium/mojo/bindings/Message;
    invoke-interface {p1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 60
    return-void
.end method
