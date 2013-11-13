.class Lcom/bel/android/dspmanager/preference/EqualizerPreference$1;
.super Ljava/lang/Object;
.source "EqualizerPreference.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bel/android/dspmanager/preference/EqualizerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bel/android/dspmanager/preference/EqualizerPreference;


# direct methods
.method constructor <init>(Lcom/bel/android/dspmanager/preference/EqualizerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference$1;->this$0:Lcom/bel/android/dspmanager/preference/EqualizerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 30
    sget-object v0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->TAG:Ljava/lang/String;

    const-string v1, "Acquiring connection to headsetservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference$1;->this$0:Lcom/bel/android/dspmanager/preference/EqualizerPreference;

    check-cast p2, Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;->getService()Lcom/bel/android/dspmanager/service/HeadsetService;

    move-result-object v1

    #setter for: Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mHeadsetService:Lcom/bel/android/dspmanager/service/HeadsetService;
    invoke-static {v0, v1}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->access$002(Lcom/bel/android/dspmanager/preference/EqualizerPreference;Lcom/bel/android/dspmanager/service/HeadsetService;)Lcom/bel/android/dspmanager/service/HeadsetService;

    .line 32
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference$1;->this$0:Lcom/bel/android/dspmanager/preference/EqualizerPreference;

    invoke-virtual {v0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->updateDspFromDialogEqualizer()V

    .line 33
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference$1;->this$0:Lcom/bel/android/dspmanager/preference/EqualizerPreference;

    const/4 v1, 0x0

    #setter for: Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mHeadsetService:Lcom/bel/android/dspmanager/service/HeadsetService;
    invoke-static {v0, v1}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->access$002(Lcom/bel/android/dspmanager/preference/EqualizerPreference;Lcom/bel/android/dspmanager/service/HeadsetService;)Lcom/bel/android/dspmanager/service/HeadsetService;

    .line 38
    return-void
.end method
