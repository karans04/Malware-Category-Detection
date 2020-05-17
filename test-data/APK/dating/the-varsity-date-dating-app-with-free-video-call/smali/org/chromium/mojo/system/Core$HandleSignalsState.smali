.class public Lorg/chromium/mojo/system/Core$HandleSignalsState;
.super Ljava/lang/Object;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandleSignalsState"
.end annotation


# instance fields
.field private final mSatisfiableSignals:Lorg/chromium/mojo/system/Core$HandleSignals;

.field private final mSatisfiedSignals:Lorg/chromium/mojo/system/Core$HandleSignals;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core$HandleSignals;Lorg/chromium/mojo/system/Core$HandleSignals;)V
    .locals 0
    .param p1, "satisfiedSignals"    # Lorg/chromium/mojo/system/Core$HandleSignals;
    .param p2, "satisfiableSignals"    # Lorg/chromium/mojo/system/Core$HandleSignals;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/chromium/mojo/system/Core$HandleSignalsState;->mSatisfiedSignals:Lorg/chromium/mojo/system/Core$HandleSignals;

    .line 113
    iput-object p2, p0, Lorg/chromium/mojo/system/Core$HandleSignalsState;->mSatisfiableSignals:Lorg/chromium/mojo/system/Core$HandleSignals;

    .line 114
    return-void
.end method


# virtual methods
.method public getSatisfiableSignals()Lorg/chromium/mojo/system/Core$HandleSignals;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/mojo/system/Core$HandleSignalsState;->mSatisfiableSignals:Lorg/chromium/mojo/system/Core$HandleSignals;

    return-object v0
.end method

.method public getSatisfiedSignals()Lorg/chromium/mojo/system/Core$HandleSignals;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/mojo/system/Core$HandleSignalsState;->mSatisfiedSignals:Lorg/chromium/mojo/system/Core$HandleSignals;

    return-object v0
.end method
