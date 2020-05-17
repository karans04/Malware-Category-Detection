.class public final Lorg/chromium/mojo/bindings/DataHeader;
.super Ljava/lang/Object;
.source "DataHeader.java"


# static fields
.field public static final ELEMENTS_OR_VERSION_OFFSET:I = 0x4

.field public static final HEADER_SIZE:I = 0x8

.field public static final SIZE_OFFSET:I


# instance fields
.field public final elementsOrVersion:I

.field public final size:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "elementsOrVersion"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    .line 43
    iput p2, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p1, p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 67
    check-cast v0, Lorg/chromium/mojo/bindings/DataHeader;

    .line 68
    .local v0, "other":Lorg/chromium/mojo/bindings/DataHeader;
    iget v3, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    iget v4, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    iget v4, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 53
    .local v1, "result":I
    iget v2, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    add-int/lit8 v1, v2, 0x1f

    .line 54
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    add-int v1, v2, v3

    .line 55
    return v1
.end method
