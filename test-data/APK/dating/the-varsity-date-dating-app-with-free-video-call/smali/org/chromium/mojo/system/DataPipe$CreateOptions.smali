.class public Lorg/chromium/mojo/system/DataPipe$CreateOptions;
.super Ljava/lang/Object;
.source "DataPipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/DataPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateOptions"
.end annotation


# instance fields
.field private mCapacityNumBytes:I

.field private mElementNumBytes:I

.field private mFlags:Lorg/chromium/mojo/system/DataPipe$CreateFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->none()Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mFlags:Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    return-void
.end method


# virtual methods
.method public getCapacityNumBytes()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mCapacityNumBytes:I

    return v0
.end method

.method public getElementNumBytes()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mElementNumBytes:I

    return v0
.end method

.method public getFlags()Lorg/chromium/mojo/system/DataPipe$CreateFlags;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mFlags:Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    return-object v0
.end method

.method public setCapacityNumBytes(I)V
    .locals 0
    .param p1, "capacityNumBytes"    # I

    .prologue
    .line 99
    iput p1, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mCapacityNumBytes:I

    .line 100
    return-void
.end method

.method public setElementNumBytes(I)V
    .locals 0
    .param p1, "elementNumBytes"    # I

    .prologue
    .line 85
    iput p1, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mElementNumBytes:I

    .line 86
    return-void
.end method
