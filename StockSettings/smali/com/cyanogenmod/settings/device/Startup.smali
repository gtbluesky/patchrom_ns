.class public Lcom/cyanogenmod/settings/device/Startup;
.super Landroid/content/BroadcastReceiver;
.source "Startup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "bootintent"

    .prologue
    .line 11
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->restore(Landroid/content/Context;)V

    .line 12
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->restore(Landroid/content/Context;)V

    .line 13
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/bldTuningPreference;->restore(Landroid/content/Context;)V

    .line 14
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->restore(Landroid/content/Context;)V

    .line 15
    invoke-static {}, Lcom/cyanogenmod/settings/device/Hspa;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p1}, Lcom/cyanogenmod/settings/device/Hspa;->restore(Landroid/content/Context;)V

    .line 18
    :cond_0
    return-void
.end method
