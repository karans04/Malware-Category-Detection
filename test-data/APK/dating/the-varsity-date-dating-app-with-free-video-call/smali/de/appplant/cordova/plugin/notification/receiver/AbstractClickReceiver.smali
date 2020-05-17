.class public abstract Lde/appplant/cordova/plugin/notification/receiver/AbstractClickReceiver;
.super Landroid/app/Activity;
.source "AbstractClickReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAction()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/receiver/AbstractClickReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NOTIFICATION_ACTION_ID"

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected launchApp()V
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/receiver/AbstractClickReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 102
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 104
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    const/high16 v3, 0x20020000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public abstract onClick(Lde/appplant/cordova/plugin/notification/Notification;Landroid/os/Bundle;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/receiver/AbstractClickReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 53
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/receiver/AbstractClickReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    .local v1, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v5, "NOTIFICATION_ID"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 60
    .local v4, "toastId":I
    invoke-static {v1}, Lde/appplant/cordova/plugin/notification/Manager;->getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v3

    .line 62
    .local v3, "toast":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p0, v3, v0}, Lde/appplant/cordova/plugin/notification/receiver/AbstractClickReceiver;->onClick(Lde/appplant/cordova/plugin/notification/Notification;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/receiver/AbstractClickReceiver;->finish()V

    .line 76
    return-void
.end method
