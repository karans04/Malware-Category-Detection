.class Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/common/android/ViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat$ViewCompatHoneycomb;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 186
    new-instance v0, Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat$ViewCompatHoneycomb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat$ViewCompatHoneycomb;-><init>(Lcom/facebook/stetho/common/android/ViewUtil$1;)V

    sput-object v0, Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;->sInstance:Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;

    invoke-direct {v0}, Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;-><init>()V

    sput-object v0, Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;->sInstance:Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method

.method public static getInstance()Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;->sInstance:Lcom/facebook/stetho/common/android/ViewUtil$ViewCompat;

    return-object v0
.end method


# virtual methods
.method public getAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 200
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
