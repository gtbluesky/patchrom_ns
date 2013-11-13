.class public Lcom/cyanogenmod/settings/device/ColorHackPresets;
.super Landroid/preference/DialogPreference;
.source "ColorHackPresets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FILE_PATH_GAMMA:[Ljava/lang/String;

.field private static final FILE_PATH_MULTI:[Ljava/lang/String;

.field private static sInstances:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/sys/class/misc/samoled_color/red_v1_offset"

    aput-object v1, v0, v2

    const-string v1, "/sys/class/misc/samoled_color/green_v1_offset"

    aput-object v1, v0, v3

    const-string v1, "/sys/class/misc/samoled_color/blue_v1_offset"

    aput-object v1, v0, v4

    sput-object v0, Lcom/cyanogenmod/settings/device/ColorHackPresets;->FILE_PATH_GAMMA:[Ljava/lang/String;

    .line 45
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/sys/class/misc/samoled_color/red_multiplier"

    aput-object v1, v0, v2

    const-string v1, "/sys/class/misc/samoled_color/green_multiplier"

    aput-object v1, v0, v3

    const-string v1, "/sys/class/misc/samoled_color/blue_multiplier"

    aput-object v1, v0, v4

    sput-object v0, Lcom/cyanogenmod/settings/device/ColorHackPresets;->FILE_PATH_MULTI:[Ljava/lang/String;

    .line 54
    sput v2, Lcom/cyanogenmod/settings/device/ColorHackPresets;->sInstances:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->setDialogLayoutResource(I)V

    .line 63
    return-void
.end method

.method private Preset1()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/high16 v2, 0x3ff0

    const/4 v1, 0x0

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 162
    invoke-direct {p0, v1, v1}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 163
    invoke-direct {p0, v1, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 164
    invoke-direct {p0, v1, v5}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 165
    return-void
.end method

.method private Preset2()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, -0x32

    const-wide v1, 0x3feb70a3d70a3d71L

    .line 168
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 169
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 170
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 171
    invoke-direct {p0, v3, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 172
    invoke-direct {p0, v3, v5}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 173
    const/16 v0, -0x28

    invoke-direct {p0, v0, v6}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 174
    return-void
.end method

.method private Preset3()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    const-wide v0, 0x3fe51344e07c2389L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 178
    const-wide v0, 0x3fe765d98091144dL

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 179
    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 180
    const/16 v0, -0x29

    invoke-direct {p0, v0, v2}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 181
    const/16 v0, -0x2e

    invoke-direct {p0, v0, v3}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 182
    const/16 v0, -0x1f

    invoke-direct {p0, v0, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 183
    return-void
.end method

.method private Preset4()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    const-wide v0, 0x3fe723a29c779a6bL

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 187
    const-wide v0, 0x3fe67381d7dbf488L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 188
    const-wide v0, 0x3fe4e703afb7e910L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 189
    const/16 v0, -0x23

    invoke-direct {p0, v0, v2}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 190
    const/16 v0, -0x37

    invoke-direct {p0, v0, v3}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 191
    const/16 v0, -0x30

    invoke-direct {p0, v0, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 192
    return-void
.end method

.method private Preset5()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, -0x2c

    const-wide v1, 0x3fe554c985f06f69L

    .line 195
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 196
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 197
    const-wide v0, 0x3feaaa64c2f837b5L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 198
    invoke-direct {p0, v3, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 199
    invoke-direct {p0, v3, v5}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 200
    const/16 v0, -0x16

    invoke-direct {p0, v0, v6}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 201
    return-void
.end method

.method private Preset6()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 205
    const-wide v0, 0x3fe89a027525460bL

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 206
    const-wide v0, 0x3fcfa786c226809dL

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteMultiplier(Ljava/lang/Double;I)V

    .line 207
    const/16 v0, -0x39

    invoke-direct {p0, v0, v2}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 208
    const/16 v0, -0x27

    invoke-direct {p0, v0, v3}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 209
    const/16 v0, 0x2d

    invoke-direct {p0, v0, v4}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->WriteGamma(II)V

    .line 210
    return-void
.end method

.method private SetupButtonClickListeners(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x6

    .line 75
    new-array v1, v4, [Landroid/widget/Button;

    .line 77
    .local v1, mPresets:[Landroid/widget/Button;
    const/4 v3, 0x0

    const v2, 0x7f07000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v3

    .line 78
    const/4 v3, 0x1

    const v2, 0x7f07000b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v3

    .line 79
    const/4 v3, 0x2

    const v2, 0x7f07000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v3

    .line 80
    const/4 v3, 0x3

    const v2, 0x7f07000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v3

    .line 81
    const/4 v3, 0x4

    const v2, 0x7f07000e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v3

    .line 82
    const/4 v3, 0x5

    const v2, 0x7f07000f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v3

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 84
    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method private WriteGamma(II)V
    .locals 3
    .parameter "iValue"
    .parameter "iPos"

    .prologue
    .line 154
    sget-object v0, Lcom/cyanogenmod/settings/device/ColorHackPresets;->FILE_PATH_GAMMA:[Ljava/lang/String;

    aget-object v0, v0, p2

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "PRESETS..."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KalimAz: Gamma: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method private WriteMultiplier(Ljava/lang/Double;I)V
    .locals 5
    .parameter "fValue"
    .parameter "iPos"

    .prologue
    .line 148
    const-wide v1, 0x41dfffffff400000L

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 149
    .local v0, iValue:I
    sget-object v1, Lcom/cyanogenmod/settings/device/ColorHackPresets;->FILE_PATH_MULTI:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1, v0}, Lcom/cyanogenmod/settings/device/Utils;->writeColor(Ljava/lang/String;I)V

    .line 150
    const-string v1, "PRESETS..."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KalimAz: Multiplier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public static isSupported()Z
    .locals 6

    .prologue
    .line 114
    const/4 v4, 0x1

    .line 115
    .local v4, supported:Z
    sget-object v0, Lcom/cyanogenmod/settings/device/ColorHackPresets;->FILE_PATH_GAMMA:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 116
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    const/4 v4, 0x0

    .line 115
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v1           #filePath:Ljava/lang/String;
    :cond_1
    return v4
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 69
    sget v0, Lcom/cyanogenmod/settings/device/ColorHackPresets;->sInstances:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cyanogenmod/settings/device/ColorHackPresets;->sInstances:I

    .line 71
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->SetupButtonClickListeners(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 127
    :pswitch_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->Preset1()V

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->Preset2()V

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->Preset3()V

    goto :goto_0

    .line 136
    :pswitch_3
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->Preset4()V

    goto :goto_0

    .line 139
    :pswitch_4
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->Preset5()V

    goto :goto_0

    .line 142
    :pswitch_5
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/ColorHackPresets;->Preset6()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x7f07000a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 92
    sget v0, Lcom/cyanogenmod/settings/device/ColorHackPresets;->sInstances:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/cyanogenmod/settings/device/ColorHackPresets;->sInstances:I

    .line 94
    return-void
.end method
