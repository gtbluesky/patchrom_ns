.class public Lcom/android/camera/VideoController;
.super Lcom/android/camera/PieController;
.source "VideoController.java"

# interfaces
.implements Lcom/android/camera/ui/ListPrefSettingPopup$Listener;
.implements Lcom/android/camera/ui/MoreSettingPopup$Listener;
.implements Lcom/android/camera/ui/TimeIntervalPopup$Listener;


# static fields
.field private static FLOAT_PI_DIVIDED_BY_TWO:F

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mModule:Lcom/android/camera/VideoModule;

.field private mOtherKeys:[Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private mPopupStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "CAM_videocontrol"

    sput-object v0, Lcom/android/camera/VideoController;->TAG:Ljava/lang/String;

    .line 37
    const v0, 0x3fc90fdb

    sput v0, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoModule;Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .parameter "activity"
    .parameter "module"
    .parameter "pie"

    .prologue
    .line 49
    invoke-direct {p0, p1, p3}, Lcom/android/camera/PieController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ui/PieRenderer;)V

    .line 50
    iput-object p2, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoController;)Lcom/android/camera/ui/AbstractSettingPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/VideoController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/VideoController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/VideoController;)Lcom/android/camera/VideoModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    return-object v0
.end method

.method private setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/camera/VideoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 187
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {v0, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/camera/VideoController;->reloadPreferences()V

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 7
    .parameter "group"

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x4040

    .line 54
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 55
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 56
    iput v5, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    .line 57
    sget v3, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    const/high16 v4, 0x4000

    div-float v2, v3, v4

    .line 59
    .local v2, sweep:F
    const-string v3, "pref_camera_video_flashmode_key"

    sget v4, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    sub-float/2addr v4, v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/VideoController;->addItem(Ljava/lang/String;FF)V

    .line 60
    const-string v3, "pref_camera_exposure_key"

    sget v4, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v4, v6

    sub-float/2addr v4, v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/VideoController;->addItem(Ljava/lang/String;FF)V

    .line 61
    const-string v3, "pref_camera_whitebalance_key"

    sget v4, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v4, v6

    add-float/2addr v4, v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/camera/VideoController;->addItem(Ljava/lang/String;FF)V

    .line 62
    const-string v3, "pref_camera_id_key"

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 63
    const v3, 0x7f0200e5

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 64
    .local v1, item:Lcom/android/camera/ui/PieItem;
    sget v3, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    add-float/2addr v3, v2

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 65
    new-instance v3, Lcom/android/camera/VideoController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoController$1;-><init>(Lcom/android/camera/VideoController;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 81
    iget-object v3, p0, Lcom/android/camera/VideoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 83
    .end local v1           #item:Lcom/android/camera/ui/PieItem;
    :cond_0
    const-string v3, "pref_video_hdr_key"

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 84
    const v3, 0x7f02008e

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 85
    .local v0, hdr:Lcom/android/camera/ui/PieItem;
    sget v3, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 86
    new-instance v3, Lcom/android/camera/VideoController$2;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoController$2;-><init>(Lcom/android/camera/VideoController;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 100
    iget-object v3, p0, Lcom/android/camera/VideoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 102
    .end local v0           #hdr:Lcom/android/camera/ui/PieItem;
    :cond_1
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "pref_camera_storage_key"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "pref_video_effect_key"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "pref_video_time_lapse_frame_interval_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "pref_video_quality_key"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "pref_camera_recordlocation_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "pref_power_shutter"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "pref_camera_video_coloreffect_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "pref_camera_video_jpeg_key"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/camera/VideoController;->mOtherKeys:[Ljava/lang/String;

    .line 112
    const v3, 0x7f0200d6

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 113
    .restart local v1       #item:Lcom/android/camera/ui/PieItem;
    sget v3, Lcom/android/camera/VideoController;->FLOAT_PI_DIVIDED_BY_TWO:F

    mul-float/2addr v3, v6

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 114
    new-instance v3, Lcom/android/camera/VideoController$3;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoController$3;-><init>(Lcom/android/camera/VideoController;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 124
    iget-object v3, p0, Lcom/android/camera/VideoController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 125
    return-void
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v2, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 165
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/MoreSettingPopup;

    .line 167
    .local v1, popup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/MoreSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/MoreSettingPopup$Listener;)V

    .line 168
    iget-object v2, p0, Lcom/android/camera/VideoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v3, p0, Lcom/android/camera/VideoController;->mOtherKeys:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/MoreSettingPopup;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const-string v2, "pref_camera_recordlocation_key"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/MoreSettingPopup;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 173
    :cond_0
    iput-object v1, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 174
    return-void
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 154
    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 158
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 159
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 209
    iget v3, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    if-eq v3, v5, :cond_0

    .line 231
    .end local p1
    :goto_0
    return-void

    .line 211
    .restart local p1
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 214
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v3, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    const v3, 0x7f040044

    invoke-virtual {v1, v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/TimeIntervalPopup;

    .line 217
    .local v2, timeInterval:Lcom/android/camera/ui/TimeIntervalPopup;
    check-cast p1, Lcom/android/camera/IconListPreference;

    .end local p1
    invoke-virtual {v2, p1}, Lcom/android/camera/ui/TimeIntervalPopup;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 218
    invoke-virtual {v2, p0}, Lcom/android/camera/ui/TimeIntervalPopup;->setSettingChangedListener(Lcom/android/camera/ui/TimeIntervalPopup$Listener;)V

    .line 219
    iget-object v3, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 220
    iput-object v2, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 229
    .end local v2           #timeInterval:Lcom/android/camera/ui/TimeIntervalPopup;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    iget-object v4, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v3, v4}, Lcom/android/camera/VideoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 230
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    goto :goto_0

    .line 222
    .restart local p1
    :cond_1
    const v3, 0x7f040019

    invoke-virtual {v1, v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListPrefSettingPopup;

    .line 224
    .local v0, basic:Lcom/android/camera/ui/ListPrefSettingPopup;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListPrefSettingPopup;->initialize(Lcom/android/camera/ListPreference;)V

    .line 225
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/ListPrefSettingPopup$Listener;)V

    .line 226
    iget-object v3, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 227
    iput-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    goto :goto_1
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    const v2, 0x7f0a00b1

    .line 195
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_video_hdr_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    const-string v0, "pref_video_hdr_key"

    iget-object v1, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoController;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 203
    return-void

    .line 199
    :cond_1
    const-string v0, "pref_video_hdr_key"

    iget-object v1, p0, Lcom/android/camera/VideoController;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoController;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 2
    .parameter "keyvalues"

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-super {p0, p1}, Lcom/android/camera/PieController;->overrideSettings([Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    if-eq v0, v1, :cond_1

    .line 144
    :cond_0
    iput v1, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    .line 145
    invoke-virtual {p0}, Lcom/android/camera/VideoController;->initializePopup()V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    check-cast v0, Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MoreSettingPopup;->overrideSettings([Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public popupDismissed(Z)V
    .locals 2
    .parameter "topPopupOnly"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/camera/VideoController;->initializePopup()V

    .line 179
    iget v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/VideoController;->mPopupStatus:I

    .line 181
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;

    iget-object v1, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 183
    :cond_0
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/camera/PieController;->reloadPreferences()V

    .line 135
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractSettingPopup;->reloadPreference()V

    .line 138
    :cond_0
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/camera/VideoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 129
    .local v0, pref:Lcom/android/camera/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 130
    return-void
.end method
