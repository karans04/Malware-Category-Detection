.class Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;
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
    name = "PrimitiveEntityMap"
.end annotation


# instance fields
.field private final mapNameToValue:Ljava/util/Map;

.field private final mapValueToName:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    .line 923
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;->mapValueToName:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 927
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;->mapValueToName:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;

    invoke-virtual {v0, p2, p1}, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 929
    return-void
.end method

.method public name(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 932
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;->mapValueToName:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public value(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 936
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 937
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 938
    const/4 v1, -0x1

    .line 940
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
