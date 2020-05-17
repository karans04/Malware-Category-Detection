.class public Lorg/chromium/content/browser/SpeechRecognition;
.super Ljava/lang/Object;
.source "SpeechRecognition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/SpeechRecognition$Listener;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final PROVIDER_MIN_VERSION:I = 0x11e4cbb6

.field private static final PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final STATE_AWAITING_SPEECH:I = 0x1

.field private static final STATE_CAPTURING_SPEECH:I = 0x2

.field private static final STATE_IDLE:I

.field private static sRecognitionProvider:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContinuous:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mListener:Landroid/speech/RecognitionListener;

.field private mNativeSpeechRecognizerImplAndroid:J

.field private mRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeSpeechRecognizerImplAndroid"    # J

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lorg/chromium/content/browser/SpeechRecognition;->mContext:Landroid/content/Context;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mContinuous:Z

    .line 203
    iput-wide p2, p0, Lorg/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    .line 204
    new-instance v0, Lorg/chromium/content/browser/SpeechRecognition$Listener;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/SpeechRecognition$Listener;-><init>(Lorg/chromium/content/browser/SpeechRecognition;)V

    iput-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mListener:Landroid/speech/RecognitionListener;

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mIntent:Landroid/content/Intent;

    .line 207
    sget-object v0, Lorg/chromium/content/browser/SpeechRecognition;->sRecognitionProvider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mContext:Landroid/content/Context;

    sget-object v1, Lorg/chromium/content/browser/SpeechRecognition;->sRecognitionProvider:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    .line 217
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lorg/chromium/content/browser/SpeechRecognition;->mListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 218
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    goto :goto_0
.end method

.method private abortRecognition()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 264
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/SpeechRecognition;->terminate(I)V

    goto :goto_0
.end method

.method static synthetic access$002(Lorg/chromium/content/browser/SpeechRecognition;I)I
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lorg/chromium/content/browser/SpeechRecognition;->mState:I

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/SpeechRecognition;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/SpeechRecognition;

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/SpeechRecognition;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/SpeechRecognition;->nativeOnSoundStart(J)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/SpeechRecognition;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/SpeechRecognition;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mContinuous:Z

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/SpeechRecognition;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/SpeechRecognition;->nativeOnSoundEnd(J)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/SpeechRecognition;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/SpeechRecognition;->nativeOnAudioEnd(J)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/SpeechRecognition;I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/SpeechRecognition;->terminate(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/SpeechRecognition;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/SpeechRecognition;->nativeOnAudioStart(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/SpeechRecognition;J[Ljava/lang/String;[FZ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # J
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # [F
    .param p5, "x4"    # Z

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lorg/chromium/content/browser/SpeechRecognition;->nativeOnRecognitionResults(J[Ljava/lang/String;[FZ)V

    return-void
.end method

.method private static createSpeechRecognition(Landroid/content/Context;J)Lorg/chromium/content/browser/SpeechRecognition;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeSpeechRecognizerImplAndroid"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 245
    new-instance v0, Lorg/chromium/content/browser/SpeechRecognition;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/SpeechRecognition;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 177
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v6

    .line 179
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 180
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.speech.RecognitionService"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "intent":Landroid/content/Intent;
    const/4 v7, 0x4

    invoke-virtual {v3, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 183
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 184
    .local v4, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 186
    .local v5, "service":Landroid/content/pm/ServiceInfo;
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.google.android.googlequicksearchbox"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 188
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v7}, Lorg/chromium/base/PackageUtils;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const v8, 0x11e4cbb6

    if-lt v7, v8, :cond_2

    .line 191
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/chromium/content/browser/SpeechRecognition;->sRecognitionProvider:Landroid/content/ComponentName;

    .line 193
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private native nativeOnAudioEnd(J)V
.end method

.method private native nativeOnAudioStart(J)V
.end method

.method private native nativeOnRecognitionEnd(J)V
.end method

.method private native nativeOnRecognitionError(JI)V
.end method

.method private native nativeOnRecognitionResults(J[Ljava/lang/String;[FZ)V
.end method

.method private native nativeOnSoundEnd(J)V
.end method

.method private native nativeOnSoundStart(J)V
.end method

.method private startRecognition(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "continuous"    # Z
    .param p3, "interimResults"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_0
    iput-boolean p2, p0, Lorg/chromium/content/browser/SpeechRecognition;->mContinuous:Z

    .line 253
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.DICTATION_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lorg/chromium/content/browser/SpeechRecognition;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private stopRecognition()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mContinuous:Z

    .line 272
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    goto :goto_0
.end method

.method private terminate(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 224
    iget v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mState:I

    if-eqz v0, :cond_1

    .line 225
    iget v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 226
    iget-wide v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/SpeechRecognition;->nativeOnSoundEnd(J)V

    .line 228
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/SpeechRecognition;->nativeOnAudioEnd(J)V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mState:I

    .line 232
    :cond_1
    if-eqz p1, :cond_2

    .line 233
    iget-wide v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/SpeechRecognition;->nativeOnRecognitionError(JI)V

    .line 236
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    .line 238
    iget-wide v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/SpeechRecognition;->nativeOnRecognitionEnd(J)V

    .line 239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    .line 240
    return-void
.end method
