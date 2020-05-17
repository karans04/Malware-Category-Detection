.class Lorg/chromium/ui/resources/statics/StaticResourceLoader$1;
.super Ljava/lang/Object;
.source "StaticResourceLoader.java"

# interfaces
.implements Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/resources/statics/StaticResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lorg/chromium/ui/resources/statics/StaticResourceLoader$1;->val$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lorg/chromium/ui/resources/Resource;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResourceLoader$1;->val$resources:Landroid/content/res/Resources;

    invoke-static {v0, p1, v1, v1}, Lorg/chromium/ui/resources/statics/StaticResource;->create(Landroid/content/res/Resources;III)Lorg/chromium/ui/resources/statics/StaticResource;

    move-result-object v0

    return-object v0
.end method
