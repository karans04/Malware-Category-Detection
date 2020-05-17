.class Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener$1;
.super Ljava/lang/Object;
.source "ScreenOrientationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->startAccurateListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;

.field final synthetic val$self:Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener$1;->this$1:Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;

    iput-object p2, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener$1;->val$self:Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener$1;->val$self:Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener$1;->val$self:Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;

    invoke-static {v0}, Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;->access$100(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationConfigurationListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
