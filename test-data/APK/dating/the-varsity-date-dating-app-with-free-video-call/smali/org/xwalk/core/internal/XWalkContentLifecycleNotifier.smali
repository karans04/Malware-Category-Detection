.class public Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;
.super Ljava/lang/Object;
.source "XWalkContentLifecycleNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final sLifecycleObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNumXWalkViews:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-class v0, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->$assertionsDisabled:Z

    .line 30
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sLifecycleObservers:Lorg/chromium/base/ObserverList;

    .line 32
    sput v1, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sNumXWalkViews:I

    return-void

    :cond_0
    move v0, v1

    .line 19
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addObserver(Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;)V
    .locals 1
    .param p0, "observer"    # Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;

    .prologue
    .line 37
    sget-object v0, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sLifecycleObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public static hasXWalkViewInstances()Z
    .locals 1

    .prologue
    .line 45
    sget v0, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sNumXWalkViews:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static onXWalkViewCreated()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 52
    sget-boolean v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    sget v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sNumXWalkViews:I

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 53
    :cond_0
    sget v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sNumXWalkViews:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sNumXWalkViews:I

    .line 54
    sget v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sNumXWalkViews:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 56
    sget-object v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sLifecycleObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;

    .line 57
    .local v1, "observer":Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;
    invoke-interface {v1}, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;->onFirstXWalkViewCreated()V

    goto :goto_0

    .line 60
    .end local v1    # "observer":Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;
    :cond_1
    return-void
.end method

.method private static onXWalkViewDestroyed()V
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 66
    sget-boolean v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    sget v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sNumXWalkViews:I

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 67
    :cond_0
    sget v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sNumXWalkViews:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sNumXWalkViews:I

    .line 68
    sget v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sNumXWalkViews:I

    if-nez v2, :cond_1

    .line 70
    sget-object v2, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sLifecycleObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;

    .line 71
    .local v1, "observer":Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;
    invoke-interface {v1}, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;->onLastXWalkViewDestroyed()V

    goto :goto_0

    .line 74
    .end local v1    # "observer":Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;
    :cond_1
    return-void
.end method

.method public static removeObserver(Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;)V
    .locals 1
    .param p0, "observer"    # Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier$Observer;

    .prologue
    .line 41
    sget-object v0, Lorg/xwalk/core/internal/XWalkContentLifecycleNotifier;->sLifecycleObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method
