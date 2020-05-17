.class public Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;
.super Ljava/lang/Object;
.source "Interface.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;
.implements Lorg/chromium/mojo/bindings/ConnectionErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HandlerImpl"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

.field private mVersion:I


# direct methods
.method protected constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    .line 116
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mCore:Lorg/chromium/mojo/system/Core;

    .line 117
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    .prologue
    .line 87
    iget v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    return v0
.end method

.method static synthetic access$002(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->close()V

    .line 162
    return-void
.end method

.method public getCore()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mCore:Lorg/chromium/mojo/system/Core;

    return-object v0
.end method

.method public getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    return v0
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 1
    .param p1, "e"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    invoke-interface {v0, p1}, Lorg/chromium/mojo/bindings/ConnectionErrorHandler;->onConnectionError(Lorg/chromium/mojo/system/MojoException;)V

    .line 154
    :cond_0
    return-void
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    check-cast v0, Lorg/chromium/mojo/bindings/HandleOwner;

    .line 172
    .local v0, "handleOwner":Lorg/chromium/mojo/bindings/HandleOwner;, "Lorg/chromium/mojo/bindings/HandleOwner<Lorg/chromium/mojo/system/MessagePipeHandle;>;"
    invoke-interface {v0}, Lorg/chromium/mojo/bindings/HandleOwner;->passHandle()Lorg/chromium/mojo/system/Handle;

    move-result-object v1

    check-cast v1, Lorg/chromium/mojo/system/MessagePipeHandle;

    return-object v1
.end method

.method public queryVersion(Lorg/chromium/mojo/bindings/Callbacks$Callback1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/Callbacks$Callback1",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "callback":Lorg/chromium/mojo/bindings/Callbacks$Callback1;, "Lorg/chromium/mojo/bindings/Callbacks$Callback1<Ljava/lang/Integer;>;"
    new-instance v0, Lorg/chromium/mojo/bindings/RunMessageParams;

    invoke-direct {v0}, Lorg/chromium/mojo/bindings/RunMessageParams;-><init>()V

    .line 189
    .local v0, "message":Lorg/chromium/mojo/bindings/RunMessageParams;
    const/16 v1, 0x10

    iput v1, v0, Lorg/chromium/mojo/bindings/RunMessageParams;->reserved0:I

    .line 190
    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/mojo/bindings/RunMessageParams;->reserved1:I

    .line 191
    new-instance v1, Lorg/chromium/mojo/bindings/QueryVersion;

    invoke-direct {v1}, Lorg/chromium/mojo/bindings/QueryVersion;-><init>()V

    iput-object v1, v0, Lorg/chromium/mojo/bindings/RunMessageParams;->queryVersion:Lorg/chromium/mojo/bindings/QueryVersion;

    .line 193
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    new-instance v3, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;

    invoke-direct {v3, p0, p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;-><init>(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;Lorg/chromium/mojo/bindings/Callbacks$Callback1;)V

    invoke-static {v1, v2, v0, v3}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->sendRunMessage(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;Lorg/chromium/mojo/bindings/RunMessageParams;Lorg/chromium/mojo/bindings/Callbacks$Callback1;)V

    .line 201
    return-void
.end method

.method public requireVersion(I)V
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 208
    iget v1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    if-lt v1, p1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 211
    :cond_0
    iput p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    .line 212
    new-instance v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;

    invoke-direct {v0}, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;-><init>()V

    .line 213
    .local v0, "message":Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;
    const/16 v1, 0x10

    iput v1, v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved0:I

    .line 214
    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved1:I

    .line 215
    new-instance v1, Lorg/chromium/mojo/bindings/RequireVersion;

    invoke-direct {v1}, Lorg/chromium/mojo/bindings/RequireVersion;-><init>()V

    iput-object v1, v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->requireVersion:Lorg/chromium/mojo/bindings/RequireVersion;

    .line 216
    iget-object v1, v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->requireVersion:Lorg/chromium/mojo/bindings/RequireVersion;

    iput p1, v1, Lorg/chromium/mojo/bindings/RequireVersion;->version:I

    .line 217
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-static {v1, v2, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->sendRunOrClosePipeMessage(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;)V

    goto :goto_0
.end method

.method public setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .line 144
    return-void
.end method

.method setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 121
    iput p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    .line 122
    return-void
.end method
