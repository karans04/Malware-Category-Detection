.class Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/RouterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponderThunk"
.end annotation


# instance fields
.field private mAcceptWasInvoked:Z

.field final synthetic this$0:Lorg/chromium/mojo/bindings/RouterImpl;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/bindings/RouterImpl;)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->mAcceptWasInvoked:Z

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 1
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->mAcceptWasInvoked:Z

    .line 60
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/mojo/bindings/RouterImpl;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/RouterImpl;->close()V

    .line 69
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->mAcceptWasInvoked:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-static {v0}, Lorg/chromium/mojo/bindings/RouterImpl;->access$200(Lorg/chromium/mojo/bindings/RouterImpl;)V

    .line 79
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 80
    return-void
.end method
