.class Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "InterfaceControlMessagesHelper.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunResponseForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/mojo/bindings/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Callbacks$Callback1",
            "<",
            "Lorg/chromium/mojo/bindings/RunResponseMessageParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/chromium/mojo/bindings/Callbacks$Callback1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/Callbacks$Callback1",
            "<",
            "Lorg/chromium/mojo/bindings/RunResponseMessageParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "callback":Lorg/chromium/mojo/bindings/Callbacks$Callback1;, "Lorg/chromium/mojo/bindings/Callbacks$Callback1<Lorg/chromium/mojo/bindings/RunResponseMessageParams;>;"
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;->mCallback:Lorg/chromium/mojo/bindings/Callbacks$Callback1;

    .line 27
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 2
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 34
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojo/bindings/RunResponseMessageParams;

    move-result-object v0

    .line 36
    .local v0, "response":Lorg/chromium/mojo/bindings/RunResponseMessageParams;
    iget-object v1, p0, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;->mCallback:Lorg/chromium/mojo/bindings/Callbacks$Callback1;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/Callbacks$Callback1;->call(Ljava/lang/Object;)V

    .line 37
    const/4 v1, 0x1

    return v1
.end method
