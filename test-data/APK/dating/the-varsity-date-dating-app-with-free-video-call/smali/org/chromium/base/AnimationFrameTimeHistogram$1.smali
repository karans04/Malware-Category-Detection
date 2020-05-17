.class final Lorg/chromium/base/AnimationFrameTimeHistogram$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationFrameTimeHistogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/AnimationFrameTimeHistogram;->getAnimatorRecorder(Ljava/lang/String;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final mAnimationFrameTimeHistogram:Lorg/chromium/base/AnimationFrameTimeHistogram;

.field final synthetic val$histogramName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    iput-object p1, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$1;->val$histogramName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 36
    new-instance v0, Lorg/chromium/base/AnimationFrameTimeHistogram;

    iget-object v1, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$1;->val$histogramName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/chromium/base/AnimationFrameTimeHistogram;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$1;->mAnimationFrameTimeHistogram:Lorg/chromium/base/AnimationFrameTimeHistogram;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$1;->mAnimationFrameTimeHistogram:Lorg/chromium/base/AnimationFrameTimeHistogram;

    invoke-virtual {v0}, Lorg/chromium/base/AnimationFrameTimeHistogram;->endRecording()V

    .line 52
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$1;->mAnimationFrameTimeHistogram:Lorg/chromium/base/AnimationFrameTimeHistogram;

    invoke-virtual {v0}, Lorg/chromium/base/AnimationFrameTimeHistogram;->endRecording()V

    .line 47
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/base/AnimationFrameTimeHistogram$1;->mAnimationFrameTimeHistogram:Lorg/chromium/base/AnimationFrameTimeHistogram;

    invoke-virtual {v0}, Lorg/chromium/base/AnimationFrameTimeHistogram;->startRecording()V

    .line 42
    return-void
.end method
