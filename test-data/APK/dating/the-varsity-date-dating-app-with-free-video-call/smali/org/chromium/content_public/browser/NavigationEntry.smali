.class public Lorg/chromium/content_public/browser/NavigationEntry;
.super Ljava/lang/Object;
.source "NavigationEntry.java"


# instance fields
.field private mFavicon:Landroid/graphics/Bitmap;

.field private final mIndex:I

.field private final mOriginalUrl:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private mTransition:I

.field private final mUrl:Ljava/lang/String;

.field private final mVirtualUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "virtualUrl"    # Ljava/lang/String;
    .param p4, "originalUrl"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "favicon"    # Landroid/graphics/Bitmap;
    .param p7, "transition"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mIndex:I

    .line 28
    iput-object p2, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mUrl:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mVirtualUrl:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mOriginalUrl:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mTitle:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mFavicon:Landroid/graphics/Bitmap;

    .line 33
    iput p7, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mTransition:I

    .line 34
    return-void
.end method


# virtual methods
.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mIndex:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mTransition:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mVirtualUrl:Ljava/lang/String;

    return-object v0
.end method

.method public updateFavicon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/chromium/content_public/browser/NavigationEntry;->mFavicon:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method
