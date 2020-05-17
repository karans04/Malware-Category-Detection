.class public Lorg/chromium/mojo/system/Core$WaitResult;
.super Ljava/lang/Object;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitResult"
.end annotation


# instance fields
.field private mHandleSignalsState:Lorg/chromium/mojo/system/Core$HandleSignalsState;

.field private mMojoResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandleSignalsState()Lorg/chromium/mojo/system/Core$HandleSignalsState;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/chromium/mojo/system/Core$WaitResult;->mHandleSignalsState:Lorg/chromium/mojo/system/Core$HandleSignalsState;

    return-object v0
.end method

.method public getMojoResult()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lorg/chromium/mojo/system/Core$WaitResult;->mMojoResult:I

    return v0
.end method

.method public setHandleSignalsState(Lorg/chromium/mojo/system/Core$HandleSignalsState;)V
    .locals 0
    .param p1, "handleSignalsState"    # Lorg/chromium/mojo/system/Core$HandleSignalsState;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/chromium/mojo/system/Core$WaitResult;->mHandleSignalsState:Lorg/chromium/mojo/system/Core$HandleSignalsState;

    .line 181
    return-void
.end method

.method public setMojoResult(I)V
    .locals 0
    .param p1, "mojoResult"    # I

    .prologue
    .line 166
    iput p1, p0, Lorg/chromium/mojo/system/Core$WaitResult;->mMojoResult:I

    .line 167
    return-void
.end method
