.class public Lde/appplant/cordova/plugin/localnotification/TriggerReceiver;
.super Lde/appplant/cordova/plugin/notification/receiver/AbstractTriggerReceiver;
.source "TriggerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/receiver/AbstractTriggerReceiver;-><init>()V

    return-void
.end method

.method private wakeUp(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 89
    .local v1, "pm":Landroid/os/PowerManager;
    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 92
    :cond_0
    const v0, 0x10000006

    .line 95
    .local v0, "level":I
    const-string v3, "LocalNotification"

    invoke-virtual {v1, v0, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 98
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 99
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 101
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 102
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method


# virtual methods
.method public buildNotification(Lde/appplant/cordova/plugin/notification/Builder;Landroid/os/Bundle;)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 2
    .param p1, "builder"    # Lde/appplant/cordova/plugin/notification/Builder;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 116
    const-class v0, Lde/appplant/cordova/plugin/localnotification/ClickReceiver;

    .line 117
    invoke-virtual {p1, v0}, Lde/appplant/cordova/plugin/notification/Builder;->setClickActivity(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;

    move-result-object v0

    const-class v1, Lde/appplant/cordova/plugin/localnotification/ClearReceiver;

    .line 118
    invoke-virtual {v0, v1}, Lde/appplant/cordova/plugin/notification/Builder;->setClearReceiver(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p2}, Lde/appplant/cordova/plugin/notification/Builder;->setExtras(Landroid/os/Bundle;)Lde/appplant/cordova/plugin/notification/Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Builder;->build()Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public onTrigger(Lde/appplant/cordova/plugin/notification/Notification;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "notification"    # Lde/appplant/cordova/plugin/notification/Notification;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const-string v5, "NOTIFICATION_UPDATE"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 57
    .local v2, "isUpdate":Z
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v4

    .line 59
    .local v4, "options":Lde/appplant/cordova/plugin/notification/Options;
    invoke-static {v1}, Lde/appplant/cordova/plugin/notification/Manager;->getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v3

    .line 60
    .local v3, "manager":Lde/appplant/cordova/plugin/notification/Manager;
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getBadgeNumber()I

    move-result v0

    .line 62
    .local v0, "badge":I
    if-lez v0, :cond_0

    .line 63
    invoke-virtual {v3, v0}, Lde/appplant/cordova/plugin/notification/Manager;->setBadge(I)V

    .line 66
    :cond_0
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->shallWakeUp()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    invoke-direct {p0, v1}, Lde/appplant/cordova/plugin/localnotification/TriggerReceiver;->wakeUp(Landroid/content/Context;)V

    .line 70
    :cond_1
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->show()V

    .line 72
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->isInfiniteTrigger()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    new-instance v5, Lde/appplant/cordova/plugin/notification/Request;

    invoke-direct {v5, v4}, Lde/appplant/cordova/plugin/notification/Request;-><init>(Lde/appplant/cordova/plugin/notification/Options;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lde/appplant/cordova/plugin/notification/Manager;->schedule(Lde/appplant/cordova/plugin/notification/Request;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;

    .line 76
    :cond_2
    if-nez v2, :cond_3

    .line 77
    const-string v5, "trigger"

    invoke-static {v5, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    .line 79
    :cond_3
    return-void
.end method
