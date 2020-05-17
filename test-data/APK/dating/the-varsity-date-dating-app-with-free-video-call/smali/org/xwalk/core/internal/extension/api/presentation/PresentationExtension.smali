.class public Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;
.super Lorg/xwalk/core/internal/extension/XWalkExtensionWithActivityStateListener;
.source "PresentationExtension.java"


# static fields
.field private static final CMD_AVAILABILITY_CHANGE:Ljava/lang/String; = "AvailabilityChange"

.field private static final CMD_DEFAULT_SESSION_STARTED:Ljava/lang/String; = "DefaultSessionStarted"

.field private static final CMD_GET_AVAILABILITY:Ljava/lang/String; = "GetAvailability"

.field private static final CMD_SEND_MESSAGE_TO_HOST_DISPLAY:Ljava/lang/String; = "SendMessageToHostDisplay"

.field private static final CMD_SEND_MESSAGE_TO_REMOTE_DISPLAY:Ljava/lang/String; = "SendMessageToRemoteDisplay"

.field private static final CMD_SESSION_MESSAGE_TO_HOST_RECEIVED:Ljava/lang/String; = "SessionMessageToHostReceived"

.field private static final CMD_SESSION_MESSAGE_TO_REMOTE_RECEIVED:Ljava/lang/String; = "SessionMessageToRemoteReceived"

.field private static final CMD_SESSION_START_FAILED:Ljava/lang/String; = "SessionStartFailed"

.field private static final CMD_SESSION_START_SUCCEEDED:Ljava/lang/String; = "SessionStartSucceeded"

.field private static final CMD_START_SESSION:Ljava/lang/String; = "StartSession"

.field private static final ERROR_INVALID_ACCESS:Ljava/lang/String; = "InvalidAccessError"

.field private static final ERROR_INVALID_PARAMETER:Ljava/lang/String; = "InvalidParameterError"

.field private static final ERROR_INVALID_STATE:Ljava/lang/String; = "InvalidStateError"

.field private static final ERROR_NOT_FOUND:Ljava/lang/String; = "NotFoundError"

.field private static final ERROR_NOT_SUPPORTED:Ljava/lang/String; = "NotSupportedError"

.field public static final JS_API_PATH:Ljava/lang/String; = "jsapi/presentation_api.js"

.field private static final NAME:Ljava/lang/String; = "navigator.presentation"

.field private static final TAG:Ljava/lang/String; = "PresentationExtension"

.field private static final TAG_BASE_URL:Ljava/lang/String; = "baseUrl"

.field private static final TAG_CMD:Ljava/lang/String; = "cmd"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_PRESENTATION_ID:Ljava/lang/String; = "presentationId"

.field private static final TAG_REQUEST_ID:Ljava/lang/String; = "requestId"

.field private static final TAG_URL:Ljava/lang/String; = "url"


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableDisplayCount:I

.field private mContext:Landroid/content/Context;

.field private final mDisplayListener:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager$DisplayListener;

.field private mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

.field private mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

.field private mPresentationDelegate:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent$PresentationDelegate;

.field private mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p1, "jsApi"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 124
    const-string v1, "navigator.presentation"

    invoke-direct {p0, v1, p1, p2}, Lorg/xwalk/core/internal/extension/XWalkExtensionWithActivityStateListener;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    .line 92
    new-instance v1, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$1;

    invoke-direct {v1, p0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$1;-><init>(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mDisplayListener:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager$DisplayListener;

    .line 126
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mContext:Landroid/content/Context;

    .line 127
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mActivity:Ljava/lang/ref/WeakReference;

    .line 128
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->getInstance(Landroid/content/Context;)Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    .line 129
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->getPresentationDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 130
    .local v0, "displays":[Landroid/view/Display;
    array-length v1, v0

    iput v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    .line 131
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)I
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    .prologue
    .line 34
    iget v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    return v0
.end method

.method static synthetic access$004(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)I
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    .prologue
    .line 34
    iget v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    return v0
.end method

.method static synthetic access$006(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)I
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    .prologue
    .line 34
    iget v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    return v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->notifyAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;Landroid/view/Display;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;
    .param p1, "x1"    # Landroid/view/Display;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->updatePresentationView(Landroid/view/Display;)V

    return-void
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->closePresentationContent()V

    return-void
.end method

.method static synthetic access$300(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->getPreferredDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->notifyStartSessionFail(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    return-object v0
.end method

.method static synthetic access$502(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;)Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;
    .param p1, "x1"    # Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    return-object p1
.end method

.method static synthetic access$600(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;III)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->notifyStartSessionSucceed(III)V

    return-void
.end method

.method static synthetic access$900(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    return-object v0
.end method

.method static synthetic access$902(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;)Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;
    .param p1, "x1"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    return-object p1
.end method

.method private closePresentationContent()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    if-nez v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;->close()V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    goto :goto_0
.end method

.method private dismissPresentationView()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;->dismiss()V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    goto :goto_0
.end method

.method private getPreferredDisplay()Landroid/view/Display;
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->getPresentationDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 135
    .local v0, "displays":[Landroid/view/Display;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 136
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleSendMessageToHostDisplay(IILjava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # I
    .param p2, "presentationId"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->notifySessionMessageReceived(ZILjava/lang/String;)V

    .line 327
    return-void
.end method

.method private handleSendMessageToRemoteDisplay(IILjava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # I
    .param p2, "presentationId"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->notifySessionMessageReceived(ZILjava/lang/String;)V

    .line 322
    return-void
.end method

.method private handleStartSession(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # I
    .param p2, "requestId"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 244
    const-string v0, "NotSupportedError"

    invoke-direct {p0, p1, p2, v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->notifyStartSessionFail(IILjava/lang/String;)V

    .line 317
    :goto_0
    return-void

    .line 248
    :cond_0
    iget v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    if-nez v0, :cond_1

    .line 249
    const-string v0, "PresentationExtension"

    const-string v1, "No available presentation display is found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v0, "NotFoundError"

    invoke-direct {p0, p1, p2, v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->notifyStartSessionFail(IILjava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    new-instance v0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;-><init>(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private notifyAvailabilityChanged(Z)V
    .locals 6
    .param p1, "isAvailable"    # Z

    .prologue
    .line 140
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 141
    .local v0, "contents":Ljava/io/StringWriter;
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 144
    .local v2, "writer":Landroid/util/JsonWriter;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 145
    const-string v3, "cmd"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "AvailabilityChange"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 146
    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 147
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 148
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V

    .line 150
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->broadcastMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "PresentationExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifySessionMessageReceived(ZILjava/lang/String;)V
    .locals 6
    .param p1, "isToHost"    # Z
    .param p2, "presentationId"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 331
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 332
    .local v0, "contents":Ljava/io/StringWriter;
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 335
    .local v2, "writer":Landroid/util/JsonWriter;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 336
    if-eqz p1, :cond_0

    .line 337
    const-string v3, "cmd"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "SessionMessageToHostReceived"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 341
    :goto_0
    const-string v3, "presentationId"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 342
    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 343
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 344
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V

    .line 346
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->broadcastMessage(Ljava/lang/String;)V

    .line 350
    :goto_1
    return-void

    .line 339
    :cond_0
    const-string v3, "cmd"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "SessionMessageToRemoteReceived"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "PresentationExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notifyStartSessionFail(IILjava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # I
    .param p2, "requestId"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 176
    .local v0, "contents":Ljava/io/StringWriter;
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 179
    .local v2, "writer":Landroid/util/JsonWriter;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 180
    const-string v3, "cmd"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "SessionStartFailed"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 181
    const-string v3, "requestId"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 182
    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 183
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 184
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V

    .line 186
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->postMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "PresentationExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyStartSessionSucceed(III)V
    .locals 6
    .param p1, "instanceId"    # I
    .param p2, "requestId"    # I
    .param p3, "presentationId"    # I

    .prologue
    .line 157
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 158
    .local v0, "contents":Ljava/io/StringWriter;
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 161
    .local v2, "writer":Landroid/util/JsonWriter;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 162
    const-string v3, "cmd"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "SessionStartSucceeded"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 163
    const-string v3, "requestId"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 164
    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 165
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 166
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V

    .line 168
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->postMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "PresentationExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePresentationView(Landroid/view/Display;)V
    .locals 4
    .param p1, "preferredDisplay"    # Landroid/view/Display;

    .prologue
    .line 398
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 399
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    if-eqz p1, :cond_0

    .line 406
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    if-eqz v2, :cond_0

    .line 412
    :cond_2
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eq v2, p1, :cond_3

    .line 413
    invoke-direct {p0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->dismissPresentationView()V

    .line 419
    :cond_3
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    if-eqz v2, :cond_5

    .line 421
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 422
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 424
    :cond_4
    invoke-static {v0, p1}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;->createInstance(Landroid/content/Context;Landroid/view/Display;)Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    .line 425
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    iget-object v3, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    invoke-virtual {v3}, Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;->setContentView(Landroid/view/View;)V

    .line 426
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    new-instance v3, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;

    invoke-direct {v3, p0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;-><init>(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)V

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;->setPresentationListener(Lorg/xwalk/core/internal/extension/api/presentation/PresentationView$PresentationListener;)V

    .line 449
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_5
    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationView:Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newState"    # I

    .prologue
    .line 468
    packed-switch p2, :pswitch_data_0

    .line 485
    :goto_0
    :pswitch_0
    return-void

    .line 470
    :pswitch_1
    invoke-virtual {p0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->onResume()V

    goto :goto_0

    .line 473
    :pswitch_2
    invoke-direct {p0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->dismissPresentationView()V

    .line 474
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;->onPause()V

    .line 476
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mDisplayListener:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->unregisterDisplayListener(Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager$DisplayListener;)V

    goto :goto_0

    .line 480
    :pswitch_3
    invoke-direct {p0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->closePresentationContent()V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onMessage(ILjava/lang/String;)V
    .locals 13
    .param p1, "instanceId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, "contents":Ljava/io/StringReader;
    new-instance v7, Landroid/util/JsonReader;

    invoke-direct {v7, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 197
    .local v7, "reader":Landroid/util/JsonReader;
    const/4 v8, -0x1

    .line 198
    .local v8, "requestId":I
    const/4 v1, 0x0

    .line 199
    .local v1, "cmd":Ljava/lang/String;
    const/4 v9, 0x0

    .line 200
    .local v9, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 201
    .local v0, "baseUrl":Ljava/lang/String;
    const/4 v6, -0x1

    .line 202
    .local v6, "presentationId":I
    const/4 v3, 0x0

    .line 204
    .local v3, "data":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    .line 205
    :goto_0
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 206
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "name":Ljava/lang/String;
    const-string v10, "cmd"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 208
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 209
    :cond_0
    const-string v10, "requestId"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 210
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    goto :goto_0

    .line 211
    :cond_1
    const-string v10, "url"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 212
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 213
    :cond_2
    const-string v10, "baseUrl"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 214
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_3
    const-string v10, "presentationId"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 216
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    goto :goto_0

    .line 217
    :cond_4
    const-string v10, "data"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 218
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {v7}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 236
    .local v4, "e":Ljava/io/IOException;
    const-string v10, "PresentationExtension"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    :goto_1
    return-void

    .line 223
    :cond_7
    :try_start_1
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    .line 224
    invoke-virtual {v7}, Landroid/util/JsonReader;->close()V

    .line 226
    if-eqz v1, :cond_6

    .line 228
    const-string v10, "StartSession"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-ltz v8, :cond_8

    .line 229
    invoke-direct {p0, p1, v8, v9, v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->handleStartSession(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_8
    const-string v10, "SendMessageToRemoteDisplay"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 231
    invoke-direct {p0, p1, v6, v3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->handleSendMessageToRemoteDisplay(IILjava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_9
    const-string v10, "SendMessageToHostDisplay"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 233
    invoke-direct {p0, p1, v6, v3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->handleSendMessageToHostDisplay(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->getPresentationDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 367
    .local v0, "displays":[Landroid/view/Display;
    array-length v1, v0

    if-nez v1, :cond_0

    iget v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    if-lez v1, :cond_0

    .line 368
    invoke-direct {p0, v2}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->notifyAvailabilityChanged(Z)V

    .line 369
    iput v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    .line 370
    invoke-direct {p0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->closePresentationContent()V

    .line 376
    :cond_0
    array-length v1, v0

    if-lez v1, :cond_1

    iget v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    if-nez v1, :cond_1

    .line 377
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->notifyAvailabilityChanged(Z)V

    .line 378
    array-length v1, v0

    iput v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    .line 383
    :cond_1
    array-length v1, v0

    if-lez v1, :cond_2

    iget v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    if-lez v1, :cond_2

    .line 384
    array-length v1, v0

    iput v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    .line 387
    :cond_2
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    if-eqz v1, :cond_3

    .line 388
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mPresentationContent:Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;->onResume()V

    .line 391
    :cond_3
    invoke-direct {p0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->getPreferredDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->updatePresentationView(Landroid/view/Display;)V

    .line 394
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mDisplayListener:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->registerDisplayListener(Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager$DisplayListener;)V

    .line 395
    return-void
.end method

.method public onSyncMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "instanceId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v0, "GetAvailability"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->mAvailableDisplayCount:I

    if-eqz v0, :cond_0

    const-string v0, "true"

    .line 358
    :goto_0
    return-object v0

    .line 355
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 357
    :cond_1
    const-string v0, "PresentationExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected sync message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v0, ""

    goto :goto_0
.end method
