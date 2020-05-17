.class Lorg/crosswalk/engine/XWalkCordovaView$1;
.super Lorg/apache/cordova/CordovaPlugin;
.source "XWalkCordovaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkCordovaView;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/crosswalk/engine/XWalkCordovaView;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkCordovaView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/crosswalk/engine/XWalkCordovaView;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkCordovaView$1;->this$0:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    const-string v0, "XWalkCordovaView"

    const-string v1, "Route onActivityResult() to XWalkView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaView$1;->this$0:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/crosswalk/engine/XWalkCordovaView;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    return-void
.end method
