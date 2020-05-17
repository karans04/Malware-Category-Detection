.class public final Lde/appplant/cordova/plugin/notification/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# instance fields
.field private clearReceiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private clickActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private extras:Landroid/os/Bundle;

.field private final options:Lde/appplant/cordova/plugin/notification/Options;

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Lde/appplant/cordova/plugin/notification/Options;)V
    .locals 1
    .param p1, "options"    # Lde/appplant/cordova/plugin/notification/Options;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Builder;->random:Ljava/util/Random;

    .line 74
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Options;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 76
    return-void
.end method

.method private applyActions(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 8
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 361
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getActions()[Lde/appplant/cordova/plugin/notification/action/Action;

    move-result-object v1

    .line 364
    .local v1, "actions":[Lde/appplant/cordova/plugin/notification/action/Action;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 378
    :cond_0
    return-void

    .line 367
    :cond_1
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 368
    .local v0, "action":Lde/appplant/cordova/plugin/notification/action/Action;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 369
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/action/Action;->getIcon()I

    move-result v5

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/action/Action;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/Builder;->getPendingIntentForAction(Lde/appplant/cordova/plugin/notification/action/Action;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 372
    .local v2, "btn":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/action/Action;->isWithInput()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 373
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/action/Action;->getInput()Landroid/support/v4/app/RemoteInput;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 376
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private applyBigPictureStyle(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/util/List;)V
    .locals 5
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "pics":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getSummary()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "summary":Ljava/lang/String;
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getText()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v3, p1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    if-nez v1, :cond_0

    .line 248
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v4

    const/4 v3, 0x0

    .line 249
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    .line 251
    .local v0, "style":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 252
    return-void

    .end local v0    # "style":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .restart local v2    # "text":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 247
    goto :goto_0
.end method

.method private applyBigTextStyle(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 281
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 282
    invoke-virtual {v2}, Lde/appplant/cordova/plugin/notification/Options;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 283
    invoke-virtual {v2}, Lde/appplant/cordova/plugin/notification/Options;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    .line 285
    .local v0, "style":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 286
    return-void
.end method

.method private applyContentReceiver(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 337
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->clickActivity:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 353
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->clickActivity:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->extras:Landroid/os/Bundle;

    .line 341
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "NOTIFICATION_ID"

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 342
    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "NOTIFICATION_ACTION_ID"

    const-string v5, "click"

    .line 343
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "NOTIFICATION_LAUNCH"

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 344
    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->isLaunchingApp()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 345
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 347
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 349
    .local v2, "reqCode":I
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v2, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 352
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private applyDeleteReceiver(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 313
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->clearReceiver:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 327
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->clearReceiver:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->extras:Landroid/os/Bundle;

    .line 317
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 318
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "NOTIFICATION_ID"

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 319
    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 321
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 323
    .local v2, "reqCode":I
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 326
    .local v0, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private applyInboxStyle(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 261
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getText()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v3, p1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 264
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v1

    .line 266
    .local v1, "style":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 267
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 271
    return-void
.end method

.method private applyMediaStyle(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 5
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .prologue
    const/4 v4, 0x1

    .line 298
    new-instance v1, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v1, p1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 299
    invoke-virtual {v1, p2}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v1

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    .line 300
    invoke-virtual {v1, v2}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v0

    .line 302
    .local v0, "style":Landroid/support/v4/media/app/NotificationCompat$MediaStyle;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 303
    return-void
.end method

.method private applyMessagingStyle(Landroid/support/v4/app/NotificationCompat$Builder;[Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)V
    .locals 4
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "messages"    # [Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .prologue
    .line 224
    new-instance v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    const-string v3, "Me"

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 225
    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    move-result-object v1

    .line 227
    .local v1, "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 228
    .local v0, "msg":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->addMessage(Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "msg":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 232
    return-void
.end method

.method private applyStyle(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 7
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 178
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->getMessages()[Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v0

    .line 179
    .local v0, "messages":[Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->getSummary()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "summary":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0, p1, v0}, Lde/appplant/cordova/plugin/notification/Builder;->applyMessagingStyle(Landroid/support/v4/app/NotificationCompat$Builder;[Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v4

    .line 188
    .local v4, "token":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    if-eqz v4, :cond_2

    .line 189
    invoke-direct {p0, p1, v4}, Lde/appplant/cordova/plugin/notification/Builder;->applyMediaStyle(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, "pics":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 196
    invoke-direct {p0, p1, v1}, Lde/appplant/cordova/plugin/notification/Builder;->applyBigPictureStyle(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/util/List;)V

    goto :goto_0

    .line 200
    :cond_3
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->getText()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 203
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/Builder;->applyInboxStyle(Landroid/support/v4/app/NotificationCompat$Builder;)V

    goto :goto_0

    .line 207
    :cond_4
    if-eqz v3, :cond_0

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_0

    .line 210
    :cond_5
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/Builder;->applyBigTextStyle(Landroid/support/v4/app/NotificationCompat$Builder;)V

    goto :goto_0
.end method

.method private findOrCreateBuilder()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 413
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 414
    .local v1, "key":I
    invoke-static {v1}, Lde/appplant/cordova/plugin/notification/Notification;->getCachedBuilder(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 416
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-nez v0, :cond_0

    .line 417
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    .end local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    .restart local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_0
    return-object v0
.end method

.method private getPendingIntentForAction(Lde/appplant/cordova/plugin/notification/action/Action;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "action"    # Lde/appplant/cordova/plugin/notification/action/Action;

    .prologue
    .line 387
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->clickActivity:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->extras:Landroid/os/Bundle;

    .line 388
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "NOTIFICATION_ID"

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 389
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "NOTIFICATION_ACTION_ID"

    .line 390
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/action/Action;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "NOTIFICATION_LAUNCH"

    .line 391
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/action/Action;->isLaunchingApp()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 392
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Builder;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 396
    .local v1, "reqCode":I
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private isUpdate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 406
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Builder;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Builder;->extras:Landroid/os/Bundle;

    const-string v2, "NOTIFICATION_UPDATE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public build()Lde/appplant/cordova/plugin/notification/Notification;
    .locals 7

    .prologue
    .line 116
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->isSilent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    new-instance v3, Lde/appplant/cordova/plugin/notification/Notification;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-direct {v3, v4, v5}, Lde/appplant/cordova/plugin/notification/Notification;-><init>(Landroid/content/Context;Lde/appplant/cordova/plugin/notification/Options;)V

    .line 169
    :goto_0
    return-object v3

    .line 120
    :cond_0
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getSound()Landroid/net/Uri;

    move-result-object v2

    .line 121
    .local v2, "sound":Landroid/net/Uri;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "NOTIFICATION_ID"

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v3, "NOTIFICATION_SOUND"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Builder;->findOrCreateBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 127
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getDefaults()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 128
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 129
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 130
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 131
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 132
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 133
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 134
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 135
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->isAutoClear()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 136
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->isSticky()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 137
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 138
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 139
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 140
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getShowWhen()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 141
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->isWithProgressBar()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 142
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 143
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getGroupSummary()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 144
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getLedColor()I

    move-result v4

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->getLedOn()I

    move-result v5

    iget-object v6, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v6}, Lde/appplant/cordova/plugin/notification/Options;->getLedOff()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 146
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v2, v3, :cond_1

    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Builder;->isUpdate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 150
    :cond_1
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->isWithProgressBar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 152
    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getProgressMaxValue()I

    move-result v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 153
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getProgressValue()I

    move-result v4

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 154
    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->isIndeterminateProgress()Z

    move-result v5

    .line 151
    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 157
    :cond_2
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->hasLargeIcon()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getSmallIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 159
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 164
    :goto_1
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/Builder;->applyStyle(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 165
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/Builder;->applyActions(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 166
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/Builder;->applyDeleteReceiver(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 167
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/Builder;->applyContentReceiver(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 169
    new-instance v3, Lde/appplant/cordova/plugin/notification/Notification;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-direct {v3, v4, v5, v0}, Lde/appplant/cordova/plugin/notification/Notification;-><init>(Landroid/content/Context;Lde/appplant/cordova/plugin/notification/Options;Landroid/support/v4/app/NotificationCompat$Builder;)V

    goto/16 :goto_0

    .line 161
    :cond_3
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getSmallIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method

.method public setClearReceiver(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/appplant/cordova/plugin/notification/Builder;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Builder;->clearReceiver:Ljava/lang/Class;

    .line 85
    return-object p0
.end method

.method public setClickActivity(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/appplant/cordova/plugin/notification/Builder;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Builder;->clickActivity:Ljava/lang/Class;

    .line 95
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lde/appplant/cordova/plugin/notification/Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 104
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Builder;->extras:Landroid/os/Bundle;

    .line 105
    return-object p0
.end method
