.class abstract Lorg/chromium/mojo/system/impl/HandleBase;
.super Ljava/lang/Object;
.source "HandleBase.java"

# interfaces
.implements Lorg/chromium/mojo/system/Handle;


# static fields
.field private static final TAG:Ljava/lang/String; = "HandleImpl"


# instance fields
.field protected mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

.field private mMojoHandle:I


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/impl/CoreImpl;
    .param p2, "mojoHandle"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    .line 37
    iput p2, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    .line 38
    return-void
.end method

.method protected constructor <init>(Lorg/chromium/mojo/system/impl/HandleBase;)V
    .locals 3
    .param p1, "other"    # Lorg/chromium/mojo/system/impl/HandleBase;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-object v2, p1, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    iput-object v2, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    .line 46
    move-object v1, p1

    .line 47
    .local v1, "otherAsHandleImpl":Lorg/chromium/mojo/system/impl/HandleBase;
    iget v0, v1, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    .line 48
    .local v0, "mojoHandle":I
    const/4 v2, 0x0

    iput v2, v1, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    .line 49
    iput v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    .line 50
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 57
    iget v1, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    if-eqz v1, :cond_0

    .line 59
    iget v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    .line 60
    .local v0, "handle":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    .line 61
    iget-object v1, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->close(I)V

    .line 63
    .end local v0    # "handle":I
    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/chromium/mojo/system/impl/HandleBase;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "HandleImpl"

    const-string v1, "Handle was not closed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    iget v1, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl;->closeWithResult(I)I

    .line 138
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 139
    return-void
.end method

.method public getCore()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    return-object v0
.end method

.method getMojoHandle()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    return v0
.end method

.method invalidateHandle()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    .line 121
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseNativeHandle()I
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    .line 103
    .local v0, "result":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mMojoHandle:I

    .line 104
    return v0
.end method

.method public toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method

.method public wait(Lorg/chromium/mojo/system/Core$HandleSignals;J)Lorg/chromium/mojo/system/Core$WaitResult;
    .locals 2
    .param p1, "signals"    # Lorg/chromium/mojo/system/Core$HandleSignals;
    .param p2, "deadline"    # J

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/chromium/mojo/system/impl/CoreImpl;->wait(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;J)Lorg/chromium/mojo/system/Core$WaitResult;

    move-result-object v0

    return-object v0
.end method
