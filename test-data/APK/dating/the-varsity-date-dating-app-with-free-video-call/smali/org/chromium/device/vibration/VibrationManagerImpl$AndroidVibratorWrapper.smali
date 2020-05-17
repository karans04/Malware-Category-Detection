.class public Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;
.super Ljava/lang/Object;
.source "VibrationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/vibration/VibrationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidVibratorWrapper"
.end annotation

.annotation build Lorg/chromium/base/VisibleForTesting;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/os/Vibrator;)V
    .locals 0
    .param p1, "vibrator"    # Landroid/os/Vibrator;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    .line 46
    return-void
.end method

.method public vibrate(Landroid/os/Vibrator;J)V
    .locals 0
    .param p1, "vibrator"    # Landroid/os/Vibrator;
    .param p2, "milliseconds"    # J

    .prologue
    .line 41
    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 42
    return-void
.end method
