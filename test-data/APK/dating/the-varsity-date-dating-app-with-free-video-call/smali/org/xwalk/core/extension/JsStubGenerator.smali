.class public Lorg/xwalk/core/extension/JsStubGenerator;
.super Ljava/lang/Object;
.source "JsStubGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/extension/JsStubGenerator$1;
    }
.end annotation


# static fields
.field public static final MSG_TO_CLASS:Ljava/lang/String; = "postMessageToClass"

.field public static final MSG_TO_EXTENSION:Ljava/lang/String; = "postMessageToExtension"

.field public static final MSG_TO_OBJECT:Ljava/lang/String; = "postMessageToObject"

.field public static TAG:Ljava/lang/String;


# instance fields
.field jsHeader:Ljava/lang/String;

.field reflection:Lorg/xwalk/core/extension/ReflectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "JsStubGenerator"

    sput-object v0, Lorg/xwalk/core/extension/JsStubGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/xwalk/core/extension/ReflectionHelper;)V
    .locals 1
    .param p1, "extReflection"    # Lorg/xwalk/core/extension/ReflectionHelper;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "var v8tools = requireNative(\"v8tools\");\nvar jsStubModule = requireNative(\"jsStub\");\njsStubModule.init(extension, v8tools);\nvar jsStub = jsStubModule.jsStub;\nvar helper = jsStub.createRootStub(exports);\n"

    iput-object v0, p0, Lorg/xwalk/core/extension/JsStubGenerator;->jsHeader:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lorg/xwalk/core/extension/JsStubGenerator;->reflection:Lorg/xwalk/core/extension/ReflectionHelper;

    .line 28
    return-void
.end method


# virtual methods
.method classGenerator(Lorg/xwalk/core/extension/ReflectionHelper;)[Ljava/lang/String;
    .locals 12
    .param p1, "targetReflect"    # Lorg/xwalk/core/extension/ReflectionHelper;

    .prologue
    const/4 v11, 0x1

    .line 112
    const-string v7, ""

    .line 113
    .local v7, "result":Ljava/lang/String;
    const-string v8, ""

    .line 114
    .local v8, "staticResult":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/ReflectionHelper;->getEventList()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lorg/xwalk/core/extension/JsStubGenerator;->generateEventTarget(Lorg/xwalk/core/extension/ReflectionHelper;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "eventStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 120
    .end local v0    # "eventStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/xwalk/core/extension/ReflectionHelper;->getMembers()Ljava/util/Map;

    move-result-object v5

    .line 125
    .local v5, "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    .line 127
    .local v3, "m":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    iget-boolean v9, v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isStatic:Z

    if-eqz v9, :cond_1

    const-string v6, "postMessageToClass"

    .line 128
    .local v6, "msgType":Ljava/lang/String;
    :goto_1
    sget-object v9, Lorg/xwalk/core/extension/JsStubGenerator$1;->$SwitchMap$org$xwalk$core$extension$ReflectionHelper$MemberType:[I

    iget-object v10, v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    invoke-virtual {v10}, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 136
    const-string v4, ""

    .line 139
    .local v4, "memberStr":Ljava/lang/String;
    :goto_2
    iget-boolean v9, v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isStatic:Z

    if-eqz v9, :cond_2

    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 127
    .end local v4    # "memberStr":Ljava/lang/String;
    .end local v6    # "msgType":Ljava/lang/String;
    :cond_1
    const-string v6, "postMessageToObject"

    goto :goto_1

    .line 130
    .restart local v6    # "msgType":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0, v6, v3}, Lorg/xwalk/core/extension/JsStubGenerator;->generateProperty(Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .restart local v4    # "memberStr":Ljava/lang/String;
    goto :goto_2

    .line 133
    .end local v4    # "memberStr":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v6, v3, v11}, Lorg/xwalk/core/extension/JsStubGenerator;->generateMethod(Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;Z)Ljava/lang/String;

    move-result-object v4

    .line 134
    .restart local v4    # "memberStr":Ljava/lang/String;
    goto :goto_2

    .line 142
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 145
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "m":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    .end local v4    # "memberStr":Ljava/lang/String;
    .end local v6    # "msgType":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    aput-object v8, v9, v11

    return-object v9

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method destroyBindingObject(Lorg/xwalk/core/extension/ReflectionHelper;)Ljava/lang/String;
    .locals 6
    .param p1, "targetReflect"    # Lorg/xwalk/core/extension/ReflectionHelper;

    .prologue
    .line 149
    const-string v3, "exports.destroy = function() {\n"

    .line 150
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/ReflectionHelper;->getMembers()Ljava/util/Map;

    move-result-object v2

    .line 151
    .local v2, "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "delete exports[\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"];\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    goto :goto_0

    .line 154
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "helper.destroy();\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "delete exports[\"__stubHelper\"];\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "delete exports[\"destroy\"];\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "};"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    return-object v3
.end method

.method generate()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 57
    const-string v5, ""

    .line 58
    .local v5, "result":Ljava/lang/String;
    iget-object v6, p0, Lorg/xwalk/core/extension/JsStubGenerator;->reflection:Lorg/xwalk/core/extension/ReflectionHelper;

    invoke-virtual {v6}, Lorg/xwalk/core/extension/ReflectionHelper;->getEntryPoint()Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    move-result-object v0

    .line 59
    .local v0, "entry":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xwalk/core/extension/JsStubGenerator;->generateEntryPoint(Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;)Ljava/lang/String;

    move-result-object v5

    .line 61
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 62
    :goto_0
    iget-object v6, p0, Lorg/xwalk/core/extension/JsStubGenerator;->reflection:Lorg/xwalk/core/extension/ReflectionHelper;

    invoke-virtual {v6}, Lorg/xwalk/core/extension/ReflectionHelper;->getEventList()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/xwalk/core/extension/JsStubGenerator;->reflection:Lorg/xwalk/core/extension/ReflectionHelper;

    invoke-virtual {p0, v7}, Lorg/xwalk/core/extension/JsStubGenerator;->generateEventTarget(Lorg/xwalk/core/extension/ReflectionHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    :cond_1
    iget-object v6, p0, Lorg/xwalk/core/extension/JsStubGenerator;->reflection:Lorg/xwalk/core/extension/ReflectionHelper;

    invoke-virtual {v6}, Lorg/xwalk/core/extension/ReflectionHelper;->getMembers()Ljava/util/Map;

    move-result-object v4

    .line 67
    .local v4, "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    .line 69
    .local v3, "m":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    iget-boolean v6, v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isEntryPoint:Z

    if-nez v6, :cond_2

    .line 70
    sget-object v6, Lorg/xwalk/core/extension/JsStubGenerator$1;->$SwitchMap$org$xwalk$core$extension$ReflectionHelper$MemberType:[I

    iget-object v7, v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    invoke-virtual {v7}, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 72
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "postMessageToExtension"

    invoke-virtual {p0, v7, v3}, Lorg/xwalk/core/extension/JsStubGenerator;->generateProperty(Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    goto :goto_1

    .line 61
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "m":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    .end local v4    # "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;>;"
    :cond_3
    iget-object v5, p0, Lorg/xwalk/core/extension/JsStubGenerator;->jsHeader:Ljava/lang/String;

    goto :goto_0

    .line 75
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "m":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    .restart local v4    # "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;>;"
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "postMessageToExtension"

    invoke-virtual {p0, v7, v3, v8}, Lorg/xwalk/core/extension/JsStubGenerator;->generateMethod(Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    goto :goto_1

    .line 78
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v3, v8}, Lorg/xwalk/core/extension/JsStubGenerator;->generateConstructor(Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    goto :goto_1

    .line 84
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "m":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method generateConstructor(Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;Z)Ljava/lang/String;
    .locals 13
    .param p1, "mInfo"    # Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    .param p2, "isMember"    # Z

    .prologue
    .line 241
    iget-object v3, p1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    .line 242
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/xwalk/core/extension/JsStubGenerator;->getPrototypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "protoFunc":Ljava/lang/String;
    iget-object v9, p1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->accesser:Ljava/lang/reflect/AccessibleObject;

    check-cast v9, Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lorg/xwalk/core/extension/JsStubGenerator;->getArgString(Ljava/lang/reflect/Method;Z)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "argStr":Ljava/lang/String;
    iget-object v9, p0, Lorg/xwalk/core/extension/JsStubGenerator;->reflection:Lorg/xwalk/core/extension/ReflectionHelper;

    invoke-virtual {v9, v3}, Lorg/xwalk/core/extension/ReflectionHelper;->getConstructorReflection(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper;

    move-result-object v8

    .line 245
    .local v8, "targetReflect":Lorg/xwalk/core/extension/ReflectionHelper;
    invoke-virtual {p0, v8}, Lorg/xwalk/core/extension/JsStubGenerator;->classGenerator(Lorg/xwalk/core/extension/ReflectionHelper;)[Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "classStr":[Ljava/lang/String;
    const-string v9, "function %s(exports, helper){\n%s\n%s\n}\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-object v12, v1, v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {p0, v8}, Lorg/xwalk/core/extension/JsStubGenerator;->destroyBindingObject(Lorg/xwalk/core/extension/ReflectionHelper;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "protoStr":Ljava/lang/String;
    const-string v9, "function %s(%s) {\nvar newObject = this;\nvar objectId =\nNumber(helper.invokeNative(\"%s\", \"+%s\", [%s], true));\nif (!objectId) throw \"Error to create instance for constructor:%s.\";\nvar objectHelper = jsStub.getHelper(newObject, helper);\nobjectHelper.objectId = objectId;\nobjectHelper.constructorJsName = \"%s\";\nobjectHelper.registerLifecycleTracker();%s(newObject, objectHelper);\nhelper.addBindingObject(objectId, newObject);}\nhelper.constructors[\"%s\"] = %s;\n"

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    const-string v12, "postMessageToExtension"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v3, v10, v11

    const/4 v11, 0x4

    aput-object v0, v10, v11

    const/4 v11, 0x5

    aput-object v3, v10, v11

    const/4 v11, 0x6

    aput-object v3, v10, v11

    const/4 v11, 0x7

    aput-object v4, v10, v11

    const/16 v11, 0x8

    aput-object v3, v10, v11

    const/16 v11, 0x9

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "self":Ljava/lang/String;
    const-string v9, "(function(exports, helper){\n  helper.constructorJsName = \"%s\";\n%s\n})(%s, jsStub.getHelper(%s, helper));\n"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-object v12, v1, v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    const/4 v11, 0x3

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "staticStr":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v9, "exports[\"%s\"] = %s;\n"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "memberStr":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 274
    .end local v2    # "memberStr":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method generateEntryPoint(Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "entry"    # Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 89
    iget-object v2, p1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    sget-object v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_PROPERTY:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    if-ne v2, v3, :cond_0

    .line 90
    iget-object v2, p1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->accesser:Ljava/lang/reflect/AccessibleObject;

    check-cast v2, Ljava/lang/reflect/Field;

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 91
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "funcName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/xwalk/core/extension/JsStubGenerator;->jsHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%s(exports, helper);\n"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/xwalk/core/extension/JsStubGenerator;->getPrototypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .end local v0    # "funcName":Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 96
    :cond_0
    iget-object v2, p1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    sget-object v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_METHOD:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    if-ne v2, v3, :cond_1

    .line 97
    const-string v2, "exports = %s;\n %s\n %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/xwalk/core/extension/JsStubGenerator;->getInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/extension/JsStubGenerator;->jsHeader:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "postMessageToExtension"

    invoke-virtual {p0, v4, p1, v6}, Lorg/xwalk/core/extension/JsStubGenerator;->generateMethod(Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, p1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    sget-object v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_CONSTRUCTOR:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    if-ne v2, v3, :cond_2

    .line 104
    const-string v2, "exports = %s;\n %s\n %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/extension/JsStubGenerator;->jsHeader:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, p1, v6}, Lorg/xwalk/core/extension/JsStubGenerator;->generateConstructor(Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 108
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method generateEventTarget(Lorg/xwalk/core/extension/ReflectionHelper;)Ljava/lang/String;
    .locals 8
    .param p1, "targetReflect"    # Lorg/xwalk/core/extension/ReflectionHelper;

    .prologue
    .line 162
    invoke-virtual {p1}, Lorg/xwalk/core/extension/ReflectionHelper;->getEventList()[Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "eventList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_2

    .line 164
    :cond_0
    const-string v3, ""

    .line 171
    :cond_1
    return-object v3

    .line 167
    :cond_2
    const-string v3, "jsStub.makeEventTarget(exports);\n"

    .line 168
    .local v3, "gen":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 169
    .local v1, "e":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "helper.addEvent(\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\");\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method generateMethod(Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;Z)Ljava/lang/String;
    .locals 12
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "mInfo"    # Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    .param p3, "isMember"    # Z

    .prologue
    .line 210
    iget-boolean v8, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->withPromise:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/extension/JsStubGenerator;->generatePromiseMethod(Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;)Ljava/lang/String;

    move-result-object v8

    .line 229
    :goto_0
    return-object v8

    .line 212
    :cond_0
    iget-object v7, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    .line 213
    .local v7, "name":Ljava/lang/String;
    iget-object v5, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->accesser:Ljava/lang/reflect/AccessibleObject;

    check-cast v5, Ljava/lang/reflect/Method;

    .line 214
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v7}, Lorg/xwalk/core/extension/JsStubGenerator;->getInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "iName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 216
    .local v0, "anns":[[Ljava/lang/annotation/Annotation;
    iget-boolean v8, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->withPromise:Z

    invoke-virtual {p0, v5, v8}, Lorg/xwalk/core/extension/JsStubGenerator;->getArgString(Ljava/lang/reflect/Method;Z)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "jsArgs":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v3, 0x1

    .line 220
    .local v3, "isSync":Z
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "function %s(%s) {\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_2

    const-string v8, "  return "

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "helper.invokeNative(\"%s\", \"%s\", [%s], %b);\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "};\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object p1, v9, v10

    const/4 v10, 0x3

    aput-object v7, v9, v10

    const/4 v10, 0x4

    aput-object v4, v9, v10

    const/4 v10, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "funcBody":Ljava/lang/String;
    if-eqz p3, :cond_3

    const-string v8, "exports[\"%s\"] = %s;\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "memberStr":Ljava/lang/String;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 219
    .end local v1    # "funcBody":Ljava/lang/String;
    .end local v3    # "isSync":Z
    .end local v6    # "memberStr":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 220
    .restart local v3    # "isSync":Z
    :cond_2
    const-string v8, "  "

    goto :goto_2

    .line 227
    .restart local v1    # "funcBody":Ljava/lang/String;
    :cond_3
    const-string v6, ""

    goto :goto_3
.end method

.method generatePromiseMethod(Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "mInfo"    # Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    .prologue
    .line 182
    iget-object v0, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    .line 183
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->wrapArgs:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v1, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->wrapArgs:Ljava/lang/String;

    .line 184
    .local v1, "wrapArgs":Ljava/lang/String;
    :goto_0
    iget-object v3, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->wrapReturns:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v2, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->wrapReturns:Ljava/lang/String;

    .line 185
    .local v2, "wrapReturns":Ljava/lang/String;
    :goto_1
    const-string v3, "jsStub.addMethodWithPromise(\"%s\", exports, \"%s\", %s, %s);\n"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 183
    .end local v1    # "wrapArgs":Ljava/lang/String;
    .end local v2    # "wrapReturns":Ljava/lang/String;
    :cond_0
    const-string v1, "null"

    goto :goto_0

    .line 184
    .restart local v1    # "wrapArgs":Ljava/lang/String;
    :cond_1
    const-string v2, "null"

    goto :goto_1
.end method

.method generateProperty(Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "m"    # Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    .prologue
    .line 175
    iget-object v0, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    .line 176
    .local v0, "name":Ljava/lang/String;
    const-string v1, "jsStub.defineProperty(\"%s\", exports, \"%s\", %b);\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isWritable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getArgString(Ljava/lang/reflect/Method;Z)Ljava/lang/String;
    .locals 9
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "withPromise"    # Z

    .prologue
    .line 192
    if-nez p1, :cond_1

    const-string v2, ""

    .line 205
    :cond_0
    return-object v2

    .line 194
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 195
    .local v6, "pTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 196
    .local v0, "anns":[[Ljava/lang/annotation/Annotation;
    const-string v2, ""

    .line 197
    .local v2, "jsArgs":Ljava/lang/String;
    if-eqz p2, :cond_3

    array-length v7, v6

    add-int/lit8 v3, v7, -0x1

    .line 198
    .local v3, "length":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 199
    aget-object v4, v6, v1

    .line 200
    .local v4, "p":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "arg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "pStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v4    # "p":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "pStr":Ljava/lang/String;
    :cond_3
    array-length v3, v6

    goto :goto_0
.end method

.method getInternalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPrototypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "funcName"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_prototype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
