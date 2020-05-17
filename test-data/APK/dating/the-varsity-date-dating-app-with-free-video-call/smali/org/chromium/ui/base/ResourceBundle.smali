.class public Lorg/chromium/ui/base/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "ui"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/ui/base/ResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/ResourceBundle;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveLocaleResources()[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "MS_EXPOSE_REP"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    return-object v0
.end method

.method private static getLocalePakResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "locale"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 79
    sget-object v6, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    if-nez v6, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v5

    .line 82
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".pak"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "fileName":Ljava/lang/String;
    sget-object v0, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    .local v0, "arr$":[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 84
    .local v1, "entry":Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    iget-object v6, v1, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    iget-object v5, v1, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->pathWithinApk:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static initializeLocalePaks(Landroid/content/Context;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localePaksResId"    # I
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "LI_LAZY_INIT_UPDATE_STATIC"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 53
    sget-boolean v8, Lorg/chromium/ui/base/ResourceBundle;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    sget-object v8, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 55
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 57
    .local v4, "resIds":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 58
    .local v2, "len":I
    new-array v8, v2, [Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    sput-object v8, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 60
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 61
    .local v3, "resId":I
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "resPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "srcBaseName":Ljava/lang/String;
    invoke-static {v7}, Lorg/chromium/ui/base/ResourceBundle;->toChromeLocaleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "dstBaseName":Ljava/lang/String;
    sget-object v8, Lorg/chromium/ui/base/ResourceBundle;->sActiveLocaleResources:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    new-instance v9, Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    invoke-direct {v9, v3, v5, v0}, Lorg/chromium/base/ResourceExtractor$ResourceEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "dstBaseName":Ljava/lang/String;
    .end local v3    # "resId":I
    .end local v5    # "resPath":Ljava/lang/String;
    .end local v7    # "srcBaseName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void

    .line 68
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v8
.end method

.method private static toChromeLocaleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "srcFileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 32
    const-string v2, ".lpak"

    const-string v3, ".pak"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 33
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v5, :cond_0

    .line 35
    aget-object v2, v1, v5

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 36
    .local v0, "dotIdx":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    .end local v0    # "dotIdx":I
    .end local p0    # "srcFileName":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
