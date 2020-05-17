.class public Lname/ratson/cordova/admob/AdMob;
.super Lorg/apache/cordova/CordovaPlugin;
.source "AdMob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdMob"


# instance fields
.field private bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

.field public final config:Lname/ratson/cordova/admob/AdMobConfig;

.field private interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

.field private isGpsAvailable:Z

.field private rewardVideoExecutor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 42
    new-instance v0, Lname/ratson/cordova/admob/AdMobConfig;

    invoke-direct {v0}, Lname/ratson/cordova/admob/AdMobConfig;-><init>()V

    iput-object v0, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    .line 44
    iput-object v1, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    .line 45
    iput-object v1, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .line 46
    iput-object v1, p0, Lname/ratson/cordova/admob/AdMob;->rewardVideoExecutor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lname/ratson/cordova/admob/AdMob;->isGpsAvailable:Z

    return-void
.end method

.method private executeSetOptions(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 2
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 143
    const-string v0, "AdMob"

    const-string v1, "executeSetOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    invoke-virtual {v0, p1}, Lname/ratson/cordova/admob/AdMobConfig;->setOptions(Lorg/json/JSONObject;)V

    .line 147
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 246
    iget-object v1, p0, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "ANDROID_ID":Ljava/lang/String;
    invoke-static {v0}, Lname/ratson/cordova/admob/AdMob;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 252
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 253
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 254
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 255
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 257
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 260
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 266
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :goto_2
    return-object v5

    .line 264
    :catch_0
    move-exception v5

    .line 266
    const-string v5, ""

    goto :goto_2
.end method


# virtual methods
.method public buildAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 152
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 153
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-boolean v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->isTesting:Z

    if-eqz v6, :cond_0

    .line 154
    const-string v6, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v6

    invoke-direct {p0}, Lname/ratson/cordova/admob/AdMob;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 157
    :cond_0
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->testDeviceList:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 158
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->testDeviceList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 159
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 160
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    goto :goto_0

    .line 164
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "cordova"

    invoke-virtual {v1, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->adExtras:Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    .line 167
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->adExtras:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 168
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 171
    .local v5, "key":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->adExtras:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "exception":Lorg/json/JSONException;
    const-string v6, "AdMob"

    const-string v7, "Caught JSON Exception: %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    .end local v2    # "exception":Lorg/json/JSONException;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    const-class v6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 179
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->gender:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 180
    const-string v6, "male"

    iget-object v7, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v7, v7, Lname/ratson/cordova/admob/AdMobConfig;->gender:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_8

    .line 181
    invoke-virtual {v0, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 188
    :cond_3
    :goto_2
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->location:Landroid/location/Location;

    if-eqz v6, :cond_4

    .line 189
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->location:Landroid/location/Location;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 191
    :cond_4
    const-string v6, "yes"

    iget-object v7, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v7, v7, Lname/ratson/cordova/admob/AdMobConfig;->forFamily:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 192
    invoke-virtual {v0, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 196
    :cond_5
    :goto_3
    const-string v6, "yes"

    iget-object v7, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v7, v7, Lname/ratson/cordova/admob/AdMobConfig;->forChild:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 197
    invoke-virtual {v0, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 201
    :cond_6
    :goto_4
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->contentURL:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 202
    iget-object v6, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v6, v6, Lname/ratson/cordova/admob/AdMobConfig;->contentURL:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 205
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v6

    return-object v6

    .line 182
    :cond_8
    const-string v6, "female"

    iget-object v7, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v7, v7, Lname/ratson/cordova/admob/AdMobConfig;->gender:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_9

    .line 183
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_2

    .line 185
    :cond_9
    invoke-virtual {v0, v11}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_2

    .line 193
    :cond_a
    const-string v6, "no"

    iget-object v7, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v7, v7, Lname/ratson/cordova/admob/AdMobConfig;->forFamily:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 194
    invoke-virtual {v0, v11}, Lcom/google/android/gms/ads/AdRequest$Builder;->setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_3

    .line 198
    :cond_b
    const-string v6, "no"

    iget-object v7, p0, Lname/ratson/cordova/admob/AdMob;->config:Lname/ratson/cordova/admob/AdMobConfig;

    iget-object v7, v7, Lname/ratson/cordova/admob/AdMobConfig;->forChild:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 199
    invoke-virtual {v0, v11}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_4
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "inputs"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    if-nez v3, :cond_0

    .line 70
    new-instance v3, Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-direct {v3, p0}, Lname/ratson/cordova/admob/banner/BannerExecutor;-><init>(Lname/ratson/cordova/admob/AdMob;)V

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    .line 72
    :cond_0
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    if-nez v3, :cond_1

    .line 73
    new-instance v3, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-direct {v3, p0}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;-><init>(Lname/ratson/cordova/admob/AdMob;)V

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .line 75
    :cond_1
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->rewardVideoExecutor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    if-nez v3, :cond_2

    .line 76
    new-instance v3, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-direct {v3, p0}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;-><init>(Lname/ratson/cordova/admob/AdMob;)V

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMob;->rewardVideoExecutor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .line 79
    :cond_2
    const/4 v1, 0x0

    .line 81
    .local v1, "result":Lorg/apache/cordova/PluginResult;
    const-string v3, "setOptions"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    .local v0, "options":Lorg/json/JSONObject;
    invoke-direct {p0, v0, p3}, Lname/ratson/cordova/admob/AdMob;->executeSetOptions(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 135
    .end local v0    # "options":Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 139
    :cond_3
    return v7

    .line 85
    :cond_4
    const-string v3, "createBannerView"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    .restart local v0    # "options":Lorg/json/JSONObject;
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-virtual {v3, v0, p3}, Lname/ratson/cordova/admob/banner/BannerExecutor;->prepareAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 89
    goto :goto_0

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_5
    const-string v3, "destroyBannerView"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 90
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-virtual {v3, p3}, Lname/ratson/cordova/admob/banner/BannerExecutor;->removeAd(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_6
    const-string v3, "requestAd"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 93
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    .restart local v0    # "options":Lorg/json/JSONObject;
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-virtual {v3, v0, p3}, Lname/ratson/cordova/admob/banner/BannerExecutor;->requestAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 96
    goto :goto_0

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_7
    const-string v3, "showAd"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 97
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    .line 98
    .local v2, "show":Z
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-virtual {v3, v2, p3}, Lname/ratson/cordova/admob/banner/BannerExecutor;->showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 100
    goto :goto_0

    .end local v2    # "show":Z
    :cond_8
    const-string v3, "prepareInterstitial"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 101
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    .restart local v0    # "options":Lorg/json/JSONObject;
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v3, v0, p3}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->prepareAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 104
    goto :goto_0

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_9
    const-string v3, "createInterstitialView"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 105
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    .restart local v0    # "options":Lorg/json/JSONObject;
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v3, v0, p3}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->createAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 108
    goto :goto_0

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_a
    const-string v3, "requestInterstitialAd"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 109
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    .restart local v0    # "options":Lorg/json/JSONObject;
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v3, v0, p3}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->requestAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 112
    goto/16 :goto_0

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_b
    const-string v3, "showInterstitialAd"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 113
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    .line 114
    .restart local v2    # "show":Z
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v3, v2, p3}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 116
    goto/16 :goto_0

    .end local v2    # "show":Z
    :cond_c
    const-string v3, "isInterstitialReady"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 117
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v3, p3}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->isReady(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    goto/16 :goto_0

    .line 119
    :cond_d
    const-string v3, "createRewardVideo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 120
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    .restart local v0    # "options":Lorg/json/JSONObject;
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->rewardVideoExecutor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-virtual {v3, v0, p3}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->prepareAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 123
    goto/16 :goto_0

    .end local v0    # "options":Lorg/json/JSONObject;
    :cond_e
    const-string v3, "showRewardVideo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 124
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    .line 125
    .restart local v2    # "show":Z
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->rewardVideoExecutor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-virtual {v3, v2, p3}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->showAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 127
    goto/16 :goto_0

    .end local v2    # "show":Z
    :cond_f
    const-string v3, "isRewardVideoReady"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 128
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMob;->rewardVideoExecutor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-virtual {v3, p3}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->isReady(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    goto/16 :goto_0

    .line 131
    :cond_10
    const-string v3, "AdMob"

    const-string v4, "Invalid action passed: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v1, Lorg/apache/cordova/PluginResult;

    .end local v1    # "result":Lorg/apache/cordova/PluginResult;
    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .restart local v1    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_0
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 5
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 53
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lname/ratson/cordova/admob/AdMob;->isGpsAvailable:Z

    .line 54
    const-string v3, "AdMob"

    const-string v4, "isGooglePlayServicesAvailable: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v0, p0, Lname/ratson/cordova/admob/AdMob;->isGpsAvailable:Z

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    aput-object v0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-virtual {v0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->destroy()V

    .line 230
    iput-object v1, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    .line 232
    :cond_0
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    invoke-virtual {v0}, Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;->destroy()V

    .line 234
    iput-object v1, p0, Lname/ratson/cordova/admob/AdMob;->interstitialExecutor:Lname/ratson/cordova/admob/interstitial/InterstitialExecutor;

    .line 236
    :cond_1
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->rewardVideoExecutor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->rewardVideoExecutor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    invoke-virtual {v0}, Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;->destroy()V

    .line 238
    iput-object v1, p0, Lname/ratson/cordova/admob/AdMob;->rewardVideoExecutor:Lname/ratson/cordova/admob/rewardvideo/RewardVideoExecutor;

    .line 240
    :cond_2
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    .line 241
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-virtual {v0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->pauseAd()V

    .line 214
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 215
    return-void
.end method

.method public onResume(Z)V
    .locals 2
    .param p1, "multitasking"    # Z

    .prologue
    .line 219
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 220
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lname/ratson/cordova/admob/AdMob;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lname/ratson/cordova/admob/AdMob;->isGpsAvailable:Z

    .line 221
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMob;->bannerExecutor:Lname/ratson/cordova/admob/banner/BannerExecutor;

    invoke-virtual {v0}, Lname/ratson/cordova/admob/banner/BannerExecutor;->resumeAd()V

    .line 224
    :cond_0
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
