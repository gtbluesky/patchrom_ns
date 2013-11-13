.class public Lcom/bel/android/dspmanager/activity/WM8994;
.super Landroid/preference/PreferenceFragment;
.source "WM8994.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final BASS_BOOST_ENABLE_FILE:Ljava/lang/String; = "/sys/class/misc/voodoo_sound/headphone_eq"

.field public static final BASS_BOOST_ENABLE_PREF:Ljava/lang/String; = "dsp.wm8994.bassboost.enable"

.field public static final BASS_BOOST_GAIN_RANGE_PREF:Ljava/lang/String; = "dsp.wm8994.bassboost.gainrange"

.field public static final BASS_BOOST_PRESET_PREF:Ljava/lang/String; = "dsp.wm8994.bassboost.preset"

.field public static final MIC_REC_PRESET:[[Ljava/lang/String; = null

.field public static final NAME:Ljava/lang/String; = "wm8994"

.field public static final OPTION_CONTROLS:[[Ljava/lang/String; = null

.field private static final PREF_DISABLED:Ljava/lang/String; = "0"

.field private static final PREF_ENABLED:Ljava/lang/String; = "1"

.field protected static final TAG:Ljava/lang/String; = null

.field public static final VOODOO_SOUND_PACKAGE:Ljava/lang/String; = "org.projectvoodoo.controlapp"

.field public static final WM8994_ENABLE_FILE:Ljava/lang/String; = "/sys/class/misc/voodoo_sound_control/enable"


# instance fields
.field private mPreferences:[Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    const-class v0, Lcom/bel/android/dspmanager/activity/WM8994;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bel/android/dspmanager/activity/WM8994;->TAG:Ljava/lang/String;

    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "/sys/class/misc/voodoo_sound/speaker_tuning"

    aput-object v2, v1, v4

    const-string v2, "pref_wm8994_speaker_tuning"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "/sys/class/misc/voodoo_sound/mono_downmix"

    aput-object v2, v1, v4

    const-string v2, "pref_wm8994_mono_downmix"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "/sys/class/misc/voodoo_sound/stereo_expansion"

    aput-object v2, v1, v4

    const-string v2, "pref_wm8994_stereo_expansion"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "/sys/class/misc/voodoo_sound/dac_direct"

    aput-object v3, v2, v4

    const-string v3, "pref_wm8994_dac_direct"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "/sys/class/misc/voodoo_sound/dac_osr128"

    aput-object v3, v2, v4

    const-string v3, "pref_wm8994_dac_osr128"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "/sys/class/misc/voodoo_sound/adc_osr128"

    aput-object v3, v2, v4

    const-string v3, "pref_wm8994_adc_osr128"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "/sys/class/misc/voodoo_sound/fll_tuning"

    aput-object v3, v2, v4

    const-string v3, "pref_wm8994_fll_tuning"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "/sys/class/misc/voodoo_sound/headphone_eq"

    aput-object v3, v2, v4

    const-string v3, "dsp.wm8994.bassboost.enable"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/bel/android/dspmanager/activity/WM8994;->OPTION_CONTROLS:[[Ljava/lang/String;

    .line 59
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "/sys/class/misc/voodoo_sound/recording_preset"

    aput-object v2, v1, v4

    const-string v2, "dsp.wm8994.microphone.recording"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 66
    sget-object v0, Lcom/bel/android/dspmanager/activity/WM8994;->OPTION_CONTROLS:[[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/bel/android/dspmanager/activity/WM8994;->mPreferences:[Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 144
    const/4 v1, 0x1

    .line 149
    .local v1, hasVoodoo:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 150
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v4, "org.projectvoodoo.controlapp"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    if-nez v1, :cond_0

    const-string v4, "/sys/class/misc/voodoo_sound_control/enable"

    invoke-static {v4}, Lcom/bel/android/dspmanager/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 161
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    sget-object v0, Lcom/bel/android/dspmanager/activity/WM8994;->OPTION_CONTROLS:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 162
    .local v3, pair:[Ljava/lang/String;
    aget-object v5, v3, v9

    invoke-static {v5}, Lcom/bel/android/dspmanager/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    sget-object v5, Lcom/bel/android/dspmanager/activity/WM8994;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Does "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exist == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v10

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    aget-object v5, v3, v9

    aget-object v6, v3, v10

    const-string v7, "1"

    aget-object v8, v3, v9

    invoke-static {v8}, Lcom/bel/android/dspmanager/activity/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/bel/android/dspmanager/activity/Utils;->writeValue(Ljava/lang/String;Z)V

    .line 161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v3           #pair:[Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    aget-object v5, v5, v9

    aget-object v5, v5, v9

    invoke-static {v5}, Lcom/bel/android/dspmanager/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    sget-object v5, Lcom/bel/android/dspmanager/activity/WM8994;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Does "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    aget-object v7, v7, v9

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exist == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    aget-object v7, v7, v9

    aget-object v7, v7, v10

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v5, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    aget-object v5, v5, v9

    aget-object v5, v5, v9

    sget-object v6, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    aget-object v6, v6, v9

    aget-object v6, v6, v10

    sget-object v7, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    aget-object v7, v7, v9

    aget-object v7, v7, v9

    invoke-static {v7}, Lcom/bel/android/dspmanager/activity/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bel/android/dspmanager/activity/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_2
    const-string v5, "/sys/class/misc/voodoo_sound/headphone_eq"

    invoke-static {v5}, Lcom/bel/android/dspmanager/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 175
    invoke-static {p0}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->restore(Landroid/content/Context;)V

    .line 178
    :cond_3
    invoke-static {p0}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->restore(Landroid/content/Context;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v8, 0x7f040003

    invoke-virtual {p0, v8}, Lcom/bel/android/dspmanager/activity/WM8994;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/activity/WM8994;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 75
    .local v7, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget-object v8, Lcom/bel/android/dspmanager/activity/WM8994;->OPTION_CONTROLS:[[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_1

    .line 76
    sget-object v8, Lcom/bel/android/dspmanager/activity/WM8994;->OPTION_CONTROLS:[[Ljava/lang/String;

    aget-object v8, v8, v4

    aget-object v8, v8, v11

    invoke-static {v8}, Lcom/bel/android/dspmanager/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 77
    iget-object v9, p0, Lcom/bel/android/dspmanager/activity/WM8994;->mPreferences:[Landroid/preference/CheckBoxPreference;

    sget-object v8, Lcom/bel/android/dspmanager/activity/WM8994;->OPTION_CONTROLS:[[Ljava/lang/String;

    aget-object v8, v8, v4

    aget-object v8, v8, v12

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    aput-object v8, v9, v4

    .line 78
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/WM8994;->mPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v8, v8, v4

    const-string v9, "1"

    sget-object v10, Lcom/bel/android/dspmanager/activity/WM8994;->OPTION_CONTROLS:[[Ljava/lang/String;

    aget-object v10, v10, v4

    aget-object v10, v10, v11

    invoke-static {v10}, Lcom/bel/android/dspmanager/activity/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/WM8994;->mPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v8, v8, v4

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v9, p0, Lcom/bel/android/dspmanager/activity/WM8994;->mPreferences:[Landroid/preference/CheckBoxPreference;

    sget-object v8, Lcom/bel/android/dspmanager/activity/WM8994;->OPTION_CONTROLS:[[Ljava/lang/String;

    aget-object v8, v8, v4

    aget-object v8, v8, v12

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    aput-object v8, v9, v4

    .line 82
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/WM8994;->mPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v8, v8, v4

    const v9, 0x7f060007

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 83
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/WM8994;->mPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v8, v8, v4

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 87
    :cond_1
    const-string v8, "headphone_amp"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 88
    .local v3, headsetPref:Landroid/preference/Preference;
    const-string v8, "/sys/class/misc/voodoo_sound/headphone_amplifier_level"

    invoke-static {v8}, Lcom/bel/android/dspmanager/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 89
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    :goto_2
    sget-object v8, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    aget-object v8, v8, v11

    aget-object v8, v8, v12

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 97
    .local v6, micPref:Landroid/preference/Preference;
    sget-object v8, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    aget-object v8, v8, v11

    aget-object v8, v8, v11

    invoke-static {v8}, Lcom/bel/android/dspmanager/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 98
    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    :goto_3
    const-string v8, "dsp.wm8994.bassboost.preset"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 106
    .local v1, bassBoostPreset:Landroid/preference/Preference;
    const-string v8, "dsp.wm8994.bassboost.gainrange"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 107
    .local v0, bassBoostGainRange:Landroid/preference/Preference;
    const-string v8, "/sys/class/misc/voodoo_sound/headphone_eq"

    invoke-static {v8}, Lcom/bel/android/dspmanager/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 108
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    :goto_4
    return-void

    .line 91
    .end local v0           #bassBoostGainRange:Landroid/preference/Preference;
    .end local v1           #bassBoostPreset:Landroid/preference/Preference;
    .end local v6           #micPref:Landroid/preference/Preference;
    :cond_2
    const-string v8, "wm8994_headphone_amp_category"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 92
    .local v2, category:Landroid/preference/PreferenceCategory;
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 100
    .end local v2           #category:Landroid/preference/PreferenceCategory;
    .restart local v6       #micPref:Landroid/preference/Preference;
    :cond_3
    const-string v8, "wm8994_microphone_recording_category"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 101
    .restart local v2       #category:Landroid/preference/PreferenceCategory;
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 111
    .end local v2           #category:Landroid/preference/PreferenceCategory;
    .restart local v0       #bassBoostGainRange:Landroid/preference/Preference;
    .restart local v1       #bassBoostPreset:Landroid/preference/Preference;
    :cond_4
    const-string v8, "wm8994_signal_processing_category"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 112
    .local v5, mBassBoostCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, key:Ljava/lang/String;
    sget-object v5, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    aget-object v5, v5, v7

    aget-object v5, v5, v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    sget-object v5, Lcom/bel/android/dspmanager/activity/WM8994;->MIC_REC_PRESET:[[Ljava/lang/String;

    aget-object v5, v5, v7

    aget-object v5, v5, v7

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v5, p2}, Lcom/bel/android/dspmanager/activity/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return v8

    .line 123
    .restart local p2
    :cond_1
    const-string v5, "dsp.wm8994.bassboost.preset"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/activity/WM8994;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v5, p2}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->writeBassBoost(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .restart local p2
    :cond_2
    sget-object v0, Lcom/bel/android/dspmanager/activity/WM8994;->OPTION_CONTROLS:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 127
    .local v4, pair:[Ljava/lang/String;
    aget-object v5, v4, v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, p2

    .line 128
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 129
    aget-object v5, v4, v7

    const-string v6, "1"

    invoke-static {v5, v6}, Lcom/bel/android/dspmanager/activity/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    :cond_4
    aget-object v5, v4, v7

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/bel/android/dspmanager/activity/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
