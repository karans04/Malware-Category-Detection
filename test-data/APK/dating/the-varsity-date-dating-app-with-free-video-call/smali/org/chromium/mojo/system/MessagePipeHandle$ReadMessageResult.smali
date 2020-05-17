.class public Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
.super Ljava/lang/Object;
.source "MessagePipeHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/MessagePipeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadMessageResult"
.end annotation


# instance fields
.field private mHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/mojo/system/UntypedHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlesCount:I

.field private mMessageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/mojo/system/UntypedHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mHandles:Ljava/util/List;

    return-object v0
.end method

.method public getHandlesCount()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mHandlesCount:I

    return v0
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mMessageSize:I

    return v0
.end method

.method public setHandles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/mojo/system/UntypedHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "handles":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/mojo/system/UntypedHandle;>;"
    iput-object p1, p0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mHandles:Ljava/util/List;

    .line 189
    return-void
.end method

.method public setHandlesCount(I)V
    .locals 0
    .param p1, "handlesCount"    # I

    .prologue
    .line 174
    iput p1, p0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mHandlesCount:I

    .line 175
    return-void
.end method

.method public setMessageSize(I)V
    .locals 0
    .param p1, "messageSize"    # I

    .prologue
    .line 160
    iput p1, p0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mMessageSize:I

    .line 161
    return-void
.end method
