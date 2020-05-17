.class public Lorg/chromium/net/RegistrationPolicyAlwaysRegister;
.super Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
.source "RegistrationPolicyAlwaysRegister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method protected init(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .locals 0
    .param p1, "notifier"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->init(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 15
    invoke-virtual {p0}, Lorg/chromium/net/RegistrationPolicyAlwaysRegister;->register()V

    .line 16
    return-void
.end method
