.class public Lcom/android/camera/VideoModule;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoModule$SurfaceViewCallback;,
        Lcom/android/camera/VideoModule$VideoNamer;,
        Lcom/android/camera/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/VideoModule$ZoomChangeListener;,
        Lcom/android/camera/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/VideoModule$MainHandler;,
        Lcom/android/camera/VideoModule$CameraOpenThread;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBgLearningMessageFrame:Landroid/view/View;

.field private mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

.field private mBlocker:Landroid/view/View;

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsDisplayResult:Z

.field private mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mExposureIndicator:Landroid/widget/ImageView;

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private final mHandler:Landroid/os/Handler;

.field private mHdrIndicator:Landroid/widget/ImageView;

.field private mIsVideoCaptureIntent:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mMenu:Landroid/view/View;

.field private mOnResumeTime:J

.field private mOnScreenIndicators:Landroid/view/View;

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field private mPendingSwitchCameraId:I

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mResetEffect:Z

.field private mRestoreFlash:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewControl:Landroid/view/View;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

.field private mRootView:Landroid/view/View;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSnapshotInProgress:Z

.field private mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceViewReady:Z

.field private mSwitchingCamera:Z

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseLabel:Landroid/view/View;

.field private mVideoControl:Lcom/android/camera/VideoController;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoHeight:I

.field private mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

.field private mVideoWidth:I

.field private mZoomMax:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

.field private mZoomSetByKey:Z

.field private mZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 133
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 164
    iput v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 165
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 166
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 195
    iput v1, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 201
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 229
    new-instance v0, Lcom/android/camera/VideoModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 237
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mZoomSetByKey:Z

    .line 330
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2873
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/PreviewSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoModule;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->processZoomValueChanged(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VideoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method private addVideoToMediaStore()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1478
    const/4 v2, 0x0

    .line 1479
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_size"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v0, v4

    .line 1483
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 1484
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_0

    .line 1485
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 1487
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1492
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule$VideoNamer;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1493
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 1499
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1502
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1505
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1507
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_VIDEO"

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1520
    :goto_1
    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1521
    return v0

    .line 1489
    :cond_2
    const-string v4, "CAM_VideoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video duration <= 0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1509
    :catch_0
    move-exception v0

    .line 1512
    :try_start_1
    const-string v1, "CAM_VideoModule"

    const-string v2, "failed to add video to media store"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1517
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1518
    goto :goto_1

    .line 1517
    :catchall_0
    move-exception v0

    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 2514
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2515
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2516
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2517
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 2519
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2522
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2523
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1175
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1181
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    if-eqz v0, :cond_0

    .line 2791
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule$VideoNamer;->finish()V

    .line 2792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    .line 2794
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 974
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->closeCamera(Z)V

    .line 975
    return-void
.end method

.method private closeCamera(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 989
    const-string v0, "CAM_VideoModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 991
    const-string v0, "CAM_VideoModule"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectCamera()V

    .line 1000
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeEffects()V

    .line 1001
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1002
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1003
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1004
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1005
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1006
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeEffects()V
    .locals 2

    .prologue
    .line 960
    const-string v0, "CAM_VideoModule"

    const-string v1, "Closing effects"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 962
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_0

    .line 963
    const-string v0, "CAM_VideoModule"

    const-string v1, "Effects are already closed. Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 969
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2772
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2776
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2778
    :cond_0
    return-void

    .line 2773
    :catch_0
    move-exception v0

    .line 2774
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2763
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2764
    const-string v0, ".mp4"

    .line 2766
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2756
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2757
    const-string v0, "video/mp4"

    .line 2759
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 4
    .parameter "dateTaken"

    .prologue
    .line 346
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 347
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00e7

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1538
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1541
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1161
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1163
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1164
    const/4 v0, -0x1

    .line 1165
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1169
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1170
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1171
    return-void

    .line 1167
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 2344
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 556
    :cond_1
    return-void

    .line 551
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .parameter "screen"

    .prologue
    .line 1547
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1548
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1549
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1553
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1554
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1557
    :cond_1
    return-object p1
.end method

.method private generateVideoFilename(I)V
    .locals 9
    .parameter

    .prologue
    .line 1451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1452
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1455
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Storage;->generateDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1457
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1458
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1459
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1462
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1468
    if-eqz v0, :cond_0

    .line 1469
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1470
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoModule$VideoNamer;->prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 1473
    iput-object v6, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1474
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 795
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    if-eqz v0, :cond_7

    .line 796
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->useProfileVideoSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 798
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .line 823
    :goto_0
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return-void

    .line 800
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 801
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 802
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_4

    .line 803
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 805
    :cond_4
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 806
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 808
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 809
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 810
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_5

    .line 811
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 814
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 816
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 817
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto/16 :goto_0

    .line 820
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 821
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto/16 :goto_0
.end method

.method private static getLowVideoQuality()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 580
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x4

    .line 583
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 355
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 360
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 1892
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 1893
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2189
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    .line 2190
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f10007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    .line 2191
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$3;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2199
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    .line 2200
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    .line 2201
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f10006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mExposureIndicator:Landroid/widget/ImageView;

    .line 2202
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mHdrIndicator:Landroid/widget/ImageView;

    .line 2203
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 2208
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 2209
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 2210
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    .line 2212
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2214
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$4;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2220
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$5;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2227
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v1, Lcom/android/camera/VideoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$6;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2238
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2242
    :cond_0
    return-void
.end method

.method private initializeEffectsPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1333
    const-string v1, "CAM_VideoModule"

    const-string v2, "initializeEffectsPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 1337
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 1340
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v1, v1, v2

    .line 1342
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 1343
    new-instance v2, Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/android/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1347
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 1348
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCamera(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 1349
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v1}, Lcom/android/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 1350
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1351
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V

    .line 1352
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1353
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1360
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1361
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 1363
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1365
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1366
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1369
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1371
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1373
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 1378
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeEffectsRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1381
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1384
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1385
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1386
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1387
    if-eqz v0, :cond_0

    .line 1389
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1391
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    :cond_0
    :goto_0
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1400
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1404
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_1

    .line 1405
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 1411
    :goto_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 1412
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1419
    :goto_3
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x2faf080

    sub-long/2addr v4, v6

    .line 1420
    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 1423
    :goto_4
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 1424
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 1425
    return-void

    .line 1392
    :catch_0
    move-exception v0

    .line 1394
    const-string v4, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1407
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_2

    .line 1414
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1415
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-wide v0, v4

    goto :goto_4

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2246
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 2247
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    .line 2249
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 2250
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 2251
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2252
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 2260
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2261
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2264
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    .line 2265
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 2266
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    .line 2269
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 2271
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    .line 2272
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    .line 2273
    return-void
.end method

.method private initializeOverlay()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 388
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 390
    new-instance v0, Lcom/android/camera/VideoController;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/VideoController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoModule;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    .line 391
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    invoke-virtual {v0, p0}, Lcom/android/camera/VideoController;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 395
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 396
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_2

    .line 400
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraModule;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->clearTouchReceivers()V

    .line 404
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 407
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_3

    .line 409
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 411
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_4

    .line 412
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 414
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    .line 415
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 418
    :cond_5
    return-void
.end method

.method private initializeRecorder()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1209
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 1218
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 1219
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z

    if-eqz v0, :cond_0

    .line 1222
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1225
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mVideoWidth:I

    .line 1226
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mVideoHeight:I

    .line 1229
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1230
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 1231
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1232
    if-eqz v0, :cond_3

    .line 1234
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "rw"

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1236
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :cond_3
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1244
    :goto_2
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1246
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setupMediaRecorderPreviewDisplay()V

    .line 1248
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, v5, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1249
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v6, v6, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1250
    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v5, :cond_4

    .line 1251
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1253
    :cond_4
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v9}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1254
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1255
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v6, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1256
    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v5, :cond_5

    .line 1257
    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 1258
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v7, v5, v6}, Lcom/android/camera/VideoModule;->setCaptureRate(Landroid/media/MediaRecorder;D)V

    .line 1261
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setRecordLocation()V

    .line 1266
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_6

    .line 1267
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1274
    :goto_3
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v5

    const-wide/32 v7, 0x2faf080

    sub-long/2addr v5, v7

    .line 1275
    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    cmp-long v2, v0, v5

    if-gez v2, :cond_9

    .line 1280
    :goto_4
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1294
    :goto_5
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1295
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1296
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v9, :cond_7

    .line 1297
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1302
    :goto_6
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1305
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1312
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1313
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1237
    :catch_0
    move-exception v0

    .line 1239
    const-string v5, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1269
    :cond_6
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v5}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1270
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    .line 1299
    :cond_7
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 1306
    :catch_1
    move-exception v0

    .line 1307
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1308
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1309
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1281
    :catch_2
    move-exception v0

    goto :goto_5

    :cond_8
    move v0, v4

    goto :goto_6

    :cond_9
    move-wide v0, v5

    goto/16 :goto_4

    :cond_a
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private initializeSurfaceView()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    .line 366
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/android/camera/VideoModule$SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$SurfaceViewCallback;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 371
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 384
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_3

    .line 374
    new-instance v0, Lcom/android/camera/VideoModule$SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$SurfaceViewCallback;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    .line 375
    new-instance v0, Lcom/android/camera/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$1;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method private initializeVideoControl()V
    .locals 4

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->loadCameraPreferences()V

    .line 560
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 561
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_video_quality_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/camera/VideoModule;->getLowVideoQuality()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoController;->overrideSettings([Ljava/lang/String;)V

    .line 566
    :cond_0
    return-void
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 2595
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2597
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2600
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2605
    :cond_0
    :goto_0
    return-void

    .line 2603
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2591
    :goto_0
    return-void

    .line 2583
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mZoomMax:I

    .line 2584
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    .line 2587
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 2588
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 2589
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 2590
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/VideoModule$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$ZoomChangeListener;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
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

    .line 1946
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

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1157
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1841
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1842
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1834
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1835
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1836
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1837
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 5

    .prologue
    .line 524
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 527
    .local v0, settings:Lcom/android/camera/CameraSettings;
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 529
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 1845
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 1846
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 1847
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 1848
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 1849
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 1851
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1854
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 1855
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 1856
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1858
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1860
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1864
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 1865
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1867
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1868
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1871
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 1872
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1874
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1877
    if-eqz p2, :cond_5

    .line 1878
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1879
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 1880
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 1881
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1883
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1886
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onStopVideoRecording()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 673
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 674
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    .line 675
    .local v0, recordFail:Z
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_3

    .line 676
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v2, :cond_2

    .line 678
    if-nez v0, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 694
    :cond_0
    :goto_1
    return-void

    .line 678
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 679
    :cond_2
    if-nez v0, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showAlert()V

    goto :goto_1

    .line 683
    :cond_3
    if-nez v0, :cond_0

    .line 685
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    iget v2, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_1
.end method

.method private openCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 254
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    goto :goto_0

    .line 257
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 258
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1592
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1593
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1595
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1596
    return-void
.end method

.method private processZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 2543
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/VideoModule;->mZoomMax:I

    if-gt p1, v0, :cond_0

    .line 2544
    invoke-direct {p0, p1, v1}, Lcom/android/camera/VideoModule;->processZoomValueChanged(IZ)V

    .line 2545
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mZoomSetByKey:Z

    .line 2547
    :cond_0
    return-void
.end method

.method private processZoomValueChanged(IZ)V
    .locals 4
    .parameter "index"
    .parameter "fromKey"

    .prologue
    .line 2551
    if-nez p2, :cond_0

    if-nez p2, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mZoomSetByKey:Z

    if-nez v1, :cond_3

    .line 2553
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_2

    .line 2565
    :cond_1
    :goto_0
    return-void

    .line 2554
    :cond_2
    iput p1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 2556
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2557
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 2558
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_1

    .line 2559
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2560
    .local v0, p:Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    goto :goto_0

    .line 2563
    .end local v0           #p:Landroid/hardware/Camera$Parameters;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mZoomSetByKey:Z

    goto :goto_0
.end method

.method private readVideoPreferences()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 730
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00b3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_video_quality_key"

    invoke-virtual {v9, v10, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 735
    .local v7, videoQuality:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 738
    .local v5, quality:I
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 739
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 740
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 742
    .local v1, extraVideoQuality:I
    if-lez v1, :cond_5

    .line 743
    const/4 v5, 0x1

    .line 751
    .end local v1           #extraVideoQuality:I
    :cond_0
    :goto_0
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 752
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 754
    .local v6, seconds:I
    mul-int/lit16 v9, v6, 0x3e8

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 760
    .end local v6           #seconds:I
    :goto_1
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 761
    iget v9, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-eqz v9, :cond_7

    .line 762
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 764
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v9, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 765
    .local v4, profile:Landroid/media/CamcorderProfile;
    iget v9, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v10, 0x1e0

    if-le v9, v10, :cond_1

    .line 766
    invoke-static {}, Lcom/android/camera/VideoModule;->getLowVideoQuality()I

    move-result v5

    .line 772
    .end local v4           #profile:Landroid/media/CamcorderProfile;
    :cond_1
    :goto_2
    sget-boolean v9, Lcom/android/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    if-eqz v9, :cond_3

    .line 773
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_video_time_lapse_frame_interval_key"

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0a00ba

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, frameIntervalStr:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 777
    iget v9, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :cond_2
    iput-boolean v8, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 780
    .end local v2           #frameIntervalStr:Ljava/lang/String;
    :cond_3
    iget-boolean v8, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_4

    add-int/lit16 v5, v5, 0x3e8

    .line 781
    :cond_4
    iget v8, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v8, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 782
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getDesiredPreviewSize()V

    .line 783
    return-void

    .line 745
    .restart local v1       #extraVideoQuality:I
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 756
    .end local v1           #extraVideoQuality:I
    :cond_6
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getMaxVideoDuration(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 769
    :cond_7
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    goto :goto_2
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1440
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1442
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1443
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1444
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1446
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 1447
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1448
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1429
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1431
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1432
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1433
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1434
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1436
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1437
    return-void
.end method

.method private releasePreviewResources()V
    .locals 3

    .prologue
    .line 1010
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_1

    .line 1011
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v1, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1012
    .local v0, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1013
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1015
    :cond_0
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v1, :cond_1

    .line 1016
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1017
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 1020
    .end local v0           #screenNail:Lcom/android/camera/CameraScreenNail;
    :cond_1
    return-void
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2743
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 2744
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_video_effect_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2746
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2747
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 2752
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 2751
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    .line 2752
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 569
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 573
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 574
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 576
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1830
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1831
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 830
    return-void
.end method

.method private setCameraParameters()V
    .locals 5

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1952
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1955
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setVideoMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 1958
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setEarlyVideoSize(Landroid/hardware/Camera$Parameters;Landroid/media/CamcorderProfile;)V

    .line 1962
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_8

    .line 1963
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1969
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1970
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1971
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1981
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00d1

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1984
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1986
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1995
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1996
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2000
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 2001
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2002
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2005
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "recording-hint"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2010
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2011
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 2019
    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2021
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2022
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2023
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2025
    :cond_5
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video snapshot size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_jpeg_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2032
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2035
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_coloreffect_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2038
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2039
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2043
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    .line 2044
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 2045
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 2046
    if-lt v0, v2, :cond_b

    if-gt v0, v1, :cond_b

    .line 2047
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2053
    :goto_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2054
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_hdr_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a0088

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2057
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a009b

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->dumpParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2062
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2064
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2066
    iget v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->updateCameraScreenNailSize(II)V

    .line 2067
    return-void

    .line 1967
    :cond_8
    const-string v0, "off"

    goto/16 :goto_0

    .line 1973
    :cond_9
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1974
    if-nez v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 1988
    :cond_a
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1989
    if-nez v0, :cond_1

    .line 1990
    const-string v0, "auto"

    goto/16 :goto_2

    .line 2049
    :cond_b
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid exposure range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 0
    .parameter "recorder"
    .parameter "fps"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1318
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1319
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    .line 899
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 901
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    .line 907
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 908
    return-void

    .line 904
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    goto :goto_0
.end method

.method private setOrientationIndicator(IZ)V
    .locals 9
    .parameter "orientation"
    .parameter "animation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 616
    const/4 v5, 0x3

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageRotater:Lcom/android/camera/ui/RotateLayout;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v5, v3, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    .line 619
    .local v3, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 620
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 619
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v5, :cond_2

    .line 623
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v5, p1}, Lcom/android/camera/PreviewGestures;->setOrientation(I)V

    .line 630
    :cond_2
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v5, :cond_3

    .line 631
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 636
    :cond_3
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_4

    .line 637
    div-int/lit8 v5, p1, 0x5a

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_5

    .line 638
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 643
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v7, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 644
    return-void

    .line 640
    :cond_5
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method private setRecordLocation()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1323
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1325
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1326
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1330
    .end local v0           #loc:Landroid/location/Location;
    :cond_0
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2676
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2677
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2679
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2680
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2682
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2677
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2680
    goto :goto_1
.end method

.method private setupMediaRecorderPreviewDisplay()V
    .locals 3

    .prologue
    .line 1185
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1190
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1191
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 1199
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1201
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1203
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private showAlert()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1700
    const/4 v0, 0x0

    .line 1701
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_2

    .line 1702
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1708
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1711
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1712
    .local v1, info:[Landroid/hardware/Camera$CameraInfo;
    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v3, v1, v3

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_3

    .line 1713
    .local v2, mirror:Z
    :goto_1
    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1714
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1715
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1718
    .end local v1           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1720
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1721
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mReviewPlayButton:Lcom/android/camera/ui/RotateImageView;

    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1722
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1723
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1724
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 1726
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 1727
    return-void

    .line 1704
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1705
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local v1       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v2, v4

    .line 1712
    goto :goto_1
.end method

.method private showRecordingUI(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1670
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1672
    if-eqz p1, :cond_4

    .line 1673
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f020028

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1674
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1675
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1676
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1677
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1683
    :cond_0
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1697
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 1670
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1671
    goto :goto_1

    .line 1688
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f020018

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1689
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1690
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1691
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1692
    :cond_5
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2
.end method

.method private showTapToSnapshotToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2781
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0100

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2784
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2785
    const-string v1, "pref_video_first_use_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2786
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2787
    return-void
.end method

.method private showTimeLapseUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2527
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2529
    :cond_0
    return-void

    .line 2527
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 647
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 911
    const-string v0, "CAM_VideoModule"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 914
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v0, v3, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 916
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 918
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 922
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 923
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 924
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    .line 927
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 928
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 931
    sget-boolean v0, Lcom/android/camera/Util;->mSwitchCamera:Z

    if-eqz v0, :cond_1

    .line 932
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->newSurfaceLayer(ILandroid/hardware/Camera$Parameters;Lcom/android/camera/CameraActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 936
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 940
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_2
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 951
    return-void

    .line 934
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 945
    :catch_0
    move-exception v0

    .line 946
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 947
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 942
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeEffectsPreview()V

    .line 943
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private startVideoRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1604
    const-string v0, "CAM_VideoModule"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1607
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1608
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1609
    const-string v0, "CAM_VideoModule"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :goto_0
    return-void

    .line 1613
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1614
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1615
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeEffectsRecording()V

    .line 1616
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_2

    .line 1617
    const-string v0, "CAM_VideoModule"

    const-string v1, "Fail to initialize effect recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1621
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeRecorder()V

    .line 1622
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_2

    .line 1623
    const-string v0, "CAM_VideoModule"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1628
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->pauseAudioPlayback()V

    .line 1630
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1632
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    :goto_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-eqz v0, :cond_3

    .line 1655
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1658
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 1660
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 1661
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 1662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 1663
    invoke-direct {p0, v5}, Lcom/android/camera/VideoModule;->showRecordingUI(Z)V

    .line 1665
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 1666
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOn()V

    goto :goto_0

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1635
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseEffectsRecorder()V

    goto :goto_0

    .line 1640
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1641
    :catch_1
    move-exception v0

    .line 1642
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1643
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1645
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto/16 :goto_0
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 956
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1747
    const-string v0, "CAM_VideoModule"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1749
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1752
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_8

    .line 1756
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1761
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1768
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1769
    const-string v1, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 1776
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 1777
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1788
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 1791
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v3

    .line 1792
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->closeCamera(Z)V

    .line 1795
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showRecordingUI(Z)V

    .line 1796
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_1

    .line 1797
    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->enableCameraControls(Z)V

    .line 1801
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 1802
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1803
    if-eqz v0, :cond_2

    .line 1804
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->addVideoToMediaStore()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    .line 1808
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1809
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1810
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_3

    .line 1811
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 1812
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_3

    .line 1814
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1816
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraScreenNail;->setOneTimeOnFrameDrawnListener(Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;)V

    .line 1818
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 1824
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1825
    :cond_4
    return v1

    .line 1763
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1764
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1765
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    .line 1766
    goto/16 :goto_0

    .line 1771
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 1772
    :goto_4
    const-string v4, "CAM_VideoModule"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1773
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    :cond_6
    move v1, v3

    .line 1774
    goto/16 :goto_1

    :cond_7
    move v4, v2

    .line 1791
    goto/16 :goto_2

    .line 1771
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 12
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 2731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2732
    .local v3, dateTaken:J
    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 2733
    .local v2, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v6

    .line 2734
    .local v6, orientation:I
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 2735
    .local v10, s:Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget v8, v10, Landroid/hardware/Camera$Size;->width:I

    iget v9, v10, Landroid/hardware/Camera$Size;->height:I

    move-object v5, p2

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v11

    .line 2737
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_0

    .line 2738
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v11}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2740
    :cond_0
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2429
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2458
    :goto_0
    return-void

    .line 2431
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 2433
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2434
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoController;->setCameraId(I)V

    .line 2436
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2439
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2440
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2441
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 2442
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2443
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2444
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 2445
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2446
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 2449
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 2450
    invoke-direct {p0, v3, v3}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 2452
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    .line 2455
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2457
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2070
    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v4, :cond_1

    .line 2091
    :cond_0
    :goto_0
    return-void

    .line 2072
    :cond_1
    iget v4, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_2

    .line 2073
    move v3, p1

    .line 2074
    .local v3, tmp:I
    move p1, p2

    .line 2075
    move p2, v3

    .line 2078
    .end local v3           #tmp:I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v4, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    .line 2079
    .local v2, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 2080
    .local v1, oldWidth:I
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    .line 2082
    .local v0, oldHeight:I
    if-ne v1, p1, :cond_3

    if-eq v0, p2, :cond_4

    .line 2083
    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2084
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 2085
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 2088
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2089
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    goto :goto_0
.end method

.method private updateEffectSelection()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2472
    iget v2, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 2473
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 2474
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 2475
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 2477
    iget v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-ne v4, v2, :cond_2

    .line 2478
    iget v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-nez v4, :cond_1

    .line 2508
    :cond_0
    :goto_0
    return v0

    .line 2479
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2481
    :cond_2
    const-string v3, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New effect selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_video_effect_key"

    const-string v7, "none"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    iget v3, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-nez v3, :cond_3

    .line 2486
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->stopPreview()V

    .line 2487
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    move v0, v1

    .line 2488
    goto :goto_0

    .line 2490
    :cond_3
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2493
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2494
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2496
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2497
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 2498
    goto :goto_0

    .line 2500
    :cond_4
    if-nez v2, :cond_5

    .line 2502
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2503
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkQualityAndStartPreview()V

    :goto_1
    move v0, v1

    .line 2508
    goto :goto_0

    .line 2506
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateExposureOnScreenIndicator(I)V
    .locals 3
    .parameter

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2307
    :goto_0
    return-void

    .line 2279
    :cond_0
    const/4 v0, 0x0

    .line 2280
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    .line 2281
    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2282
    packed-switch v1, :pswitch_data_0

    .line 2305
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mExposureIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2284
    :pswitch_0
    const v0, 0x7f020092

    .line 2285
    goto :goto_1

    .line 2287
    :pswitch_1
    const v0, 0x7f020091

    .line 2288
    goto :goto_1

    .line 2290
    :pswitch_2
    const v0, 0x7f020090

    .line 2291
    goto :goto_1

    .line 2293
    :pswitch_3
    const v0, 0x7f02008f

    .line 2294
    goto :goto_1

    .line 2296
    :pswitch_4
    const v0, 0x7f020093

    .line 2297
    goto :goto_1

    .line 2299
    :pswitch_5
    const v0, 0x7f020094

    .line 2300
    goto :goto_1

    .line 2302
    :pswitch_6
    const v0, 0x7f020095

    goto :goto_1

    .line 2282
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateFlashOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f020097

    .line 2399
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2414
    :goto_0
    return-void

    .line 2402
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2403
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2405
    :cond_2
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2406
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2407
    :cond_3
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2409
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2411
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateHdrOnScreenIndicator()V
    .locals 3

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHdrIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2426
    :goto_0
    return-void

    .line 2420
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2421
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2422
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHdrIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2424
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHdrIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateOnScreenIndicators()V
    .locals 1

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 2394
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->updateExposureOnScreenIndicator(I)V

    .line 2395
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateHdrOnScreenIndicator()V

    .line 2396
    return-void
.end method

.method private updateRecordingTime()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1897
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 1943
    :goto_0
    return-void

    .line 1900
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1901
    iget-wide v2, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long v2, v0, v2

    .line 1905
    iget v0, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    move v5, v4

    .line 1909
    :goto_1
    if-eqz v5, :cond_5

    .line 1910
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x3e7

    add-long/2addr v0, v7

    .line 1915
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v7, :cond_3

    .line 1916
    invoke-static {v0, v1, v6}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 1917
    const-wide/16 v0, 0x3e8

    .line 1926
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1928
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v4, v5, :cond_1

    .line 1931
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 1933
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_4

    const v4, 0x7f0b0001

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1937
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1940
    :cond_1
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 1941
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 1905
    goto :goto_1

    .line 1922
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 1923
    iget v0, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    .line 1933
    :cond_4
    const/high16 v4, 0x7f0b

    goto :goto_4

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 4

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 787
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00f3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 789
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 790
    return-void
.end method


# virtual methods
.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 535
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 536
    const/4 v0, 0x1

    .line 538
    :cond_0
    return v0
.end method

.method public dismissPopup(Z)V
    .locals 1
    .parameter "topLevelOnly"

    .prologue
    .line 2958
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/VideoModule;->dismissPopup(ZZ)V

    .line 2959
    return-void
.end method

.method public dismissPopup(ZZ)V
    .locals 2
    .parameter "topLevelPopupOnly"
    .parameter "fullScreen"

    .prologue
    .line 2962
    if-eqz p2, :cond_0

    .line 2963
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 2964
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2966
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 2967
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 2968
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2969
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 2971
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoControl:Lcom/android/camera/VideoController;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoController;->popupDismissed(Z)V

    .line 2972
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 2533
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2539
    :goto_0
    return v0

    .line 2534
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_1

    .line 2535
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2536
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_2

    .line 2537
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2539
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 7
    .parameter "activity"
    .parameter "root"
    .parameter "reuseScreenNail"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 422
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 423
    iput-object p2, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    .line 424
    new-instance v2, Lcom/android/camera/ComboPreferences;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v5}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 425
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 426
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 428
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v6, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 429
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 431
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->setStoragePath(Landroid/content/SharedPreferences;)Z

    .line 433
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v5

    iput v5, v2, Lcom/android/camera/CameraActivity;->mNumberOfCameras:I

    .line 434
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0a00f3

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 435
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetEffect()Z

    .line 438
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    .line 441
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetExposureCompensation()V

    .line 447
    new-instance v0, Lcom/android/camera/VideoModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$CameraOpenThread;-><init>(Lcom/android/camera/VideoModule;)V

    .line 448
    .local v0, cameraOpenThread:Lcom/android/camera/VideoModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->start()V

    .line 450
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 452
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040047

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 456
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    .line 457
    if-eqz p3, :cond_1

    .line 458
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 462
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 466
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->join()V

    .line 467
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-eqz v2, :cond_3

    .line 468
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a009d

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 458
    goto :goto_0

    .line 460
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v5, :cond_2

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_3

    .line 470
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v2, :cond_4

    .line 471
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a009e

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 474
    :catch_0
    move-exception v2

    .line 478
    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/VideoModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoModule$2;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 485
    .local v1, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 487
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeControlByIntent()V

    .line 488
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeOverlay()V

    .line 489
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeMiscControls()V

    .line 491
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    .line 492
    new-instance v2, Lcom/android/camera/LocationManager;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 494
    invoke-direct {p0, v4, v4}, Lcom/android/camera/VideoModule;->setOrientationIndicator(IZ)V

    .line 495
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 499
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 500
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-eqz v2, :cond_6

    .line 501
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a009d

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 507
    :catch_1
    move-exception v2

    .line 511
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 512
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 513
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 515
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 516
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 517
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    goto :goto_2

    .line 503
    :cond_6
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v2, :cond_5

    .line 504
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a009e

    invoke-static {v2, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method public installIntentFilter()V
    .locals 3

    .prologue
    .line 835
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 837
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 838
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 839
    new-instance v1, Lcom/android/camera/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 840
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 841
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1600
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 2931
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2095
    packed-switch p1, :pswitch_data_0

    .line 2110
    :goto_0
    return-void

    .line 2097
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2100
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2101
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2104
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2105
    const-string v0, "CAM_VideoModule"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2095
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1083
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1091
    :goto_0
    return v0

    .line 1084
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 1085
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1087
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1088
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->hide()V

    goto :goto_0

    .line 1091
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 2
    .parameter

    .prologue
    .line 2914
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2927
    :cond_0
    :goto_0
    return-void

    .line 2916
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2917
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 2918
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    goto :goto_0

    .line 2925
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2164
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 2166
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged()V

    .line 2167
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 2469
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 2311
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 2314
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2315
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2316
    const v2, 0x7f040047

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2319
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeControlByIntent()V

    .line 2320
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeOverlay()V

    .line 2321
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 2322
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeMiscControls()V

    .line 2323
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2324
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 2325
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2328
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2329
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 2330
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->onFullScreenChanged(Z)V

    .line 2331
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    .line 2332
    return-void
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2173
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2174
    invoke-direct {p0, p2}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2177
    :cond_0
    :try_start_1
    const-string v0, "android.filterpacks.videosink.MediaRecorderStopException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2179
    const-string v0, "CAM_VideoModule"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2180
    monitor-exit p0

    return-void

    .line 2182
    :catch_0
    move-exception v0

    .line 2183
    :try_start_2
    const-string v1, "CAM_VideoModule"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2185
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during recording!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2114
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate. Effect Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 2118
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2119
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkQualityAndStartPreview()V

    .line 2154
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2155
    const-string v0, "CAM_VideoModule"

    const-string v1, "OnEffectsUpdate: closing effects if activity paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeEffects()V

    .line 2158
    :cond_1
    return-void

    .line 2120
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 2122
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->addVideoToMediaStore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2123
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 2124
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v0, :cond_4

    .line 2125
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 2131
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 2134
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2135
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 2136
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->clearVideoNamer()V

    goto :goto_0

    .line 2127
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showAlert()V

    goto :goto_1

    .line 2138
    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    .line 2140
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 2141
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2142
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2144
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2148
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1563
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1566
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 1567
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1569
    :cond_0
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 4
    .parameter "full"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2686
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 2689
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 2690
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/VideoModule;->dismissPopup(ZZ)V

    .line 2692
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 2694
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 2696
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 2697
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2699
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2701
    :cond_3
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_7

    .line 2702
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_4

    .line 2703
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 2712
    :cond_4
    :goto_2
    return-void

    :cond_5
    move v0, v2

    .line 2694
    goto :goto_0

    :cond_6
    move v1, v2

    .line 2699
    goto :goto_1

    .line 2707
    :cond_7
    if-eqz p1, :cond_8

    .line 2708
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->expand()V

    goto :goto_2

    .line 2710
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->shrink()V

    goto :goto_2
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1574
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1575
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1577
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1580
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a00e9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1098
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return v1

    .line 1102
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1131
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1104
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1105
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1110
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1111
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2}, Lcom/android/camera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1116
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1119
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v2, :cond_0

    .line 1120
    iget v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    add-int/lit8 v0, v2, 0x1

    .line 1121
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->processZoomValueChanged(I)V

    goto :goto_0

    .line 1125
    .end local v0           #index:I
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v2, :cond_0

    .line 1126
    iget v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    add-int/lit8 v0, v2, -0x1

    .line 1127
    .restart local v0       #index:I
    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->processZoomValueChanged(I)V

    goto :goto_0

    .line 1102
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1136
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 1152
    :cond_1
    :goto_0
    return v0

    .line 1138
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 1141
    :pswitch_1
    sget-boolean v1, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    if-eqz v1, :cond_1

    .line 1142
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1147
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x7

    .line 593
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    .line 596
    .local v0, newOrientation:I
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    if-eq v1, v0, :cond_2

    .line 597
    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 603
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 604
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 609
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 611
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 0

    .prologue
    .line 1072
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1024
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1026
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 1028
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1033
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1038
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectDisplay()V

    .line 1051
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releasePreviewResources()V

    .line 1053
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1057
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetScreenOn()V

    .line 1059
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1061
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1062
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1064
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 1065
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 1068
    return-void

    .line 1030
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1031
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 1047
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1048
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->clearVideoNamer()V

    goto :goto_1
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2943
    return-void
.end method

.method public onPieOpened(II)V
    .locals 2
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->cancelActivityTouchHandling()V

    .line 2937
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2938
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2465
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 698
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 850
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iput v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 855
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 858
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v1, :cond_5

    .line 859
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetEffect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 860
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mBgLearningMessageFrame:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 862
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetExposureCompensation()V

    .line 863
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 864
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mOpenCameraFail:Z

    if-eqz v1, :cond_3

    .line 865
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a009d

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 868
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mCameraDisabled:Z

    if-eqz v1, :cond_4

    .line 869
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a009e

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 872
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 873
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 874
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 878
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeZoom()V

    .line 880
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 883
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 885
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 887
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_6

    .line 888
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    .line 889
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 892
    :cond_6
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 894
    new-instance v1, Lcom/android/camera/VideoModule$VideoNamer;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$VideoNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoNamer:Lcom/android/camera/VideoModule$VideoNamer;

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 846
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 670
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 663
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 664
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPlayVideoActivity()V

    .line 659
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2350
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2390
    :goto_0
    return-void

    .line 2351
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v3

    .line 2354
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2389
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2356
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2358
    .local v0, recordLocation:Z
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2361
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateEffectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2363
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraActivity;->setStoragePath(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2364
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 2365
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 2368
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2369
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->showTimeLapseUI(Z)V

    .line 2371
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2372
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_4

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mVideoWidth:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mVideoHeight:I

    if-eq v2, v4, :cond_7

    .line 2376
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2377
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2382
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2383
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2387
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOnScreenIndicators()V

    .line 2388
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    .line 2389
    monitor-exit v3

    goto/16 :goto_0

    .line 2365
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 2379
    .restart local v1       #size:Landroid/hardware/Camera$Size;
    :cond_6
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 2380
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_2

    .line 2385
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2977
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 2979
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 706
    .local v0, stop:Z
    if-eqz v0, :cond_3

    .line 707
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 711
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 716
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 717
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 709
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 725
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2621
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2622
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0101

    iget v3, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2652
    :cond_0
    :goto_0
    return-void

    .line 2627
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2632
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    .line 2634
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 2635
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    goto :goto_0

    .line 2641
    :cond_2
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 2642
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2643
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2644
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2645
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->dumpParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2646
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2648
    const-string v1, "CAM_VideoModule"

    const-string v2, "Video snapshot start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/VideoModule$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2650
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2651
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1079
    :cond_0
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 542
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->dismissPopup(Z)V

    .line 546
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 5
    .parameter "popup"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 2946
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 2947
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mBlocker:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2948
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->setShowMenu(Z)V

    .line 2949
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 2950
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 2951
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2953
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2954
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2955
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2609
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2610
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 2614
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 2616
    :cond_0
    return-void

    .line 2612
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewFrameLayout;->showBorder(Z)V

    goto :goto_0

    .line 2614
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateCameraAppView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2656
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2673
    :cond_0
    :goto_0
    return-void

    .line 2659
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    .line 2662
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-nez v0, :cond_3

    .line 2663
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2664
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    goto :goto_0

    .line 2667
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    .line 2668
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0

    .line 2669
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    if-eqz v0, :cond_0

    .line 2670
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    .line 2671
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 2908
    const/4 v0, 0x1

    return v0
.end method
