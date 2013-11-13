.class public Lcom/bel/android/dspmanager/preference/EqualizerPreference;
.super Landroid/preference/DialogPreference;
.source "EqualizerPreference.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final connectionForDialog:Landroid/content/ServiceConnection;

.field protected mDialogEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

.field private mHeadsetService:Lcom/bel/android/dspmanager/service/HeadsetService;

.field protected mListEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/bel/android/dspmanager/preference/EqualizerPreference$1;

    invoke-direct {v0, p0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference$1;-><init>(Lcom/bel/android/dspmanager/preference/EqualizerPreference;)V

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->connectionForDialog:Landroid/content/ServiceConnection;

    .line 43
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->setLayoutResource(I)V

    .line 44
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->setDialogLayoutResource(I)V

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/bel/android/dspmanager/preference/EqualizerPreference;Lcom/bel/android/dspmanager/service/HeadsetService;)Lcom/bel/android/dspmanager/service/HeadsetService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mHeadsetService:Lcom/bel/android/dspmanager/service/HeadsetService;

    return-object p1
.end method

.method private updateListEqualizerFromValue()V
    .locals 5

    .prologue
    .line 58
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mListEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    if-eqz v3, :cond_0

    .line 60
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, levelsStr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mListEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->setBand(IF)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0           #i:I
    .end local v1           #levelsStr:[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 71
    const/high16 v1, 0x7f08

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    iput-object v1, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mDialogEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    .line 72
    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mDialogEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    new-instance v2, Lcom/bel/android/dspmanager/preference/EqualizerPreference$2;

    invoke-direct {v2, p0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference$2;-><init>(Lcom/bel/android/dspmanager/preference/EqualizerPreference;)V

    invoke-virtual {v1, v2}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mListEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    if-eqz v1, :cond_0

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mDialogEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mListEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    invoke-virtual {v2, v0}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->getBand(I)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->setBand(IF)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->connectionForDialog:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 103
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 125
    const/high16 v0, 0x7f08

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mListEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    .line 126
    invoke-direct {p0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->updateListEqualizerFromValue()V

    .line 127
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 9
    .parameter "positiveResult"

    .prologue
    const/high16 v8, 0x4120

    .line 107
    if-eqz p1, :cond_1

    .line 108
    const-string v1, ""

    .line 109
    .local v1, value:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mDialogEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    invoke-virtual {v7, v0}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->getBand(I)F

    move-result v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0, v1}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->persistString(Ljava/lang/String;)Z

    .line 113
    invoke-direct {p0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->updateListEqualizerFromValue()V

    .line 116
    .end local v0           #i:I
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mHeadsetService:Lcom/bel/android/dspmanager/service/HeadsetService;

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mHeadsetService:Lcom/bel/android/dspmanager/service/HeadsetService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/bel/android/dspmanager/service/HeadsetService;->setEqualizerLevels([F)V

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->connectionForDialog:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 131
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .end local p2
    .local v0, value:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->persistString(Ljava/lang/String;)Z

    .line 135
    :cond_0
    return-void

    .line 131
    .end local v0           #value:Ljava/lang/String;
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method public refreshFromPreference()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 139
    return-void
.end method

.method protected updateDspFromDialogEqualizer()V
    .locals 3

    .prologue
    .line 48
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mHeadsetService:Lcom/bel/android/dspmanager/service/HeadsetService;

    if-eqz v2, :cond_1

    .line 49
    const/4 v2, 0x6

    new-array v1, v2, [F

    .line 50
    .local v1, levels:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mDialogEqualizer:Lcom/bel/android/dspmanager/preference/EqualizerSurface;

    invoke-virtual {v2, v0}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->getBand(I)F

    move-result v2

    aput v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->mHeadsetService:Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-virtual {v2, v1}, Lcom/bel/android/dspmanager/service/HeadsetService;->setEqualizerLevels([F)V

    .line 55
    .end local v0           #i:I
    .end local v1           #levels:[F
    :cond_1
    return-void
.end method
