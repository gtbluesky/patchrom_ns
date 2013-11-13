.class Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;
.super Ljava/lang/Object;
.source "HeadsetAmplifierPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadsetAmplifierSeekBar"
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mOriginal:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValueDisplay:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;


# direct methods
.method public constructor <init>(Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "seekBar"
    .parameter "valueDisplay"
    .parameter "filePath"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->this$0:Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 88
    iput-object p3, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mValueDisplay:Landroid/widget/TextView;

    .line 89
    iput-object p4, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mFilePath:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/bel/android/dspmanager/activity/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mOriginal:I

    .line 95
    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 96
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->reset()V

    .line 97
    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 98
    return-void
.end method

.method private updateValue(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mValueDisplay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, -0x39

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 118
    const-string v0, "/sys/class/misc/voodoo_sound/headphone_amplifier_level"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bel/android/dspmanager/activity/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p2}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->updateValue(I)V

    .line 120
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 125
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 130
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "HeadsetAmplifierPreference"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mOriginal:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 104
    iget v0, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mOriginal:I

    invoke-direct {p0, v0}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->updateValue(I)V

    .line 105
    return-void
.end method

.method public save()V
    .locals 4

    .prologue
    .line 108
    const-string v2, "HeadsetAmplifierPreference"

    const-string v3, "save"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 111
    .local v1, value:I
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->this$0:Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;

    invoke-virtual {v2}, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/HeadsetAmplifierPreference$HeadsetAmplifierSeekBar;->mFilePath:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method
