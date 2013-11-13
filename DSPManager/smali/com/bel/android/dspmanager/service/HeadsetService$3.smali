.class Lcom/bel/android/dspmanager/service/HeadsetService$3;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bel/android/dspmanager/service/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bel/android/dspmanager/service/HeadsetService;


# direct methods
.method constructor <init>(Lcom/bel/android/dspmanager/service/HeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    iget-boolean v4, v6, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseHeadset:Z

    .line 187
    .local v4, prevUseHeadset:Z
    iget-object v6, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    iget-boolean v3, v6, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseBluetooth:Z

    .line 188
    .local v3, prevUseBluetooth:Z
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 189
    iget-object v9, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    const-string v6, "state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_0
    iput-boolean v6, v9, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseHeadset:Z

    .line 190
    iget-object v6, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-virtual {v6}, Lcom/bel/android/dspmanager/service/HeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "headset_connect_player"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v7

    .line 192
    .local v1, launchPlayer:Z
    :goto_1
    iget-object v6, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    iget-boolean v6, v6, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseHeadset:Z

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    .line 193
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v2, playerIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.APP_MUSIC"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    iget-object v6, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-virtual {v6, v2}, Lcom/bel/android/dspmanager/service/HeadsetService;->startActivity(Landroid/content/Intent;)V

    .line 204
    .end local v1           #launchPlayer:Z
    .end local v2           #playerIntent:Landroid/content/Intent;
    :cond_0
    :goto_2
    sget-object v6, Lcom/bel/android/dspmanager/service/HeadsetService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Headset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    iget-boolean v8, v8, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseHeadset:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; Bluetooth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    iget-boolean v8, v8, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseBluetooth:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v6, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    iget-boolean v6, v6, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseHeadset:Z

    if-ne v4, v6, :cond_1

    iget-object v6, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    iget-boolean v6, v6, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseBluetooth:Z

    if-eq v3, v6, :cond_2

    .line 207
    :cond_1
    iget-object v6, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-virtual {v6}, Lcom/bel/android/dspmanager/service/HeadsetService;->updateDsp()V

    .line 209
    :cond_2
    return-void

    :cond_3
    move v6, v8

    .line 189
    goto :goto_0

    :cond_4
    move v1, v8

    .line 190
    goto :goto_1

    .line 198
    :cond_5
    const-string v6, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    const-string v6, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 201
    .local v5, state:I
    iget-object v6, p0, Lcom/bel/android/dspmanager/service/HeadsetService$3;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    const/4 v9, 0x2

    if-ne v5, v9, :cond_6

    :goto_3
    iput-boolean v7, v6, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseBluetooth:Z

    goto :goto_2

    :cond_6
    move v7, v8

    goto :goto_3
.end method
