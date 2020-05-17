.class Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;
.super Ljava/lang/Object;
.source "CoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/impl/CoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/chromium/mojo/system/Core;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lorg/chromium/mojo/system/impl/CoreImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V

    sput-object v0, Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;->INSTANCE:Lorg/chromium/mojo/system/Core;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;->INSTANCE:Lorg/chromium/mojo/system/Core;

    return-object v0
.end method
