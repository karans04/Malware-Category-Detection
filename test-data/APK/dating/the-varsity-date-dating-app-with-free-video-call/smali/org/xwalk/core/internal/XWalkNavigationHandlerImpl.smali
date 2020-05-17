.class public Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;
.super Ljava/lang/Object;
.source "XWalkNavigationHandlerImpl.java"

# interfaces
.implements Lorg/xwalk/core/internal/XWalkNavigationHandler;


# static fields
.field private static final ACTION_GEO_PREFIX:Ljava/lang/String; = "geo:"

.field private static final ACTION_INTENT_PREFIX:Ljava/lang/String; = "intent:"

.field private static final ACTION_MAIL_PREFIX:Ljava/lang/String; = "mailto:"

.field private static final ACTION_MARKET_PREFIX:Ljava/lang/String; = "market:"

.field private static final ACTION_SMS_PREFIX:Ljava/lang/String; = "sms:"

.field private static final ACTION_TEL_PREFIX:Ljava/lang/String; = "tel:"

.field public static final EXTRA_BROWSER_FALLBACK_URL:Ljava/lang/String; = "browser_fallback_url"

.field private static final PROTOCOL_WTAI_MC_PREFIX:Ljava/lang/String; = "wtai://wp/mc;"

.field private static final PROTOCOL_WTAI_PREFIX:Ljava/lang/String; = "wtai://"

.field private static final TAG:Ljava/lang/String; = "XWalkNavigationHandlerImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFallbackUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private createIntentForActionUri(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "tel:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 139
    :cond_0
    :goto_0
    return-object v1

    .line 102
    :cond_1
    const-string v5, "geo:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 104
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 106
    :cond_2
    const-string v5, "mailto:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 110
    :cond_3
    const-string v5, "sms:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 112
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v1    # "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 116
    .local v0, "address":Ljava/lang/String;
    const/16 v5, 0x3f

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 117
    .local v2, "parmIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_5

    .line 118
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_4
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    const-string v5, "address"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 120
    :cond_5
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 124
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "query":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 126
    const-string v5, "body="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    const-string v5, "sms_body"

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 134
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "parmIndex":I
    .end local v3    # "query":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_6
    const-string v5, "market:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private createIntentForWTAI(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "wtai://wp/mc;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const-string v3, "wtai://wp/mc;"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "number":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "mcUrl":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 93
    .end local v1    # "mcUrl":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleUrlByMimeType(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 144
    .local v1, "map":Landroid/webkit/MimeTypeMap;
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "extenstion":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "mimeType":Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->shouldHandleMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v3, "sendIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 153
    invoke-virtual {p0, v3}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->startActivity(Landroid/content/Intent;)Z

    .line 154
    const/4 v4, 0x1

    .line 157
    .end local v3    # "sendIntent":Landroid/content/Intent;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private shouldHandleMimeType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 164
    if-eqz p1, :cond_0

    const-string v1, "application/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "application/xhtml+xml"

    if-eq p1, v1, :cond_0

    const-string v1, "application/xml"

    if-ne p1, v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldOverrideUrlLoadingInternal(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 32
    .param p1, "params"    # Lorg/chromium/components/navigation_interception/NavigationParams;

    .prologue
    .line 189
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 191
    .local v28, "url":Ljava/lang/String;
    const/16 v29, 0x1

    :try_start_0
    invoke-static/range {v28 .. v29}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 197
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 198
    .local v21, "pageTransitionCore":I
    if-nez v21, :cond_0

    const/16 v16, 0x1

    .line 199
    .local v16, "isLink":Z
    :goto_0
    const/16 v29, 0x7

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    const/4 v13, 0x1

    .line 200
    .local v13, "isFormSubmit":Z
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    move/from16 v29, v0

    const/high16 v30, 0x8000000

    and-int v29, v29, v30

    if-eqz v29, :cond_2

    const/4 v15, 0x1

    .line 201
    .local v15, "isFromIntent":Z
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    move/from16 v29, v0

    const/high16 v30, 0x1000000

    and-int v29, v29, v30

    if-eqz v29, :cond_3

    const/4 v14, 0x1

    .line 203
    .local v14, "isForwardBackNavigation":Z
    :goto_3
    invoke-static/range {v28 .. v28}, Lorg/xwalk/core/internal/UrlUtilities;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_4

    const/4 v12, 0x1

    .line 207
    .local v12, "isExternalProtocol":Z
    :goto_4
    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    .line 208
    .local v18, "isTyped":Z
    :goto_5
    if-eqz v18, :cond_6

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    move/from16 v29, v0

    if-eqz v29, :cond_6

    if-eqz v12, :cond_6

    const/16 v27, 0x1

    .line 211
    .local v27, "typedRedirectToExternalProtocol":Z
    :goto_6
    const/4 v8, 0x0

    .line 212
    .local v8, "hasBrowserFallbackUrl":Z
    const-string v29, "browser_fallback_url"

    move-object/from16 v0, v29

    invoke-static {v10, v0}, Lorg/xwalk/core/internal/UrlUtilities;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "browserFallbackUrl":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-static {v2}, Lorg/xwalk/core/internal/UrlUtilities;->isValidForIntentFallbackNavigation(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 216
    const/4 v8, 0x1

    .line 232
    :goto_7
    if-eqz v14, :cond_8

    .line 233
    const/16 v29, 0x0

    .line 361
    .end local v2    # "browserFallbackUrl":Ljava/lang/String;
    .end local v8    # "hasBrowserFallbackUrl":Z
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "isExternalProtocol":Z
    .end local v13    # "isFormSubmit":Z
    .end local v14    # "isForwardBackNavigation":Z
    .end local v15    # "isFromIntent":Z
    .end local v16    # "isLink":Z
    .end local v18    # "isTyped":Z
    .end local v21    # "pageTransitionCore":I
    .end local v27    # "typedRedirectToExternalProtocol":Z
    :goto_8
    return v29

    .line 192
    :catch_0
    move-exception v7

    .line 193
    .local v7, "ex":Ljava/lang/Exception;
    const-string v29, "XWalkNavigationHandlerImpl"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Bad URI="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ex="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/16 v29, 0x0

    goto :goto_8

    .line 198
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v21    # "pageTransitionCore":I
    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 199
    .restart local v16    # "isLink":Z
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 200
    .restart local v13    # "isFormSubmit":Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    .line 201
    .restart local v15    # "isFromIntent":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    .line 203
    .restart local v14    # "isForwardBackNavigation":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    .line 207
    .restart local v12    # "isExternalProtocol":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_5

    .line 208
    .restart local v18    # "isTyped":Z
    :cond_6
    const/16 v27, 0x0

    goto :goto_6

    .line 218
    .restart local v2    # "browserFallbackUrl":Ljava/lang/String;
    .restart local v8    # "hasBrowserFallbackUrl":Z
    .restart local v27    # "typedRedirectToExternalProtocol":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    .line 239
    :cond_8
    if-eqz v16, :cond_9

    if-nez v15, :cond_9

    const/16 v19, 0x1

    .line 243
    .local v19, "linkNotFromIntent":Z
    :goto_9
    if-eqz v16, :cond_a

    if-eqz v15, :cond_a

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a

    const/4 v9, 0x1

    .line 247
    .local v9, "incomingIntentRedirect":Z
    :goto_a
    if-eqz v13, :cond_b

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    const/16 v17, 0x1

    .line 249
    .local v17, "isRedirectFromFormSubmit":Z
    :goto_b
    if-nez v27, :cond_c

    .line 250
    if-nez v19, :cond_c

    if-nez v9, :cond_c

    if-nez v17, :cond_c

    .line 251
    const/16 v29, 0x0

    goto :goto_8

    .line 239
    .end local v9    # "incomingIntentRedirect":Z
    .end local v17    # "isRedirectFromFormSubmit":Z
    .end local v19    # "linkNotFromIntent":Z
    :cond_9
    const/16 v19, 0x0

    goto :goto_9

    .line 243
    .restart local v19    # "linkNotFromIntent":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_a

    .line 247
    .restart local v9    # "incomingIntentRedirect":Z
    :cond_b
    const/16 v17, 0x0

    goto :goto_b

    .line 259
    .restart local v17    # "isRedirectFromFormSubmit":Z
    :cond_c
    const-string v29, ".*youtube\\.com.*[?&]pairingCode=.*"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 260
    const/16 v29, 0x0

    goto :goto_8

    .line 263
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v10}, Lorg/xwalk/core/internal/UrlUtilities;->getIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v25

    .line 265
    .local v25, "resolvingComponentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_e

    const/4 v3, 0x1

    .line 268
    .local v3, "canResolveActivity":Z
    :goto_c
    if-nez v3, :cond_11

    .line 269
    if-eqz v8, :cond_f

    .line 270
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mFallbackUrl:Ljava/lang/String;

    .line 271
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 265
    .end local v3    # "canResolveActivity":Z
    :cond_e
    const/4 v3, 0x0

    goto :goto_c

    .line 273
    .restart local v3    # "canResolveActivity":Z
    :cond_f
    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v20

    .line 274
    .local v20, "packagename":Ljava/lang/String;
    if-eqz v20, :cond_10

    .line 276
    :try_start_1
    new-instance v11, Landroid/content/Intent;

    const-string v29, "android.intent.action.VIEW"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "market://details?id="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "&referrer="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    .end local v10    # "intent":Landroid/content/Intent;
    .local v11, "intent":Landroid/content/Intent;
    :try_start_2
    const-string v29, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v29, "com.android.vending"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const/high16 v29, 0x10000000

    move/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 283
    const/16 v29, 0x1

    goto/16 :goto_8

    .line 284
    .end local v11    # "intent":Landroid/content/Intent;
    .restart local v10    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    .line 287
    .local v7, "ex":Landroid/content/ActivityNotFoundException;
    :goto_d
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 290
    .end local v7    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 294
    .end local v20    # "packagename":Ljava/lang/String;
    :cond_11
    if-eqz v8, :cond_12

    .line 295
    const-string v29, "browser_fallback_url"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 300
    :cond_12
    const-string v29, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 302
    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0xf

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_13

    .line 303
    invoke-virtual {v10}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v26

    .line 304
    .local v26, "selector":Landroid/content/Intent;
    if-eqz v26, :cond_13

    .line 305
    const-string v29, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 313
    .end local v26    # "selector":Landroid/content/Intent;
    :cond_13
    const-string v29, "com.android.browser.application_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const/high16 v29, 0x10000000

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 319
    if-nez v12, :cond_16

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v10}, Lorg/xwalk/core/internal/UrlUtilities;->isSpecializedHandlerAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v29

    if-nez v29, :cond_14

    .line 321
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 322
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/chromium/components/navigation_interception/NavigationParams;->referrer:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_16

    if-nez v16, :cond_15

    if-eqz v13, :cond_16

    .line 329
    :cond_15
    :try_start_3
    new-instance v5, Ljava/net/URI;

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 330
    .local v5, "currentUri":Ljava/net/URI;
    new-instance v24, Ljava/net/URI;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/chromium/components/navigation_interception/NavigationParams;->referrer:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 336
    .local v24, "previousUri":Ljava/net/URI;
    :goto_e
    if-eqz v5, :cond_16

    if-eqz v24, :cond_16

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v24 .. v24}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 340
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/chromium/components/navigation_interception/NavigationParams;->referrer:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v23

    .line 346
    .local v23, "previousIntent":Landroid/content/Intent;
    :goto_f
    if-eqz v23, :cond_16

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v10}, Lorg/xwalk/core/internal/UrlUtilities;->getIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    .line 349
    .local v4, "currentHandlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/UrlUtilities;->getIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v22

    .line 352
    .local v22, "previousHandlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 353
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 331
    .end local v4    # "currentHandlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v5    # "currentUri":Ljava/net/URI;
    .end local v22    # "previousHandlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v23    # "previousIntent":Landroid/content/Intent;
    .end local v24    # "previousUri":Ljava/net/URI;
    :catch_2
    move-exception v6

    .line 332
    .local v6, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 333
    .restart local v5    # "currentUri":Ljava/net/URI;
    const/16 v24, 0x0

    .restart local v24    # "previousUri":Ljava/net/URI;
    goto :goto_e

    .line 342
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 343
    .restart local v6    # "e":Ljava/lang/Exception;
    const/16 v23, 0x0

    .restart local v23    # "previousIntent":Landroid/content/Intent;
    goto :goto_f

    .line 360
    .end local v5    # "currentUri":Ljava/net/URI;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v23    # "previousIntent":Landroid/content/Intent;
    .end local v24    # "previousUri":Ljava/net/URI;
    :cond_16
    if-eqz v10, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->startActivity(Landroid/content/Intent;)Z

    move-result v29

    if-eqz v29, :cond_17

    const/16 v29, 0x1

    goto/16 :goto_8

    .line 361
    :cond_17
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 284
    .end local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v20    # "packagename":Ljava/lang/String;
    :catch_4
    move-exception v7

    move-object v10, v11

    .end local v11    # "intent":Landroid/content/Intent;
    .restart local v10    # "intent":Landroid/content/Intent;
    goto/16 :goto_d
.end method


# virtual methods
.method public getFallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mFallbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handleNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 4
    .param p1, "params"    # Lorg/chromium/components/navigation_interception/NavigationParams;

    .prologue
    const/4 v2, 0x1

    .line 57
    iget-object v1, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    .line 58
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lorg/xwalk/core/internal/UrlUtilities;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 68
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "wtai://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 61
    invoke-direct {p0, v1}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->createIntentForWTAI(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    :goto_1
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->shouldOverrideUrlLoadingInternal(Lorg/chromium/components/navigation_interception/NavigationParams;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->startActivity(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    :cond_3
    invoke-direct {p0, v1}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->handleUrlByMimeType(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 63
    :cond_4
    invoke-direct {p0, v1}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->createIntentForActionUri(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method public resetFallbackUrl()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mFallbackUrl:Ljava/lang/String;

    .line 181
    return-void
.end method

.method protected startActivity(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 73
    :try_start_0
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 74
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "XWalkNavigationHandlerImpl"

    const-string v3, "Activity not found for Intent:"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v2, "XWalkNavigationHandlerImpl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
