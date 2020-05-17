.class public Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;
.super Ljava/lang/Object;
.source "DelegatingConnectionErrorHandler.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/ConnectionErrorHandler;


# instance fields
.field private final mHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/chromium/mojo/bindings/ConnectionErrorHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;->mHandlers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addConnectionErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;->mHandlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 3
    .param p1, "e"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 31
    iget-object v2, p0, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;->mHandlers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .line 32
    .local v0, "handler":Lorg/chromium/mojo/bindings/ConnectionErrorHandler;
    invoke-interface {v0, p1}, Lorg/chromium/mojo/bindings/ConnectionErrorHandler;->onConnectionError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0

    .line 34
    .end local v0    # "handler":Lorg/chromium/mojo/bindings/ConnectionErrorHandler;
    :cond_0
    return-void
.end method

.method public removeConnectionErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;->mHandlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
