.class Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$HashEntityMap;
.super Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$MapIntMap;
.source "HtmlEntities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$MapIntMap;-><init>()V

    .line 973
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$HashEntityMap;->mapNameToValue:Ljava/util/Map;

    .line 974
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$HashEntityMap;->mapValueToName:Ljava/util/Map;

    .line 975
    return-void
.end method
