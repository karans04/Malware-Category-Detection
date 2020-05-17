.class Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;
.super Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
.source "FormattedMediaEntity.java"


# instance fields
.field final mediaUrlHttps:Ljava/lang/String;

.field final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/models/MediaEntity;)V
    .locals 1
    .param p1, "entity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;-><init>(Lcom/twitter/sdk/android/core/models/UrlEntity;)V

    .line 28
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;->type:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->mediaUrlHttps:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;->mediaUrlHttps:Ljava/lang/String;

    .line 30
    return-void
.end method
