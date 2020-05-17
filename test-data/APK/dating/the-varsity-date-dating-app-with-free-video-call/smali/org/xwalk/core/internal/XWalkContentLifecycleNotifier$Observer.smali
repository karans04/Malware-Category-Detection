.class public interface abstract Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;
.super Ljava/lang/Object;
.source "XWalkContentLifecycleNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onFirstXWalkViewCreated()V
.end method

.method public abstract onLastXWalkViewDestroyed()V
.end method
