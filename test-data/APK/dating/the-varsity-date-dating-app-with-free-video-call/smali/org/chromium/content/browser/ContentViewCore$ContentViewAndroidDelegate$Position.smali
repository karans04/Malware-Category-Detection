.class Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;
.super Ljava/lang/Object;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Position"
.end annotation

.annotation build Lorg/chromium/base/VisibleForTesting;
.end annotation


# instance fields
.field private final mHeight:F

.field private final mWidth:F

.field private final mX:F

.field private final mY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mX:F

    .line 167
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mY:F

    .line 168
    iput p3, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mWidth:F

    .line 169
    iput p4, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mHeight:F

    .line 170
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .prologue
    .line 159
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mX:F

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .prologue
    .line 159
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mY:F

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .prologue
    .line 159
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mWidth:F

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .prologue
    .line 159
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mHeight:F

    return v0
.end method
