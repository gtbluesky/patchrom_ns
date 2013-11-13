.class Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;
.super Ljava/lang/Object;
.source "bldTuningPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/device/bldTuningPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "bldSeekBar"
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mOriginal:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValueDisplay:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cyanogenmod/settings/device/bldTuningPreference;


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/settings/device/bldTuningPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "seekBar"
    .parameter "valueDisplay"
    .parameter "filePath"

    .prologue
    const/16 v7, 0x1e

    .line 157
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->this$0:Lcom/cyanogenmod/settings/device/bldTuningPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 161
    iput-object p3, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mValueDisplay:Landroid/widget/TextView;

    .line 162
    iput-object p4, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mFilePath:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcom/cyanogenmod/settings/device/bldTuningPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 167
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, sDefaultValue:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v0, v3

    .line 173
    .end local v1           #sDefaultValue:Ljava/lang/String;
    .local v0, iValue:I
    :goto_0
    iput v0, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mOriginal:I

    .line 175
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 176
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->reset()V

    .line 177
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 178
    return-void

    .line 171
    .end local v0           #iValue:I
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mFilePath:Ljava/lang/String;

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #iValue:I
    goto :goto_0
.end method

.method private updateValue(I)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mValueDisplay:Landroid/widget/TextView;

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

    .line 209
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mFilePath:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/cyanogenmod/settings/device/Utils;->writebld(Ljava/lang/String;I)V

    .line 194
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->updateValue(I)V

    .line 195
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 200
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 205
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mOriginal:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 182
    iget v0, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mOriginal:I

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->updateValue(I)V

    .line 183
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->this$0:Lcom/cyanogenmod/settings/device/bldTuningPreference;

    invoke-virtual {v1}, Lcom/cyanogenmod/settings/device/bldTuningPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return-void
.end method
