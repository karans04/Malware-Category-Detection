.class Lorg/xwalk/core/extension/ReflectionHelper;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;,
        Lorg/xwalk/core/extension/ReflectionHelper$MemberType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JsStubReflectHelper"

.field static primitives:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private bindingClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private constructorReflections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/xwalk/core/extension/ReflectionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private entryPoint:Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

.field private eventList:[Ljava/lang/String;

.field private members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/xwalk/core/extension/ReflectionHelper;->primitives:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->bindingClasses:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->constructorReflections:Ljava/util/Map;

    .line 28
    iput-object v1, p0, Lorg/xwalk/core/extension/ReflectionHelper;->eventList:[Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lorg/xwalk/core/extension/ReflectionHelper;->entryPoint:Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    .line 55
    iput-object p1, p0, Lorg/xwalk/core/extension/ReflectionHelper;->myClass:Ljava/lang/Class;

    .line 56
    invoke-virtual {p0}, Lorg/xwalk/core/extension/ReflectionHelper;->init()V

    .line 57
    return-void
.end method

.method public static isSerializable(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 235
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/xwalk/core/extension/ReflectionHelper;->primitives:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/util/Map;

    if-nez v1, :cond_0

    instance-of v1, p0, Lorg/json/JSONArray;

    if-nez v1, :cond_0

    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static objToJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 302
    if-nez p0, :cond_0

    const-string v1, "null"

    .line 305
    :goto_0
    return-object v1

    .line 304
    :cond_0
    invoke-static {p0}, Lorg/xwalk/core/extension/ReflectionHelper;->toSerializableObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 305
    .local v0, "sObj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static registerHandlers(Lorg/xwalk/core/extension/ReflectionHelper;Lorg/xwalk/core/extension/MessageHandler;Ljava/lang/Object;)V
    .locals 9
    .param p0, "reflection"    # Lorg/xwalk/core/extension/ReflectionHelper;
    .param p1, "handler"    # Lorg/xwalk/core/extension/MessageHandler;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 164
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 170
    :cond_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lorg/xwalk/core/extension/ReflectionHelper;->getMembers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 167
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xwalk/core/extension/ReflectionHelper;->getMembers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    .line 168
    .local v8, "m":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    iget-object v1, v8, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    iget-object v2, v8, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->javaName:Ljava/lang/String;

    iget-object v3, v8, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/extension/MessageHandler;->register(Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;Ljava/lang/Object;Lorg/xwalk/core/extension/ReflectionHelper;)V

    goto :goto_0
.end method

.method public static toSerializableObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 245
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 246
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 247
    .local v13, "result":Lorg/json/JSONArray;
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object/from16 v1, p0

    check-cast v1, [Ljava/lang/Object;

    .line 248
    .local v1, "arr":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v14, v1

    if-ge v7, v14, :cond_1

    .line 250
    :try_start_0
    aget-object v14, v1, v7

    invoke-static {v14}, Lorg/xwalk/core/extension/ReflectionHelper;->toSerializableObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v7, v14}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v4

    .line 252
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v1    # "arr":[Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "i":I
    .end local v13    # "result":Lorg/json/JSONArray;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/xwalk/core/extension/ReflectionHelper;->isSerializable(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v13, p0

    .line 291
    :cond_1
    :goto_2
    return-object v13

    .line 266
    :cond_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "toJSONString"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 267
    .local v12, "m":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 268
    .local v10, "jsonStr":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5b

    if-ne v14, v15, :cond_3

    .line 269
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 273
    .end local v10    # "jsonStr":Ljava/lang/String;
    .end local v12    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    .line 274
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v14, "JsStubReflectHelper"

    const-string v15, "No serialization method: \"toJSONString\", or errors happened."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 282
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 283
    .local v9, "json":Lorg/json/JSONObject;
    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 284
    .local v6, "fields":[Ljava/lang/reflect/Field;
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v11, :cond_4

    aget-object v5, v2, v8

    .line 285
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 284
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 271
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v8    # "i$":I
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v11    # "len$":I
    .restart local v10    # "jsonStr":Ljava/lang/String;
    .restart local v12    # "m":Ljava/lang/reflect/Method;
    :cond_3
    :try_start_3
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .end local v10    # "jsonStr":Ljava/lang/String;
    .end local v12    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v8    # "i$":I
    .restart local v9    # "json":Lorg/json/JSONObject;
    .restart local v11    # "len$":I
    :cond_4
    move-object v13, v9

    .line 287
    goto :goto_2

    .line 288
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v8    # "i$":I
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v11    # "len$":I
    :catch_2
    move-exception v4

    .line 289
    const-string v14, "JsStubReflectHelper"

    const-string v15, "Field to serialize object to JSON."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    const/4 v13, 0x0

    goto :goto_2
.end method


# virtual methods
.method getArgsFromJson(Lorg/xwalk/core/extension/XWalkExternalExtension;ILjava/lang/reflect/Method;Lorg/json/JSONArray;)[Ljava/lang/Object;
    .locals 10
    .param p1, "ext"    # Lorg/xwalk/core/extension/XWalkExternalExtension;
    .param p2, "instanceID"    # I
    .param p3, "m"    # Ljava/lang/reflect/Method;
    .param p4, "args"    # Lorg/json/JSONArray;

    .prologue
    .line 211
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 212
    .local v6, "pTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v6

    new-array v4, v7, [Ljava/lang/Object;

    .line 213
    .local v4, "oArgs":[Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    .line 214
    .local v3, "isStatic":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_1

    .line 216
    :try_start_0
    aget-object v5, v6, v1

    .line 218
    .local v5, "p":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_0

    const-class v7, Lorg/xwalk/core/extension/JsContextInfo;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    :try_start_1
    new-instance v7, Lorg/xwalk/core/extension/JsContextInfo;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p2, p1, v8, v9}, Lorg/xwalk/core/extension/JsContextInfo;-><init>(ILorg/xwalk/core/extension/XWalkExternalExtension;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v7, v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 214
    .end local v2    # "i":I
    .end local v5    # "p":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "i":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .restart local v5    # "p":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_2
    invoke-virtual {p4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 225
    .end local v5    # "p":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4

    .line 225
    .end local v1    # "i":I
    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2
.end method

.method getConstructorReflection(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper;
    .locals 1
    .param p1, "jsName"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->constructorReflections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->constructorReflections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/ReflectionHelper;

    goto :goto_0
.end method

.method getEntryPoint()Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->entryPoint:Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    return-object v0
.end method

.method getEventList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->eventList:[Ljava/lang/String;

    return-object v0
.end method

.method getMemberInfo(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    return-object v0
.end method

.method getMemberInfo([Ljava/lang/reflect/AccessibleObject;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;)V
    .locals 13
    .param p1, "accessers"    # [Ljava/lang/reflect/AccessibleObject;
    .param p2, "type"    # Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    .prologue
    .line 60
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/reflect/AccessibleObject;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_b

    aget-object v0, v1, v4

    .line 61
    .local v0, "a":Ljava/lang/reflect/AccessibleObject;
    const-class v9, Lorg/xwalk/core/extension/JsApi;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    const-class v9, Lorg/xwalk/core/extension/JsConstructor;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 60
    .end local v0    # "a":Ljava/lang/reflect/AccessibleObject;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    .restart local v0    # "a":Ljava/lang/reflect/AccessibleObject;
    :cond_1
    new-instance v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    invoke-direct {v7, p0}, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;-><init>(Lorg/xwalk/core/extension/ReflectionHelper;)V

    .local v7, "mInfo":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    move-object v9, v0

    .line 64
    check-cast v9, Ljava/lang/reflect/Member;

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "name":Ljava/lang/String;
    iput-object v8, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->javaName:Ljava/lang/String;

    .line 66
    iput-object v0, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->accesser:Ljava/lang/reflect/AccessibleObject;

    move-object v9, v0

    .line 67
    check-cast v9, Ljava/lang/reflect/Member;

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    iput-boolean v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isStatic:Z

    .line 68
    const-class v9, Lorg/xwalk/core/extension/JsApi;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 69
    const-class v9, Lorg/xwalk/core/extension/JsApi;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lorg/xwalk/core/extension/JsApi;

    .line 72
    .local v6, "mAnno":Lorg/xwalk/core/extension/JsApi;
    sget-object v9, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_PROPERTY:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    if-ne p2, v9, :cond_3

    invoke-interface {v6}, Lorg/xwalk/core/extension/JsApi;->isEventList()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v0

    .line 73
    check-cast v9, Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 74
    const-string v9, "JsStubReflectHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid type for Supported JS event list"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    :cond_2
    :try_start_0
    check-cast v0, Ljava/lang/reflect/Field;

    .end local v0    # "a":Ljava/lang/reflect/AccessibleObject;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lorg/xwalk/core/extension/ReflectionHelper;->eventList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 80
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Ljava/lang/reflect/AccessibleObject;
    :cond_3
    iput-object p2, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    .line 88
    invoke-interface {v6}, Lorg/xwalk/core/extension/JsApi;->isWritable()Z

    move-result v9

    iput-boolean v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isWritable:Z

    .line 89
    invoke-interface {v6}, Lorg/xwalk/core/extension/JsApi;->isEntryPoint()Z

    move-result v9

    iput-boolean v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isEntryPoint:Z

    .line 90
    invoke-interface {v6}, Lorg/xwalk/core/extension/JsApi;->withPromise()Z

    move-result v9

    iput-boolean v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->withPromise:Z

    .line 91
    iput-object v8, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    .line 92
    invoke-interface {v6}, Lorg/xwalk/core/extension/JsApi;->wrapArgs()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->wrapArgs:Ljava/lang/String;

    .line 93
    invoke-interface {v6}, Lorg/xwalk/core/extension/JsApi;->wrapReturns()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->wrapReturns:Ljava/lang/String;

    .line 115
    .end local v6    # "mAnno":Lorg/xwalk/core/extension/JsApi;
    :cond_4
    :goto_3
    iget-boolean v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isEntryPoint:Z

    if-eqz v9, :cond_9

    .line 117
    iget-object v9, p0, Lorg/xwalk/core/extension/ReflectionHelper;->entryPoint:Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    if-eqz v9, :cond_7

    .line 118
    const-string v9, "JsStubReflectHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Entry point already exist, try to set another:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 94
    :cond_5
    const-class v9, Lorg/xwalk/core/extension/JsConstructor;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 95
    sget-object v9, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_METHOD:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    if-eq p2, v9, :cond_6

    .line 96
    const-string v9, "JsStubReflectHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid @JsConstructor on non-function member:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 99
    :cond_6
    const-class v9, Lorg/xwalk/core/extension/JsConstructor;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/xwalk/core/extension/JsConstructor;

    .line 100
    .local v2, "cAnno":Lorg/xwalk/core/extension/JsConstructor;
    sget-object v9, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_CONSTRUCTOR:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    iput-object v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    .line 101
    invoke-interface {v2}, Lorg/xwalk/core/extension/JsConstructor;->isEntryPoint()Z

    move-result v9

    iput-boolean v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isEntryPoint:Z

    .line 102
    invoke-interface {v2}, Lorg/xwalk/core/extension/JsConstructor;->mainClass()Ljava/lang/Class;

    move-result-object v9

    iput-object v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->mainClass:Ljava/lang/Class;

    .line 104
    const/4 v9, 0x0

    iput-boolean v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->withPromise:Z

    .line 107
    iget-object v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->mainClass:Ljava/lang/Class;

    if-eqz v9, :cond_0

    .line 109
    iget-object v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->mainClass:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    .line 111
    iget-object v9, p0, Lorg/xwalk/core/extension/ReflectionHelper;->bindingClasses:Ljava/util/Map;

    iget-object v10, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->mainClass:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v9, p0, Lorg/xwalk/core/extension/ReflectionHelper;->constructorReflections:Ljava/util/Map;

    iget-object v10, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    new-instance v11, Lorg/xwalk/core/extension/ReflectionHelper;

    iget-object v12, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->mainClass:Ljava/lang/Class;

    invoke-direct {v11, v12}, Lorg/xwalk/core/extension/ReflectionHelper;-><init>(Ljava/lang/Class;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 122
    .end local v2    # "cAnno":Lorg/xwalk/core/extension/JsConstructor;
    :cond_7
    sget-object v9, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_PROPERTY:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    if-ne p2, v9, :cond_8

    iget-object v9, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->accesser:Ljava/lang/reflect/AccessibleObject;

    check-cast v9, Ljava/lang/reflect/Field;

    check-cast v9, Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/xwalk/core/extension/ReflectionHelper;->isBindingClass(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 124
    const-string v9, "JsStubReflectHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid entry point setting on property:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 128
    :cond_8
    iput-object v7, p0, Lorg/xwalk/core/extension/ReflectionHelper;->entryPoint:Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    .line 130
    :cond_9
    iget-object v9, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    iget-object v10, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 131
    const-string v9, "JsStubReflectHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflict namespace - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 134
    :cond_a
    iget-object v9, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    iget-object v10, v7, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->jsName:Ljava/lang/String;

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 136
    .end local v0    # "a":Ljava/lang/reflect/AccessibleObject;
    .end local v7    # "mInfo":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    .end local v8    # "name":Ljava/lang/String;
    :cond_b
    return-void

    .line 80
    .restart local v6    # "mAnno":Lorg/xwalk/core/extension/JsApi;
    .restart local v7    # "mInfo":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    .restart local v8    # "name":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto/16 :goto_2
.end method

.method getMembers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    return-object v0
.end method

.method getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "pName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0, p2}, Lorg/xwalk/core/extension/ReflectionHelper;->hasProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/NoSuchFieldException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such property:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_0
    invoke-virtual {p0, p2}, Lorg/xwalk/core/extension/ReflectionHelper;->getMemberInfo(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    move-result-object v1

    iget-boolean v1, v1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isStatic:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/extension/ReflectionHelper;->myClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    new-instance v1, Ljava/lang/reflect/InvocationTargetException;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid target to set property:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 333
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    iget-object v0, v1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->accesser:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Field;

    .line 334
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 335
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 337
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method getReflectionByBindingClass(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->bindingClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->bindingClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/xwalk/core/extension/ReflectionHelper;->getConstructorReflection(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Lorg/xwalk/core/extension/MessageInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "info"    # Lorg/xwalk/core/extension/MessageInfo;
    .param p2, "targetObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 375
    const/4 v11, 0x0

    .line 377
    .local v11, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getCmd()Ljava/lang/String;

    move-result-object v7

    .line 380
    .local v7, "cmd":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getBinaryArgs()Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 381
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 382
    .local v9, "newArgs":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getBinaryArgs()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 383
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getCallbackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 384
    move-object v6, v9

    .line 388
    .end local v9    # "newArgs":Lorg/json/JSONArray;
    .local v6, "args":Lorg/json/JSONArray;
    :goto_0
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getJsName()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "memberName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getExtension()Lorg/xwalk/core/extension/XWalkExternalExtension;

    move-result-object v2

    .line 390
    .local v2, "ext":Lorg/xwalk/core/extension/XWalkExternalExtension;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getInstanceId()I

    move-result v3

    .line 391
    .local v3, "instanceId":I
    const/4 v4, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    move v1, v4

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 407
    const-string v1, "JsStubReflectHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported cmd: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v2    # "ext":Lorg/xwalk/core/extension/XWalkExternalExtension;
    .end local v3    # "instanceId":I
    .end local v5    # "memberName":Ljava/lang/String;
    .end local v6    # "args":Lorg/json/JSONArray;
    .end local v7    # "cmd":Ljava/lang/String;
    .end local v11    # "result":Ljava/lang/Object;
    :goto_2
    return-object v11

    .line 386
    .restart local v7    # "cmd":Ljava/lang/String;
    .restart local v11    # "result":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getArgs()Lorg/json/JSONArray;

    move-result-object v6

    .restart local v6    # "args":Lorg/json/JSONArray;
    goto :goto_0

    .line 391
    .restart local v2    # "ext":Lorg/xwalk/core/extension/XWalkExternalExtension;
    .restart local v3    # "instanceId":I
    .restart local v5    # "memberName":Ljava/lang/String;
    :sswitch_0
    const-string v12, "invokeNative"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v1, "newInstance"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "getProperty"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "setProperty"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_0
    move-object v1, p0

    move-object v4, p2

    .line 393
    invoke-virtual/range {v1 .. v6}, Lorg/xwalk/core/extension/ReflectionHelper;->invokeMethod(Lorg/xwalk/core/extension/XWalkExternalExtension;ILjava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v11

    .line 394
    goto :goto_2

    :pswitch_1
    move-object v1, p0

    move-object v4, p2

    .line 396
    invoke-virtual/range {v1 .. v6}, Lorg/xwalk/core/extension/ReflectionHelper;->invokeMethod(Lorg/xwalk/core/extension/XWalkExternalExtension;ILjava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/extension/BindingObject;

    move-object v0, v1

    check-cast v0, Lorg/xwalk/core/extension/BindingObject;

    move-object v10, v0

    .line 398
    .local v10, "newObj":Lorg/xwalk/core/extension/BindingObject;
    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getInstanceHelper()Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xwalk/core/extension/MessageInfo;->getObjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lorg/xwalk/core/extension/ExtensionInstanceHelper;->addBindingObject(Ljava/lang/String;Lorg/xwalk/core/extension/BindingObject;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 399
    .local v11, "result":Ljava/lang/Boolean;
    goto :goto_2

    .line 401
    .end local v10    # "newObj":Lorg/xwalk/core/extension/BindingObject;
    .local v11, "result":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0, p2, v5}, Lorg/xwalk/core/extension/ReflectionHelper;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 402
    goto :goto_2

    .line 404
    :pswitch_3
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v5, v1}, Lorg/xwalk/core/extension/ReflectionHelper;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 410
    .end local v2    # "ext":Lorg/xwalk/core/extension/XWalkExternalExtension;
    .end local v3    # "instanceId":I
    .end local v5    # "memberName":Ljava/lang/String;
    .end local v6    # "args":Lorg/json/JSONArray;
    .end local v7    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 411
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "JsStubReflectHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid message, error msg:\n"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 391
    :sswitch_data_0
    .sparse-switch
        -0x25bdb951 -> :sswitch_0
        0x3b607c57 -> :sswitch_3
        0x40a81b4b -> :sswitch_2
        0x6bff0255 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method hasMethod(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v2, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 191
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    .line 192
    .local v0, "m":Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;
    iget-object v2, v0, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    sget-object v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_METHOD:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    sget-object v3, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_CONSTRUCTOR:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method hasProperty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    iget-object v0, v0, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->type:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    sget-object v2, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_PROPERTY:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method init()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lorg/xwalk/core/extension/ReflectionHelper;->primitives:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lorg/xwalk/core/extension/ReflectionHelper;->primitives:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lorg/xwalk/core/extension/ReflectionHelper;->primitives:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lorg/xwalk/core/extension/ReflectionHelper;->primitives:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lorg/xwalk/core/extension/ReflectionHelper;->primitives:Ljava/util/Set;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lorg/xwalk/core/extension/ReflectionHelper;->primitives:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lorg/xwalk/core/extension/ReflectionHelper;->primitives:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lorg/xwalk/core/extension/ReflectionHelper;->primitives:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->myClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_METHOD:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/extension/ReflectionHelper;->getMemberInfo([Ljava/lang/reflect/AccessibleObject;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;)V

    .line 156
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->myClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lorg/xwalk/core/extension/ReflectionHelper$MemberType;->JS_PROPERTY:Lorg/xwalk/core/extension/ReflectionHelper$MemberType;

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/extension/ReflectionHelper;->getMemberInfo([Ljava/lang/reflect/AccessibleObject;Lorg/xwalk/core/extension/ReflectionHelper$MemberType;)V

    .line 157
    return-void
.end method

.method invokeMethod(Lorg/xwalk/core/extension/XWalkExternalExtension;ILjava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 6
    .param p1, "ext"    # Lorg/xwalk/core/extension/XWalkExternalExtension;
    .param p2, "instanceID"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "mName"    # Ljava/lang/String;
    .param p5, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0, p4}, Lorg/xwalk/core/extension/ReflectionHelper;->hasMethod(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_0
    invoke-virtual {p0, p4}, Lorg/xwalk/core/extension/ReflectionHelper;->getMemberInfo(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    move-result-object v2

    iget-boolean v2, v2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isStatic:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/xwalk/core/extension/ReflectionHelper;->myClass:Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    new-instance v2, Ljava/lang/reflect/InvocationTargetException;

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid target to set property:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 317
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    invoke-interface {v2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    iget-object v0, v2, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->accesser:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Method;

    .line 318
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 319
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 321
    :cond_2
    invoke-virtual {p0, p1, p2, v0, p5}, Lorg/xwalk/core/extension/ReflectionHelper;->getArgsFromJson(Lorg/xwalk/core/extension/XWalkExternalExtension;ILjava/lang/reflect/Method;Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v1

    .line 322
    .local v1, "oArgs":[Ljava/lang/Object;
    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method isBindingClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/xwalk/core/extension/BindingObject;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method isEventSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v2, p0, Lorg/xwalk/core/extension/ReflectionHelper;->eventList:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v1

    .line 364
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/xwalk/core/extension/ReflectionHelper;->eventList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 365
    iget-object v2, p0, Lorg/xwalk/core/extension/ReflectionHelper;->eventList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 364
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method isInstance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 371
    iget-object v0, p0, Lorg/xwalk/core/extension/ReflectionHelper;->myClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0, p2}, Lorg/xwalk/core/extension/ReflectionHelper;->hasProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    new-instance v1, Ljava/lang/NoSuchFieldException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such property:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    invoke-virtual {p0, p2}, Lorg/xwalk/core/extension/ReflectionHelper;->getMemberInfo(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    move-result-object v1

    iget-boolean v1, v1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->isStatic:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/extension/ReflectionHelper;->myClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    new-instance v1, Ljava/lang/reflect/InvocationTargetException;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid target to set property:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 348
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/extension/ReflectionHelper;->members:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;

    iget-object v0, v1, Lorg/xwalk/core/extension/ReflectionHelper$MemberInfo;->accesser:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Field;

    .line 349
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 351
    :cond_2
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    return-void
.end method
