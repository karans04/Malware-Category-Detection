.class Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
.super Ljava/lang/Object;
.source "BindingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/BindingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedConnection"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBoundForBackgroundPeriod:Z

.field private mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

.field private mInForeground:Z

.field private mWasOomProtected:Z

.field final synthetic this$0:Lorg/chromium/content/browser/BindingManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-class v0, Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/BindingManagerImpl;Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0
    .param p2, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 278
    iput-object p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 280
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addModerateBinding()V

    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->dropBindings()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeModerateBinding()V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
    .param p1, "x1"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addConnectionToModerateBindingPool(Lorg/chromium/content/browser/ChildProcessConnection;)V

    return-void
.end method

.method private addConnectionToModerateBindingPool(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 3
    .param p1, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 244
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$500(Lorg/chromium/content/browser/BindingManagerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 245
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$600(Lorg/chromium/content/browser/BindingManagerImpl;)Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    move-result-object v0

    .line 246
    .local v0, "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/chromium/content/browser/ChildProcessConnection;->isStrongBindingBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->addConnection(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    .line 250
    :cond_0
    return-void

    .line 246
    .end local v0    # "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private addModerateBinding()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 261
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->addModerateBinding()V

    goto :goto_0
.end method

.method private addStrongBinding()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 199
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->addStrongBinding()V

    .line 203
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/BindingManagerImpl;->access$500(Lorg/chromium/content/browser/BindingManagerImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 204
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/BindingManagerImpl;->access$600(Lorg/chromium/content/browser/BindingManagerImpl;)Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    move-result-object v1

    .line 205
    .local v1, "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->removeConnection(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    goto :goto_0

    .line 205
    .end local v1    # "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private dropBindings()V
    .locals 2

    .prologue
    .line 271
    sget-boolean v1, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$800(Lorg/chromium/content/browser/BindingManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 273
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_1

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->dropOomBindings()V

    goto :goto_0
.end method

.method private removeInitialBinding()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInitialBindingBound()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->removeInitialBinding()V

    .line 193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeModerateBinding()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isModerateBindingBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->removeModerateBinding()V

    goto :goto_0
.end method

.method private removeStrongBinding(Z)V
    .locals 4
    .param p1, "keepAsModerate"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 214
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isStrongBindingBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    new-instance v1, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;-><init>(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/ChildProcessConnection;Z)V

    .line 230
    .local v1, "doUnbind":Ljava/lang/Runnable;
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/BindingManagerImpl;->access$800(Lorg/chromium/content/browser/BindingManagerImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 233
    :cond_2
    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method


# virtual methods
.method clearConnection()V
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v1}, Lorg/chromium/content/browser/ChildProcessConnection;->isOomProtectedOrWasWhenDied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mWasOomProtected:Z

    .line 331
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$500(Lorg/chromium/content/browser/BindingManagerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 332
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$600(Lorg/chromium/content/browser/BindingManagerImpl;)Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    move-result-object v0

    .line 333
    .local v0, "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->removeConnection(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    .line 335
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 336
    return-void

    .line 333
    .end local v0    # "moderateBindingPool":Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method determinedVisibility()V
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeInitialBinding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/BindingManagerImpl;->access$900(Lorg/chromium/content/browser/BindingManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addConnectionToModerateBindingPool(Lorg/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method

.method isConnectionCleared()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOomProtected()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isOomProtectedOrWasWhenDied()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mWasOomProtected:Z

    goto :goto_0
.end method

.method setBoundForBackgroundPeriod(Z)V
    .locals 1
    .param p1, "nextBound"    # Z

    .prologue
    .line 311
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mBoundForBackgroundPeriod:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 312
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addStrongBinding()V

    .line 317
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mBoundForBackgroundPeriod:Z

    .line 318
    return-void

    .line 313
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mBoundForBackgroundPeriod:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeStrongBinding(Z)V

    goto :goto_0
.end method

.method setInForeground(Z)V
    .locals 1
    .param p1, "nextInForeground"    # Z

    .prologue
    .line 286
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mInForeground:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 287
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addStrongBinding()V

    .line 292
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mInForeground:Z

    .line 293
    return-void

    .line 288
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mInForeground:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 289
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeStrongBinding(Z)V

    goto :goto_0
.end method
