.class public Lcom/bel/android/dspmanager/receiver/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 22
    invoke-static {p1}, Lcom/bel/android/dspmanager/activity/WM8994;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p1}, Lcom/bel/android/dspmanager/activity/WM8994;->restore(Landroid/content/Context;)V

    .line 25
    :cond_0
    return-void
.end method
