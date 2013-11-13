.class Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;
.super Ljava/lang/Object;
.source "BassBoostPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bel/android/dspmanager/preference/BassBoostPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BassBoostSeekBar"
.end annotation


# instance fields
.field private mOriginal:I

.field private mPref:Ljava/lang/String;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekbarMax:I

.field private mSeekbarUnit:Ljava/lang/String;

.field private mValueDisplay:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/bel/android/dspmanager/preference/BassBoostPreference;


# direct methods
.method public constructor <init>(Lcom/bel/android/dspmanager/preference/BassBoostPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "seekBar"
    .parameter "valueDisplay"
    .parameter "pref"
    .parameter "maxValue"
    .parameter "uom"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->this$0:Lcom/bel/android/dspmanager/preference/BassBoostPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-string v1, "BassBoostPreference"

    const-string v2, "BassBoostSeekBar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object p2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 152
    iput-object p3, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mValueDisplay:Landroid/widget/TextView;

    .line 153
    iput-object p4, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mPref:Ljava/lang/String;

    .line 154
    iput p5, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mSeekbarMax:I

    .line 155
    iput-object p6, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mSeekbarUnit:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mPref:Ljava/lang/String;

    iget v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mSeekbarMax:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mOriginal:I

    .line 160
    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mSeekbarMax:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 161
    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mOriginal:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 162
    iget v1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mOriginal:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->updateValue(IZ)V

    .line 164
    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 165
    return-void
.end method

.method private updateValue(IZ)V
    .locals 8
    .parameter "progress"
    .parameter "write"

    .prologue
    .line 192
    int-to-double v0, p1

    .line 194
    .local v0, mProgress:D
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mPref:Ljava/lang/String;

    const-string v3, "dsp.wm8994.bassboost.range"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    const-wide/high16 v2, 0x4014

    div-double v2, v0, v2

    const-wide/high16 v4, 0x4059

    mul-double v0, v2, v4

    .line 196
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->this$0:Lcom/bel/android/dspmanager/preference/BassBoostPreference;

    #setter for: Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mRange:I
    invoke-static {v2, p1}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->access$002(Lcom/bel/android/dspmanager/preference/BassBoostPreference;I)I

    .line 201
    :goto_0
    if-eqz p2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->this$0:Lcom/bel/android/dspmanager/preference/BassBoostPreference;

    #getter for: Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mGain:I
    invoke-static {v2}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->access$100(Lcom/bel/android/dspmanager/preference/BassBoostPreference;)I

    move-result v2

    iget-object v3, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->this$0:Lcom/bel/android/dspmanager/preference/BassBoostPreference;

    #getter for: Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mRange:I
    invoke-static {v3}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->access$000(Lcom/bel/android/dspmanager/preference/BassBoostPreference;)I

    move-result v3

    iget-object v4, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->this$0:Lcom/bel/android/dspmanager/preference/BassBoostPreference;

    #getter for: Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mPreset:Ljava/lang/String;
    invoke-static {v4}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->access$200(Lcom/bel/android/dspmanager/preference/BassBoostPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->writeBassBoost(IILjava/lang/String;)V

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mValueDisplay:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    double-to-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mSeekbarUnit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->this$0:Lcom/bel/android/dspmanager/preference/BassBoostPreference;

    #setter for: Lcom/bel/android/dspmanager/preference/BassBoostPreference;->mGain:I
    invoke-static {v2, p1}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->access$102(Lcom/bel/android/dspmanager/preference/BassBoostPreference;I)I

    goto :goto_0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->updateValue(IZ)V

    .line 179
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 184
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 189
    return-void
.end method

.method public save()V
    .locals 4

    .prologue
    .line 168
    const-string v2, "BassBoostPreference"

    const-string v3, "save"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 171
    .local v1, value:I
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->this$0:Lcom/bel/android/dspmanager/preference/BassBoostPreference;

    invoke-virtual {v2}, Lcom/bel/android/dspmanager/preference/BassBoostPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/BassBoostPreference$BassBoostSeekBar;->mPref:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 174
    return-void
.end method
