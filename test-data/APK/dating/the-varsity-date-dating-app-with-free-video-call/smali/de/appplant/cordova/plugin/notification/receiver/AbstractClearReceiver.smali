.class public abstract Lde/appplant/cordova/plugin/notification/receiver/AbstractClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractClearReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onClear(Lde/appplant/cordova/plugin/notification/Notification;Landroid/os/Bundle;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v3, "NOTIFICATION_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 52
    .local v2, "toastId":I
    invoke-static {p1}, Lde/appplant/cordova/plugin/notification/Manager;->getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v1

    .line 54
    .local v1, "toast":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0, v1, v0}, Lde/appplant/cordova/plugin/notification/receiver/AbstractClearReceiver;->onClear(Lde/appplant/cordova/plugin/notification/Notification;Landroid/os/Bundle;)V

    goto :goto_0
.end method
