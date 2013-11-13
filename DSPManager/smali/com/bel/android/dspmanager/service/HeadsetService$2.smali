.class Lcom/bel/android/dspmanager/service/HeadsetService$2;
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
    .line 169
    iput-object p1, p0, Lcom/bel/android/dspmanager/service/HeadsetService$2;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 172
    sget-object v0, Lcom/bel/android/dspmanager/service/HeadsetService;->TAG:Ljava/lang/String;

    const-string v1, "Preferences updated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService$2;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-virtual {v0}, Lcom/bel/android/dspmanager/service/HeadsetService;->updateDsp()V

    .line 174
    return-void
.end method
