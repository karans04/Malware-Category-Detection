.class public Lorg/xwalk/core/extension/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mArgs:Lorg/json/JSONArray;

.field private mBinaryArgs:Ljava/nio/ByteBuffer;

.field private mCallbackId:Ljava/lang/String;

.field private mCmd:Ljava/lang/String;

.field private mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

.field private mInstanceId:I

.field private mJsName:Ljava/lang/String;

.field private mObjectId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/extension/MessageInfo;)V
    .locals 1
    .param p1, "info"    # Lorg/xwalk/core/extension/MessageInfo;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "MessageInfo"

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->TAG:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lorg/xwalk/core/extension/MessageInfo;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    .line 38
    iget v0, p1, Lorg/xwalk/core/extension/MessageInfo;->mInstanceId:I

    iput v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mInstanceId:I

    .line 39
    iget-object v0, p1, Lorg/xwalk/core/extension/MessageInfo;->mJsName:Ljava/lang/String;

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mJsName:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lorg/xwalk/core/extension/MessageInfo;->mCallbackId:Ljava/lang/String;

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mCallbackId:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lorg/xwalk/core/extension/MessageInfo;->mObjectId:Ljava/lang/String;

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mObjectId:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    .line 43
    iget-object v0, p1, Lorg/xwalk/core/extension/MessageInfo;->mCmd:Ljava/lang/String;

    iput-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mCmd:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/xwalk/core/extension/XWalkExternalExtension;ILjava/lang/String;)V
    .locals 8
    .param p1, "extension"    # Lorg/xwalk/core/extension/XWalkExternalExtension;
    .param p2, "instanceId"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v5, "MessageInfo"

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->TAG:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lorg/xwalk/core/extension/MessageInfo;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    .line 49
    iput p2, p0, Lorg/xwalk/core/extension/MessageInfo;->mInstanceId:I

    .line 50
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_1

    .line 54
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    .line 56
    const-string v5, "invokeNative"

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mCmd:Ljava/lang/String;

    .line 57
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mJsName:Ljava/lang/String;

    .line 58
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mCallbackId:Ljava/lang/String;

    .line 59
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mObjectId:Ljava/lang/String;

    .line 61
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 62
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 63
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 64
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "m":Lorg/json/JSONObject;
    const-string v5, "cmd"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "cmd":Ljava/lang/String;
    const-string v5, "objectId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 85
    .local v4, "objectId":I
    iput-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mCmd:Ljava/lang/String;

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mObjectId:Ljava/lang/String;

    .line 89
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mCallbackId:Ljava/lang/String;

    .line 90
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "msgType":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    .line 93
    const-string v5, "postMessageToExtension"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    const-string v5, "args"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    .line 95
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mJsName:Ljava/lang/String;

    .line 96
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mCmd:Ljava/lang/String;

    const-string v6, "newInstance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mObjectId:Ljava/lang/String;

    .line 98
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "m":Lorg/json/JSONObject;
    .end local v3    # "msgType":Ljava/lang/String;
    .end local v4    # "objectId":I
    :catch_1
    move-exception v1

    .line 107
    .restart local v1    # "e":Lorg/json/JSONException;
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "cmd":Ljava/lang/String;
    .restart local v2    # "m":Lorg/json/JSONObject;
    .restart local v3    # "msgType":Ljava/lang/String;
    .restart local v4    # "objectId":I
    :cond_2
    :try_start_2
    iput-object v3, p0, Lorg/xwalk/core/extension/MessageInfo;->mJsName:Ljava/lang/String;

    .line 103
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 104
    iget-object v5, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    const/4 v6, 0x1

    const-string v7, "args"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public constructor <init>(Lorg/xwalk/core/extension/XWalkExternalExtension;I[B)V
    .locals 11
    .param p1, "extension"    # Lorg/xwalk/core/extension/XWalkExternalExtension;
    .param p2, "instanceId"    # I
    .param p3, "message"    # [B

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v9, "MessageInfo"

    iput-object v9, p0, Lorg/xwalk/core/extension/MessageInfo;->TAG:Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lorg/xwalk/core/extension/MessageInfo;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    .line 116
    iput p2, p0, Lorg/xwalk/core/extension/MessageInfo;->mInstanceId:I

    .line 117
    const-string v9, "invokeNative"

    iput-object v9, p0, Lorg/xwalk/core/extension/MessageInfo;->mCmd:Ljava/lang/String;

    .line 119
    const/4 v9, 0x0

    :try_start_0
    iput-object v9, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    .line 120
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 121
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v9, v10, :cond_0

    .line 122
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 125
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 126
    .local v4, "byteOffset":I
    const/4 v3, 0x4

    .line 127
    .local v3, "byteCountOfInt":I
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    .line 128
    .local v6, "funcNameLen":I
    invoke-direct {p0, v6}, Lorg/xwalk/core/extension/MessageInfo;->AlignedWith4Bytes(I)I

    move-result v0

    .line 129
    .local v0, "alignedFuncNameLen":I
    add-int/2addr v4, v3

    .line 130
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p3, v4, v6}, Ljava/lang/String;-><init>([BII)V

    iput-object v9, p0, Lorg/xwalk/core/extension/MessageInfo;->mJsName:Ljava/lang/String;

    .line 132
    add-int/2addr v4, v0

    .line 133
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/xwalk/core/extension/MessageInfo;->mCallbackId:Ljava/lang/String;

    .line 135
    add-int/2addr v4, v3

    .line 136
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    .line 137
    .local v8, "objectIdLen":I
    invoke-direct {p0, v8}, Lorg/xwalk/core/extension/MessageInfo;->AlignedWith4Bytes(I)I

    move-result v1

    .line 138
    .local v1, "alignedObjectIdLen":I
    add-int/2addr v4, v3

    .line 139
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p3, v4, v8}, Ljava/lang/String;-><init>([BII)V

    iput-object v9, p0, Lorg/xwalk/core/extension/MessageInfo;->mObjectId:Ljava/lang/String;

    .line 141
    add-int/2addr v4, v1

    .line 142
    array-length v9, p3

    sub-int v7, v9, v4

    .line 143
    .local v7, "len":I
    invoke-static {p3, v4, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/xwalk/core/extension/MessageInfo;->mBinaryArgs:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .end local v0    # "alignedFuncNameLen":I
    .end local v1    # "alignedObjectIdLen":I
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "byteCountOfInt":I
    .end local v4    # "byteOffset":I
    .end local v6    # "funcNameLen":I
    .end local v7    # "len":I
    .end local v8    # "objectIdLen":I
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v5

    .line 145
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v9, p0, Lorg/xwalk/core/extension/MessageInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v5

    .line 147
    .local v5, "e":Ljava/lang/NullPointerException;
    iget-object v9, p0, Lorg/xwalk/core/extension/MessageInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private AlignedWith4Bytes(I)I
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 33
    rem-int/lit8 v0, p1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public getArgs()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getBinaryArgs()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mBinaryArgs:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getCallbackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Lorg/xwalk/core/extension/XWalkExternalExtension;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    return-object v0
.end method

.method public getInstanceHelper()Lorg/xwalk/core/extension/ExtensionInstanceHelper;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    iget v1, p0, Lorg/xwalk/core/extension/MessageInfo;->mInstanceId:I

    invoke-virtual {v0, v1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getInstanceHelper(I)Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mInstanceId:I

    return v0
.end method

.method public getJsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mJsName:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public postResult(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "args"    # Lorg/json/JSONArray;

    .prologue
    .line 170
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 171
    .local v2, "result":Lorg/json/JSONArray;
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/xwalk/core/extension/MessageInfo;->mCallbackId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 173
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object v3, p0, Lorg/xwalk/core/extension/MessageInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v3, p0, Lorg/xwalk/core/extension/MessageInfo;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    iget v4, p0, Lorg/xwalk/core/extension/MessageInfo;->mInstanceId:I

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/xwalk/core/extension/XWalkExternalExtension;->postMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "i":I
    .end local v2    # "result":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lorg/xwalk/core/extension/MessageInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public postResult([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 195
    iget-object v0, p0, Lorg/xwalk/core/extension/MessageInfo;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    iget v1, p0, Lorg/xwalk/core/extension/MessageInfo;->mInstanceId:I

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->postBinaryMessage(I[B)V

    .line 196
    return-void
.end method

.method public setArgs(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "args"    # Lorg/json/JSONArray;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/xwalk/core/extension/MessageInfo;->mArgs:Lorg/json/JSONArray;

    return-void
.end method

.method public setBinaryArgs(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "args"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/xwalk/core/extension/MessageInfo;->mBinaryArgs:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/xwalk/core/extension/MessageInfo;->mCallbackId:Ljava/lang/String;

    return-void
.end method

.method public setJsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "JsName"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/xwalk/core/extension/MessageInfo;->mJsName:Ljava/lang/String;

    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/xwalk/core/extension/MessageInfo;->mObjectId:Ljava/lang/String;

    return-void
.end method
