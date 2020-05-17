.class public abstract Lde/appplant/cordova/plugin/notification/receiver/AbstractTriggerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractTriggerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract buildNotification(Lde/appplant/cordova/plugin/notification/Builder;Landroid/os/Bundle;)Lde/appplant/cordova/plugin/notification/Notification;
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v5, "NOTIFICATION_ID"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 54
    .local v4, "toastId":I
    invoke-static {p1}, Lde/appplant/cordova/plugin/notification/Manager;->getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lde/appplant/cordova/plugin/notification/Manager;->getOptions(I)Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v2

    .line 56
    .local v2, "options":Lde/appplant/cordova/plugin/notification/Options;
    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Lde/appplant/cordova/plugin/notification/Builder;

    invoke-direct {v0, v2}, Lde/appplant/cordova/plugin/notification/Builder;-><init>(Lde/appplant/cordova/plugin/notification/Options;)V

    .line 60
    .local v0, "builder":Lde/appplant/cordova/plugin/notification/Builder;
    invoke-virtual {p0, v0, v1}, Lde/appplant/cordova/plugin/notification/receiver/AbstractTriggerReceiver;->buildNotification(Lde/appplant/cordova/plugin/notification/Builder;Landroid/os/Bundle;)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v3

    .line 62
    .local v3, "toast":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p0, v3, v1}, Lde/appplant/cordova/plugin/notification/receiver/AbstractTriggerReceiver;->onTrigger(Lde/appplant/cordova/plugin/notification/Notification;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public abstract onTrigger(Lde/appplant/cordova/plugin/notification/Notification;Landroid/os/Bundle;)V
.end method
