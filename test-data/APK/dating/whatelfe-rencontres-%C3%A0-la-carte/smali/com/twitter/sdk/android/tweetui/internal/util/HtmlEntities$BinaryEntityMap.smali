.class Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;
.super Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;
.source "HtmlEntities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "growBy"    # I

    .prologue
    .line 1077
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;-><init>(I)V

    .line 1078
    return-void
.end method

.method private binarySearch(I)I
    .locals 5
    .param p1, "key"    # I

    .prologue
    .line 1082
    const/4 v1, 0x0

    .line 1083
    .local v1, "low":I
    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    add-int/lit8 v0, v4, -0x1

    .line 1085
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1086
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 1087
    .local v2, "mid":I
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->values:[I

    aget v3, v4, v2

    .line 1089
    .local v3, "midVal":I
    if-ge v3, p1, :cond_0

    .line 1090
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 1091
    :cond_0
    if-le v3, p1, :cond_2

    .line 1092
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 1097
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    add-int/lit8 v4, v1, 0x1

    neg-int v2, v4

    :cond_2
    return v2
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1102
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->ensureCapacity(I)V

    .line 1103
    invoke-direct {p0, p2}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->binarySearch(I)I

    move-result v0

    .line 1104
    .local v0, "insertAt":I
    if-lez v0, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1108
    :cond_0
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 1110
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->values:[I

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->values:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1111
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->values:[I

    aput p2, v1, v0

    .line 1112
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->names:[Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->names:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->names:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 1114
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->size:I

    goto :goto_0
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->binarySearch(I)I

    move-result v0

    .line 1120
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1121
    const/4 v1, 0x0

    .line 1123
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$BinaryEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method
