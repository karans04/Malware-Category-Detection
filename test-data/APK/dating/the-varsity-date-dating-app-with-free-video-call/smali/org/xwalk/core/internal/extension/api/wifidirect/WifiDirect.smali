.class public Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;
.super Lorg/xwalk/core/internal/extension/XWalkExtensionWithActivityStateListener;
.source "WifiDirect.java"


# static fields
.field private static final CMD_CANCEL_CONNECT:Ljava/lang/String; = "cancelConnect"

.field private static final CMD_CONNECT:Ljava/lang/String; = "connect"

.field private static final CMD_DISCONNECT:Ljava/lang/String; = "disconnect"

.field private static final CMD_DISCOVER_PEERS:Ljava/lang/String; = "discoverPeers"

.field private static final CMD_GET_CONNECTION_INFO:Ljava/lang/String; = "getConnectionInfo"

.field private static final CMD_GET_PEERS:Ljava/lang/String; = "getPeers"

.field private static final CMD_INIT:Ljava/lang/String; = "init"

.field private static final ERROR_BUSY:Ljava/lang/String; = "WifiP2pManager.BUSY"

.field private static final ERROR_DEFAULT:Ljava/lang/String; = "WifiP2pManager.ERROR"

.field private static final ERROR_GENERAL_ERROR_MSG_STEM:Ljava/lang/String; = "Android WiFi Direct error: "

.field private static final ERROR_INVALID_CALL_NO_DATA_MSG:Ljava/lang/String; = "Error: Invalid connect API call - data === null"

.field private static final ERROR_NO_SERVICE_REQUESTS:Ljava/lang/String; = "WifiP2pManager.NO_SERVICE_REQUESTS"

.field private static final ERROR_P2P_UNSUPPORTED:Ljava/lang/String; = "WifiP2pManager.P2P_UNSUPPORTED"

.field private static final ERROR_REASON_CODE_STEM:Ljava/lang/String; = "WifiP2pManager reasonCode: "

.field private static final EVENT_CONNECTION_CHANGED:Ljava/lang/String; = "connectionchanged"

.field private static final EVENT_DISCOVERY_STOPPED:Ljava/lang/String; = "discoverystoppedevent"

.field private static final EVENT_PEERS_CHANGED:Ljava/lang/String; = "peerschanged"

.field private static final EVENT_THIS_DEVICE_CHANGED:Ljava/lang/String; = "thisdevicechanged"

.field private static final EVENT_WIFI_STATE_CHANGED:Ljava/lang/String; = "wifistatechanged"

.field public static final JS_API_PATH:Ljava/lang/String; = "jsapi/wifidirect_api.js"

.field private static final NAME:Ljava/lang/String; = "xwalk.experimental.wifidirect"

.field private static final STATE_AVAILABLE:Ljava/lang/String; = "available"

.field private static final STATE_CONNECTED:Ljava/lang/String; = "connected"

.field private static final STATE_FAILED:Ljava/lang/String; = "failed"

.field private static final STATE_INVITED:Ljava/lang/String; = "invited"

.field private static final STATE_UNAVAILABLE:Ljava/lang/String; = "unavailable"

.field private static final TAG:Ljava/lang/String; = "WifiDirect"

.field private static final TAG_ASYNC_CALL_ID:Ljava/lang/String; = "asyncCallId"

.field private static final TAG_CMD:Ljava/lang/String; = "cmd"

.field private static final TAG_CONNECTED:Ljava/lang/String; = "connected"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_ENABLED:Ljava/lang/String; = "enabled"

.field private static final TAG_ERROR:Ljava/lang/String; = "error"

.field private static final TAG_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final TAG_EVENT_NAME:Ljava/lang/String; = "eventName"

.field private static final TAG_FALSE:Ljava/lang/String; = "false"

.field private static final TAG_GROUP_FORMED:Ljava/lang/String; = "groupFormed"

.field private static final TAG_IS_SERVER:Ljava/lang/String; = "isServer"

.field private static final TAG_MAC:Ljava/lang/String; = "MAC"

.field private static final TAG_MESSAGE:Ljava/lang/String; = "message"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_SERVER_IP:Ljava/lang/String; = "serverIP"

.field private static final TAG_STATUS:Ljava/lang/String; = "status"

.field private static final TAG_TRUE:Ljava/lang/String; = "true"

.field private static final TAG_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p1, "jsApiContent"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 106
    const-string v0, "xwalk.experimental.wifidirect"

    invoke-direct {p0, v0, p1, p2}, Lorg/xwalk/core/internal/extension/XWalkExtensionWithActivityStateListener;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 98
    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 99
    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 100
    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiverRegistered:Z

    .line 103
    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    .line 107
    iput-object p2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;ILorg/json/JSONObject;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->createCallActionListener(ILorg/json/JSONObject;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->convertListToJSON(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->setEventData(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->convertDeviceToJSON(Lorg/json/JSONObject;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method private convertDeviceToJSON(Lorg/json/JSONObject;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "ob"    # Lorg/json/JSONObject;
    .param p2, "peer"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v0, "MAC"

    iget-object v1, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v0, "name"

    iget-object v1, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v0, "type"

    iget-object v1, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v0, "status"

    iget v1, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-direct {p0, v1}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->convertStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    return-void
.end method

.method private convertListToJSON(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 290
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 291
    .local v3, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 292
    .local v2, "ob":Lorg/json/JSONObject;
    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->convertDeviceToJSON(Lorg/json/JSONObject;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 293
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 295
    .end local v2    # "ob":Lorg/json/JSONObject;
    .end local v3    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    return-object v0
.end method

.method private convertReasonCodeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "reasonCode"    # I

    .prologue
    .line 303
    packed-switch p1, :pswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiP2pManager reasonCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 305
    :pswitch_0
    const-string v0, "WifiP2pManager.BUSY"

    goto :goto_0

    .line 307
    :pswitch_1
    const-string v0, "WifiP2pManager.ERROR"

    goto :goto_0

    .line 309
    :pswitch_2
    const-string v0, "WifiP2pManager.NO_SERVICE_REQUESTS"

    goto :goto_0

    .line 311
    :pswitch_3
    const-string v0, "WifiP2pManager.P2P_UNSUPPORTED"

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private convertStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 265
    packed-switch p1, :pswitch_data_0

    .line 277
    const-string v0, ""

    :goto_0
    return-object v0

    .line 267
    :pswitch_0
    const-string v0, "available"

    goto :goto_0

    .line 269
    :pswitch_1
    const-string v0, "connected"

    goto :goto_0

    .line 271
    :pswitch_2
    const-string v0, "failed"

    goto :goto_0

    .line 273
    :pswitch_3
    const-string v0, "invited"

    goto :goto_0

    .line 275
    :pswitch_4
    const-string v0, "unavailable"

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private createCallActionListener(ILorg/json/JSONObject;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .locals 1
    .param p1, "instanceID"    # I
    .param p2, "jsonOutput"    # Lorg/json/JSONObject;

    .prologue
    .line 111
    new-instance v0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$1;-><init>(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;I)V

    return-object v0
.end method

.method private disconnect(ILorg/json/JSONObject;)V
    .locals 3
    .param p1, "instanceID"    # I
    .param p2, "jsonOutput"    # Lorg/json/JSONObject;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;

    invoke-direct {v2, p0, p1, p2}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$2;-><init>(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;ILorg/json/JSONObject;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 141
    :cond_0
    return-void
.end method

.method private handleMessage(ILjava/lang/String;)V
    .locals 10
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 145
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .local v5, "jsonInput":Lorg/json/JSONObject;
    const-string v7, "cmd"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "cmd":Ljava/lang/String;
    const-string v7, "asyncCallId"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "asyncCallId":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v6, "jsonOutput":Lorg/json/JSONObject;
    const-string v7, "asyncCallId"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v7, "discoverPeers"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 152
    iget-object v7, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v8, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0, p1, v6}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->createCallActionListener(ILorg/json/JSONObject;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 205
    .end local v0    # "asyncCallId":Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v5    # "jsonInput":Lorg/json/JSONObject;
    .end local v6    # "jsonOutput":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v0    # "asyncCallId":Ljava/lang/String;
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v5    # "jsonInput":Lorg/json/JSONObject;
    .restart local v6    # "jsonOutput":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "getPeers"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    iget-object v7, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v8, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v9, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;

    invoke-direct {v9, p0, v6, p1}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$3;-><init>(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;I)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v0    # "asyncCallId":Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v5    # "jsonInput":Lorg/json/JSONObject;
    .end local v6    # "jsonOutput":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 203
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {p0, v4}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->printErrorMessage(Lorg/json/JSONException;)V

    goto :goto_0

    .line 165
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v0    # "asyncCallId":Ljava/lang/String;
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v5    # "jsonInput":Lorg/json/JSONObject;
    .restart local v6    # "jsonOutput":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v7, "init"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 166
    const-string v7, "data"

    invoke-direct {p0}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->init()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->postMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    const-string v7, "getConnectionInfo"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 169
    iget-object v7, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v8, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v9, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;

    invoke-direct {v9, p0, v6, p1}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$4;-><init>(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;I)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_0

    .line 186
    :cond_4
    const-string v7, "connect"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 187
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 188
    .local v3, "dev":Lorg/json/JSONObject;
    if-nez v3, :cond_5

    .line 189
    const-string v7, "Error: Invalid connect API call - data === null"

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->setError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 190
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->postMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_5
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 193
    .local v2, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    const-string v7, "MAC"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 194
    iget-object v7, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v8, 0x0

    iput v8, v7, Landroid/net/wifi/WpsInfo;->setup:I

    .line 195
    iget-object v7, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v8, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0, p1, v6}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->createCallActionListener(ILorg/json/JSONObject;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v9

    invoke-virtual {v7, v8, v2, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 197
    .end local v2    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v3    # "dev":Lorg/json/JSONObject;
    :cond_6
    const-string v7, "cancelConnect"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 198
    iget-object v7, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v8, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0, p1, v6}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->createCallActionListener(ILorg/json/JSONObject;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 199
    :cond_7
    const-string v7, "disconnect"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    invoke-direct {p0, p1, v6}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->disconnect(ILorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private init()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 215
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    const-string v2, "wifip2p"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 218
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 219
    new-instance v0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;-><init>(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mIntentFilter:Landroid/content/IntentFilter;

    .line 252
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-boolean v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiverRegistered:Z

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    iput-boolean v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiverRegistered:Z

    :cond_1
    move v0, v1

    .line 261
    goto :goto_0
.end method

.method private setEventData(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "out"    # Lorg/json/JSONObject;
    .param p2, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 208
    const-string v1, "eventName"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 210
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    return-object v0
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newState"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 344
    :pswitch_0
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    .line 345
    iget-boolean v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiverRegistered:Z

    goto :goto_0

    .line 351
    :pswitch_1
    iget-boolean v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiverRegistered:Z

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mReceiverRegistered:Z

    .line 355
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->mActivity:Landroid/app/Activity;

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->handleMessage(ILjava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method public onSyncMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method protected printErrorMessage(Lorg/json/JSONException;)V
    .locals 2
    .param p1, "e"    # Lorg/json/JSONException;

    .prologue
    .line 299
    const-string v0, "WifiDirect"

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method protected setError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 6
    .param p1, "out"    # Lorg/json/JSONObject;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "reasonCode"    # I

    .prologue
    .line 318
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 319
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 321
    .local v2, "error":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v3, "message"

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Android WiFi Direct error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p3}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->convertReasonCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "errorMessage":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v3, "errorCode"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 324
    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "WifiDirect"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
