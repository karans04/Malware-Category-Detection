.class Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiDirect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .local v4, "out":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    iget-object v5, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    const-string v6, "wifistatechanged"

    invoke-static {v5, v4, v6}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->access$400(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "enabled"

    const-string v5, "wifi_p2p_state"

    const/4 v8, -0x1

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    const-string v5, "true"

    :goto_0
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    :cond_0
    :goto_1
    iget-object v5, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->broadcastMessage(Ljava/lang/String;)V

    .line 248
    :cond_1
    :goto_2
    return-void

    .line 226
    :cond_2
    const-string v5, "false"

    goto :goto_0

    .line 229
    :cond_3
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 230
    iget-object v5, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    const-string v6, "peerschanged"

    invoke-static {v5, v4, v6}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->access$400(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    invoke-virtual {v5, v2}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->printErrorMessage(Lorg/json/JSONException;)V

    goto :goto_2

    .line 231
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    :try_start_1
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 232
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 234
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    const-string v6, "connectionchanged"

    invoke-static {v5, v4, v6}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->access$400(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "connected"

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 235
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 237
    const-string v5, "wifiP2pDevice"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 238
    .local v1, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    iget-object v6, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    const-string v7, "thisdevicechanged"

    invoke-static {v6, v4, v7}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->access$400(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->access$500(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_1

    .line 239
    .end local v1    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6
    const-string v5, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    const-string v5, "discoveryState"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 242
    iget-object v5, p0, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect$5;->this$0:Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;

    const-string v6, "discoverystoppedevent"

    invoke-static {v5, v4, v6}, Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;->access$400(Lorg/xwalk/core/internal/extension/api/wifidirect/WifiDirect;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
