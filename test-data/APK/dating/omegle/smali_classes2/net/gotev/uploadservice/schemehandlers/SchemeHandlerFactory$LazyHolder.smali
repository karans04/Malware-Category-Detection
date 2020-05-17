.class Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory$LazyHolder;
.super Ljava/lang/Object;
.source "SchemeHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory;-><init>(Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory$1;)V

    sput-object v0, Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory$LazyHolder;->INSTANCE:Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory;
    .locals 1

    .line 13
    sget-object v0, Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory$LazyHolder;->INSTANCE:Lnet/gotev/uploadservice/schemehandlers/SchemeHandlerFactory;

    return-object v0
.end method
