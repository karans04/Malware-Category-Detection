.class public Lorg/chromium/device/vibration/VibrationManagerImpl;
.super Ljava/lang/Object;
.source "VibrationManagerImpl.java"

# interfaces
.implements Lorg/chromium/mojom/device/VibrationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;
    }
.end annotation


# static fields
.field private static final MAXIMUM_VIBRATION_DURATION_MS:J = 0x2710L

.field private static final MINIMUM_VIBRATION_DURATION_MS:J = 0x1L

.field private static final TAG:Ljava/lang/String; = "VibrationManagerImpl"

.field private static sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHasVibratePermission:Z

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mVibrator:Landroid/os/Vibrator;

    .line 57
    sget-object v0, Lorg/chromium/device/vibration/VibrationManagerImpl;->sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    invoke-direct {v0}, Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;-><init>()V

    sput-object v0, Lorg/chromium/device/vibration/VibrationManagerImpl;->sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    .line 61
    :cond_0
    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    .line 64
    iget-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    if-nez v0, :cond_1

    .line 65
    const-string v0, "VibrationManagerImpl"

    const-string v1, "Failed to use vibrate API, requires VIBRATE permission."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    return-void

    .line 61
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setVibratorWrapperForTesting(Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;)V
    .locals 0
    .param p0, "wrapper"    # Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    .prologue
    .line 51
    sput-object p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    .line 52
    return-void
.end method


# virtual methods
.method public cancel(Lorg/chromium/mojom/device/VibrationManager$CancelResponse;)V
    .locals 2
    .param p1, "callback"    # Lorg/chromium/mojom/device/VibrationManager$CancelResponse;

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/device/vibration/VibrationManagerImpl;->sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    iget-object v1, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;->cancel(Landroid/os/Vibrator;)V

    .line 92
    :cond_0
    invoke-interface {p1}, Lorg/chromium/mojom/device/VibrationManager$CancelResponse;->call()V

    .line 93
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0
    .param p1, "e"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 73
    return-void
.end method

.method public vibrate(JLorg/chromium/mojom/device/VibrationManager$VibrateResponse;)V
    .locals 7
    .param p1, "milliseconds"    # J
    .param p3, "callback"    # Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;

    .prologue
    .line 79
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x2710

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 82
    .local v0, "sanitizedMilliseconds":J
    iget-object v2, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    if-eqz v2, :cond_0

    .line 84
    sget-object v2, Lorg/chromium/device/vibration/VibrationManagerImpl;->sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    iget-object v3, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2, v3, v0, v1}, Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;->vibrate(Landroid/os/Vibrator;J)V

    .line 86
    :cond_0
    invoke-interface {p3}, Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;->call()V

    .line 87
    return-void
.end method
