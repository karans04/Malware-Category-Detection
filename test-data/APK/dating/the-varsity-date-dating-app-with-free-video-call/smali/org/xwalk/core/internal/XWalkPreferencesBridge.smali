.class public Lorg/xwalk/core/internal/XWalkPreferencesBridge;
.super Lorg/xwalk/core/internal/XWalkPreferencesInternal;
.source "XWalkPreferencesBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;-><init>()V

    return-void
.end method

.method public static getBooleanValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntegerValue(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setValue(Ljava/lang/String;I)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 27
    invoke-static {p0, p1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->setValue(Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0, p1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static setValue(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 24
    invoke-static {p0, p1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->setValue(Ljava/lang/String;Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 47
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 49
    :cond_0
    return-void
.end method
