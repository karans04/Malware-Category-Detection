.class Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;
.super Ljava/lang/Object;
.source "BindingManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeStrongBinding(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

.field final synthetic val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

.field final synthetic val$keepAsModerate:Z


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/ChildProcessConnection;Z)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->this$1:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    iput-object p2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    iput-boolean p3, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$keepAsModerate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isStrongBindingBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->removeStrongBinding()V

    .line 223
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$keepAsModerate:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->this$1:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$700(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/ChildProcessConnection;)V

    .line 227
    :cond_0
    return-void
.end method
