.class Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;
.super Ljava/lang/Object;
.source "AnimationFrameTimeHistogram.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/AnimationFrameTimeHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Recorder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAnimator:Landroid/animation/TimeAnimator;

.field private mFrameTimesCount:I

.field private mFrameTimesMs:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/chromium/base/AnimationFrameTimeHistogram;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mAnimator:Landroid/animation/TimeAnimator;

    .line 94
    iget-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/AnimationFrameTimeHistogram$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/base/AnimationFrameTimeHistogram$1;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->startRecording()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->endRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;)[J
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->getFrameTimesMs()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->getFrameTimesCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->cleanUp()V

    return-void
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mFrameTimesMs:[J

    .line 128
    return-void
.end method

.method private endRecording()Z
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    .line 110
    .local v0, "succeeded":Z
    iget-object v1, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->end()V

    .line 111
    return v0
.end method

.method private getFrameTimesCount()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mFrameTimesCount:I

    return v0
.end method

.method private getFrameTimesMs()[J
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mFrameTimesMs:[J

    return-object v0
.end method

.method private startRecording()V
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mFrameTimesCount:I

    .line 100
    const/16 v0, 0x258

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mFrameTimesMs:[J

    .line 101
    iget-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 102
    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    .line 132
    iget v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mFrameTimesCount:I

    iget-object v1, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mFrameTimesMs:[J

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 134
    invoke-direct {p0}, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->cleanUp()V

    .line 135
    const-string v0, "AnimationFrameTimeHistogram"

    const-string v1, "Animation frame time recording reached the maximum number. It\'s eitherthe animation took too long or recording end is not called."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mFrameTimesMs:[J

    iget v1, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mFrameTimesCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$Recorder;->mFrameTimesCount:I

    aput-wide p4, v0, v1

    goto :goto_0
.end method
