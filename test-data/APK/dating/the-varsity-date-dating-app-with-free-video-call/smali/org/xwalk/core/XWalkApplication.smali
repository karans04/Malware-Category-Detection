.class public Lorg/xwalk/core/XWalkApplication;
.super Landroid/app/Application;
.source "XWalkApplication.java"


# static fields
.field private static gApp:Lorg/xwalk/core/XWalkApplication;


# instance fields
.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lorg/xwalk/core/XWalkApplication;->gApp:Lorg/xwalk/core/XWalkApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/XWalkApplication;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static getApplication()Lorg/xwalk/core/XWalkApplication;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/xwalk/core/XWalkApplication;->gApp:Lorg/xwalk/core/XWalkApplication;

    return-object v0
.end method


# virtual methods
.method addResource(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xwalk/core/XWalkApplication;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lorg/xwalk/core/XWalkMixedResources;

    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/xwalk/core/XWalkMixedResources;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkApplication;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xwalk/core/XWalkApplication;->mRes:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkApplication;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 24
    sput-object p0, Lorg/xwalk/core/XWalkApplication;->gApp:Lorg/xwalk/core/XWalkApplication;

    .line 25
    return-void
.end method
