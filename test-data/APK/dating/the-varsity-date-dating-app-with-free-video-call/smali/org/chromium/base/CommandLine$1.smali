.class final Lorg/chromium/base/CommandLine$1;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/CommandLine;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lorg/chromium/base/CommandLine;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/CommandLine$ResetListener;

    .local v1, "listener":Lorg/chromium/base/CommandLine$ResetListener;
    invoke-interface {v1}, Lorg/chromium/base/CommandLine$ResetListener;->onCommandLineReset()V

    goto :goto_0

    .line 153
    .end local v1    # "listener":Lorg/chromium/base/CommandLine$ResetListener;
    :cond_0
    return-void
.end method
