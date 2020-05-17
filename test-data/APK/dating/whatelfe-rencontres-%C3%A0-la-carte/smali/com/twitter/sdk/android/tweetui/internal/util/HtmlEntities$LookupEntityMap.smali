.class Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$LookupEntityMap;
.super Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;
.source "HtmlEntities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LookupEntityMap"
.end annotation


# static fields
.field private static final LOOKUP_TABLE_SIZE:I = 0x100


# instance fields
.field private lookupTable:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;-><init>()V

    return-void
.end method

.method private createLookupTable()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 1007
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    .line 1008
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    :cond_0
    return-void
.end method

.method private lookupTable()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1001
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$LookupEntityMap;->createLookupTable()V

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public name(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 993
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 994
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$LookupEntityMap;->lookupTable()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    .line 996
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
