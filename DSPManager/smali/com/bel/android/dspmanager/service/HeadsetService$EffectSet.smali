.class public Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;
.super Ljava/lang/Object;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bel/android/dspmanager/service/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EffectSet"
.end annotation


# static fields
.field private static final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field private static final EFFECT_TYPE_VOLUME:Ljava/util/UUID;


# instance fields
.field private final mBassBoost:Landroid/media/audiofx/BassBoost;

.field public final mCompression:Landroid/media/audiofx/AudioEffect;

.field private final mEqualizer:Landroid/media/audiofx/Equalizer;

.field private final mVirtualizer:Landroid/media/audiofx/Virtualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "09e8ede0-ddde-11db-b4f6-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->EFFECT_TYPE_VOLUME:Ljava/util/UUID;

    .line 48
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 6
    .parameter "sessionId"

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    :try_start_0
    const-class v1, Landroid/media/audiofx/AudioEffect;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->EFFECT_TYPE_VOLUME:Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiofx/AudioEffect;

    iput-object v1, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mCompression:Landroid/media/audiofx/AudioEffect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    new-instance v1, Landroid/media/audiofx/Equalizer;

    invoke-direct {v1, v5, p1}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    iput-object v1, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 73
    new-instance v1, Landroid/media/audiofx/BassBoost;

    invoke-direct {v1, v5, p1}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    iput-object v1, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mBassBoost:Landroid/media/audiofx/BassBoost;

    .line 74
    new-instance v1, Landroid/media/audiofx/Virtualizer;

    invoke-direct {v1, v5, p1}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    iput-object v1, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    .line 75
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Landroid/media/audiofx/AudioEffect;IS)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->setParameter(Landroid/media/audiofx/AudioEffect;IS)V

    return-void
.end method

.method static synthetic access$100(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/BassBoost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mBassBoost:Landroid/media/audiofx/BassBoost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/Equalizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mEqualizer:Landroid/media/audiofx/Equalizer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;)Landroid/media/audiofx/Virtualizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    return-object v0
.end method

.method private static setParameter(Landroid/media/audiofx/AudioEffect;IS)V
    .locals 10
    .parameter "audioEffect"
    .parameter "parameter"
    .parameter "value"

    .prologue
    .line 94
    const/4 v5, 0x4

    :try_start_0
    new-array v0, v5, [B

    const/4 v5, 0x0

    int-to-byte v6, p1

    aput-byte v6, v0, v5

    const/4 v5, 0x1

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    const/4 v5, 0x2

    shr-int/lit8 v6, p1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    const/4 v5, 0x3

    shr-int/lit8 v6, p1, 0x18

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 98
    .local v0, arguments:[B
    const/4 v5, 0x2

    new-array v2, v5, [B

    const/4 v5, 0x0

    int-to-byte v6, p2

    aput-byte v6, v2, v5

    const/4 v5, 0x1

    shr-int/lit8 v6, p2, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 102
    .local v2, result:[B
    const-class v5, Landroid/media/audiofx/AudioEffect;

    const-string v6, "setParameter"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, [B

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, [B

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 104
    .local v4, setParameter:Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 107
    .local v3, returnValue:I
    if-eqz v3, :cond_0

    .line 108
    sget-object v5, Lcom/bel/android/dspmanager/service/HeadsetService;->TAG:Ljava/lang/String;

    const-string v6, "Invalid argument error in setParameter(%d, (short) %d) == %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    return-void

    .line 113
    .end local v0           #arguments:[B
    .end local v2           #result:[B
    .end local v3           #returnValue:I
    .end local v4           #setParameter:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method protected release()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mCompression:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 79
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->release()V

    .line 80
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    .line 81
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService$EffectSet;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->release()V

    .line 82
    return-void
.end method
