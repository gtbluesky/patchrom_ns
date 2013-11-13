.class public Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;
.super Landroid/preference/PreferenceFragment;
.source "DisplayFragmentActivity.java"


# instance fields
.field private mColorPreset:Lcom/cyanogenmod/settings/device/ColorHackPresets;

.field private mColorTuning:Lcom/cyanogenmod/settings/device/ColorTuningPreference;

.field private mGammaTuning:Lcom/cyanogenmod/settings/device/GammaTuningPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;->addPreferencesFromResource(I)V

    .line 44
    const-string v0, "color_tuning"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;->mColorTuning:Lcom/cyanogenmod/settings/device/ColorTuningPreference;

    .line 45
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;->mColorTuning:Lcom/cyanogenmod/settings/device/ColorTuningPreference;

    invoke-static {}, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->setEnabled(Z)V

    .line 47
    const-string v0, "gamma_tuning"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;->mGammaTuning:Lcom/cyanogenmod/settings/device/GammaTuningPreference;

    .line 48
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;->mGammaTuning:Lcom/cyanogenmod/settings/device/GammaTuningPreference;

    invoke-static {}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->setEnabled(Z)V

    .line 50
    const-string v0, "color_presets"

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/device/ColorHackPresets;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;->mColorPreset:Lcom/cyanogenmod/settings/device/ColorHackPresets;

    .line 51
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;->mColorPreset:Lcom/cyanogenmod/settings/device/ColorHackPresets;

    invoke-static {}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->setEnabled(Z)V

    .line 52
    return-void
.end method
