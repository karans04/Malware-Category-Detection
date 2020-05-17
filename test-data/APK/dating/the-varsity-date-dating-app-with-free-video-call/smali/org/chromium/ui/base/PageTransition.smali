.class public Lorg/chromium/ui/base/PageTransition;
.super Ljava/lang/Object;
.source "PageTransition.java"


# static fields
.field public static final AUTO_BOOKMARK:I = 0x2

.field public static final AUTO_SUBFRAME:I = 0x3

.field public static final AUTO_TOPLEVEL:I = 0x6

.field public static final BLOCKED:I = 0x800000

.field public static final CHAIN_END:I = 0x20000000

.field public static final CHAIN_START:I = 0x10000000

.field public static final CLIENT_REDIRECT:I = 0x40000000

.field public static final CORE_MASK:I = 0xff

.field public static final FORM_SUBMIT:I = 0x7

.field public static final FORWARD_BACK:I = 0x1000000

.field public static final FROM_ADDRESS_BAR:I = 0x2000000

.field public static final FROM_API:I = 0x8000000

.field public static final GENERATED:I = 0x5

.field public static final HOME_PAGE:I = 0x4000000

.field public static final IS_REDIRECT_MASK:I = -0x40000000

.field public static final KEYWORD:I = 0x9

.field public static final KEYWORD_GENERATED:I = 0xa

.field public static final LAST_CORE:I = 0xa

.field public static final LINK:I = 0x0

.field public static final MANUAL_SUBFRAME:I = 0x4

.field public static final QUALIFIER_MASK:I = -0x100

.field public static final RELOAD:I = 0x8

.field public static final SERVER_REDIRECT:I = -0x80000000

.field public static final TYPED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
