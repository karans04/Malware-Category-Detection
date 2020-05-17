.class public Lde/appplant/cordova/plugin/localnotification/ClickReceiver;
.super Lde/appplant/cordova/plugin/notification/receiver/AbstractClickReceiver;
.source "ClickReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/receiver/AbstractClickReceiver;-><init>()V

    return-void
.end method

.method private isLast()Z
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/ClickReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NOTIFICATION_LAST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private launchAppIf()V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/ClickReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "NOTIFICATION_LAUNCH"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    .local v0, "doLaunch":Z
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/ClickReceiver;->launchApp()V

    goto :goto_0
.end method

.method private setTextInput(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 76
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/ClickReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 78
    .local v1, "input":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    :try_start_0
    const-string v2, "text"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Lde/appplant/cordova/plugin/notification/Notification;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "notification"    # Lde/appplant/cordova/plugin/notification/Notification;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/ClickReceiver;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v1, "data":Lorg/json/JSONObject;
    invoke-direct {p0, v0, v1}, Lde/appplant/cordova/plugin/localnotification/ClickReceiver;->setTextInput(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 55
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/ClickReceiver;->launchAppIf()V

    .line 57
    invoke-static {v0, p1, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;Lorg/json/JSONObject;)V

    .line 59
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v2

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/notification/Options;->isSticky()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/ClickReceiver;->isLast()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->cancel()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->clear()V

    goto :goto_0
.end method
