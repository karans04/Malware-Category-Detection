.class Lorg/chromium/content/browser/crypto/CipherFactory$1;
.super Ljava/lang/Object;
.source "CipherFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/crypto/CipherFactory;->getCipherData(Z)Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/crypto/CipherFactory;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/crypto/CipherFactory;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lorg/chromium/content/browser/crypto/CipherFactory$1;->this$0:Lorg/chromium/content/browser/crypto/CipherFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/chromium/content/browser/crypto/CipherFactory$1;->this$0:Lorg/chromium/content/browser/crypto/CipherFactory;

    invoke-static {v0}, Lorg/chromium/content/browser/crypto/CipherFactory;->access$200(Lorg/chromium/content/browser/crypto/CipherFactory;)V

    .line 171
    return-void
.end method
