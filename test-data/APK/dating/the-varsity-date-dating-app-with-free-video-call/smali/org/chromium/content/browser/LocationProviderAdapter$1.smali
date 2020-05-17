.class Lorg/chromium/content/browser/LocationProviderAdapter$1;
.super Ljava/lang/Object;
.source "LocationProviderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/LocationProviderAdapter;->start(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/LocationProviderAdapter;

.field final synthetic val$enableHighAccuracy:Z


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/LocationProviderAdapter;Z)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/content/browser/LocationProviderAdapter$1;->this$0:Lorg/chromium/content/browser/LocationProviderAdapter;

    iput-boolean p2, p0, Lorg/chromium/content/browser/LocationProviderAdapter$1;->val$enableHighAccuracy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/content/browser/LocationProviderAdapter$1;->this$0:Lorg/chromium/content/browser/LocationProviderAdapter;

    invoke-static {v0}, Lorg/chromium/content/browser/LocationProviderAdapter;->access$000(Lorg/chromium/content/browser/LocationProviderAdapter;)Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/content/browser/LocationProviderAdapter$1;->val$enableHighAccuracy:Z

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/LocationProviderFactory$LocationProvider;->start(Z)V

    .line 50
    return-void
.end method
