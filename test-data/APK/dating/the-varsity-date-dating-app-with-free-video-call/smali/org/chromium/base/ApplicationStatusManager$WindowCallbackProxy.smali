.class Lorg/chromium/base/ApplicationStatusManager$WindowCallbackProxy;
.super Ljava/lang/Object;
.source "ApplicationStatusManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ApplicationStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowCallbackProxy"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lorg/chromium/base/ApplicationStatusManager$WindowCallbackProxy;->mCallback:Landroid/view/Window$Callback;

    .line 56
    iput-object p1, p0, Lorg/chromium/base/ApplicationStatusManager$WindowCallbackProxy;->mActivity:Landroid/app/Activity;

    .line 57
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onWindowFocusChanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-object v1, p3, v3

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 63
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/base/ApplicationStatusManager$WindowCallbackProxy;->onWindowFocusChanged(Z)V

    .line 64
    const/4 v1, 0x0

    .line 67
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/ApplicationStatusManager$WindowCallbackProxy;->mCallback:Landroid/view/Window$Callback;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/AbstractMethodError;

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 78
    :cond_1
    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 84
    iget-object v2, p0, Lorg/chromium/base/ApplicationStatusManager$WindowCallbackProxy;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v2, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 86
    invoke-static {}, Lorg/chromium/base/ApplicationStatusManager;->access$000()Lorg/chromium/base/ObserverList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/ApplicationStatusManager$WindowFocusChangedListener;

    .line 87
    .local v1, "listener":Lorg/chromium/base/ApplicationStatusManager$WindowFocusChangedListener;
    iget-object v2, p0, Lorg/chromium/base/ApplicationStatusManager$WindowCallbackProxy;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2, p1}, Lorg/chromium/base/ApplicationStatusManager$WindowFocusChangedListener;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 89
    .end local v1    # "listener":Lorg/chromium/base/ApplicationStatusManager$WindowFocusChangedListener;
    :cond_0
    return-void
.end method
