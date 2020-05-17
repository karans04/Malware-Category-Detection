.class public Lorg/chromium/components/navigation_interception/NavigationParams;
.super Ljava/lang/Object;
.source "NavigationParams.java"


# instance fields
.field public final hasUserGesture:Z

.field public final hasUserGestureCarryover:Z

.field public final isExternalProtocol:Z

.field public final isMainFrame:Z

.field public final isPost:Z

.field public final isRedirect:Z

.field public final pageTransitionType:I

.field public final referrer:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIZZZZ)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "referrer"    # Ljava/lang/String;
    .param p3, "isPost"    # Z
    .param p4, "hasUserGesture"    # Z
    .param p5, "pageTransitionType"    # I
    .param p6, "isRedirect"    # Z
    .param p7, "isExternalProtocol"    # Z
    .param p8, "isMainFrame"    # Z
    .param p9, "hasUserGestureCarryover"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    .line 49
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .end local p2    # "referrer":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->referrer:Ljava/lang/String;

    .line 50
    iput-boolean p3, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->isPost:Z

    .line 51
    iput-boolean p4, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->hasUserGesture:Z

    .line 52
    iput p5, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    .line 53
    iput-boolean p6, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    .line 54
    iput-boolean p7, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->isExternalProtocol:Z

    .line 55
    iput-boolean p8, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->isMainFrame:Z

    .line 56
    iput-boolean p9, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->hasUserGestureCarryover:Z

    .line 57
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZZIZZZZ)Lorg/chromium/components/navigation_interception/NavigationParams;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "referrer"    # Ljava/lang/String;
    .param p2, "isPost"    # Z
    .param p3, "hasUserGesture"    # Z
    .param p4, "pageTransitionType"    # I
    .param p5, "isRedirect"    # Z
    .param p6, "isExternalProtocol"    # Z
    .param p7, "isMainFrame"    # Z
    .param p8, "hasUserGestureCarryover"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lorg/chromium/components/navigation_interception/NavigationParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/chromium/components/navigation_interception/NavigationParams;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIZZZZ)V

    return-object v0
.end method
