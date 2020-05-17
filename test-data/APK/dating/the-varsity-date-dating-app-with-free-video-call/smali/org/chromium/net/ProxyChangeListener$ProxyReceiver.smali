.class Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProxyChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/ProxyChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/ProxyChangeListener;


# direct methods
.method private constructor <init>(Lorg/chromium/net/ProxyChangeListener;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;->this$0:Lorg/chromium/net/ProxyChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/ProxyChangeListener;Lorg/chromium/net/ProxyChangeListener$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/net/ProxyChangeListener;
    .param p2, "x1"    # Lorg/chromium/net/ProxyChangeListener$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;-><init>(Lorg/chromium/net/ProxyChangeListener;)V

    return-void
.end method

.method private extractNewProxy(Landroid/content/Intent;)Lorg/chromium/net/ProxyChangeListener$ProxyConfig;
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    :try_start_0
    const-string v10, "getHost"

    .line 110
    .local v10, "getHostName":Ljava/lang/String;
    const-string v14, "getPort"

    .line 111
    .local v14, "getPortName":Ljava/lang/String;
    const-string v11, "getPacFileUrl"

    .line 112
    .local v11, "getPacFileUrl":Ljava/lang/String;
    const-string v7, "getExclusionList"

    .line 115
    .local v7, "getExclusionList":Ljava/lang/String;
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 116
    const-string v3, "android.net.ProxyProperties"

    .line 117
    .local v3, "className":Ljava/lang/String;
    const-string v19, "proxy"

    .line 123
    .local v19, "proxyInfo":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 124
    .local v18, "props":Ljava/lang/Object;
    if-nez v18, :cond_1

    .line 125
    const/16 v21, 0x0

    .line 173
    .end local v3    # "className":Ljava/lang/String;
    .end local v7    # "getExclusionList":Ljava/lang/String;
    .end local v10    # "getHostName":Ljava/lang/String;
    .end local v11    # "getPacFileUrl":Ljava/lang/String;
    .end local v14    # "getPortName":Ljava/lang/String;
    .end local v18    # "props":Ljava/lang/Object;
    .end local v19    # "proxyInfo":Ljava/lang/String;
    :goto_1
    return-object v21

    .line 119
    .restart local v7    # "getExclusionList":Ljava/lang/String;
    .restart local v10    # "getHostName":Ljava/lang/String;
    .restart local v11    # "getPacFileUrl":Ljava/lang/String;
    .restart local v14    # "getPortName":Ljava/lang/String;
    :cond_0
    const-string v3, "android.net.ProxyInfo"

    .line 120
    .restart local v3    # "className":Ljava/lang/String;
    const-string v19, "android.intent.extra.PROXY_INFO"

    .restart local v19    # "proxyInfo":Ljava/lang/String;
    goto :goto_0

    .line 128
    .restart local v18    # "props":Ljava/lang/Object;
    :cond_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 129
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v21, "getHost"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 130
    .local v9, "getHostMethod":Ljava/lang/reflect/Method;
    const-string v21, "getPort"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 131
    .local v13, "getPortMethod":Ljava/lang/reflect/Method;
    const-string v21, "getExclusionList"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 133
    .local v8, "getExclusionListMethod":Ljava/lang/reflect/Method;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 134
    .local v15, "host":Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 137
    .local v17, "port":I
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 138
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 139
    .local v20, "s":Ljava/lang/String;
    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 144
    .end local v20    # "s":Ljava/lang/String;
    .local v6, "exclusionList":[Ljava/lang/String;
    :goto_2
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 146
    const-string v21, "getPacFileUrl"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 147
    .local v12, "getPacFileUrlMethod":Ljava/lang/reflect/Method;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 148
    .local v16, "pacFileUrl":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 149
    new-instance v21, Lorg/chromium/net/ProxyChangeListener$ProxyConfig;

    move-object/from16 v0, v21

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v15, v1, v2, v6}, Lorg/chromium/net/ProxyChangeListener$ProxyConfig;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_1

    .line 159
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "exclusionList":[Ljava/lang/String;
    .end local v7    # "getExclusionList":Ljava/lang/String;
    .end local v8    # "getExclusionListMethod":Ljava/lang/reflect/Method;
    .end local v9    # "getHostMethod":Ljava/lang/reflect/Method;
    .end local v10    # "getHostName":Ljava/lang/String;
    .end local v11    # "getPacFileUrl":Ljava/lang/String;
    .end local v12    # "getPacFileUrlMethod":Ljava/lang/reflect/Method;
    .end local v13    # "getPortMethod":Ljava/lang/reflect/Method;
    .end local v14    # "getPortName":Ljava/lang/String;
    .end local v15    # "host":Ljava/lang/String;
    .end local v16    # "pacFileUrl":Ljava/lang/String;
    .end local v17    # "port":I
    .end local v18    # "props":Ljava/lang/Object;
    .end local v19    # "proxyInfo":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 160
    .local v5, "ex":Ljava/lang/ClassNotFoundException;
    const-string v21, "ProxyChangeListener"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Using no proxy configuration due to exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 141
    .end local v5    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "getExclusionList":Ljava/lang/String;
    .restart local v8    # "getExclusionListMethod":Ljava/lang/reflect/Method;
    .restart local v9    # "getHostMethod":Ljava/lang/reflect/Method;
    .restart local v10    # "getHostName":Ljava/lang/String;
    .restart local v11    # "getPacFileUrl":Ljava/lang/String;
    .restart local v13    # "getPortMethod":Ljava/lang/reflect/Method;
    .restart local v14    # "getPortName":Ljava/lang/String;
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v17    # "port":I
    .restart local v18    # "props":Ljava/lang/Object;
    .restart local v19    # "proxyInfo":Ljava/lang/String;
    :cond_2
    const/16 v21, 0x0

    :try_start_1
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    move-object/from16 v0, v21

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .restart local v6    # "exclusionList":[Ljava/lang/String;
    goto/16 :goto_2

    .line 151
    :cond_3
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 152
    const-string v21, "getPacFileUrl"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 153
    .restart local v12    # "getPacFileUrlMethod":Ljava/lang/reflect/Method;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    .line 154
    .local v16, "pacFileUrl":Landroid/net/Uri;
    sget-object v21, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 155
    new-instance v21, Lorg/chromium/net/ProxyChangeListener$ProxyConfig;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v15, v1, v2, v6}, Lorg/chromium/net/ProxyChangeListener$ProxyConfig;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_1

    .line 162
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "exclusionList":[Ljava/lang/String;
    .end local v7    # "getExclusionList":Ljava/lang/String;
    .end local v8    # "getExclusionListMethod":Ljava/lang/reflect/Method;
    .end local v9    # "getHostMethod":Ljava/lang/reflect/Method;
    .end local v10    # "getHostName":Ljava/lang/String;
    .end local v11    # "getPacFileUrl":Ljava/lang/String;
    .end local v12    # "getPacFileUrlMethod":Ljava/lang/reflect/Method;
    .end local v13    # "getPortMethod":Ljava/lang/reflect/Method;
    .end local v14    # "getPortName":Ljava/lang/String;
    .end local v15    # "host":Ljava/lang/String;
    .end local v16    # "pacFileUrl":Landroid/net/Uri;
    .end local v17    # "port":I
    .end local v18    # "props":Ljava/lang/Object;
    .end local v19    # "proxyInfo":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 163
    .local v5, "ex":Ljava/lang/NoSuchMethodException;
    const-string v21, "ProxyChangeListener"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Using no proxy configuration due to exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 158
    .end local v5    # "ex":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "exclusionList":[Ljava/lang/String;
    .restart local v7    # "getExclusionList":Ljava/lang/String;
    .restart local v8    # "getExclusionListMethod":Ljava/lang/reflect/Method;
    .restart local v9    # "getHostMethod":Ljava/lang/reflect/Method;
    .restart local v10    # "getHostName":Ljava/lang/String;
    .restart local v11    # "getPacFileUrl":Ljava/lang/String;
    .restart local v13    # "getPortMethod":Ljava/lang/reflect/Method;
    .restart local v14    # "getPortName":Ljava/lang/String;
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v17    # "port":I
    .restart local v18    # "props":Ljava/lang/Object;
    .restart local v19    # "proxyInfo":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v21, Lorg/chromium/net/ProxyChangeListener$ProxyConfig;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v15, v1, v2, v6}, Lorg/chromium/net/ProxyChangeListener$ProxyConfig;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 165
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "exclusionList":[Ljava/lang/String;
    .end local v7    # "getExclusionList":Ljava/lang/String;
    .end local v8    # "getExclusionListMethod":Ljava/lang/reflect/Method;
    .end local v9    # "getHostMethod":Ljava/lang/reflect/Method;
    .end local v10    # "getHostName":Ljava/lang/String;
    .end local v11    # "getPacFileUrl":Ljava/lang/String;
    .end local v13    # "getPortMethod":Ljava/lang/reflect/Method;
    .end local v14    # "getPortName":Ljava/lang/String;
    .end local v15    # "host":Ljava/lang/String;
    .end local v17    # "port":I
    .end local v18    # "props":Ljava/lang/Object;
    .end local v19    # "proxyInfo":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 166
    .local v5, "ex":Ljava/lang/IllegalAccessException;
    const-string v21, "ProxyChangeListener"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Using no proxy configuration due to exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 168
    .end local v5    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v5

    .line 169
    .local v5, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v21, "ProxyChangeListener"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Using no proxy configuration due to exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 171
    .end local v5    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v5

    .line 172
    .local v5, "ex":Ljava/lang/NullPointerException;
    const-string v21, "ProxyChangeListener"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Using no proxy configuration due to exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/16 v21, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;->this$0:Lorg/chromium/net/ProxyChangeListener;

    invoke-direct {p0, p2}, Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;->extractNewProxy(Landroid/content/Intent;)Lorg/chromium/net/ProxyChangeListener$ProxyConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/net/ProxyChangeListener;->access$000(Lorg/chromium/net/ProxyChangeListener;Lorg/chromium/net/ProxyChangeListener$ProxyConfig;)V

    .line 99
    :cond_0
    return-void
.end method
