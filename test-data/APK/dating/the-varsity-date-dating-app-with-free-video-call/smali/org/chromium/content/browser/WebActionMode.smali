.class public Lorg/chromium/content/browser/WebActionMode;
.super Ljava/lang/Object;
.source "WebActionMode.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SHOW_DELAY_MS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "cr.WebActionMode"


# instance fields
.field protected final mActionMode:Landroid/view/ActionMode;

.field private mHidden:Z

.field private mPendingInvalidateContentRect:Z

.field private final mRepeatingHideRunnable:Ljava/lang/Runnable;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/WebActionMode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/ActionMode;Landroid/view/View;)V
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Lorg/chromium/content/browser/WebActionMode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    sget-boolean v0, Lorg/chromium/content/browser/WebActionMode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lorg/chromium/content/browser/WebActionMode;->mActionMode:Landroid/view/ActionMode;

    .line 49
    iput-object p2, p0, Lorg/chromium/content/browser/WebActionMode;->mView:Landroid/view/View;

    .line 50
    new-instance v0, Lorg/chromium/content/browser/WebActionMode$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/WebActionMode$1;-><init>(Lorg/chromium/content/browser/WebActionMode;)V

    iput-object v0, p0, Lorg/chromium/content/browser/WebActionMode;->mRepeatingHideRunnable:Ljava/lang/Runnable;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/WebActionMode;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/WebActionMode;

    .prologue
    .line 20
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionMode;->mHidden:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/WebActionMode;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/WebActionMode;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/chromium/content/browser/WebActionMode;->getDefaultHideDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/WebActionMode;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/WebActionMode;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionMode;->mRepeatingHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/WebActionMode;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/WebActionMode;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionMode;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/WebActionMode;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/WebActionMode;
    .param p1, "x1"    # J

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/WebActionMode;->hideTemporarily(J)V

    return-void
.end method

.method private canHide()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 147
    iget-object v2, p0, Lorg/chromium/content/browser/WebActionMode;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 149
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 147
    goto :goto_0

    :cond_1
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method private getDefaultHideDuration()J
    .locals 2

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 154
    invoke-static {}, Landroid/view/ViewConfiguration;->getDefaultActionModeHideDuration()J

    move-result-wide v0

    .line 156
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x7d0

    goto :goto_0
.end method

.method private hideTemporarily(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 139
    sget-boolean v0, Lorg/chromium/content/browser/WebActionMode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/WebActionMode;->canHide()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionMode;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1, p2}, Landroid/view/ActionMode;->hide(J)V

    .line 143
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionMode;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 67
    return-void
.end method

.method public hide(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lorg/chromium/content/browser/WebActionMode;->canHide()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionMode;->mHidden:Z

    if-eq v0, p1, :cond_0

    .line 121
    iput-boolean p1, p0, Lorg/chromium/content/browser/WebActionMode;->mHidden:Z

    .line 122
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionMode;->mHidden:Z

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionMode;->mRepeatingHideRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 125
    :cond_2
    iput-boolean v2, p0, Lorg/chromium/content/browser/WebActionMode;->mHidden:Z

    .line 126
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionMode;->mView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/content/browser/WebActionMode;->mRepeatingHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/WebActionMode;->hideTemporarily(J)V

    .line 128
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionMode;->mPendingInvalidateContentRect:Z

    if-eqz v0, :cond_0

    .line 129
    iput-boolean v2, p0, Lorg/chromium/content/browser/WebActionMode;->mPendingInvalidateContentRect:Z

    .line 130
    invoke-virtual {p0}, Lorg/chromium/content/browser/WebActionMode;->invalidateContentRect()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-boolean v1, p0, Lorg/chromium/content/browser/WebActionMode;->mHidden:Z

    if-eqz v1, :cond_1

    .line 76
    sget-boolean v1, Lorg/chromium/content/browser/WebActionMode;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/WebActionMode;->canHide()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 77
    :cond_0
    iput-boolean v4, p0, Lorg/chromium/content/browser/WebActionMode;->mHidden:Z

    .line 78
    iget-object v1, p0, Lorg/chromium/content/browser/WebActionMode;->mView:Landroid/view/View;

    iget-object v2, p0, Lorg/chromium/content/browser/WebActionMode;->mRepeatingHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 79
    iput-boolean v4, p0, Lorg/chromium/content/browser/WebActionMode;->mPendingInvalidateContentRect:Z

    .line 84
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/WebActionMode;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "cr.WebActionMode"

    const-string v2, "Ignoring NPE from ActionMode.invalidate() as workaround for L"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public invalidateContentRect()V
    .locals 2

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 95
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionMode;->mHidden:Z

    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/WebActionMode;->mPendingInvalidateContentRect:Z

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/WebActionMode;->mPendingInvalidateContentRect:Z

    .line 99
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionMode;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionMode;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 111
    :cond_0
    return-void
.end method
