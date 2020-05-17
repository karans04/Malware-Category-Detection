.class public Lname/ratson/cordova/admob/AdMobConfig;
.super Ljava/lang/Object;
.source "AdMobConfig.java"


# static fields
.field private static final OPT_AD_EXTRAS:Ljava/lang/String; = "adExtras"

.field private static final OPT_AD_SIZE:Ljava/lang/String; = "adSize"

.field public static final OPT_AUTO_SHOW:Ljava/lang/String; = "autoShow"

.field private static final OPT_AUTO_SHOW_BANNER:Ljava/lang/String; = "autoShowBanner"

.field public static final OPT_AUTO_SHOW_INTERSTITIAL:Ljava/lang/String; = "autoShowInterstitial"

.field private static final OPT_BANNER_AT_TOP:Ljava/lang/String; = "bannerAtTop"

.field private static final OPT_CONTENTURL:Ljava/lang/String; = "contentUrl"

.field private static final OPT_EXCLUDE:Ljava/lang/String; = "exclude"

.field private static final OPT_FORCHILD:Ljava/lang/String; = "forChild"

.field private static final OPT_FORFAMILY:Ljava/lang/String; = "forFamily"

.field private static final OPT_GENDER:Ljava/lang/String; = "gender"

.field private static final OPT_INTERSTITIAL_AD_ID:Ljava/lang/String; = "interstitialAdId"

.field private static final OPT_IS_TESTING:Ljava/lang/String; = "isTesting"

.field private static final OPT_LOCATION:Ljava/lang/String; = "location"

.field private static final OPT_OFFSET_TOPBAR:Ljava/lang/String; = "offsetTopBar"

.field private static final OPT_OVERLAP:Ljava/lang/String; = "overlap"

.field private static final OPT_PUBLISHER_ID:Ljava/lang/String; = "publisherId"

.field private static final OPT_REWARD_VIDEO_ID:Ljava/lang/String; = "rewardVideoId"

.field public static final OPT_TEST_DEVICES:Ljava/lang/String; = "testDevices"

.field private static final TEST_BANNER_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/6300978111"

.field private static final TEST_INTERSTITIAL_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/1033173712"

.field private static final TEST_REWARDED_VIDEO_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/5224354917"


# instance fields
.field public adExtras:Lorg/json/JSONObject;

.field public adSize:Lcom/google/android/gms/ads/AdSize;

.field public autoShow:Z

.field public autoShowBanner:Z

.field public autoShowInterstitial:Z

.field public autoShowRewardVideo:Z

.field private bannerAdUnitId:Ljava/lang/String;

.field public bannerAtTop:Z

.field public bannerOverlap:Z

.field public contentURL:Ljava/lang/String;

.field public exclude:Lorg/json/JSONArray;

.field public forChild:Ljava/lang/String;

.field public forFamily:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field private interstitialAdUnitId:Ljava/lang/String;

.field public isTesting:Z

.field public location:Landroid/location/Location;

.field public offsetTopBar:Z

.field private rewardVideoId:Ljava/lang/String;

.field public testDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lname/ratson/cordova/admob/AdMobConfig;->isTesting:Z

    .line 41
    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->adExtras:Lorg/json/JSONObject;

    .line 43
    iput-boolean v2, p0, Lname/ratson/cordova/admob/AdMobConfig;->autoShow:Z

    .line 44
    iput-boolean v2, p0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowBanner:Z

    .line 45
    iput-boolean v2, p0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowInterstitial:Z

    .line 46
    iput-boolean v1, p0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowRewardVideo:Z

    .line 48
    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->gender:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->forChild:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->forFamily:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->contentURL:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->exclude:Lorg/json/JSONArray;

    .line 54
    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->testDeviceList:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->location:Landroid/location/Location;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->bannerAdUnitId:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->adSize:Lcom/google/android/gms/ads/AdSize;

    .line 65
    iput-boolean v1, p0, Lname/ratson/cordova/admob/AdMobConfig;->bannerAtTop:Z

    .line 69
    iput-boolean v1, p0, Lname/ratson/cordova/admob/AdMobConfig;->bannerOverlap:Z

    .line 70
    iput-boolean v1, p0, Lname/ratson/cordova/admob/AdMobConfig;->offsetTopBar:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->interstitialAdUnitId:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->rewardVideoId:Ljava/lang/String;

    return-void
.end method

.method private static adSizeFromString(Ljava/lang/String;)Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .param p0, "size"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v0, "BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 216
    :goto_0
    return-object v0

    .line 193
    :cond_0
    const-string v0, "FULL_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 195
    :cond_1
    const-string v0, "LARGE_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 197
    :cond_2
    const-string v0, "LEADERBOARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 199
    :cond_3
    const-string v0, "MEDIUM_RECTANGLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 201
    :cond_4
    const-string v0, "WIDE_SKYSCRAPER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 202
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 203
    :cond_5
    const-string v0, "SMART_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 205
    :cond_6
    const-string v0, "FLUID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 206
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FLUID:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 207
    :cond_7
    const-string v0, "SEARCH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 208
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SEARCH:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 209
    :cond_8
    const-string v0, "IAB_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 210
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 211
    :cond_9
    const-string v0, "IAB_MRECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 212
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 213
    :cond_a
    const-string v0, "IAB_LEADERBOARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 214
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 216
    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEmptyAdUnitId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "adId"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xxxx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBannerAdUnitId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->bannerAdUnitId:Ljava/lang/String;

    invoke-static {v0}, Lname/ratson/cordova/admob/AdMobConfig;->isEmptyAdUnitId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "banner"

    const-string v1, "Please put your AdMob id into the javascript code. Test ad is used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, "ca-app-pub-3940256099942544/6300978111"

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->bannerAdUnitId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInterstitialAdUnitId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->interstitialAdUnitId:Ljava/lang/String;

    invoke-static {v0}, Lname/ratson/cordova/admob/AdMobConfig;->isEmptyAdUnitId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "interstitial"

    const-string v1, "Please put your AdMob id into the javascript code. Test ad is used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "ca-app-pub-3940256099942544/1033173712"

    .line 234
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->interstitialAdUnitId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRewardedVideoAdUnitId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->rewardVideoId:Ljava/lang/String;

    invoke-static {v0}, Lname/ratson/cordova/admob/AdMobConfig;->isEmptyAdUnitId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "rewardedvideo"

    const-string v1, "Please put your AdMob id into the javascript code. Test ad is used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v0, "ca-app-pub-3940256099942544/5224354917"

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->rewardVideoId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBannerOptions(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 161
    :try_start_0
    const-string v0, "autoShow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowBanner:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    invoke-virtual {p0, p1}, Lname/ratson/cordova/admob/AdMobConfig;->setOptions(Lorg/json/JSONObject;)V

    .line 165
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setInterstitialOptions(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 169
    :try_start_0
    const-string v0, "autoShow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowInterstitial:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    invoke-virtual {p0, p1}, Lname/ratson/cordova/admob/AdMobConfig;->setOptions(Lorg/json/JSONObject;)V

    .line 173
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setOptions(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v6, 0x0

    .line 82
    if-nez p1, :cond_1

    .line 157
    :cond_0
    return-void

    .line 86
    :cond_1
    const-string v3, "publisherId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "publisherId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->bannerAdUnitId:Ljava/lang/String;

    .line 89
    :cond_2
    const-string v3, "interstitialAdId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    const-string v3, "interstitialAdId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->interstitialAdUnitId:Ljava/lang/String;

    .line 92
    :cond_3
    const-string v3, "rewardVideoId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    const-string v3, "rewardVideoId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->rewardVideoId:Ljava/lang/String;

    .line 95
    :cond_4
    const-string v3, "adSize"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    const-string v3, "adSize"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lname/ratson/cordova/admob/AdMobConfig;->adSizeFromString(Ljava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->adSize:Lcom/google/android/gms/ads/AdSize;

    .line 98
    :cond_5
    const-string v3, "bannerAtTop"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    const-string v3, "bannerAtTop"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->bannerAtTop:Z

    .line 101
    :cond_6
    const-string v3, "overlap"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 102
    const-string v3, "overlap"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->bannerOverlap:Z

    .line 104
    :cond_7
    const-string v3, "offsetTopBar"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 105
    const-string v3, "offsetTopBar"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->offsetTopBar:Z

    .line 107
    :cond_8
    const-string v3, "isTesting"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 108
    const-string v3, "isTesting"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->isTesting:Z

    .line 110
    :cond_9
    const-string v3, "adExtras"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 111
    const-string v3, "adExtras"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->adExtras:Lorg/json/JSONObject;

    .line 113
    :cond_a
    const-string v3, "autoShow"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 114
    const-string v3, "autoShow"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->autoShow:Z

    .line 116
    :cond_b
    const-string v3, "autoShowBanner"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 117
    const-string v3, "autoShowBanner"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowBanner:Z

    .line 119
    :cond_c
    const-string v3, "autoShowInterstitial"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 120
    const-string v3, "autoShowInterstitial"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowInterstitial:Z

    .line 123
    :cond_d
    const-string v3, "location"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 124
    const-string v3, "location"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 125
    .local v1, "location":Lorg/json/JSONArray;
    if-eqz v1, :cond_e

    .line 126
    new-instance v3, Landroid/location/Location;

    const-string v4, "dummyprovider"

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->location:Landroid/location/Location;

    .line 127
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->location:Landroid/location/Location;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 128
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->location:Landroid/location/Location;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 132
    .end local v1    # "location":Lorg/json/JSONArray;
    :cond_e
    const-string v3, "gender"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 133
    const-string v3, "gender"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->gender:Ljava/lang/String;

    .line 135
    :cond_f
    const-string v3, "forChild"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 136
    const-string v3, "forChild"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->forChild:Ljava/lang/String;

    .line 138
    :cond_10
    const-string v3, "forFamily"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 139
    const-string v3, "forFamily"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->forFamily:Ljava/lang/String;

    .line 141
    :cond_11
    const-string v3, "contentUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 142
    const-string v3, "contentUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->contentURL:Ljava/lang/String;

    .line 144
    :cond_12
    const-string v3, "exclude"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 145
    const-string v3, "exclude"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->exclude:Lorg/json/JSONArray;

    .line 148
    :cond_13
    const-string v3, "testDevices"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    const-string v3, "testDevices"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 150
    .local v2, "testDevices":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->testDeviceList:Ljava/util/List;

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 153
    iget-object v3, p0, Lname/ratson/cordova/admob/AdMobConfig;->testDeviceList:Ljava/util/List;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setRewardVideoOptions(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 177
    :try_start_0
    const-string v0, "autoShow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lname/ratson/cordova/admob/AdMobConfig;->autoShowRewardVideo:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    invoke-virtual {p0, p1}, Lname/ratson/cordova/admob/AdMobConfig;->setOptions(Lorg/json/JSONObject;)V

    .line 181
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method
