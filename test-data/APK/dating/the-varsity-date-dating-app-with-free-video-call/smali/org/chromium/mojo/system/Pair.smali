.class public Lorg/chromium/mojo/system/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/chromium/mojo/system/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lorg/chromium/mojo/system/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    new-instance v0, Lorg/chromium/mojo/system/Pair;

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<TF;TS;>;"
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<TF;TS;>;"
    const/4 v1, 0x0

    .line 42
    instance-of v2, p1, Lorg/chromium/mojo/system/Pair;

    if-nez v2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 45
    check-cast v0, Lorg/chromium/mojo/system/Pair;

    .line 46
    .local v0, "p":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<**>;"
    iget-object v2, p0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    iget-object v3, v0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lorg/chromium/mojo/system/Pair;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    iget-object v3, v0, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lorg/chromium/mojo/system/Pair;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, "this":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<TF;TS;>;"
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method
