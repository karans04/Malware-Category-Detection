.class public Lorg/chromium/mojo/system/Core$WaitManyResult;
.super Ljava/lang/Object;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitManyResult"
.end annotation


# instance fields
.field private mHandleIndex:I

.field private mMojoResult:I

.field private mSignalStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/mojo/system/Core$HandleSignalsState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandleIndex()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lorg/chromium/mojo/system/Core$WaitManyResult;->mHandleIndex:I

    return v0
.end method

.method public getMojoResult()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/chromium/mojo/system/Core$WaitManyResult;->mMojoResult:I

    return v0
.end method

.method public getSignalStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/mojo/system/Core$HandleSignalsState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/mojo/system/Core$WaitManyResult;->mSignalStates:Ljava/util/List;

    return-object v0
.end method

.method public setHandleIndex(I)V
    .locals 0
    .param p1, "handleIndex"    # I

    .prologue
    .line 241
    iput p1, p0, Lorg/chromium/mojo/system/Core$WaitManyResult;->mHandleIndex:I

    .line 242
    return-void
.end method

.method public setMojoResult(I)V
    .locals 0
    .param p1, "mojoResult"    # I

    .prologue
    .line 227
    iput p1, p0, Lorg/chromium/mojo/system/Core$WaitManyResult;->mMojoResult:I

    .line 228
    return-void
.end method

.method public setSignalStates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/mojo/system/Core$HandleSignalsState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "signalStates":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/mojo/system/Core$HandleSignalsState;>;"
    iput-object p1, p0, Lorg/chromium/mojo/system/Core$WaitManyResult;->mSignalStates:Ljava/util/List;

    .line 256
    return-void
.end method
