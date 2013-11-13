.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# instance fields
.field private final mCameraId:I

.field private final mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private final mContext:Landroid/content/Context;

.field private final mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter "activity"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 102
    iput p3, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    .line 103
    iput-object p4, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 104
    return-void
.end method

.method private buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V
    .locals 5
    .parameter "group"
    .parameter "preference"

    .prologue
    .line 345
    iget-object v3, p0, Lcom/android/camera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v2, v3

    .line 346
    .local v2, numOfCameras:I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 347
    invoke-virtual {p2}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 356
    :goto_0
    return-void

    .line 351
    :cond_0
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 352
    .local v0, entryValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/camera/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V
    .locals 15
    .parameter "group"
    .parameter "exposure"

    .prologue
    .line 312
    iget-object v12, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v7

    .line 313
    .local v7, max:I
    iget-object v12, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v9

    .line 314
    .local v9, min:I
    if-nez v7, :cond_0

    if-nez v9, :cond_0

    .line 315
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 341
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v12, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v11

    .line 323
    .local v11, step:F
    int-to-float v12, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Landroid/util/FloatMath;->floor(F)F

    move-result v12

    float-to-int v12, v12

    const/4 v13, 0x5

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 324
    .local v8, maxValue:I
    int-to-float v12, v9

    mul-float/2addr v12, v11

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v12, v12

    const/4 v13, -0x5

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 325
    .local v10, minValue:I
    sub-int v12, v8, v10

    add-int/lit8 v12, v12, 0x1

    new-array v2, v12, [Ljava/lang/CharSequence;

    .line 326
    .local v2, entries:[Ljava/lang/CharSequence;
    sub-int v12, v8, v10

    add-int/lit8 v12, v12, 0x1

    new-array v3, v12, [Ljava/lang/CharSequence;

    .line 327
    .local v3, entryValues:[Ljava/lang/CharSequence;
    sub-int v12, v8, v10

    add-int/lit8 v12, v12, 0x1

    new-array v6, v12, [I

    .line 328
    .local v6, icons:[I
    iget-object v12, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090025

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 330
    .local v5, iconIds:Landroid/content/res/TypedArray;
    move v4, v10

    .local v4, i:I
    :goto_1
    if-gt v4, v8, :cond_2

    .line 331
    sub-int v12, v8, v4

    int-to-float v13, v4

    div-float/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v1, builder:Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    const/16 v12, 0x2b

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    :cond_1
    sub-int v12, v8, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v12

    .line 335
    sub-int v12, v8, v4

    add-int/lit8 v13, v4, 0x5

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    aput v13, v6, v12

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 337
    .end local v1           #builder:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/camera/IconListPreference;->setUseSingleIcon(Z)V

    .line 338
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/camera/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 339
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/camera/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 340
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/camera/IconListPreference;->setLargeIconIds([I)V

    goto/16 :goto_0
.end method

.method private buildStorage(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V
    .locals 9
    .parameter "group"
    .parameter "storage"

    .prologue
    .line 280
    iget-object v7, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 281
    .local v4, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 282
    .local v6, volumes:[Landroid/os/storage/StorageVolume;
    array-length v7, v6

    new-array v0, v7, [Ljava/lang/String;

    .line 283
    .local v0, entries:[Ljava/lang/String;
    array-length v7, v6

    new-array v1, v7, [Ljava/lang/String;

    .line 284
    .local v1, entryValues:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 286
    .local v3, primary:I
    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 288
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 293
    aget-object v5, v6, v2

    .line 294
    .local v5, v:Landroid/os/storage/StorageVolume;
    iget-object v7, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 295
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 296
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 297
    move v3, v2

    .line 292
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    .end local v5           #v:Landroid/os/storage/StorageVolume;
    :cond_3
    invoke-virtual {p2, v0}, Lcom/android/camera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p2, v1}, Lcom/android/camera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    .line 306
    invoke-virtual {p2, v3}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method public static dumpParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .parameter "params"

    .prologue
    .line 688
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 689
    .local v3, sortedParams:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 693
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 694
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 695
    .local v1, nextParam:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0x7fc

    if-le v4, v5, :cond_1

    .line 696
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 701
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 704
    .end local v1           #nextParam:Ljava/lang/String;
    :cond_2
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void
.end method

.method private filterSimilarPictureSize(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "group"
    .parameter "pref"

    .prologue
    .line 396
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->filterDuplicated()V

    .line 397
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 398
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    goto :goto_0
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/PreferenceGroup;",
            "Lcom/android/camera/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 380
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 381
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 392
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 386
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 387
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 391
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    goto :goto_0
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cameraId"
    .parameter "defaultQuality"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getFineResolutionQuality(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 628
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_0
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_1
    iget v0, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_2
    return-void
.end method

.method public static getMaxVideoDuration(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, duration:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 172
    :goto_0
    return v0

    .line 170
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getSupportedVideoQuality()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 607
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v2, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    if-eqz v3, :cond_1

    .line 610
    invoke-direct {p0, v2}, Lcom/android/camera/CameraSettings;->getFineResolutionQuality(Ljava/util/ArrayList;)V

    .line 623
    :cond_0
    :goto_0
    return-object v2

    .line 612
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget v3, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v3, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 615
    .local v0, high:Landroid/media/CamcorderProfile;
    iget v3, p0, Lcom/android/camera/CameraSettings;->mCameraId:I

    invoke-static {v3, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 617
    .local v1, low:Landroid/media/CamcorderProfile;
    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v3, v4

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v5, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 619
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initPreference(Lcom/android/camera/PreferenceGroup;)V
    .locals 24
    .parameter "group"

    .prologue
    .line 176
    const-string v22, "pref_video_quality_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v20

    .line 177
    .local v20, videoQuality:Lcom/android/camera/ListPreference;
    const-string v22, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v15

    .line 178
    .local v15, timeLapseInterval:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_picturesize_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v11

    .line 179
    .local v11, pictureSize:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_whitebalance_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v21

    .line 180
    .local v21, whiteBalance:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v12

    .line 181
    .local v12, sceneMode:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    .line 182
    .local v8, flashMode:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_focusmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 183
    .local v9, focusMode:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_exposure_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    check-cast v7, Lcom/android/camera/IconListPreference;

    .line 185
    .local v7, exposure:Lcom/android/camera/IconListPreference;
    const-string v22, "pref_camera_id_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    check-cast v5, Lcom/android/camera/IconListPreference;

    .line 187
    .local v5, cameraIdPref:Lcom/android/camera/IconListPreference;
    const-string v22, "pref_camera_video_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v18

    .line 189
    .local v18, videoFlashMode:Lcom/android/camera/ListPreference;
    const-string v22, "pref_video_effect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v17

    .line 190
    .local v17, videoEffect:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_hdr_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 191
    .local v4, cameraHdr:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_iso_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    .line 192
    .local v10, isoMode:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_coloreffect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    .line 193
    .local v6, colorEffect:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_video_coloreffect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v16

    .line 194
    .local v16, videoColorEffect:Lcom/android/camera/ListPreference;
    const-string v22, "pref_camera_storage_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v14

    .line 195
    .local v14, storage:Lcom/android/camera/ListPreference;
    const-string v22, "pref_video_hdr_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v19

    .line 196
    .local v19, videoHdr:Lcom/android/camera/ListPreference;
    const-string v22, "pref_shutter_speed_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v13

    .line 200
    .local v13, shutterSpeed:Lcom/android/camera/ListPreference;
    if-eqz v20, :cond_0

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 204
    :cond_0
    if-eqz v11, :cond_1

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/camera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v11, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/camera/CameraSettings;->filterSimilarPictureSize(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 209
    :cond_1
    if-eqz v21, :cond_2

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 213
    :cond_2
    if-eqz v12, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v12, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 217
    :cond_3
    if-eqz v8, :cond_4

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v8, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 221
    :cond_4
    if-eqz v9, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0d0005

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-nez v22, :cond_5

    .line 226
    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 229
    :cond_5
    if-eqz v18, :cond_6

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 233
    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/camera/CameraSettings;->buildExposureCompensation(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    .line 234
    :cond_7
    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/camera/CameraSettings;->buildCameraId(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/IconListPreference;)V

    .line 236
    :cond_8
    if-eqz v15, :cond_9

    .line 237
    sget-boolean v22, Lcom/android/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    if-eqz v22, :cond_13

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/ListPreference;)V

    .line 243
    :cond_9
    :goto_0
    if-eqz v17, :cond_a

    .line 248
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 251
    :cond_a
    if-eqz v4, :cond_c

    sget-boolean v22, Lcom/android/gallery3d/common/ApiHelper;->HAS_CAMERA_HDR:Z

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/Util;->isCameraHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v22

    if-nez v22, :cond_c

    :cond_b
    invoke-static {}, Lcom/android/camera/Util;->useSoftwareHDR()Z

    move-result v22

    if-nez v22, :cond_c

    .line 254
    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 256
    :cond_c
    if-eqz v10, :cond_d

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 260
    :cond_d
    if-eqz v6, :cond_e

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 264
    :cond_e
    if-eqz v16, :cond_f

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;Ljava/util/List;)V

    .line 268
    :cond_f
    if-eqz v14, :cond_10

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/camera/CameraSettings;->buildStorage(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ListPreference;)V

    .line 271
    :cond_10
    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/Util;->isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 272
    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 274
    :cond_11
    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/Util;->isShutterSpeedSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 275
    invoke-virtual {v13}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 277
    :cond_12
    return-void

    .line 240
    :cond_13
    invoke-virtual {v15}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "context"
    .parameter "parameters"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 132
    .local v5, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v5, :cond_0

    .line 144
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 135
    .local v1, candidate:Ljava/lang/String;
    invoke-static {v1, v5, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 136
    invoke-static {p0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 138
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_camera_picturesize_key"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 133
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 143
    .end local v1           #candidate:Ljava/lang/String;
    :cond_2
    const-string v6, "CameraSettings"

    const-string v7, "No supported picture size found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 7
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 541
    const-string v4, "pref_video_effect_key"

    const-string v5, "none"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, effectSelection:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 569
    :cond_0
    :goto_0
    return-object v0

    .line 545
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 546
    .local v2, separatorIndex:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, effectParameter:Ljava/lang/String;
    const-string v4, "goofy_face"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 549
    const-string v4, "squeeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 551
    :cond_2
    const-string v4, "big_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 552
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 553
    :cond_3
    const-string v4, "big_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 554
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_4
    const-string v4, "small_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 556
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 557
    :cond_5
    const-string v4, "big_nose"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 558
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_6
    const-string v4, "small_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 560
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_7
    const-string v4, "backdropper"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 568
    :cond_8
    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid effect selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 569
    goto/16 :goto_0
.end method

.method public static readEffectType(Landroid/content/SharedPreferences;)I
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 528
    const-string v2, "pref_video_effect_key"

    const-string v3, "none"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, effectSelection:Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    :goto_0
    return v1

    .line 531
    :cond_0
    const-string v2, "goofy_face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    const/4 v1, 0x1

    goto :goto_0

    .line 533
    :cond_1
    const-string v2, "backdropper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    const/4 v1, 0x2

    goto :goto_0

    .line 536
    :cond_2
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid effect selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readExposure(Lcom/android/camera/ComboPreferences;)I
    .locals 5
    .parameter "preferences"

    .prologue
    .line 516
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, exposure:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 524
    :goto_0
    return v2

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exposure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 505
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 359
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 360
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    .line 361
    .local v0, child:Lcom/android/camera/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 362
    check-cast v3, Lcom/android/camera/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 372
    .end local v0           #child:Lcom/android/camera/CameraPreference;
    :goto_1
    return v3

    .line 366
    .restart local v0       #child:Lcom/android/camera/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/camera/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/camera/ListPreference;

    .end local v0           #child:Lcom/android/camera/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    invoke-virtual {p0, v1}, Lcom/android/camera/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 369
    goto :goto_1

    .line 359
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "group"
    .parameter "key"

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)Z

    .line 149
    return-void
.end method

.method private resetIfInvalid(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 406
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 408
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 410
    :cond_0
    return-void
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 153
    const/16 v6, 0x78

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 154
    .local v2, index:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v5

    .line 155
    :cond_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 156
    .local v4, width:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 158
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v4, :cond_2

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, v0, :cond_2

    .line 159
    invoke-virtual {p2, v4, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 160
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static setEarlyVideoSize(Landroid/hardware/Camera$Parameters;Landroid/media/CamcorderProfile;)V
    .locals 3
    .parameter "params"
    .parameter "profile"

    .prologue
    .line 661
    invoke-static {}, Lcom/android/camera/Util;->needsEarlyVideoSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    const-string v0, "video-size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_0
    return-void
.end method

.method public static setVideoMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "params"
    .parameter "on"

    .prologue
    .line 646
    invoke-static {}, Lcom/android/camera/Util;->useSamsungCamMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    const-string v1, "cam_mode"

    if-eqz p1, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->useHTCCamMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    const-string v1, "cam-mode"

    if-eqz p1, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_1
    return-void

    .line 647
    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 650
    :cond_3
    const-string v0, "0"

    goto :goto_1
.end method

.method private static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 415
    .local v2, size:Landroid/hardware/Camera$Size;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%dx%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method

.method private static upgradeCameraId(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 495
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 496
    .local v0, cameraId:I
    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    .line 499
    .local v1, n:I
    if-ltz v0, :cond_2

    if-lt v0, v1, :cond_0

    .line 500
    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method public static upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 440
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->upgradeOldVersion(Landroid/content/SharedPreferences;)V

    .line 441
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->upgradeCameraId(Landroid/content/SharedPreferences;)V

    .line 442
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v5, 0x2

    .line 423
    :try_start_0
    const-string v3, "pref_local_version_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 427
    .local v2, version:I
    :goto_0
    if-ne v2, v5, :cond_0

    .line 437
    :goto_1
    return-void

    .line 424
    .end local v2           #version:I
    :catch_0
    move-exception v1

    .line 425
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2       #version:I
    goto :goto_0

    .line 429
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 433
    const-string v3, "pref_video_quality_key"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    :cond_1
    const-string v3, "pref_local_version_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 436
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private static upgradeOldVersion(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 447
    :try_start_0
    const-string v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 451
    .local v3, version:I
    :goto_0
    if-ne v3, v7, :cond_0

    .line 488
    :goto_1
    return-void

    .line 448
    .end local v3           #version:I
    :catch_0
    move-exception v1

    .line 449
    .local v1, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #version:I
    goto :goto_0

    .line 453
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 454
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 457
    const/4 v3, 0x1

    .line 459
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 461
    const-string v4, "pref_camera_jpegquality_key"

    const-string v5, "85"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, quality:Ljava/lang/String;
    const-string v4, "65"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 463
    const-string v2, "normal"

    .line 469
    :goto_2
    const-string v4, "pref_camera_jpegquality_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 470
    const/4 v3, 0x2

    .line 472
    .end local v2           #quality:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 473
    const-string v5, "pref_camera_recordlocation_key"

    const-string v4, "pref_camera_recordlocation_key"

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "on"

    :goto_3
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    const/4 v3, 0x3

    .line 479
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 482
    const-string v4, "pref_camera_videoquality_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 483
    const-string v4, "pref_camera_video_duration_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    :cond_4
    const-string v4, "pref_version_key"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 464
    .restart local v2       #quality:Ljava/lang/String;
    :cond_5
    const-string v4, "75"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 465
    const-string v2, "fine"

    goto :goto_2

    .line 467
    :cond_6
    const-string v2, "superfine"

    goto :goto_2

    .line 473
    .end local v2           #quality:Ljava/lang/String;
    :cond_7
    const-string v4, "none"

    goto :goto_3
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 510
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 511
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 512
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 513
    return-void
.end method


# virtual methods
.method public getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;
    .locals 3
    .parameter "preferenceRes"

    .prologue
    .line 107
    new-instance v1, Lcom/android/camera/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 108
    .local v1, inflater:Lcom/android/camera/PreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    .line 110
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    iget-object v2, p0, Lcom/android/camera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraSettings;->initPreference(Lcom/android/camera/PreferenceGroup;)V

    .line 111
    :cond_0
    return-object v0
.end method
