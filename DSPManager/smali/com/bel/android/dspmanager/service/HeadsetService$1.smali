.class Lcom/bel/android/dspmanager/service/HeadsetService$1;
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
    .line 144
    iput-object p1, p0, Lcom/bel/android/dspmanager/service/HeadsetService$1;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 149
    .local v2, sessionId:I
    const-string v3, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    sget-object v3, Lcom/bel/android/dspmanager/service/HeadsetService;->TAG:Ljava/lang/String;

    const-string v4, "New audio session: %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/bel/android/dspmanager/service/HeadsetService$1;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    iget-object v3, v3, Lcom/bel/android/dspmanager/service/HeadsetService;->mAudioSessions:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/bel/android/dspmanager/service/HeadsetService$1;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    iget-object v3, v3, Lcom/bel/android/dspmanager/service/HeadsetService;->mAudioSessions:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;

    invoke-direct {v5, v2}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;-><init>(I)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    const-string v3, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    sget-object v3, Lcom/bel/android/dspmanager/service/HeadsetService;->TAG:Ljava/lang/String;

    const-string v4, "Audio session removed: %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v3, p0, Lcom/bel/android/dspmanager/service/HeadsetService$1;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    iget-object v3, v3, Lcom/bel/android/dspmanager/service/HeadsetService;->mAudioSessions:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;

    .line 158
    .local v1, gone:Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;
    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {v1}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->release()V

    .line 162
    .end local v1           #gone:Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;
    :cond_1
    iget-object v3, p0, Lcom/bel/android/dspmanager/service/HeadsetService$1;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-virtual {v3}, Lcom/bel/android/dspmanager/service/HeadsetService;->updateDsp()V

    .line 163
    return-void
.end method
