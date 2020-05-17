.class public Lorg/chromium/mojo/system/ResultAnd;
.super Ljava/lang/Object;
.source "ResultAnd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMojoResult:I

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lorg/chromium/mojo/system/ResultAnd;, "Lorg/chromium/mojo/system/ResultAnd<TA;>;"
    .local p2, "value":Ljava/lang/Object;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/chromium/mojo/system/ResultAnd;->mMojoResult:I

    .line 18
    iput-object p2, p0, Lorg/chromium/mojo/system/ResultAnd;->mValue:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public getMojoResult()I
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lorg/chromium/mojo/system/ResultAnd;, "Lorg/chromium/mojo/system/ResultAnd<TA;>;"
    iget v0, p0, Lorg/chromium/mojo/system/ResultAnd;->mMojoResult:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lorg/chromium/mojo/system/ResultAnd;, "Lorg/chromium/mojo/system/ResultAnd<TA;>;"
    iget-object v0, p0, Lorg/chromium/mojo/system/ResultAnd;->mValue:Ljava/lang/Object;

    return-object v0
.end method
