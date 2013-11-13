.class public Lcom/cyanogenmod/settings/device/GammaTuningPreference;
.super Landroid/preference/DialogPreference;
.source "GammaTuningPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;
    }
.end annotation


# static fields
.field private static final FILE_PATH:[Ljava/lang/String;

.field private static final SEEKBAR_ID:[I

.field private static final VALUE_DISPLAY_ID:[I

.field private static sInstances:I


# instance fields
.field private mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->SEEKBAR_ID:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->VALUE_DISPLAY_ID:[I

    .line 52
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "/sys/class/misc/samoled_color/red_v1_offset"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/sys/class/misc/samoled_color/green_v1_offset"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sys/class/misc/samoled_color/blue_v1_offset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->FILE_PATH:[Ljava/lang/String;

    .line 67
    sput v3, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->sInstances:I

    return-void

    .line 44
    nop

    :array_0
    .array-data 0x4
        0x24t 0x0t 0x7t 0x7ft
        0x27t 0x0t 0x7t 0x7ft
        0x2at 0x0t 0x7t 0x7ft
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x23t 0x0t 0x7t 0x7ft
        0x26t 0x0t 0x7t 0x7ft
        0x29t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    .line 72
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->setDialogLayoutResource(I)V

    .line 73
    return-void
.end method

.method private SetCMSettings()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, -0x3f

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->SetNewValue(I)V

    .line 256
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, -0x3b

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->SetNewValue(I)V

    .line 257
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, -0x3d

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->SetNewValue(I)V

    .line 258
    return-void
.end method

.method private SetDefaultSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->SetNewValue(I)V

    .line 268
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->SetNewValue(I)V

    .line 269
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->SetNewValue(I)V

    .line 270
    return-void
.end method

.method private SetSBrightSettings()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->SetNewValue(I)V

    .line 262
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->SetNewValue(I)V

    .line 263
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->SetNewValue(I)V

    .line 264
    return-void
.end method

.method private SetupButtonClickListeners(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 90
    const v3, 0x7f07002c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 91
    .local v2, mDefaultButton:Landroid/widget/Button;
    const v3, 0x7f07002d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 92
    .local v1, mCMButton:Landroid/widget/Button;
    const v3, 0x7f07002e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    .local v0, mBrightButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public static isSupported()Z
    .locals 6

    .prologue
    .line 150
    const/4 v4, 0x1

    .line 151
    .local v4, supported:Z
    sget-object v0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->FILE_PATH:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 152
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    const/4 v4, 0x0

    .line 151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v1           #filePath:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 121
    invoke-static {}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->isSupported()Z

    move-result v9

    if-nez v9, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 127
    .local v8, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v9, "FirstTimeGamma"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 128
    .local v1, bFirstTime:Ljava/lang/Boolean;
    sget-object v0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->FILE_PATH:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v3, v0, v4

    .line 129
    .local v3, filePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, sDefaultValue:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v3, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 131
    .local v5, iValue:I
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 132
    const-string v9, "0"

    invoke-static {v3, v9}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 134
    :cond_2
    int-to-long v9, v5

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 136
    .end local v3           #filePath:Ljava/lang/String;
    .end local v5           #iValue:I
    .end local v7           #sDefaultValue:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 138
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 139
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "FirstTimeGamma"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 79
    sget v3, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->sInstances:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->sInstances:I

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->SEEKBAR_ID:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 82
    sget-object v3, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->SEEKBAR_ID:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 83
    .local v1, seekBar:Landroid/widget/SeekBar;
    sget-object v3, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->VALUE_DISPLAY_ID:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    .local v2, valueDisplay:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    new-instance v4, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    sget-object v5, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->FILE_PATH:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, p0, v1, v2, v5}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;-><init>(Lcom/cyanogenmod/settings/device/GammaTuningPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1           #seekBar:Landroid/widget/SeekBar;
    .end local v2           #valueDisplay:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->SetupButtonClickListeners(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 243
    :pswitch_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->SetDefaultSettings()V

    goto :goto_0

    .line 246
    :pswitch_1
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->SetCMSettings()V

    goto :goto_0

    .line 249
    :pswitch_2
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->SetSBrightSettings()V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x7f07002c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 102
    sget v4, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->sInstances:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->sInstances:I

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    .local v0, arr$:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 106
    .local v1, csb:Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;
    invoke-virtual {v1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->save()V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v0           #arr$:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;
    .end local v1           #csb:Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    sget v4, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->sInstances:I

    if-nez v4, :cond_1

    .line 109
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/GammaTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;

    .restart local v0       #arr$:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 110
    .restart local v1       #csb:Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;
    invoke-virtual {v1}, Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;->reset()V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    .end local v0           #arr$:[Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;
    .end local v1           #csb:Lcom/cyanogenmod/settings/device/GammaTuningPreference$GammaSeekBar;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method
