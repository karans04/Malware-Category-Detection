.class public Lorg/chromium/mojo/bindings/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mHandle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private mWithHeader:Lorg/chromium/mojo/bindings/ServiceMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/Message;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List",
            "<+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "handles":Ljava/util/List;, "Ljava/util/List<+Lorg/chromium/mojo/system/Handle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Message;->mWithHeader:Lorg/chromium/mojo/bindings/ServiceMessage;

    .line 41
    sget-boolean v0, Lorg/chromium/mojo/bindings/Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Message;->mBuffer:Ljava/nio/ByteBuffer;

    .line 43
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Message;->mHandle:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Message;->mWithHeader:Lorg/chromium/mojo/bindings/ServiceMessage;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lorg/chromium/mojo/bindings/ServiceMessage;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/ServiceMessage;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Message;->mWithHeader:Lorg/chromium/mojo/bindings/ServiceMessage;

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Message;->mWithHeader:Lorg/chromium/mojo/bindings/ServiceMessage;

    return-object v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Message;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getHandles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Message;->mHandle:Ljava/util/List;

    return-object v0
.end method
