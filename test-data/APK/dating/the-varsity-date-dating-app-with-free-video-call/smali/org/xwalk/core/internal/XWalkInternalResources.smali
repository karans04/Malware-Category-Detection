.class Lorg/xwalk/core/internal/XWalkInternalResources;
.super Ljava/lang/Object;
.source "XWalkInternalResources.java"


# static fields
.field private static final GENERATED_RESOURCE_CLASS:Ljava/lang/String; = "org.xwalk.core.R"

.field private static final INTERNAL_RESOURCE_CLASSES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "XWalkInternalResources"

.field private static loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    sput-boolean v2, Lorg/xwalk/core/internal/XWalkInternalResources;->loaded:Z

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "org.chromium.components.web_contents_delegate_android.R"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "org.chromium.content.R"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "org.chromium.ui.R"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.xwalk.core.internal.R"

    aput-object v2, v0, v1

    sput-object v0, Lorg/xwalk/core/internal/XWalkInternalResources;->INTERNAL_RESOURCE_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doResetIds(Landroid/content/Context;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v24, Lorg/xwalk/core/internal/XWalkInternalResources;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 30
    .local v7, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 31
    .local v3, "appClassLoader":Ljava/lang/ClassLoader;
    sget-object v4, Lorg/xwalk/core/internal/XWalkInternalResources;->INTERNAL_RESOURCE_CLASSES:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v19, v0

    .local v19, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v15, v13

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v19    # "len$":I
    .local v15, "i$":I
    :goto_0
    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    aget-object v22, v4, v15

    .line 33
    .local v22, "resourceClass":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 34
    .local v18, "internalResource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v17

    .line 35
    .local v17, "innerClazzs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v5, v17

    .local v5, "arr$":[Ljava/lang/Class;
    array-length v0, v5

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v13, 0x0

    .end local v15    # "i$":I
    .restart local v13    # "i$":I
    move v14, v13

    .end local v5    # "arr$":[Ljava/lang/Class;
    .end local v13    # "i$":I
    .end local v20    # "len$":I
    .local v14, "i$":I
    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_3

    aget-object v16, v5, v14

    .line 37
    .local v16, "innerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "org.xwalk.core.R"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 40
    .local v11, "generatedInnerClassName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 45
    .local v12, "generatedInnerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 46
    .local v10, "fields":[Ljava/lang/reflect/Field;
    move-object v6, v10

    .local v6, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v6

    move/from16 v21, v0

    .local v21, "len$":I
    const/4 v13, 0x0

    .end local v14    # "i$":I
    .restart local v13    # "i$":I
    :goto_2
    move/from16 v0, v21

    if-ge v13, v0, :cond_2

    aget-object v9, v6, v13

    .line 48
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 50
    :cond_0
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v23

    .line 51
    .local v23, "value":I
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 62
    .end local v23    # "value":I
    :goto_3
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v24

    if-eqz v24, :cond_1

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 41
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fields":[Ljava/lang/reflect/Field;
    .end local v12    # "generatedInnerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "i$":I
    .end local v21    # "len$":I
    .restart local v14    # "i$":I
    :catch_0
    move-exception v8

    .line 42
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    const-string v24, "XWalkInternalResources"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "is not found."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    .end local v14    # "i$":I
    :cond_2
    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto/16 :goto_1

    .line 52
    .end local v14    # "i$":I
    .restart local v6    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "fields":[Ljava/lang/reflect/Field;
    .restart local v12    # "generatedInnerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "i$":I
    .restart local v21    # "len$":I
    :catch_1
    move-exception v8

    .line 53
    .local v8, "e":Ljava/lang/IllegalAccessException;
    const-string v24, "XWalkInternalResources"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is not accessable."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 65
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fields":[Ljava/lang/reflect/Field;
    .end local v11    # "generatedInnerClassName":Ljava/lang/String;
    .end local v12    # "generatedInnerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "i$":I
    .end local v16    # "innerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "innerClazzs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v18    # "internalResource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "len$":I
    :catch_2
    move-exception v8

    .line 66
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    const-string v24, "XWalkInternalResources"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "is not found."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3
    add-int/lit8 v13, v15, 0x1

    .restart local v13    # "i$":I
    move v15, v13

    .end local v13    # "i$":I
    .restart local v15    # "i$":I
    goto/16 :goto_0

    .line 55
    .end local v15    # "i$":I
    .restart local v6    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "fields":[Ljava/lang/reflect/Field;
    .restart local v11    # "generatedInnerClassName":Ljava/lang/String;
    .restart local v12    # "generatedInnerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "i$":I
    .restart local v16    # "innerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "innerClazzs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v18    # "internalResource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "len$":I
    :catch_3
    move-exception v8

    .line 56
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v24, "XWalkInternalResources"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is not int."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 58
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v8

    .line 59
    .local v8, "e":Ljava/lang/NoSuchFieldException;
    const-string v24, "XWalkInternalResources"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is not found."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    .line 69
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v8    # "e":Ljava/lang/NoSuchFieldException;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fields":[Ljava/lang/reflect/Field;
    .end local v11    # "generatedInnerClassName":Ljava/lang/String;
    .end local v12    # "generatedInnerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "i$":I
    .end local v16    # "innerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "innerClazzs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v18    # "internalResource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "len$":I
    .end local v22    # "resourceClass":Ljava/lang/String;
    .restart local v15    # "i$":I
    :cond_4
    return-void
.end method

.method static resetIds(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkInternalResources;->loaded:Z

    if-nez v0, :cond_0

    .line 73
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkInternalResources;->doResetIds(Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lorg/xwalk/core/internal/XWalkInternalResources;->loaded:Z

    .line 76
    :cond_0
    return-void
.end method
