.class public Lcom/bel/android/dspmanager/service/HeadsetService;
.super Landroid/app/Service;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;,
        Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

.field protected final mAudioSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;

.field private mOverriddenEqualizerLevels:[F

.field private final mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mRoutingReceiver:Landroid/content/BroadcastReceiver;

.field protected mUseBluetooth:Z

.field protected mUseHeadset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bel/android/dspmanager/service/HeadsetService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 127
    new-instance v0, Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;-><init>(Lcom/bel/android/dspmanager/service/HeadsetService;)V

    iput-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mBinder:Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mAudioSessions:Ljava/util/Map;

    .line 144
    new-instance v0, Lcom/bel/android/dspmanager/service/HeadsetService$1;

    invoke-direct {v0, p0}, Lcom/bel/android/dspmanager/service/HeadsetService$1;-><init>(Lcom/bel/android/dspmanager/service/HeadsetService;)V

    iput-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v0, Lcom/bel/android/dspmanager/service/HeadsetService$2;

    invoke-direct {v0, p0}, Lcom/bel/android/dspmanager/service/HeadsetService$2;-><init>(Lcom/bel/android/dspmanager/service/HeadsetService;)V

    iput-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v0, Lcom/bel/android/dspmanager/service/HeadsetService$3;

    invoke-direct {v0, p0}, Lcom/bel/android/dspmanager/service/HeadsetService$3;-><init>(Lcom/bel/android/dspmanager/service/HeadsetService;)V

    iput-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateDsp(Landroid/content/SharedPreferences;Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)V
    .locals 7
    .parameter "preferences"
    .parameter "session"

    .prologue
    const/high16 v5, 0x42c8

    const/4 v6, 0x0

    .line 312
    iget-object v2, p2, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mCompression:Landroid/media/audiofx/AudioEffect;

    const-string v3, "dsp.compression.enable"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 313
    iget-object v2, p2, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mCompression:Landroid/media/audiofx/AudioEffect;

    const-string v3, "dsp.compression.mode"

    const-string v4, "0"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    #calls: Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->setParameter(Landroid/media/audiofx/AudioEffect;IS)V
    invoke-static {v2, v6, v3}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->access$000(Landroid/media/audiofx/AudioEffect;IS)V

    .line 315
    #getter for: Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mBassBoost:Landroid/media/audiofx/BassBoost;
    invoke-static {p2}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->access$100(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/BassBoost;

    move-result-object v2

    const-string v3, "dsp.bass.enable"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 316
    #getter for: Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mBassBoost:Landroid/media/audiofx/BassBoost;
    invoke-static {p2}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->access$100(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/BassBoost;

    move-result-object v2

    const-string v3, "dsp.bass.mode"

    const-string v4, "0"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    .line 319
    #getter for: Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mEqualizer:Landroid/media/audiofx/Equalizer;
    invoke-static {p2}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->access$200(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/Equalizer;

    move-result-object v2

    const-string v3, "dsp.tone.enable"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 320
    iget-object v2, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    if-eqz v2, :cond_0

    .line 321
    const/4 v0, 0x0

    .local v0, i:S
    :goto_0
    iget-object v2, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 322
    #getter for: Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mEqualizer:Landroid/media/audiofx/Equalizer;
    invoke-static {p2}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->access$200(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/Equalizer;

    move-result-object v2

    iget-object v3, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 321
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    goto :goto_0

    .line 325
    .end local v0           #i:S
    :cond_0
    const-string v2, "dsp.tone.eq.custom"

    const-string v3, "0;0;0;0;0"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, levels:[Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:S
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 327
    #getter for: Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mEqualizer:Landroid/media/audiofx/Equalizer;
    invoke-static {p2}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->access$200(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/Equalizer;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 326
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    goto :goto_1

    .line 330
    .end local v1           #levels:[Ljava/lang/String;
    :cond_1
    #getter for: Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mEqualizer:Landroid/media/audiofx/Equalizer;
    invoke-static {p2}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->access$200(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/Equalizer;

    move-result-object v2

    const/16 v3, 0x3e8

    const-string v4, "dsp.tone.loudness"

    const-string v5, "10000"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    #calls: Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->setParameter(Landroid/media/audiofx/AudioEffect;IS)V
    invoke-static {v2, v3, v4}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->access$000(Landroid/media/audiofx/AudioEffect;IS)V

    .line 332
    #getter for: Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mVirtualizer:Landroid/media/audiofx/Virtualizer;
    invoke-static {p2}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->access$300(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/Virtualizer;

    move-result-object v2

    const-string v3, "dsp.headphone.enable"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    .line 333
    #getter for: Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mVirtualizer:Landroid/media/audiofx/Virtualizer;
    invoke-static {p2}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->access$300(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/Virtualizer;

    move-result-object v2

    const-string v3, "dsp.headphone.mode"

    const-string v4, "0"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V

    .line 334
    return-void
.end method


# virtual methods
.method public getAudioOutputRouting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseHeadset:Z

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "headset"

    .line 289
    :goto_0
    return-object v0

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mUseBluetooth:Z

    if-eqz v0, :cond_1

    .line 287
    const-string v0, "bluetooth"

    goto :goto_0

    .line 289
    :cond_1
    const-string v0, "speaker"

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mBinder:Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 215
    sget-object v2, Lcom/bel/android/dspmanager/service/HeadsetService;->TAG:Ljava/lang/String;

    const-string v3, "Starting service."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v0, audioFilter:Landroid/content/IntentFilter;
    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v2, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/bel/android/dspmanager/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/bel/android/dspmanager/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    iget-object v2, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.bel.android.dspmanager.UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/bel/android/dspmanager/service/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 234
    sget-object v0, Lcom/bel/android/dspmanager/service/HeadsetService;->TAG:Ljava/lang/String;

    const-string v1, "Stopping service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mAudioSessionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/bel/android/dspmanager/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mRoutingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/bel/android/dspmanager/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mPreferenceUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/bel/android/dspmanager/service/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    return-void
.end method

.method public setEqualizerLevels([F)V
    .locals 0
    .parameter "levels"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mOverriddenEqualizerLevels:[F

    .line 254
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/service/HeadsetService;->updateDsp()V

    .line 255
    return-void
.end method

.method protected updateDsp()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/service/HeadsetService;->getAudioOutputRouting()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, mode:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.bel.android.dspmanager."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v8}, Lcom/bel/android/dspmanager/service/HeadsetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 298
    .local v3, preferences:Landroid/content/SharedPreferences;
    sget-object v5, Lcom/bel/android/dspmanager/service/HeadsetService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected configuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mAudioSessions:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 302
    .local v4, sessionId:Ljava/lang/Integer;
    :try_start_0
    iget-object v5, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mAudioSessions:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;

    invoke-direct {p0, v3, v5}, Lcom/bel/android/dspmanager/service/HeadsetService;->updateDsp(Landroid/content/SharedPreferences;Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/bel/android/dspmanager/service/HeadsetService;->TAG:Ljava/lang/String;

    const-string v6, "Trouble trying to manage session %d, removing..."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    iget-object v5, p0, Lcom/bel/android/dspmanager/service/HeadsetService;->mAudioSessions:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 309
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #sessionId:Ljava/lang/Integer;
    :cond_0
    return-void
.end method
