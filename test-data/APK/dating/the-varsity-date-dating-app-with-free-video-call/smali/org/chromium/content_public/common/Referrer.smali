.class public Lorg/chromium/content_public/common/Referrer;
.super Ljava/lang/Object;
.source "Referrer.java"


# static fields
.field public static final REFERRER_POLICY_ALWAYS:I = 0x0

.field public static final REFERRER_POLICY_DEFAULT:I = 0x1


# instance fields
.field private final mPolicy:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "policy"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/chromium/content_public/common/Referrer;->mUrl:Ljava/lang/String;

    .line 26
    iput p2, p0, Lorg/chromium/content_public/common/Referrer;->mPolicy:I

    .line 27
    return-void
.end method


# virtual methods
.method public getPolicy()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/chromium/content_public/common/Referrer;->mPolicy:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/content_public/common/Referrer;->mUrl:Ljava/lang/String;

    return-object v0
.end method
