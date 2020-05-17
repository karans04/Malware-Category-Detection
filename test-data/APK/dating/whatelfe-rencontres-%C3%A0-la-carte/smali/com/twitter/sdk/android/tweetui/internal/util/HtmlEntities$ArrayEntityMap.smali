.class Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;
.super Ljava/lang/Object;
.source "HtmlEntities.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$EntityMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayEntityMap"
.end annotation


# instance fields
.field protected growBy:I

.field protected names:[Ljava/lang/String;

.field protected size:I

.field protected values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    const/16 v0, 0x64

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    .line 1017
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    .line 1024
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 1025
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    .line 1026
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "growBy"    # I

    .prologue
    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    const/16 v0, 0x64

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    .line 1017
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    .line 1029
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    .line 1030
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 1031
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    .line 1032
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1035
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->ensureCapacity(I)V

    .line 1036
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    aput-object p1, v0, v1

    .line 1037
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    aput p2, v0, v1

    .line 1038
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    .line 1039
    return-void
.end method

.method protected ensureCapacity(I)V
    .locals 6
    .param p1, "capacity"    # I

    .prologue
    const/4 v5, 0x0

    .line 1042
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    array-length v3, v3

    if-le p1, v3, :cond_0

    .line 1043
    iget v3, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->growBy:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1044
    .local v1, "newSize":I
    new-array v0, v1, [Ljava/lang/String;

    .line 1045
    .local v0, "newNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1046
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    .line 1047
    new-array v2, v1, [I

    .line 1048
    .local v2, "newValues":[I
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    iput-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    .line 1051
    .end local v0    # "newNames":[Ljava/lang/String;
    .end local v1    # "newSize":I
    .end local v2    # "newValues":[I
    :cond_0
    return-void
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1054
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    if-ge v0, v1, :cond_1

    .line 1055
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1059
    :goto_1
    return-object v1

    .line 1054
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public value(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->size:I

    if-ge v0, v1, :cond_1

    .line 1064
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$ArrayEntityMap;->values:[I

    aget v1, v1, v0

    .line 1068
    :goto_1
    return v1

    .line 1063
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1068
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method
