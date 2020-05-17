.class public Lorg/chromium/ui/base/SelectFileDialog;
.super Ljava/lang/Object;
.source "SelectFileDialog.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/SelectFileDialog$1;,
        Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;,
        Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "ui"
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALL_AUDIO_TYPES:Ljava/lang/String; = "audio/*"

.field private static final ALL_IMAGE_TYPES:Ljava/lang/String; = "image/*"

.field private static final ALL_VIDEO_TYPES:Ljava/lang/String; = "video/*"

.field private static final ANY_TYPES:Ljava/lang/String; = "*/*"

.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio/"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/"

.field private static final TAG:Ljava/lang/String; = "SelectFileDialog"

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video/"

.field private static sOverrideWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# instance fields
.field private mAllowMultiple:Z

.field private mCameraOutputUri:Landroid/net/Uri;

.field private mCapture:Z

.field private mFileTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeSelectFileDialog:J

.field private mSupportsAudioCapture:Z

.field private mSupportsImageCapture:Z

.field private mSupportsVideoCapture:Z

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/chromium/ui/base/SelectFileDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/SelectFileDialog;->$assertionsDisabled:Z

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/ui/base/SelectFileDialog;->sOverrideWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeSelectFileDialog"    # J

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    .line 72
    return-void
.end method

.method private acceptSpecificType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    const/4 v2, 0x1

    .line 399
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private acceptsSpecificType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/chromium/ui/base/SelectFileDialog;)Lorg/chromium/ui/base/WindowAndroid;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/ui/base/SelectFileDialog;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/ui/base/SelectFileDialog;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/ui/base/SelectFileDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/ui/base/SelectFileDialog;ZLandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileWithCameraIntent(ZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/ui/base/SelectFileDialog;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/chromium/ui/base/SelectFileDialog;J[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;
    .param p1, "x1"    # J
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnMultipleFilesSelected(J[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/ui/base/SelectFileDialog;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private captureCamcorder()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "video/*"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private captureCamera()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "image/*"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private captureMicrophone()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "audio/*"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static create(J)Lorg/chromium/ui/base/SelectFileDialog;
    .locals 2
    .param p0, "nativeSelectFileDialog"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 452
    new-instance v0, Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;-><init>(J)V

    return-object v0
.end method

.method private getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    sget-boolean v1, Lorg/chromium/ui/base/SelectFileDialog;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 256
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-static {p1}, Lorg/chromium/ui/UiUtils;->getDirectoryForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 258
    .local v0, "photoFile":Ljava/io/File;
    return-object v0
.end method

.method private launchSelectFileIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 130
    .local v0, "hasCameraPermission":Z
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 132
    new-instance v1, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;

    invoke-direct {v1, p0, v3}, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Lorg/chromium/ui/base/SelectFileDialog$1;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0, v0, v3}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileWithCameraIntent(ZLandroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchSelectFileWithCameraIntent(ZLandroid/content/Intent;)V
    .locals 8
    .param p1, "hasCameraPermission"    # Z
    .param p2, "camera"    # Landroid/content/Intent;

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "camcorder":Landroid/content/Intent;
    iget-boolean v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "camcorder":Landroid/content/Intent;
    const-string v6, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v0    # "camcorder":Landroid/content/Intent;
    :cond_0
    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string v7, "android.permission.RECORD_AUDIO"

    invoke-virtual {v6, v7}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    .line 153
    .local v4, "hasAudioPermission":Z
    const/4 v5, 0x0

    .line 154
    .local v5, "soundRecorder":Landroid/content/Intent;
    iget-boolean v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 155
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "soundRecorder":Landroid/content/Intent;
    const-string v6, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v5    # "soundRecorder":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureCamera()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    .line 162
    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v7, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p2, p0, v7}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 211
    :cond_2
    :goto_0
    return-void

    .line 163
    :cond_3
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureCamcorder()Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v0, :cond_c

    .line 164
    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v7, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, p0, v7}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 169
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v3, "getContentIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_5

    iget-boolean v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    if-eqz v6, :cond_5

    .line 173
    const-string v6, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->noSpecificType()Z

    move-result v6

    if-nez v6, :cond_7

    .line 181
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 182
    if-eqz p2, :cond_6

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_6
    const-string v6, "image/*"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    :cond_7
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 195
    const-string v6, "*/*"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    if-eqz p2, :cond_8

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CHOOSER"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "chooser":Landroid/content/Intent;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 203
    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/Intent;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    :cond_b
    const-string v6, "android.intent.extra.INTENT"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v7, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, p0, v7}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 209
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    goto/16 :goto_0

    .line 165
    .end local v1    # "chooser":Landroid/content/Intent;
    .end local v2    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v3    # "getContentIntent":Landroid/content/Intent;
    :cond_c
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureMicrophone()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 166
    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v7, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, p0, v7}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_0

    .line 184
    .restart local v2    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v3    # "getContentIntent":Landroid/content/Intent;
    :cond_d
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 185
    if-eqz v0, :cond_e

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_e
    const-string v6, "video/*"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 187
    :cond_f
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 188
    if-eqz v5, :cond_10

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_10
    const-string v6, "audio/*"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private native nativeOnFileNotSelected(J)V
.end method

.method private native nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeOnMultipleFilesSelected(J[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private noSpecificType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 357
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    const-string v2, "*/*"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFileNotSelected()V
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileNotSelected(J)V

    .line 350
    return-void
.end method

.method private selectFile([Ljava/lang/String;ZZLorg/chromium/ui/base/WindowAndroid;)V
    .locals 4
    .param p1, "fileTypes"    # [Ljava/lang/String;
    .param p2, "capture"    # Z
    .param p3, "multiple"    # Z
    .param p4, "window"    # Lorg/chromium/ui/base/WindowAndroid;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    .line 94
    iput-boolean p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    .line 95
    iput-boolean p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    .line 96
    sget-object v1, Lorg/chromium/ui/base/SelectFileDialog;->sOverrideWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v1, :cond_4

    move-object v1, p4

    :goto_0
    iput-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 98
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    .line 100
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    .line 102
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "missingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p4, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p4, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileIntent()V

    .line 123
    :goto_1
    return-void

    .line 96
    .end local v0    # "missingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v1, Lorg/chromium/ui/base/SelectFileDialog;->sOverrideWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    goto :goto_0

    .line 120
    .restart local v0    # "missingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p4, v1, p0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    goto :goto_1
.end method

.method public static setWindowAndroidForTests(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0
    .param p0, "window"    # Lorg/chromium/ui/base/WindowAndroid;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 79
    sput-object p0, Lorg/chromium/ui/base/SelectFileDialog;->sOverrideWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 80
    return-void
.end method

.method private shouldShowAudioTypes()Z
    .locals 2

    .prologue
    .line 374
    const-string v0, "audio/*"

    const-string v1, "audio/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldShowImageTypes()Z
    .locals 2

    .prologue
    .line 366
    const-string v0, "image/*"

    const-string v1, "image/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "allTypes"    # Ljava/lang/String;
    .param p2, "specificType"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->noSpecificType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 362
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lorg/chromium/ui/base/SelectFileDialog;->acceptSpecificType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private shouldShowVideoTypes()Z
    .locals 2

    .prologue
    .line 370
    const-string v0, "video/*"

    const-string v1, "video/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onIntentCompleted(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 10
    .param p1, "window"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p2, "resultCode"    # I
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "results"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/16 v7, 0x12

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 273
    const/4 v6, -0x1

    if-eq p2, v6, :cond_0

    .line 274
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 335
    :goto_0
    return-void

    .line 278
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_1

    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    if-nez v6, :cond_3

    .line 287
    :cond_1
    const-string v6, "file"

    iget-object v7, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "path":Ljava/lang/String;
    :goto_1
    iget-wide v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v4, v8}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v6}, Lorg/chromium/ui/base/WindowAndroid;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 287
    .end local v4    # "path":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 302
    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_6

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 304
    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 306
    .local v0, "clipData":Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    .line 307
    .local v3, "itemCount":I
    if-nez v3, :cond_4

    .line 308
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    goto :goto_0

    .line 312
    :cond_4
    new-array v1, v3, [Landroid/net/Uri;

    .line 313
    .local v1, "filePathArray":[Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 314
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v1, v2

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 316
    :cond_5
    new-instance v5, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;

    invoke-direct {v5, p0, p3, v8}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/ContentResolver;Z)V

    .line 317
    .local v5, "task":Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v5, v6, v1}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 321
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v1    # "filePathArray":[Landroid/net/Uri;
    .end local v2    # "i":I
    .end local v3    # "itemCount":I
    .end local v5    # "task":Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
    :cond_6
    const-string v6, "file"

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 322
    iget-wide v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    :cond_7
    const-string v6, "content"

    invoke-virtual {p4}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 328
    new-instance v5, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;

    invoke-direct {v5, p0, p3, v9}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/ContentResolver;Z)V

    .line 329
    .restart local v5    # "task":Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v8, [Landroid/net/Uri;

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 333
    .end local v5    # "task":Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
    :cond_8
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 334
    sget v6, Lorg/chromium/ui/R$string;->opening_file_error:I

    invoke-virtual {p1, v6}, Lorg/chromium/ui/base/WindowAndroid;->showError(I)V

    goto/16 :goto_0
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 340
    aget v1, p2, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v1, :cond_0

    .line 341
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 346
    :goto_1
    return-void

    .line 339
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileIntent()V

    goto :goto_1
.end method
