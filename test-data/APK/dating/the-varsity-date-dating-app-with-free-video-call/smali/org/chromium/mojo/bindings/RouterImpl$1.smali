.class Lorg/chromium/mojo/bindings/RouterImpl$1;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/mojo/bindings/RouterImpl;->closeOnHandleThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/mojo/bindings/RouterImpl;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/bindings/RouterImpl;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lorg/chromium/mojo/bindings/RouterImpl$1;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$1;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/RouterImpl;->close()V

    .line 263
    return-void
.end method
