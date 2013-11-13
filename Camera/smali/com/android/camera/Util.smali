.class public Lcom/android/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Util$ShutterVoice;,
        Lcom/android/camera/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mIsCountDownOn:Z

.field private static mIsMuted:Z

.field protected static mNoSpeechCountDown:Landroid/os/CountDownTimer;

.field private static mPhotoModule:Lcom/android/camera/PhotoModule;

.field private static mShutterWords:[Ljava/lang/String;

.field private static mSpeechActive:Z

.field private static mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private static mSpeechRecognizerIntent:Landroid/content/Intent;

.field public static mSwitchCamera:Z

.field private static sDoSoftwareHDRShot:Z

.field private static sEarlyVideoSize:Z

.field private static sEnableSoftwareHDR:Z

.field private static sEnableZSL:Z

.field private static sForceSoftwareHDR:Z

.field private static sHTCCamMode:Z

.field private static sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

.field private static sLocation:[I

.field private static sNoFaceDetectOnFrontCamera:Z

.field private static sNoFocusModeChangeForTouch:Z

.field private static sPixelDensity:F

.field private static sProfileVideoSize:Z

.field private static sSamsungCamMode:Z

.field private static sSamsungHDRFormat:Z

.field private static sSendMagicSamsungZSLCommand:Z

.field private static sShutterSpeed:Z

.field private static sSoftwareHDRExposureSettleTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1388

    const/4 v1, 0x0

    .line 98
    sput-boolean v1, Lcom/android/camera/Util;->mSwitchCamera:Z

    .line 153
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/camera/Util;->sPixelDensity:F

    .line 195
    sput-boolean v1, Lcom/android/camera/Util;->mSpeechActive:Z

    .line 198
    sput-boolean v1, Lcom/android/camera/Util;->mIsMuted:Z

    .line 807
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/Util;->sLocation:[I

    .line 1106
    new-instance v0, Lcom/android/camera/Util$2;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/android/camera/Util$2;-><init>(JJ)V

    sput-object v0, Lcom/android/camera/Util;->mNoSpeechCountDown:Landroid/os/CountDownTimer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 523
    if-nez p0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 526
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/camera/Util;->mIsCountDownOn:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    sput-boolean p0, Lcom/android/camera/Util;->mIsCountDownOn:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/camera/Util;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    sput-boolean p0, Lcom/android/camera/Util;->mIsMuted:Z

    return p0
.end method

.method static synthetic access$200()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/camera/Util;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/camera/Util;->mSpeechActive:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    sput-boolean p0, Lcom/android/camera/Util;->mSpeechActive:Z

    return p0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/camera/Util;->mShutterWords:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/camera/PhotoModule;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/camera/Util;->mPhotoModule:Lcom/android/camera/PhotoModule;

    return-object v0
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 890
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 892
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 893
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 578
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 602
    if-le p0, p2, :cond_0

    .line 604
    .end local p2
    :goto_0
    return p2

    .line 603
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 604
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 514
    if-nez p0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 516
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    .line 426
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 427
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 429
    .local v0, h:D
    if-gez p2, :cond_1

    move v2, v6

    .line 431
    .local v2, lowerBound:I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 435
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 445
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 429
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 431
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 440
    .restart local v3       #upperBound:I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 441
    goto :goto_2

    .line 442
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 445
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 408
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 412
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 413
    const/4 v1, 0x1

    .line 414
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 415
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 421
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"

    .prologue
    .line 884
    sget-object v1, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    monitor-enter v1

    .line 885
    :try_start_0
    sget-object v0, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static decodeYUV422P([BII)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "yuv422p"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 475
    mul-int v4, p1, p2

    .line 476
    .local v4, frameSize:I
    new-array v9, v4, [I

    .line 477
    .local v9, rgb:[I
    const/4 v7, 0x0

    .local v7, j:I
    const/16 v18, 0x0

    .local v18, yp:I
    :goto_0
    move/from16 v0, p2

    if-ge v7, v0, :cond_8

    .line 478
    div-int/lit8 v19, p1, 0x2

    mul-int v19, v19, v7

    add-int v11, v4, v19

    .local v11, up:I
    const/4 v10, 0x0

    .local v10, u:I
    const/4 v13, 0x0

    .line 479
    .local v13, v:I
    int-to-double v0, v4

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff8

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, p1, 0x2

    mul-int v20, v20, v7

    add-int v14, v19, v20

    .line 480
    .local v14, vp:I
    const/4 v6, 0x0

    .local v6, i:I
    move v15, v14

    .end local v14           #vp:I
    .local v15, vp:I
    move v12, v11

    .end local v11           #up:I
    .local v12, up:I
    :goto_1
    move/from16 v0, p1

    if-ge v6, v0, :cond_7

    .line 481
    aget-byte v19, p0, v18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v16, v19, -0x10

    .line 482
    .local v16, y:I
    if-gez v16, :cond_0

    .line 483
    const/16 v16, 0x0

    .line 484
    :cond_0
    and-int/lit8 v19, v6, 0x1

    if-nez v19, :cond_9

    .line 485
    add-int/lit8 v11, v12, 0x1

    .end local v12           #up:I
    .restart local v11       #up:I
    aget-byte v19, p0, v12

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v10, v19, -0x80

    .line 486
    add-int/lit8 v14, v15, 0x1

    .end local v15           #vp:I
    .restart local v14       #vp:I
    aget-byte v19, p0, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x80

    .line 489
    :goto_2
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x4a8

    move/from16 v17, v0

    .line 490
    .local v17, y1192:I
    mul-int/lit16 v0, v13, 0x662

    move/from16 v19, v0

    add-int v8, v17, v19

    .line 491
    .local v8, r:I
    mul-int/lit16 v0, v13, 0x341

    move/from16 v19, v0

    sub-int v19, v17, v19

    mul-int/lit16 v0, v10, 0x190

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 492
    .local v5, g:I
    mul-int/lit16 v0, v10, 0x812

    move/from16 v19, v0

    add-int v3, v17, v19

    .line 494
    .local v3, b:I
    if-gez v8, :cond_4

    .line 495
    const/4 v8, 0x0

    .line 498
    :cond_1
    :goto_3
    if-gez v5, :cond_5

    .line 499
    const/4 v5, 0x0

    .line 502
    :cond_2
    :goto_4
    if-gez v3, :cond_6

    .line 503
    const/4 v3, 0x0

    .line 507
    :cond_3
    :goto_5
    const/high16 v19, -0x100

    shl-int/lit8 v20, v8, 0x6

    const/high16 v21, 0xff

    and-int v20, v20, v21

    or-int v19, v19, v20

    shr-int/lit8 v20, v5, 0x2

    const v21, 0xff00

    and-int v20, v20, v21

    or-int v19, v19, v20

    shr-int/lit8 v20, v3, 0xa

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    or-int v19, v19, v20

    aput v19, v9, v18

    .line 480
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v18, v18, 0x1

    move v15, v14

    .end local v14           #vp:I
    .restart local v15       #vp:I
    move v12, v11

    .end local v11           #up:I
    .restart local v12       #up:I
    goto :goto_1

    .line 496
    .end local v12           #up:I
    .end local v15           #vp:I
    .restart local v11       #up:I
    .restart local v14       #vp:I
    :cond_4
    const v19, 0x3ffff

    move/from16 v0, v19

    if-le v8, v0, :cond_1

    .line 497
    const v8, 0x3ffff

    goto :goto_3

    .line 500
    :cond_5
    const v19, 0x3ffff

    move/from16 v0, v19

    if-le v5, v0, :cond_2

    .line 501
    const v5, 0x3ffff

    goto :goto_4

    .line 504
    :cond_6
    const v19, 0x3ffff

    move/from16 v0, v19

    if-le v3, v0, :cond_3

    .line 505
    const v3, 0x3ffff

    goto :goto_5

    .line 477
    .end local v3           #b:I
    .end local v5           #g:I
    .end local v8           #r:I
    .end local v11           #up:I
    .end local v14           #vp:I
    .end local v16           #y:I
    .end local v17           #y1192:I
    .restart local v12       #up:I
    .restart local v15       #vp:I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 510
    .end local v6           #i:I
    .end local v10           #u:I
    .end local v12           #up:I
    .end local v13           #v:I
    .end local v15           #vp:I
    :cond_8
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v19

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    return-object v19

    .restart local v6       #i:I
    .restart local v10       #u:I
    .restart local v12       #up:I
    .restart local v13       #v:I
    .restart local v15       #vp:I
    .restart local v16       #y:I
    :cond_9
    move v14, v15

    .end local v15           #vp:I
    .restart local v14       #vp:I
    move v11, v12

    .end local v12           #up:I
    .restart local v11       #up:I
    goto/16 :goto_2
.end method

.method public static enableSpeechRecognition(ZLcom/android/camera/PhotoModule;)V
    .locals 3
    .parameter "enable"
    .parameter "module"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 314
    if-eqz p1, :cond_2

    .line 315
    sput-object p1, Lcom/android/camera/Util;->mPhotoModule:Lcom/android/camera/PhotoModule;

    .line 321
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/Util;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-nez v0, :cond_3

    .line 341
    :cond_1
    :goto_1
    return-void

    .line 316
    :cond_2
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/android/camera/Util;->mIsMuted:Z

    if-nez v0, :cond_0

    .line 318
    sput-boolean v1, Lcom/android/camera/Util;->mIsMuted:Z

    .line 319
    sget-object v0, Lcom/android/camera/Util;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0

    .line 326
    :cond_3
    sget-object v0, Lcom/android/camera/Util;->mPhotoModule:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->updateNoHandsIndicator()V

    .line 328
    sget-object v0, Lcom/android/camera/Util;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 329
    if-nez p0, :cond_4

    .line 331
    sput-boolean v2, Lcom/android/camera/Util;->mSpeechActive:Z

    .line 332
    sget-boolean v0, Lcom/android/camera/Util;->mIsMuted:Z

    if-eqz v0, :cond_1

    .line 333
    sget-object v0, Lcom/android/camera/Util;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 334
    sput-boolean v2, Lcom/android/camera/Util;->mIsMuted:Z

    goto :goto_1

    .line 338
    :cond_4
    sput-boolean v1, Lcom/android/camera/Util;->mSpeechActive:Z

    .line 339
    sget-object v0, Lcom/android/camera/Util;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    sget-object v1, Lcom/android/camera/Util;->mSpeechRecognizerIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static enableZSL()Z
    .locals 1

    .prologue
    .line 278
    sget-boolean v0, Lcom/android/camera/Util;->sEnableZSL:Z

    return v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 582
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 905
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    const-wide/16 v2, 0x190

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;FFJ)V

    .line 908
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 909
    return-void
.end method

.method public static fadeIn(Landroid/view/View;FFJ)V
    .locals 2
    .parameter "view"
    .parameter "startAlpha"
    .parameter "endAlpha"
    .parameter "duration"

    .prologue
    .line 896
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 902
    :goto_0
    return-void

    .line 898
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 899
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 900
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 901
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 912
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    :goto_0
    return-void

    .line 916
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 917
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 918
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 919
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 920
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .parameter "currentActivity"

    .prologue
    const/4 v6, -0x1

    .line 778
    const/4 v1, -0x1

    .line 780
    .local v1, cameraId:I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 783
    .local v3, intentCameraId:I
    invoke-static {v3}, Lcom/android/camera/Util;->isFrontCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 785
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 786
    .local v2, frontCameraId:I
    if-eq v2, v6, :cond_0

    .line 787
    move v1, v2

    .line 796
    .end local v2           #frontCameraId:I
    :cond_0
    :goto_0
    return v1

    .line 789
    :cond_1
    invoke-static {v3}, Lcom/android/camera/Util;->isBackCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 791
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 792
    .local v0, backCameraId:I
    if-eq v0, v6, :cond_0

    .line 793
    move v1, v0

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 635
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 636
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 637
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method private static getDefaultDisplaySize(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .parameter "activity"
    .parameter "size"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 659
    .local v0, d:Landroid/view/Display;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 660
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 664
    :goto_0
    return-object p1

    .line 662
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 622
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 623
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 625
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 626
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 627
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 631
    :goto_0
    return v1

    .line 629
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 610
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 616
    :goto_0
    :pswitch_0
    return v1

    .line 612
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 613
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 614
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDoSoftwareHDRShot()Z
    .locals 1

    .prologue
    .line 294
    sget-boolean v0, Lcom/android/camera/Util;->sDoSoftwareHDRShot:Z

    return v0
.end method

.method public static getJpegRotation(II)I
    .locals 4
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 926
    const/4 v1, 0x0

    .line 927
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 928
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p0

    .line 929
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 930
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 935
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    return v1

    .line 932
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 15
    .parameter "currentActivity"
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 670
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 671
    .local v0, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 704
    :cond_0
    return-object v5

    .line 673
    :cond_1
    const/4 v5, 0x0

    .line 674
    .local v5, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v3, 0x7fefffffffffffffL

    .line 681
    .local v3, minDiff:D
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    invoke-static {p0, v11}, Lcom/android/camera/Util;->getDefaultDisplaySize(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 682
    .local v6, point:Landroid/graphics/Point;
    iget v11, v6, Landroid/graphics/Point;->x:I

    iget v12, v6, Landroid/graphics/Point;->y:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 684
    .local v10, targetHeight:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 685
    .local v9, size:Landroid/hardware/Camera$Size;
    iget v11, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v11, v11

    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 686
    .local v7, ratio:D
    sub-double v11, v7, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpl-double v11, v11, v13

    if-gtz v11, :cond_2

    .line 687
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v3

    if-gez v11, :cond_2

    .line 688
    move-object v5, v9

    .line 689
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v3, v11

    goto :goto_0

    .line 694
    .end local v7           #ratio:D
    .end local v9           #size:Landroid/hardware/Camera$Size;
    :cond_3
    if-nez v5, :cond_0

    .line 695
    const-string v11, "Util"

    const-string v12, "No preview size match the aspect ratio"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-wide v3, 0x7fefffffffffffffL

    .line 697
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 698
    .restart local v9       #size:Landroid/hardware/Camera$Size;
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v3

    if-gez v11, :cond_4

    .line 699
    move-object v5, v9

    .line 700
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v3, v11

    goto :goto_1
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 11
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 712
    .local v0, ASPECT_TOLERANCE:D
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 735
    :cond_0
    return-object v3

    .line 714
    :cond_1
    const/4 v3, 0x0

    .line 717
    .local v3, optimalSize:Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 718
    .local v6, size:Landroid/hardware/Camera$Size;
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    div-double v4, v7, v9

    .line 719
    .local v4, ratio:D
    sub-double v7, v4, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f50624dd2f1a9fcL

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_2

    .line 720
    if-eqz v3, :cond_3

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_2

    .line 721
    :cond_3
    move-object v3, v6

    goto :goto_0

    .line 727
    .end local v4           #ratio:D
    .end local v6           #size:Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v3, :cond_0

    .line 728
    const-string v7, "Util"

    const-string v8, "No picture size match the aspect ratio"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 730
    .restart local v6       #size:Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_6

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_5

    .line 731
    :cond_6
    move-object v3, v6

    goto :goto_1
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .parameter "reference"
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 817
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 818
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v0, v2, v4

    .line 819
    .local v0, referenceX:I
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v1, v2, v5

    .line 820
    .local v1, referenceY:I
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 821
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v3, v2, v4

    sub-int/2addr v3, v0

    aput v3, v2, v4

    .line 822
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v3, v2, v5

    sub-int/2addr v3, v1

    aput v3, v2, v5

    .line 823
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    return-object v2
.end method

.method public static getSoftwareHDRExposureSettleTime()I
    .locals 1

    .prologue
    .line 298
    sget v0, Lcom/android/camera/Util;->sSoftwareHDRExposureSettleTime:I

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 204
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 205
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 207
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 208
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/camera/Util;->sPixelDensity:F

    .line 209
    new-instance v2, Lcom/android/camera/Util$ImageFileNamer;

    const v5, 0x7f0a00e6

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sSamsungCamMode:Z

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0002

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sHTCCamMode:Z

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0003

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sProfileVideoSize:Z

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0004

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sEarlyVideoSize:Z

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sEnableZSL:Z

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sNoFaceDetectOnFrontCamera:Z

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/android/camera/Util;->sEnableSoftwareHDR:Z

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d000d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sForceSoftwareHDR:Z

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/camera/Util;->sSoftwareHDRExposureSettleTime:I

    .line 225
    sput-boolean v4, Lcom/android/camera/Util;->sDoSoftwareHDRShot:Z

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d000e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sSamsungHDRFormat:Z

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d000b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sNoFocusModeChangeForTouch:Z

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d000c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sSendMagicSamsungZSLCommand:Z

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d000f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/Util;->sShutterSpeed:Z

    .line 239
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v2

    sput-object v2, Lcom/android/camera/Util;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 240
    sget-object v2, Lcom/android/camera/Util;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v4, Lcom/android/camera/Util$ShutterVoice;

    invoke-direct {v4}, Lcom/android/camera/Util$ShutterVoice;-><init>()V

    invoke-virtual {v2, v4}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 242
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/camera/Util;->mSpeechRecognizerIntent:Landroid/content/Intent;

    .line 243
    sget-object v2, Lcom/android/camera/Util;->mSpeechRecognizerIntent:Landroid/content/Intent;

    const-string v4, "android.speech.extra.LANGUAGE_MODEL"

    const-string v5, "free_form"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    sget-object v2, Lcom/android/camera/Util;->mSpeechRecognizerIntent:Landroid/content/Intent;

    const-string v4, "calling_package"

    const-string v5, "com.cyanogenmod.voiceshutter"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    sget-object v2, Lcom/android/camera/Util;->mSpeechRecognizerIntent:Landroid/content/Intent;

    const-string v4, "android.speech.extra.MAX_RESULTS"

    const/16 v5, 0xa

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    sget-object v2, Lcom/android/camera/Util;->mSpeechRecognizerIntent:Landroid/content/Intent;

    const-string v4, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sput-object v2, Lcom/android/camera/Util;->mAudioManager:Landroid/media/AudioManager;

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/camera/Util;->mShutterWords:[Ljava/lang/String;

    .line 255
    return-void

    :cond_0
    move v2, v4

    .line 221
    goto/16 :goto_0
.end method

.method public static isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 105
    const-string v0, "true"

    const-string v1, "auto-exposure-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 109
    const-string v0, "true"

    const-string v1, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    .line 804
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraHdrSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    const-string v3, "hdr"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/camera/Util;->sForceSoftwareHDR:Z

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 119
    .local v0, ret:Z
    :goto_0
    if-eqz v0, :cond_0

    sget-boolean v3, Lcom/android/camera/Util;->sEnableSoftwareHDR:Z

    if-eqz v3, :cond_0

    sput-boolean v2, Lcom/android/camera/Util;->sEnableSoftwareHDR:Z

    .line 120
    :cond_0
    return v0

    .end local v0           #ret:Z
    :cond_1
    move v0, v2

    .line 118
    goto :goto_0
.end method

.method public static isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .parameter "params"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_CAMERA_FOCUS_AREA:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 146
    :cond_0
    return v0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    const/4 v0, 0x1

    .line 800
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 133
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_CAMERA_METERING_AREA:Z

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 136
    :cond_0
    return v0
.end method

.method public static isShutterSpeedSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .parameter "params"

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/camera/Util;->sShutterSpeed:Z

    return v0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 101
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 124
    const-string v0, "true"

    const-string v1, "video-hdr-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 113
    const-string v0, "true"

    const-string v1, "video-snapshot-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 451
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 452
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 453
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 455
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 469
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 459
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/android/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 461
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 463
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 464
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 465
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 467
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 468
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static needSamsungHDRFormat()Z
    .locals 1

    .prologue
    .line 286
    sget-boolean v0, Lcom/android/camera/Util;->sSamsungHDRFormat:Z

    return v0
.end method

.method public static needsEarlyVideoSize()Z
    .locals 1

    .prologue
    .line 274
    sget-boolean v0, Lcom/android/camera/Util;->sEarlyVideoSize:Z

    return v0
.end method

.method public static newSurfaceLayer(ILandroid/hardware/Camera$Parameters;Lcom/android/camera/CameraActivity;)Landroid/graphics/SurfaceTexture;
    .locals 5
    .parameter "mCameraDisplayOrientation"
    .parameter "mParameters"
    .parameter "mActivity"

    .prologue
    .line 978
    iget-object v0, p2, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 980
    .local v0, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 981
    .local v2, surfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/camera/Util;->mSwitchCamera:Z

    if-eqz v3, :cond_1

    .line 982
    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/camera/Util;->mSwitchCamera:Z

    .line 983
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 985
    .local v1, size:Landroid/hardware/Camera$Size;
    rem-int/lit16 v3, p0, 0xb4

    if-nez v3, :cond_2

    .line 986
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 990
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 991
    invoke-virtual {p2}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 992
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 994
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 996
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :cond_1
    return-object v2

    .line 988
    .restart local v1       #size:Landroid/hardware/Camera$Size;
    :cond_2
    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_0
.end method

.method public static noFaceDetectOnFrontCamera()Z
    .locals 1

    .prologue
    .line 302
    sget-boolean v0, Lcom/android/camera/Util;->sNoFaceDetectOnFrontCamera:Z

    return v0
.end method

.method public static noFocusModeChangeForTouch()Z
    .locals 1

    .prologue
    .line 306
    sget-boolean v0, Lcom/android/camera/Util;->sNoFocusModeChangeForTouch:Z

    return v0
.end method

.method public static openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 3
    .parameter "activity"
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-static {p0}, Lcom/android/camera/Util;->throwIfCameraDisabled(Landroid/app/Activity;)V

    .line 545
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 546
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "openCamera failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 552
    :cond_0
    throw v0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 874
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 876
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 879
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 880
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 881
    return-void

    :cond_0
    move v0, v1

    .line 874
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 865
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 866
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 867
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 868
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 869
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 352
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 353
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 356
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 357
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 358
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 359
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 360
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 367
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 369
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 374
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 376
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 377
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    move-object p0, v7

    .line 384
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 361
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 362
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 364
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 643
    const/4 v0, 0x1

    .line 649
    :goto_0
    if-eqz v0, :cond_0

    .line 650
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 652
    .end local p1
    :cond_0
    return p1

    .line 645
    .restart local p1
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 646
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 647
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static sendMagicSamsungZSLCommand()Z
    .locals 1

    .prologue
    .line 310
    sget-boolean v0, Lcom/android/camera/Util;->sSendMagicSamsungZSLCommand:Z

    return v0
.end method

.method public static setDoSoftwareHDRShot(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 290
    sput-boolean p0, Lcom/android/camera/Util;->sDoSoftwareHDRShot:Z

    .line 291
    return-void
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 940
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 943
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v8

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 946
    if-eqz p1, :cond_1

    .line 947
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 948
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 949
    cmpl-double v0, v1, v6

    if-nez v0, :cond_0

    cmpl-double v0, v3, v6

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 951
    :goto_0
    if-eqz v0, :cond_1

    .line 952
    const-string v0, "Util"

    const-string v5, "Set gps location"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 954
    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 955
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 957
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 964
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 967
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v8

    .line 968
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 974
    :cond_1
    return-void

    .line 949
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 962
    :cond_3
    invoke-virtual {p0, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 5
    .parameter "activity"
    .parameter "msgId"

    .prologue
    .line 558
    new-instance v0, Lcom/android/camera/Util$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Util$1;-><init>(Landroid/app/Activity;)V

    .line 565
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 566
    .local v1, out:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010355

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 567
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a009c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00e4

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 574
    return-void
.end method

.method private static throwIfCameraDisabled(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 531
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_GET_CAMERA_DISABLED:Z

    if-eqz v1, :cond_0

    .line 532
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 534
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    new-instance v1, Lcom/android/camera/CameraDisabledException;

    invoke-direct {v1}, Lcom/android/camera/CameraDisabledException;-><init>()V

    throw v1

    .line 538
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    return-void
.end method

.method public static useHTCCamMode()Z
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/android/camera/Util;->sHTCCamMode:Z

    return v0
.end method

.method public static useProfileVideoSize()Z
    .locals 1

    .prologue
    .line 270
    sget-boolean v0, Lcom/android/camera/Util;->sProfileVideoSize:Z

    return v0
.end method

.method public static useSamsungCamMode()Z
    .locals 1

    .prologue
    .line 266
    sget-boolean v0, Lcom/android/camera/Util;->sSamsungCamMode:Z

    return v0
.end method

.method public static useSoftwareHDR()Z
    .locals 1

    .prologue
    .line 282
    sget-boolean v0, Lcom/android/camera/Util;->sEnableSoftwareHDR:Z

    return v0
.end method
