.class public Lcom/cyanogenmod/settings/device/bldTuningPreference;
.super Landroid/preference/DialogPreference;
.source "bldTuningPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;
    }
.end annotation


# static fields
.field private static final FILE_PATH:[Ljava/lang/String;

.field private static final SEEKBAR_ID:[I

.field private static final VALUE_DISPLAY_ID:[I

.field private static sInstances:I


# instance fields
.field private mSeekBars:[Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-array v0, v3, [I

    const v1, 0x7f070013

    aput v1, v0, v2

    sput-object v0, Lcom/cyanogenmod/settings/device/bldTuningPreference;->SEEKBAR_ID:[I

    .line 44
    new-array v0, v3, [I

    const v1, 0x7f070012

    aput v1, v0, v2

    sput-object v0, Lcom/cyanogenmod/settings/device/bldTuningPreference;->VALUE_DISPLAY_ID:[I

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "/sys/class/misc/backlightdimmer/delay"

    aput-object v1, v0, v2

    sput-object v0, Lcom/cyanogenmod/settings/device/bldTuningPreference;->FILE_PATH:[Ljava/lang/String;

    .line 61
    sput v2, Lcom/cyanogenmod/settings/device/bldTuningPreference;->sInstances:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;

    .line 66
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/bldTuningPreference;->setDialogLayoutResource(I)V

    .line 67
    return-void
.end method

.method public static isSupported()Z
    .locals 6

    .prologue
    .line 137
    const/4 v4, 0x1

    .line 138
    .local v4, supported:Z
    sget-object v0, Lcom/cyanogenmod/settings/device/bldTuningPreference;->FILE_PATH:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 139
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    const/4 v4, 0x0

    .line 138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v1           #filePath:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 106
    invoke-static {}, Lcom/cyanogenmod/settings/device/bldTuningPreference;->isSupported()Z

    move-result v9

    if-nez v9, :cond_1

    .line 129
    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 112
    .local v8, sharedPrefs:Landroid/content/SharedPreferences;
    sget-object v0, Lcom/cyanogenmod/settings/device/bldTuningPreference;->FILE_PATH:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v0, v3

    .line 113
    .local v2, filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, sDefaultValue:Ljava/lang/String;
    const-string v9, "BLD..."

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

    .line 116
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    add-int/lit16 v5, v9, -0x3e8

    .line 121
    .local v5, iValue2:I
    :goto_1
    :try_start_1
    invoke-interface {v8, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 122
    .local v4, iValue:I
    const-string v9, "BLD..."

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

    .line 127
    :goto_2
    invoke-static {v2, v4}, Lcom/cyanogenmod/settings/device/Utils;->writebld(Ljava/lang/String;I)V

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v4           #iValue:I
    .end local v5           #iValue2:I
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .restart local v5       #iValue2:I
    goto :goto_1

    .line 123
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 124
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v4, v5

    .line 125
    .restart local v4       #iValue:I
    const-string v9, "BLD..."

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
    .line 71
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 73
    sget v3, Lcom/cyanogenmod/settings/device/bldTuningPreference;->sInstances:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/cyanogenmod/settings/device/bldTuningPreference;->sInstances:I

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/cyanogenmod/settings/device/bldTuningPreference;->SEEKBAR_ID:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 76
    sget-object v3, Lcom/cyanogenmod/settings/device/bldTuningPreference;->SEEKBAR_ID:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 77
    .local v1, seekBar:Landroid/widget/SeekBar;
    sget-object v3, Lcom/cyanogenmod/settings/device/bldTuningPreference;->VALUE_DISPLAY_ID:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, valueDisplay:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;

    new-instance v4, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;

    sget-object v5, Lcom/cyanogenmod/settings/device/bldTuningPreference;->FILE_PATH:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, p0, v1, v2, v5}, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;-><init>(Lcom/cyanogenmod/settings/device/bldTuningPreference;Landroid/widget/SeekBar;Landroid/widget/TextView;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v1           #seekBar:Landroid/widget/SeekBar;
    .end local v2           #valueDisplay:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 86
    sget v4, Lcom/cyanogenmod/settings/device/bldTuningPreference;->sInstances:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/cyanogenmod/settings/device/bldTuningPreference;->sInstances:I

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;

    .local v0, arr$:[Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 90
    .local v1, csb:Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;
    invoke-virtual {v1}, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->save()V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v0           #arr$:[Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;
    .end local v1           #csb:Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    sget v4, Lcom/cyanogenmod/settings/device/bldTuningPreference;->sInstances:I

    if-nez v4, :cond_1

    .line 93
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/bldTuningPreference;->mSeekBars:[Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;

    .restart local v0       #arr$:[Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 94
    .restart local v1       #csb:Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;
    invoke-virtual {v1}, Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;->reset()V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v0           #arr$:[Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;
    .end local v1           #csb:Lcom/cyanogenmod/settings/device/bldTuningPreference$bldSeekBar;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method
