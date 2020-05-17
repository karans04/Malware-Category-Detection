.class Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$TreeEntityMap;
.super Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$MapIntMap;
.source "HtmlEntities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$MapIntMap;-><init>()V

    .line 981
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$TreeEntityMap;->mapNameToValue:Ljava/util/Map;

    .line 982
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$TreeEntityMap;->mapValueToName:Ljava/util/Map;

    .line 983
    return-void
.end method
