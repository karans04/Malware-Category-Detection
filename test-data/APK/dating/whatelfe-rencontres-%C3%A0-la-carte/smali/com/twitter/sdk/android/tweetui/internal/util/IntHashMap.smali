.class public Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    }
.end annotation


# instance fields
.field private count:I

.field private loadFactor:F

.field private table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    const/16 v0, 0x14

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;-><init>(IF)V

    .line 104
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 117
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;-><init>(IF)V

    .line 118
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-gez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    if-nez p1, :cond_2

    .line 140
    const/4 p1, 0x1

    .line 143
    :cond_2
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->loadFactor:F

    .line 144
    new-array v0, p1, [Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 145
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->threshold:I

    .line 146
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 386
    .local v1, "tab":[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    array-length v0, v1

    .local v0, "index":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 387
    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 385
    .end local v0    # "index":I
    .end local v1    # "tab":[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 389
    .restart local v0    # "index":I
    .restart local v1    # "tab":[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    monitor-exit p0

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 196
    .local v3, "tab":[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    array-length v1, v3

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 197
    aget-object v0, v3, v1

    .local v0, "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    :goto_1
    if-eqz v0, :cond_2

    .line 198
    iget-object v4, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    const/4 v4, 0x1

    .line 203
    .end local v0    # "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    :goto_2
    return v4

    .line 197
    .restart local v0    # "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    :cond_1
    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    goto :goto_1

    :cond_2
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 203
    .end local v0    # "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public containsKey(I)Z
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 236
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 237
    .local v3, "tab":[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    move v1, p1

    .line 238
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 239
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 240
    iget v4, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_0

    .line 241
    const/4 v4, 0x1

    .line 244
    :goto_1
    return v4

    .line 239
    :cond_0
    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    goto :goto_0

    .line 244
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 259
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 260
    .local v3, "tab":[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    move v1, p1

    .line 261
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 262
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 263
    iget v4, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_0

    .line 264
    iget-object v4, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 267
    :goto_1
    return-object v4

    .line 262
    :cond_0
    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    goto :goto_0

    .line 267
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7fffffff

    .line 321
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 322
    .local v4, "tab":[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    move v1, p1

    .line 323
    .local v1, "hash":I
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 324
    .local v2, "index":I
    aget-object v0, v4, v2

    .local v0, "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 325
    iget v5, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_0

    .line 326
    iget-object v3, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 327
    .local v3, "old":Ljava/lang/Object;
    iput-object p2, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 344
    .end local v3    # "old":Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 324
    :cond_0
    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    goto :goto_0

    .line 332
    :cond_1
    iget v5, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->count:I

    iget v6, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->threshold:I

    if-lt v5, v6, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->rehash()V

    .line 336
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 337
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 341
    :cond_2
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .end local v0    # "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    aget-object v5, v4, v2

    invoke-direct {v0, v1, p1, p2, v5}, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;-><init>(IILjava/lang/Object;Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;)V

    .line 342
    .restart local v0    # "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    aput-object v0, v4, v2

    .line 343
    iget v5, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->count:I

    .line 344
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected rehash()V
    .locals 11

    .prologue
    .line 281
    iget-object v9, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    array-length v7, v9

    .line 282
    .local v7, "oldCapacity":I
    iget-object v8, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 284
    .local v8, "oldMap":[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v4, v9, 0x1

    .line 285
    .local v4, "newCapacity":I
    new-array v5, v4, [Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 287
    .local v5, "newMap":[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    int-to-float v9, v4

    iget v10, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->loadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->threshold:I

    .line 288
    iput-object v5, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 290
    move v1, v7

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_1

    .line 291
    aget-object v6, v8, v1

    .local v6, "old":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    :goto_1
    if-eqz v6, :cond_0

    .line 292
    move-object v0, v6

    .line 293
    .local v0, "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    iget-object v6, v6, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 295
    iget v9, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->hash:I

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int v3, v9, v4

    .line 296
    .local v3, "index":I
    aget-object v9, v5, v3

    iput-object v9, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 297
    aput-object v0, v5, v3

    goto :goto_1

    .end local v0    # "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    .end local v3    # "index":I
    :cond_0
    move v2, v1

    .line 298
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 300
    .end local v2    # "i":I
    .end local v6    # "old":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # I

    .prologue
    const/4 v6, 0x0

    .line 360
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->table:[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 361
    .local v5, "tab":[Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    move v1, p1

    .line 362
    .local v1, "hash":I
    const v7, 0x7fffffff

    and-int/2addr v7, v1

    array-length v8, v5

    rem-int v2, v7, v8

    .line 363
    .local v2, "index":I
    aget-object v0, v5, v2

    .local v0, "e":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    const/4 v4, 0x0

    .local v4, "prev":Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;
    :goto_0
    if-eqz v0, :cond_2

    .line 364
    iget v7, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->hash:I

    if-ne v7, v1, :cond_1

    .line 365
    if-eqz v4, :cond_0

    .line 366
    iget-object v7, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    iput-object v7, v4, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    .line 370
    :goto_1
    iget v7, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->count:I

    .line 371
    iget-object v3, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 372
    .local v3, "oldValue":Ljava/lang/Object;
    iput-object v6, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 376
    .end local v3    # "oldValue":Ljava/lang/Object;
    :goto_2
    return-object v3

    .line 368
    :cond_0
    iget-object v7, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    aput-object v7, v5, v2

    goto :goto_1

    .line 363
    :cond_1
    move-object v4, v0

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;->next:Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap$Entry;

    goto :goto_0

    :cond_2
    move-object v3, v6

    .line 376
    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/util/IntHashMap;->count:I

    return v0
.end method
