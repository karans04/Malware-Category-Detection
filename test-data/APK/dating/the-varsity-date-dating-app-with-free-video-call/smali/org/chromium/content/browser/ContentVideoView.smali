.class public Lorg/chromium/content/browser/ContentVideoView;
.super Landroid/widget/FrameLayout;
.source "ContentVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentVideoView$ProgressView;,
        Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field public static final MEDIA_ERROR_INVALID_CODE:I = 0x3

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0x2

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "cr.ContentVideoView"


# instance fields
.field private mCurrentState:I

.field private final mEmbedder:Lorg/chromium/content/browser/ContentVideoViewEmbedder;

.field private mErrorButton:Ljava/lang/String;

.field private mErrorTitle:Ljava/lang/String;

.field private final mExitFullscreenRunnable:Ljava/lang/Runnable;

.field private mInitialOrientation:Z

.field private mNativeContentVideoView:J

.field private mOrientationChangedTime:J

.field private mPlaybackErrorText:Ljava/lang/String;

.field private mPlaybackStartTime:J

.field private mPossibleAccidentalChange:Z

.field private mProgressView:Landroid/view/View;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUmaRecorded:Z

.field private mUnknownErrorText:Ljava/lang/String;

.field private mVideoHeight:I

.field private mVideoLoadingText:Ljava/lang/String;

.field private mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

.field private mVideoWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;JLorg/chromium/content/browser/ContentVideoViewEmbedder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeContentVideoView"    # J
    .param p4, "embedder"    # Lorg/chromium/content/browser/ContentVideoViewEmbedder;

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    .line 141
    new-instance v0, Lorg/chromium/content/browser/ContentVideoView$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentVideoView$1;-><init>(Lorg/chromium/content/browser/ContentVideoView;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mExitFullscreenRunnable:Ljava/lang/Runnable;

    .line 151
    iput-wide p2, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    .line 152
    iput-object p4, p0, Lorg/chromium/content/browser/ContentVideoView;->mEmbedder:Lorg/chromium/content/browser/ContentVideoViewEmbedder;

    .line 153
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z

    .line 154
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mPossibleAccidentalChange:Z

    .line 155
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentVideoView;->initResources(Landroid/content/Context;)V

    .line 156
    new-instance v0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;-><init>(Lorg/chromium/content/browser/ContentVideoView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    .line 157
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->showContentVideoView()V

    .line 158
    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentVideoView;->setVisibility(I)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentVideoView;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentVideoView;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ContentVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ContentVideoView;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mPlaybackStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ContentVideoView;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/chromium/content/browser/ContentVideoView;J)J
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentVideoView;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/ContentVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->isOrientationPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/ContentVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mInitialOrientation:Z

    return v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ContentVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mPossibleAccidentalChange:Z

    return v0
.end method

.method static synthetic access$702(Lorg/chromium/content/browser/ContentVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentVideoView;->mPossibleAccidentalChange:Z

    return p1
.end method

.method private static createContentVideoView(Lorg/chromium/content/browser/ContentViewCore;J)Lorg/chromium/content/browser/ContentVideoView;
    .locals 3
    .param p0, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "nativeContentVideoView"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 307
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 308
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 309
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentVideoViewEmbedder()Lorg/chromium/content/browser/ContentVideoViewEmbedder;

    move-result-object v1

    .line 310
    .local v1, "embedder":Lorg/chromium/content/browser/ContentVideoViewEmbedder;
    new-instance v2, Lorg/chromium/content/browser/ContentVideoView;

    invoke-direct {v2, v0, p1, p2, v1}, Lorg/chromium/content/browser/ContentVideoView;-><init>(Landroid/content/Context;JLorg/chromium/content/browser/ContentVideoViewEmbedder;)V

    .line 312
    .local v2, "videoView":Lorg/chromium/content/browser/ContentVideoView;
    invoke-interface {v1, v2}, Lorg/chromium/content/browser/ContentVideoViewEmbedder;->enterFullscreenVideo(Landroid/view/View;)V

    .line 313
    return-object v2
.end method

.method private destroyContentVideoView(Z)V
    .locals 2
    .param p1, "nativeViewDestroyed"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->removeSurfaceView()V

    .line 358
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mEmbedder:Lorg/chromium/content/browser/ContentVideoViewEmbedder;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentVideoViewEmbedder;->exitFullscreenVideo()V

    .line 363
    :cond_0
    if-eqz p1, :cond_1

    .line 364
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    .line 366
    :cond_1
    return-void
.end method

.method public static getContentVideoView()Lorg/chromium/content/browser/ContentVideoView;
    .locals 1

    .prologue
    .line 369
    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->nativeGetSingletonJavaContentVideoView()Lorg/chromium/content/browser/ContentVideoView;

    move-result-object v0

    return-object v0
.end method

.method private getContentVideoViewEmbedder()Lorg/chromium/content/browser/ContentVideoViewEmbedder;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mEmbedder:Lorg/chromium/content/browser/ContentVideoViewEmbedder;

    return-object v0
.end method

.method private initResources(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mPlaybackErrorText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 167
    :cond_0
    sget v0, Lorg/chromium/content/R$string;->media_player_error_text_invalid_progressive_playback:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mPlaybackErrorText:Ljava/lang/String;

    .line 169
    sget v0, Lorg/chromium/content/R$string;->media_player_error_text_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mUnknownErrorText:Ljava/lang/String;

    .line 171
    sget v0, Lorg/chromium/content/R$string;->media_player_error_button:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mErrorButton:Ljava/lang/String;

    .line 173
    sget v0, Lorg/chromium/content/R$string;->media_player_error_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mErrorTitle:Ljava/lang/String;

    .line 175
    sget v0, Lorg/chromium/content/R$string;->media_player_loading_video:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoLoadingText:Ljava/lang/String;

    goto :goto_0
.end method

.method private isOrientationPortrait()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 373
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 374
    .local v0, "context":Landroid/content/Context;
    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 375
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 376
    .local v1, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 377
    .local v3, "outputSize":Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 378
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-gt v5, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method private native nativeDidExitFullscreen(JZ)V
.end method

.method private static native nativeGetSingletonJavaContentVideoView()Lorg/chromium/content/browser/ContentVideoView;
.end method

.method private native nativeRecordExitFullscreenPlayback(JZJJ)V
.end method

.method private native nativeRecordFullscreenPlayback(JZZ)V
.end method

.method private native nativeSetSurface(JLandroid/view/Surface;)V
.end method

.method private onVideoSizeChanged(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 251
    iput p1, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    .line 252
    iput p2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    .line 254
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget v3, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    iget v4, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 255
    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->isOrientationPortrait()Z

    move-result v2

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mInitialOrientation:Z

    .line 267
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mPlaybackStartTime:J

    .line 269
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mPlaybackStartTime:J

    iput-wide v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J

    .line 270
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    iget v4, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    iget v5, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    if-le v4, v5, :cond_2

    :goto_1
    iget-boolean v4, p0, Lorg/chromium/content/browser/ContentVideoView;->mInitialOrientation:Z

    invoke-direct {p0, v2, v3, v1, v4}, Lorg/chromium/content/browser/ContentVideoView;->nativeRecordFullscreenPlayback(JZZ)V

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0

    .line 270
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private openVideo()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    .line 297
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 299
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/ContentVideoView;->nativeSetSurface(JLandroid/view/Surface;)V

    .line 302
    :cond_0
    return-void
.end method

.method private showContentVideoView()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v3, -0x2

    .line 180
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 181
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/ContentVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mEmbedder:Lorg/chromium/content/browser/ContentVideoViewEmbedder;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentVideoViewEmbedder;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lorg/chromium/content/browser/ContentVideoView$ProgressView;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoLoadingText:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/ContentVideoView$ProgressView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/ContentVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void
.end method


# virtual methods
.method public exitFullscreen(Z)V
    .locals 12
    .param p1, "releaseMediaPlayer"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 325
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_2

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->destroyContentVideoView(Z)V

    .line 327
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mPossibleAccidentalChange:Z

    if-nez v0, :cond_1

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 329
    .local v8, "currentTime":J
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mPlaybackStartTime:J

    sub-long v4, v0, v2

    .line 330
    .local v4, "timeBeforeOrientationChange":J
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J

    sub-long v6, v8, v0

    .line 331
    .local v6, "timeAfterOrientationChange":J
    cmp-long v0, v4, v10

    if-nez v0, :cond_0

    .line 332
    move-wide v4, v6

    .line 333
    const-wide/16 v6, 0x0

    .line 335
    :cond_0
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    iget-boolean v3, p0, Lorg/chromium/content/browser/ContentVideoView;->mInitialOrientation:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/ContentVideoView;->nativeRecordExitFullscreenPlayback(JZJJ)V

    .line 338
    .end local v4    # "timeBeforeOrientationChange":J
    .end local v6    # "timeAfterOrientationChange":J
    .end local v8    # "currentTime":J
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentVideoView;->nativeDidExitFullscreen(JZ)V

    .line 339
    iput-wide v10, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    .line 341
    :cond_2
    return-void
.end method

.method public onFullscreenWindowFocused()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mEmbedder:Lorg/chromium/content/browser/ContentVideoViewEmbedder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/ContentVideoViewEmbedder;->setSystemUiVisibility(Z)V

    .line 348
    return-void
.end method

.method public onMediaPlayerError(I)V
    .locals 8
    .param p1, "errorType"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 198
    const-string v2, "cr.ContentVideoView"

    const-string v3, "OnMediaPlayerError: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    iget v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    if-ne v2, v6, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 208
    iput v6, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    .line 210
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/ui/base/WindowAndroid;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 211
    const-string v2, "cr.ContentVideoView"

    const-string v3, "Unable to show alert dialog because it requires an activity context"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    if-ne p1, v7, :cond_3

    .line 227
    iget-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mPlaybackErrorText:Ljava/lang/String;

    .line 233
    .local v1, "message":Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView;->mErrorButton:Ljava/lang/String;

    new-instance v4, Lorg/chromium/content/browser/ContentVideoView$2;

    invoke-direct {v4, p0}, Lorg/chromium/content/browser/ContentVideoView$2;-><init>(Lorg/chromium/content/browser/ContentVideoView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "cr.ContentVideoView"

    const-string v3, "Cannot show the alert dialog, error message: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mUnknownErrorText:Ljava/lang/String;

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1
.end method

.method public removeSurfaceView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->removeView(Landroid/view/View;)V

    .line 318
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->removeView(Landroid/view/View;)V

    .line 319
    iput-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    .line 320
    iput-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    .line 321
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 276
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 280
    iput-object p1, p0, Lorg/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 281
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->openVideo()V

    .line 282
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 287
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    invoke-direct {p0, v0, v1, v4}, Lorg/chromium/content/browser/ContentVideoView;->nativeSetSurface(JLandroid/view/Surface;)V

    .line 289
    :cond_0
    iput-object v4, p0, Lorg/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 290
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mExitFullscreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method
