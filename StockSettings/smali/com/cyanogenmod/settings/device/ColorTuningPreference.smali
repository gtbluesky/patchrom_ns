.class public Lcom/cyanogenmod/settings/device/ColorTuningPreference;
.super Landroid/preference/DialogPreference;
.source "ColorTuningPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;
    }
.end annotation


# static fields
.field private static final FILE_PATH:[Ljava/lang/String;

.field private static final SEEKBAR_ID:[I

.field private static final VALUE_DISPLAY_ID:[I

.field private static sInstances:I


# instance fields
.field private mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->SEEKBAR_ID:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->VALUE_DISPLAY_ID:[I

    .line 52
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "/sys/class/misc/samoled_color/red_multiplier"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/sys/class/misc/samoled_color/green_multiplier"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sys/class/misc/samoled_color/blue_multiplier"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->FILE_PATH:[Ljava/lang/String;

    .line 66
    sput v3, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->sInstances:I

    return-void

    .line 44
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x7t 0x7ft
        0x19t 0x0t 0x7t 0x7ft
        0x1ct 0x0t 0x7t 0x7ft
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x15t 0x0t 0x7t 0x7ft
        0x18t 0x0t 0x7t 0x7ft
        0x1bt 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    .line 71
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->setDialogLayoutResource(I)V

    .line 72
    return-void
.end method

.method private SetCMSettings()V
    .locals 3

    .prologue
    const v2, 0x694a5280

    .line 248
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->SetNewValue(I)V

    .line 249
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->SetNewValue(I)V

    .line 250
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->SetNewValue(I)V

    .line 251
    return-void
.end method

.method private SetDarkSettings()V
    .locals 3

    .prologue
    const v2, 0x344d1340

    .line 254
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->SetNewValue(I)V

    .line 255
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->SetNewValue(I)V

    .line 256
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->SetNewValue(I)V

    .line 257
    return-void
.end method

.method private SetDefaultSettings()V
    .locals 3

    .prologue
    const v2, 0x7ffffffd

    .line 260
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->SetNewValue(I)V

    .line 261
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->SetNewValue(I)V

    .line 262
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->SetNewValue(I)V

    .line 263
    return-void
.end method

.method private SetupButtonClickListeners(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 89
    const v3, 0x7f07001f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 90
    .local v2, mDefaultButton:Landroid/widget/Button;
    const v3, 0x7f070020

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 91
    .local v0, mCMButton:Landroid/widget/Button;
    const v3, 0x7f070021

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 92
    .local v1, mDarkButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method public static isSupported()Z
    .locals 6

    .prologue
    .line 152
    const/4 v4, 0x1

    .line 153
    .local v4, supported:Z
    sget-object v0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->FILE_PATH:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 154
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    const/4 v4, 0x0

    .line 153
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v1           #filePath:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 121
    invoke-static {}, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->isSupported()Z

    move-result v9

    if-nez v9, :cond_1

    .line 144
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 127
    .local v8, sharedPrefs:Landroid/content/SharedPreferences;
    sget-object v0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->FILE_PATH:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v0, v3

    .line 128
    .local v2, filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, sDefaultValue:Ljava/lang/String;
    const-string v9, "COLOR..."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INIT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 136
    .local v5, iValue2:I
    :goto_1
    :try_start_1
    invoke-interface {v8, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 137
    .local v4, iValue:I
    const-string v9, "COLOR..."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore: iValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :goto_2
    invoke-static {v2, v4}, Lcom/cyanogenmod/settings/device/Utils;->writeColor(Ljava/lang/String;I)V

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v4           #iValue:I
    .end local v5           #iValue2:I
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/NumberFormatException;
    const v5, 0x7ffffffd

    .restart local v5       #iValue2:I
    goto :goto_1

    .line 138
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 139
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v4, v5

    .line 140
    .restart local v4       #iValue:I
    const-string v9, "COLOR..."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore ERROR: iValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 78
    sget v3, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->sInstances:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->sInstances:I

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->SEEKBAR_ID:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 81
    sget-object v3, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->SEEKBAR_ID:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 82
    .local v1, seekBar:Landroid/widget/SeekBar;
    sget-object v3, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->VALUE_DISPLAY_ID:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, valueDisplay:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    new-instance v4, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    sget-object v5, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->FILE_PATH:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, p0, v1, v2, v5}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;-><init>(Lcom/cyanogenmod/settings/device/ColorTuningPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v1           #seekBar:Landroid/widget/SeekBar;
    .end local v2           #valueDisplay:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->SetupButtonClickListeners(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 236
    :pswitch_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->SetDefaultSettings()V

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->SetCMSettings()V

    goto :goto_0

    .line 242
    :pswitch_2
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->SetDarkSettings()V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x7f07001f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 101
    sget v4, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->sInstances:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->sInstances:I

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    .local v0, arr$:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 105
    .local v1, csb:Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;
    invoke-virtual {v1}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->save()V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v0           #arr$:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;
    .end local v1           #csb:Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    sget v4, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->sInstances:I

    if-nez v4, :cond_1

    .line 108
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/ColorTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;

    .restart local v0       #arr$:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 109
    .restart local v1       #csb:Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;
    invoke-virtual {v1}, Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;->reset()V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    .end local v0           #arr$:[Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;
    .end local v1           #csb:Lcom/cyanogenmod/settings/device/ColorTuningPreference$ColorSeekBar;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method
