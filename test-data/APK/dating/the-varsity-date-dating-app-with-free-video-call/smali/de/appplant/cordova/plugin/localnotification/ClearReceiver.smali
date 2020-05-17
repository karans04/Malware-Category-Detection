.class public Lde/appplant/cordova/plugin/localnotification/ClearReceiver;
.super Lde/appplant/cordova/plugin/notification/receiver/AbstractClearReceiver;
.source "ClearReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/receiver/AbstractClearReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear(Lde/appplant/cordova/plugin/notification/Notification;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "notification"    # Lde/appplant/cordova/plugin/notification/Notification;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const-string v1, "NOTIFICATION_LAST"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    .local v0, "isLast":Z
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->cancel()V

    .line 54
    :goto_0
    const-string v1, "clear"

    invoke-static {v1, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    .line 55
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->clear()V

    goto :goto_0
.end method
