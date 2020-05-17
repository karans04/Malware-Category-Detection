.class Lorg/chromium/content/browser/ContentViewCore$SystemAnimationIntervalProvider;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/input/AnimationIntervalProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemAnimationIntervalProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/ContentViewCore$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/content/browser/ContentViewCore$1;

    .prologue
    .line 362
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$SystemAnimationIntervalProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastAnimationFrameInterval()J
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
