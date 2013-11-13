.class public Lcom/bel/android/dspmanager/preference/BassBoostPreference;
.super Landroid/preference/DialogPreference;
.source "BassBoostPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;
    }
.end annotation


# static fields
.field public static final BASS_BOOST_FILES:[Ljava/lang/String; = null

.field public static final BASS_BOOST_PREFS:[Ljava/lang/String; = null

.field public static final BASS_BOOST_PREF_GAIN:Ljava/lang/String; = "dsp.wm8994.bassboost.gain"

.field public static final BASS_BOOST_PREF_RANGE:Ljava/lang/String; = "dsp.wm8994.bassboost.range"

.field public static final MAX_VALUE_GAIN:I = 0xc

.field public static final MAX_VALUE_RANGE:I = 0x5

.field private static final SEEKBAR_ID:[I = null

.field private static final SEEKBAR_MAX_VALUE:[I = null

.field private static final SEEKBAR_UOM:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BassBoostPreference"

.field private static final VALUE_DISPLAY_ID:[I

.field private static sInstances:I


# instance fields
.field private mGain:I

.field private mPreset:Ljava/lang/String;

.field private mRange:I

.field private mSeekBars:[Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/sys/class/misc/voodoo_sound/digital_gain"

    aput-object v1, v0, v3

    const-string v1, "/sys/class/misc/voodoo_sound/headphone_eq_b1_gain"

    aput-object v1, v0, v4

    const-string v1, "/sys/class/misc/voodoo_sound/headphone_eq_b2_gain"

    aput-object v1, v0, v2

    sput-object v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->BASS_BOOST_FILES:[Ljava/lang/String;

    .line 34
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "dsp.wm8994.bassboost.gain"

    aput-object v1, v0, v3

    const-string v1, "dsp.wm8994.bassboost.range"

    aput-object v1, v0, v4

    sput-object v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->BASS_BOOST_PREFS:[Ljava/lang/String;

    .line 38
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->SEEKBAR_ID:[I

    .line 42
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->VALUE_DISPLAY_ID:[I

    .line 46
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->SEEKBAR_MAX_VALUE:[I

    .line 50
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "dB"

    aput-object v1, v0, v3

    const-string v1, "%"

    aput-object v1, v0, v4

    sput-object v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->SEEKBAR_UOM:[Ljava/lang/String;

    .line 57
    sput v3, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->sInstances:I

    return-void

    .line 38
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x8t 0x7ft
        0x7t 0x0t 0x8t 0x7ft
    .end array-data

    .line 42
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x8t 0x7ft
        0x6t 0x0t 0x8t 0x7ft
    .end array-data

    .line 46
    :array_2
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;

    iput-object v1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mSeekBars:[Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;

    .line 66
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->setDialogLayoutResource(I)V

    .line 68
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "dsp.wm8994.bassboost.preset"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mPreset:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/bel/android/dspmanager/preference/BassBoostPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mRange:I

    return v0
.end method

.method static synthetic access$002(Lcom/bel/android/dspmanager/preference/BassBoostPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mRange:I

    return p1
.end method

.method static synthetic access$100(Lcom/bel/android/dspmanager/preference/BassBoostPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mGain:I

    return v0
.end method

.method static synthetic access$102(Lcom/bel/android/dspmanager/preference/BassBoostPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mGain:I

    return p1
.end method

.method static synthetic access$200(Lcom/bel/android/dspmanager/preference/BassBoostPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mPreset:Ljava/lang/String;

    return-object v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 102
    const-string v0, "BassBoostPreference"

    const-string v1, "restore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p0}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->writeBassBoost(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public static writeBassBoost(IILjava/lang/String;)V
    .locals 7
    .parameter "gain"
    .parameter "range"
    .parameter "preset"

    .prologue
    .line 122
    const/4 v2, 0x1

    .line 123
    .local v2, mGain1:I
    const/4 v3, 0x1

    .line 124
    .local v3, mGain2:I
    const-string v4, "0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    const/4 v3, 0x0

    .line 130
    :goto_0
    div-int/lit8 v4, p1, 0x5

    mul-int/lit16 v5, p0, 0x3e8

    mul-int/2addr v4, v5

    int-to-double v0, v4

    .line 131
    .local v0, digitalGain:D
    const-string v4, "BassBoostPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDigitalGain == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v4, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->BASS_BOOST_FILES:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-wide/high16 v5, -0x4010

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bel/android/dspmanager/activity/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v4, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->BASS_BOOST_FILES:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    mul-int v5, p0, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bel/android/dspmanager/activity/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v4, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->BASS_BOOST_FILES:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    mul-int v5, p0, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bel/android/dspmanager/activity/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v4, "BassBoostPreference"

    const-string v5, "writeBassBoost"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 127
    .end local v0           #digitalGain:D
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static writeBassBoost(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 108
    .local v3, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v4, "dsp.wm8994.bassboost.gain"

    const/16 v5, 0xc

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, gain:I
    const-string v4, "dsp.wm8994.bassboost.range"

    const/4 v5, 0x5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 110
    .local v2, range:I
    const-string v4, "dsp.wm8994.bassboost.preset"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, preset:Ljava/lang/String;
    invoke-static {v0, v2, v1}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->writeBassBoost(IILjava/lang/String;)V

    .line 112
    return-void
.end method

.method public static writeBassBoost(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "preset"

    .prologue
    .line 115
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 116
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v3, "dsp.wm8994.bassboost.gain"

    const/16 v4, 0xc

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, gain:I
    const-string v3, "dsp.wm8994.bassboost.range"

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 118
    .local v1, range:I
    invoke-static {v0, v1, p1}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->writeBassBoost(IILjava/lang/String;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 76
    sget v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->sInstances:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->sInstances:I

    .line 78
    const-string v0, "BassBoostPreference"

    const-string v1, "onBindDialogView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    sget-object v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 80
    sget-object v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->SEEKBAR_ID:[I

    aget v0, v0, v7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 81
    .local v2, seekBar:Landroid/widget/SeekBar;
    sget-object v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->VALUE_DISPLAY_ID:[I

    aget v0, v0, v7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, valueDisplay:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mSeekBars:[Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;

    new-instance v0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;

    sget-object v1, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->BASS_BOOST_PREFS:[Ljava/lang/String;

    aget-object v4, v1, v7

    sget-object v1, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->SEEKBAR_MAX_VALUE:[I

    aget v5, v1, v7

    sget-object v1, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->SEEKBAR_UOM:[Ljava/lang/String;

    aget-object v6, v1, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;-><init>(Lcom/bel/android/dspmanager/preference/BassBoostPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v8, v7

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 84
    .end local v2           #seekBar:Landroid/widget/SeekBar;
    .end local v3           #valueDisplay:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 90
    sget v4, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->sInstances:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->sInstances:I

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mSeekBars:[Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;

    .local v0, arr$:[Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 94
    .local v1, csb:Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;
    invoke-virtual {v1}, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->save()V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v0           #arr$:[Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;
    .end local v1           #csb:Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    sget v4, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->sInstances:I

    if-nez v4, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->writeBassBoost(Landroid/content/Context;)V

    .line 99
    :cond_1
    return-void
.end method
