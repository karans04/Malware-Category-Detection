.class public Lorg/xwalk/core/extension/MessageHandler$Handler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/extension/MessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field javaName:Ljava/lang/String;

.field reflection:Lorg/xwalk/core/extension/ReflectionHelper;

.field targetObject:Ljava/lang/Object;

.field final synthetic this$0:Lorg/xwalk/core/extension/MessageHandler;

.field type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/extension/MessageHandler;Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;Ljava/lang/Object;)V
    .locals 6
    .param p2, "javaName"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/xwalk/core/extension/ReflectionHelper$MemberType;
    .param p4, "object"    # Ljava/lang/Object;

    .prologue
    .line 42
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/xwalk/core/extension/MessageHandler$Handler;-><init>(Lorg/xwalk/core/extension/MessageHandler;Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;Ljava/lang/Object;Lorg/xwalk/core/extension/ReflectionHelper;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/xwalk/core/extension/MessageHandler;Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;Ljava/lang/Object;Lorg/xwalk/core/extension/ReflectionHelper;)V
    .locals 0
    .param p2, "javaName"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/xwalk/core/extension/ReflectionHelper$MemberType;
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "reflection"    # Lorg/xwalk/core/extension/ReflectionHelper;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/xwalk/core/extension/MessageHandler$Handler;->this$0:Lorg/xwalk/core/extension/MessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p3, p0, Lorg/xwalk/core/extension/MessageHandler$Handler;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    .line 36
    iput-object p2, p0, Lorg/xwalk/core/extension/MessageHandler$Handler;->javaName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lorg/xwalk/core/extension/MessageHandler$Handler;->targetObject:Ljava/lang/Object;

    .line 38
    iput-object p5, p0, Lorg/xwalk/core/extension/MessageHandler$Handler;->reflection:Lorg/xwalk/core/extension/ReflectionHelper;

    .line 39
    return-void
.end method
