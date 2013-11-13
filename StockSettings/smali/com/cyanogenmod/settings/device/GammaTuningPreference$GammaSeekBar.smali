.class Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;
.super Ljava/lang/Object;
.source "GammaTuningPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/device/GammaTuningPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GammaSeekBar"
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mOriginal:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValueDisplay:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cyanogenmod/settings/device/GammaTuningPreference;


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/settings/device/GammaTuningPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "seekBar"
    .parameter "valueDisplay"
    .parameter "filePath"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->this$0:Lcom/cyanogenmod/settings/device/GammaTuningPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 174
    iput-object p3, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mValueDisplay:Landroid/widget/TextView;

    .line 175
    iput-object p4, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mFilePath:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 180
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, sDefaultValue:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 186
    .end local v1           #sDefaultValue:Ljava/lang/String;
    .local v0, iValue:I
    :goto_0
    iput v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mOriginal:I

    .line 188
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 189
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->reset()V

    .line 190
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 191
    return-void

    .line 184
    .end local v0           #iValue:I
    :cond_0
    const/16 v0, 0x64

    .restart local v0       #iValue:I
    goto :goto_0
.end method

.method private updateValue(I)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mValueDisplay:Landroid/widget/TextView;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method


# virtual methods
.method public SetNewValue(I)V
    .locals 0
    .parameter "iValue"

    .prologue
    .line 234
    iput p1, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mOriginal:I

    .line 235
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->reset()V

    .line 236
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 214
    add-int/lit8 v0, p2, -0x64

    .line 215
    .local v0, iValue:I
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mFilePath:Ljava/lang/String;

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->updateValue(I)V

    .line 217
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 222
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 227
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 196
    iget v1, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mOriginal:I

    add-int/lit8 v0, v1, 0x64

    .line 197
    .local v0, iValue:I
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 198
    iget v1, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mOriginal:I

    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->updateValue(I)V

    .line 199
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 204
    iget-object v2, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, -0x64

    .line 205
    .local v1, iValue:I
    iget-object v2, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->this$0:Lcom/cyanogenmod/settings/device/GammaTuningPreference;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->mFilePath:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void
.end method
