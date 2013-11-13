.class public Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;
.super Landroid/preference/DialogPreference;
.source "HeadsetAmplifierPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;
    }
.end annotation


# static fields
.field public static final FILE_PATH:Ljava/lang/String; = "/sys/class/misc/voodoo_sound/headphone_amplifier_level"

.field private static final MAX_VALUE:I = 0x3e

.field private static final OFFSET_VALUE:I = 0x39

.field private static final SEEKBAR_ID:I = 0x7f08000a

.field private static final TAG:Ljava/lang/String; = "HeadsetAmplifierPreference"

.field private static final VALUE_DISPLAY_ID:I = 0x7f080009

.field private static sInstances:I


# instance fields
.field private mSeekBar:Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->sInstances:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->setDialogLayoutResource(I)V

    .line 37
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 76
    const-string v0, "/sys/class/misc/voodoo_sound/headphone_amplifier_level"

    invoke-static {v0}, Lcom/bel/android/dspmanager/activity/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 64
    invoke-static {}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->isSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v3, "HeadsetAmplifierPreference"

    const-string v4, "restore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v3, "/sys/class/misc/voodoo_sound/headphone_amplifier_level"

    invoke-static {v3}, Lcom/bel/android/dspmanager/activity/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, sDefaultValue:Ljava/lang/String;
    const-string v3, "/sys/class/misc/voodoo_sound/headphone_amplifier_level"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 72
    .local v2, value:I
    const-string v3, "/sys/class/misc/voodoo_sound/headphone_amplifier_level"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bel/android/dspmanager/activity/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 43
    sget v2, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->sInstances:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->sInstances:I

    .line 45
    const v2, 0x7f08000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 46
    .local v0, seekBar:Landroid/widget/SeekBar;
    const v2, 0x7f080009

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, valueDisplay:Landroid/widget/TextView;
    new-instance v2, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;

    const-string v3, "/sys/class/misc/voodoo_sound/headphone_amplifier_level"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;-><init>(Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->mSeekBar:Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;

    .line 48
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 54
    sget v0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->sInstances:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->sInstances:I

    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->mSeekBar:Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;

    invoke-virtual {v0}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->save()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    sget v0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->sInstances:I

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->mSeekBar:Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;

    invoke-virtual {v0}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->reset()V

    goto :goto_0
.end method
