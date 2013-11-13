.class public Lcom/android/camera/PhotoModule;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$ImageNamer;,
        Lcom/android/camera/PhotoModule$ImageSaver;,
        Lcom/android/camera/PhotoModule$SaveRequest;,
        Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PhotoModule$AutoFocusCallback;,
        Lcom/android/camera/PhotoModule$JpegPictureCallback;,
        Lcom/android/camera/PhotoModule$RawPictureCallback;,
        Lcom/android/camera/PhotoModule$PostViewPictureCallback;,
        Lcom/android/camera/PhotoModule$ShutterCallback;,
        Lcom/android/camera/PhotoModule$ZoomChangeListener;,
        Lcom/android/camera/PhotoModule$MainHandler;,
        Lcom/android/camera/PhotoModule$CameraStartUpThread;
    }
.end annotation


# static fields
.field private static sHDRShotsPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAspectRatioChanged:Z

.field private final mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBlocker:Landroid/view/View;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mBurstShotInProgress:Z

.field private mBurstShotsDone:I

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

.field private mCameraState:I

.field private volatile mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mCaptureMode:I

.field public mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mExposureIndicator:Landroid/widget/ImageView;

.field private mFaceDetectionStarted:Z

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFirstTimeInitialized:Z

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusStartTime:J

.field private final mFormatter:Ljava/util/Formatter;

.field private final mFormatterArgs:[Ljava/lang/Object;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mGpsIndicator:Landroid/widget/ImageView;

.field private mHDRExposureSet:Z

.field private mHDRRendering:Z

.field private mHDRShotInProgress:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHdrIndicator:Landroid/widget/ImageView;

.field private mHdrProgressDialog:Landroid/app/ProgressDialog;

.field private mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

.field private mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMenu:Landroid/view/View;

.field private mMeteringAreaSupported:Z

.field private mNoHandsIndicator:Landroid/widget/ImageView;

.field private mOnResumeTime:J

.field private mOnScreenIndicators:Landroid/view/View;

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field private mPhotoControl:Lcom/android/camera/PhotoController;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private final mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mResetExposure:I

.field private mRestartPreview:Z

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneIndicator:Landroid/widget/ImageView;

.field private mSceneMode:Ljava/lang/String;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private final mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mTimerCountdown:Landroid/widget/TextView;

.field private mTimerMode:Z

.field private mUpdateSet:I

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PhotoModule;->sHDRShotsPaths:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mAspectRatioChanged:Z

    .line 148
    iput v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 161
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mZoomSetByKey:Z

    .line 171
    iput v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 178
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 220
    new-instance v0, Lcom/android/camera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$1;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    .line 228
    new-instance v0, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFormatter:Ljava/util/Formatter;

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFormatterArgs:[Ljava/lang/Object;

    .line 259
    iput v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 260
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 266
    new-instance v0, Lcom/android/camera/PhotoModule$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

    .line 267
    new-instance v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 269
    new-instance v0, Lcom/android/camera/PhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    .line 271
    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    .line 273
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 278
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 307
    new-instance v0, Lcom/android/camera/PhotoModule$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 311
    iput v3, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    .line 312
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mBurstShotInProgress:Z

    .line 315
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    .line 316
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    .line 317
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mHDRRendering:Z

    .line 318
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mHdrProgressDialog:Landroid/app/ProgressDialog;

    .line 323
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mTimerMode:Z

    .line 329
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 1310
    return-void

    :cond_0
    move-object v0, v1

    .line 273
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/PhotoModule;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->locationFirstRun()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->updateTimer(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/PhotoModule;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/PhotoModule;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PhotoModule;->processZoomValueChanged(IZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4000(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4302(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mBurstShotInProgress:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doAttach()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/android/camera/PhotoModule;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/PhotoModule;->mResetExposure:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/PhotoModule;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$6400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/camera/PhotoModule;->sHDRShotsPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/camera/PhotoModule;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mHDRRendering:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 686
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 687
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/PhotoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$5;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 694
    return-void
.end method

.method private animateFlash()V
    .locals 2

    .prologue
    .line 1426
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateFlash(I)V

    .line 1431
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 2268
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2409
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 2410
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2411
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 2412
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2414
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2415
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 2416
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2417
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2418
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2419
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 2420
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->hideGpsOnScreenIndicator()V

    .line 2422
    :cond_1
    return-void
.end method

.method private dismissPopup(ZZ)V
    .locals 2
    .parameter "topOnly"
    .parameter "fullScreen"

    .prologue
    .line 3052
    if-eqz p2, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 3054
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3056
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 3057
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 3058
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3059
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 3061
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoController;->popupDismissed(Z)V

    .line 3062
    return-void
.end method

.method private doAttach()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 1672
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1748
    :goto_0
    return-void

    .line 1676
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1678
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1683
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 1686
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1687
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1688
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1690
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1691
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1695
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1692
    :catch_0
    move-exception v1

    .line 1695
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1698
    :cond_1
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v0

    .line 1699
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1700
    invoke-static {v1, v0}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1701
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "inline-data"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1703
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 1710
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "crop-temp"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1711
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1712
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "crop-temp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 1713
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1714
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1715
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 1725
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1728
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1729
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1730
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 1733
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1737
    :goto_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1738
    const-string v2, "showWhenLocked"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1741
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1744
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1746
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1716
    :catch_1
    move-exception v1

    .line 1717
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1718
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1725
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1720
    :catch_2
    move-exception v1

    .line 1721
    :try_start_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1722
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1725
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1735
    :cond_5
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1725
    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 1695
    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_1
.end method

.method private doCancel()V
    .locals 3

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1752
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1753
    return-void
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 1491
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1492
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1497
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private hidePostCaptureAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2836
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2837
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2838
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2839
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2840
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 2841
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2843
    :cond_0
    return-void
.end method

.method private initOnScreenIndicator()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    .line 835
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f10006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mExposureIndicator:Landroid/widget/ImageView;

    .line 836
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f100069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    .line 837
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f10006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    .line 838
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    .line 839
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mNoHandsIndicator:Landroid/widget/ImageView;

    .line 840
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mGpsIndicator:Landroid/widget/ImageView;

    .line 841
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mTimerCountdown:Landroid/widget/TextView;

    .line 842
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 4

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 591
    new-instance v0, Lcom/android/camera/PhotoController;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/PhotoController;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoModule;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    .line 592
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v0, p0}, Lcom/android/camera/PhotoController;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 593
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 596
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_2

    .line 600
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraModule;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 602
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeRenderOverlay()V

    .line 603
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializePhotoControl()V

    .line 606
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    .line 607
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 609
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 611
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v0}, Lcom/android/camera/PhotoController;->restoreNoHandsShutter()V

    .line 613
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 614
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 615
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 616
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onFullScreenChanged(Z)V

    .line 617
    return-void
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3010
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    .line 3011
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    .line 3012
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    .line 3013
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    .line 3014
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    .line 3016
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2105
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    .line 2106
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f10007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    .line 2107
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$10;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2115
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 2117
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 2121
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 2122
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 2123
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    .line 2124
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2126
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$11;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$11;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2132
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$12;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$12;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2139
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoModule$13;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$13;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2149
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 2153
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupCaptureParams()V

    .line 2155
    :cond_1
    return-void
.end method

.method private initializeFirstTime()V
    .locals 3

    .prologue
    .line 652
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 674
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 657
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 659
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 662
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 663
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 664
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 665
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 667
    new-instance v1, Lcom/android/camera/PhotoModule$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$ImageSaver;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    .line 668
    new-instance v1, Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 670
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    .line 671
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addIdleHandler()V

    .line 673
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 2163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 2166
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2177
    :goto_0
    return-void

    .line 2169
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 2170
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v5, :cond_1

    .line 2171
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2173
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    goto :goto_0

    .line 2170
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 2183
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2185
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 2186
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 2187
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 2188
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    .line 2191
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 2192
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2194
    :cond_0
    return-void
.end method

.method private initializePhotoControl()V
    .locals 2

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 621
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoController;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSceneModeUI()V

    .line 625
    return-void
.end method

.method private initializeRenderOverlay()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFocusRenderer(Lcom/android/camera/ui/PieRenderer;)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/camera/PreviewGestures;->clearTouchReceivers()V

    .line 572
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 573
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 574
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 576
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_2

    .line 578
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_3

    .line 581
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->requestLayout()V

    .line 586
    return-void
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 701
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 703
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 705
    new-instance v1, Lcom/android/camera/PhotoModule$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$ImageSaver;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    .line 706
    new-instance v1, Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 707
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 708
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 709
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->hidePostCaptureAlert()V

    .line 711
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v1}, Lcom/android/camera/PhotoController;->reloadPreferences()V

    .line 714
    :cond_0
    return-void
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mZoomMax:I

    .line 767
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    .line 770
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 772
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 773
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 774
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/PhotoModule$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PhotoModule$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2806
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2813
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 646
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 2970
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2971
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2972
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2973
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 5

    .prologue
    .line 1598
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1600
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 1601
    return-void
.end method

.method private locationFirstRun()V
    .locals 4

    .prologue
    .line 518
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/RecordLocationPreference;->isSet(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 524
    .local v0, backCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 529
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0148

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0149

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a014b

    new-instance v3, Lcom/android/camera/PhotoModule$4;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$4;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a014a

    new-instance v3, Lcom/android/camera/PhotoModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$3;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/PhotoModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$2;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoController;->overrideSettings([Ljava/lang/String;)V

    .line 1595
    :cond_0
    return-void
.end method

.method private processZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 717
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mZoomMax:I

    if-gt p1, v0, :cond_0

    .line 718
    invoke-direct {p0, p1, v1}, Lcom/android/camera/PhotoModule;->processZoomValueChanged(IZ)V

    .line 719
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mZoomSetByKey:Z

    .line 721
    :cond_0
    return-void
.end method

.method private processZoomValueChanged(IZ)V
    .locals 4
    .parameter "index"
    .parameter "fromKey"

    .prologue
    .line 725
    if-nez p2, :cond_0

    if-nez p2, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mZoomSetByKey:Z

    if-nez v1, :cond_3

    .line 727
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_2

    .line 740
    :cond_1
    :goto_0
    return-void

    .line 728
    :cond_2
    iput p1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 729
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    .line 731
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 732
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 733
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 735
    .local v0, p:Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    goto :goto_0

    .line 738
    .end local v0           #p:Landroid/hardware/Camera$Parameters;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mZoomSetByKey:Z

    goto :goto_0
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 629
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 632
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 633
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 634
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 636
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2966
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2967
    return-void
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2535
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 2536
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2538
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2542
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 2543
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2545
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 2754
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2755
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersInitialize()V

    .line 2758
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setVideoMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 2761
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2762
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 2765
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2766
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V

    .line 2769
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->dumpParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2770
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2771
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2776
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 2777
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 2780
    iput v3, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 2803
    :cond_0
    :goto_0
    return-void

    .line 2782
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2783
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    if-eqz v0, :cond_2

    .line 2784
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Restarting preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 2786
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 2788
    :cond_2
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2789
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSceneModeUI()V

    .line 2790
    iput v3, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 2797
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAspectRatioChanged:Z

    if-eqz v0, :cond_0

    .line 2798
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Aspect ratio changed, restarting preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 2800
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mAspectRatioChanged:Z

    .line 2801
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2792
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2793
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private setCameraState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1405
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 1406
    packed-switch p1, :pswitch_data_0

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1411
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    .line 1414
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    .line 1406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    .line 2426
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    .line 2427
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    .line 2428
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2429
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2431
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 2432
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 2435
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 2436
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2549
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2550
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2552
    :cond_0
    return-void
.end method

.method private setLocationPreference(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 559
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 560
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2556
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2560
    :cond_0
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1502
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1503
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1505
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1508
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1503
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1506
    goto :goto_1
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 2818
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2819
    if-eqz v1, :cond_0

    .line 2820
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 2821
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 2823
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 2441
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 2442
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2443
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 2444
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2826
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2827
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2828
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMenu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2829
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2830
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 2831
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2833
    :cond_0
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2992
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a00f2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2994
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2995
    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2996
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2997
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 683
    :cond_0
    return-void
.end method

.method private showVoiceHintToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3001
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0085

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3003
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3004
    const-string v1, "pref_voice_first_use_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3005
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3006
    return-void
.end method

.method private startPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2449
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2454
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2458
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2460
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 2462
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAspectRatioChanged:Z

    if-nez v0, :cond_3

    .line 2465
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_2

    .line 2467
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2469
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 2471
    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2473
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_5

    .line 2474
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2475
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->newSurfaceLayer(ILandroid/hardware/Camera$Parameters;Lcom/android/camera/CameraActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 2482
    :goto_0
    const-string v0, "CAM_PhotoModule"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 2485
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 2488
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->setVideoMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 2489
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2491
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-nez v0, :cond_4

    .line 2492
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2494
    :cond_4
    return-void

    .line 2478
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2479
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2497
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2498
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2500
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2502
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2503
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 2504
    :cond_1
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2883
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 2929
    :cond_0
    :goto_0
    return-void

    .line 2885
    :cond_1
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to switch camera. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    iget v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 2887
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 2888
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoController;->setCameraId(I)V

    .line 2891
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 2892
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    .line 2893
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2894
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2897
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2898
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2900
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2901
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2909
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 2910
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v1, v1, v2

    .line 2911
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_4

    .line 2912
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 2913
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2914
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 2915
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 2916
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializePhotoControl()V

    .line 2917
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mResetExposure:I

    .line 2920
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 2921
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 2922
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 2924
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 2927
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2902
    :catch_0
    move-exception v0

    .line 2903
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a009d

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 2905
    :catch_1
    move-exception v0

    .line 2906
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a009e

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 2911
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2743
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2748
    :goto_0
    return-void

    .line 2746
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 2510
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 2511
    if-eqz v0, :cond_0

    .line 2512
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2513
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2516
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "recording-hint"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2521
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2522
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2563
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 2564
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 2565
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setFocusAreasIfSupported()V

    .line 2566
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setMeteringAreasIfSupported()V

    .line 2569
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2571
    if-nez v0, :cond_b

    .line 2572
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 2587
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2591
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 2592
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v2, v1, v3, v4}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2594
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2595
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2596
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2600
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2601
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2603
    :cond_1
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview size is "

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

    .line 2608
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_hdr_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00e3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2610
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2611
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isCameraHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/camera/Util;->useSoftwareHDR()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2612
    const-string v0, "hdr"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2625
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2626
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2627
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2632
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2633
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2642
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/camera/Util;->enableZSL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2643
    invoke-static {}, Lcom/android/camera/Util;->sendMagicSamsungZSLCommand()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2644
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->sendMagicSamsungZSLCommand()V

    .line 2647
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "camera-mode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_jpeg_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2656
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2662
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_iso_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a003c

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2664
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2665
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V

    .line 2668
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2671
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2672
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2676
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_shutter_speed_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a008b

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2679
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "shutter-speed"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-nez v0, :cond_7

    .line 2683
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    .line 2684
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 2685
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 2686
    if-lt v0, v2, :cond_10

    if-gt v0, v1, :cond_10

    .line 2687
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2693
    :cond_7
    :goto_3
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2695
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00ca

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2698
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2699
    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2700
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2710
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00d1

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2713
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2715
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2724
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v8}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2725
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2728
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_focustime_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0a0073

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFocusTime(I)V

    .line 2735
    :goto_6
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_a

    .line 2736
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateAutoFocusMoveCallback()V

    .line 2738
    :cond_a
    return-void

    .line 2574
    :cond_b
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2575
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 2576
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v2, v3}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 2578
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2579
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2580
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2581
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Picture size changed. Restart preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mAspectRatioChanged:Z

    .line 2583
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    goto/16 :goto_0

    .line 2614
    :cond_c
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2615
    invoke-static {v7}, Lcom/android/camera/Util;->setDoSoftwareHDRShot(Z)V

    goto/16 :goto_1

    .line 2618
    :cond_d
    invoke-static {}, Lcom/android/camera/Util;->useSoftwareHDR()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2619
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Util;->setDoSoftwareHDRShot(Z)V

    .line 2621
    :cond_e
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00d8

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 2636
    :cond_f
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2637
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2638
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 2689
    :cond_10
    const-string v1, "CAM_PhotoModule"

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

    .line 2702
    :cond_11
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2703
    if-nez v0, :cond_8

    .line 2704
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    goto/16 :goto_4

    .line 2717
    :cond_12
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2718
    if-nez v0, :cond_9

    .line 2719
    const-string v0, "auto"

    goto/16 :goto_5

    .line 2732
    :cond_13
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2528
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2531
    :cond_0
    return-void
.end method

.method private updateExposureOnScreenIndicator(I)V
    .locals 3
    .parameter

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 900
    :goto_0
    return-void

    .line 872
    :cond_0
    const/4 v0, 0x0

    .line 873
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    .line 874
    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 875
    packed-switch v1, :pswitch_data_0

    .line 898
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mExposureIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 877
    :pswitch_0
    const v0, 0x7f020092

    .line 878
    goto :goto_1

    .line 880
    :pswitch_1
    const v0, 0x7f020091

    .line 881
    goto :goto_1

    .line 883
    :pswitch_2
    const v0, 0x7f020090

    .line 884
    goto :goto_1

    .line 886
    :pswitch_3
    const v0, 0x7f02008f

    .line 887
    goto :goto_1

    .line 889
    :pswitch_4
    const v0, 0x7f020093

    .line 890
    goto :goto_1

    .line 892
    :pswitch_5
    const v0, 0x7f020094

    .line 893
    goto :goto_1

    .line 895
    :pswitch_6
    const v0, 0x7f020095

    goto :goto_1

    .line 875
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

    .line 903
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 906
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 909
    :cond_2
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 910
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 911
    :cond_3
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 912
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 913
    :cond_4
    const-string v0, "red-eye"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 914
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 916
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateHdrOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 937
    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getDoSoftwareHDRShot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 940
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateOnScreenIndicators()V
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateExposureOnScreenIndicator(I)V

    .line 977
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateHdrOnScreenIndicator(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->updateNoHandsIndicator()V

    .line 980
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1577
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    :goto_0
    return-void

    .line 1581
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSceneOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 931
    :goto_0
    return-void

    .line 925
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateTimer(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 1776
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTimerCountdown:Landroid/widget/TextView;

    const-string v1, "%d:%02d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    rem-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1777
    add-int/lit8 v0, p1, -0x1

    .line 1778
    if-gez v0, :cond_0

    .line 1779
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->capture()Z

    .line 1780
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    .line 1782
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTimerCountdown:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1793
    :goto_0
    return-void

    .line 1784
    :cond_0
    if-ge v0, v5, :cond_1

    .line 1785
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->onShutterDown()V

    .line 1786
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    .line 1788
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1789
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1790
    const/16 v0, 0xd

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1791
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 2273
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    .line 2275
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2276
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2278
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2283
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2284
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2285
    return-void
.end method

.method public capture()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1436
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v0, v10, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v8

    .line 1482
    :goto_0
    return v0

    .line 1440
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 1441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 1442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1444
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_7

    move v9, v7

    .line 1446
    :goto_1
    if-eqz v9, :cond_2

    .line 1447
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateFlash()V

    .line 1451
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mResetExposure:I

    .line 1453
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->needSamsungHDRFormat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1455
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1457
    :cond_3
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    .line 1458
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1459
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 1460
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v5}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1461
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1463
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterCallback:Lcom/android/camera/PhotoModule$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusState()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture2(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V

    .line 1467
    invoke-static {}, Lcom/android/camera/Util;->enableZSL()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/android/camera/Util;->needSamsungHDRFormat()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1469
    :cond_4
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 1472
    :cond_5
    if-nez v9, :cond_6

    .line 1473
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateFlash()V

    .line 1476
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 1477
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    iget v4, v5, Landroid/hardware/Camera$Size;->width:I

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/PhotoModule$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 1480
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1481
    invoke-direct {p0, v10}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    move v0, v7

    .line 1482
    goto/16 :goto_0

    :cond_7
    move v9, v8

    .line 1444
    goto/16 :goto_1
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 1606
    const/4 v0, 0x0

    .line 1607
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 1608
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->dismissPopup(Z)V

    .line 1609
    const/4 v0, 0x1

    .line 1611
    :cond_0
    return v0
.end method

.method public dismissPopup(Z)V
    .locals 1
    .parameter "topPopupOnly"

    .prologue
    .line 3048
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/PhotoModule;->dismissPopup(ZZ)V

    .line 3049
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 824
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 830
    :goto_0
    return v0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 830
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGpsIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGpsIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 5
    .parameter "activity"
    .parameter "parent"
    .parameter "reuseNail"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 475
    iput-object p2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    .line 476
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v3}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 477
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 478
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 480
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 484
    new-instance v0, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 485
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 487
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040025

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 489
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 490
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 491
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->setStoragePath(Landroid/content/SharedPreferences;)Z

    .line 495
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 496
    if-eqz p3, :cond_1

    .line 497
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 503
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetExposureCompensation()V

    .line 506
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 508
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 509
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    .line 510
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeMiscControls()V

    .line 511
    new-instance v0, Lcom/android/camera/LocationManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 512
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initOnScreenIndicator()V

    .line 513
    return-void

    :cond_0
    move v0, v2

    .line 497
    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1972
    return-void
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 3032
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2247
    packed-switch p1, :pswitch_data_0

    .line 2265
    :goto_0
    return-void

    .line 2249
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2250
    if-eqz p3, :cond_0

    .line 2251
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2252
    if-eqz v1, :cond_0

    .line 2253
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2256
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p2, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 2257
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 2259
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "crop-temp"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2260
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2247
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2307
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2308
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 2323
    :cond_0
    :goto_0
    return v0

    .line 2313
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_2

    .line 2314
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2316
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doCancel()V

    goto :goto_0

    .line 2319
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2323
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3
    .parameter

    .prologue
    .line 2867
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2880
    :cond_0
    :goto_0
    return-void

    .line 2869
    :cond_1
    iput p1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 2870
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 2871
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2876
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    goto :goto_0

    .line 2878
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 2957
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2198
    const-string v0, "CAM_PhotoModule"

    const-string v3, "onConfigurationChanged"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 2203
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2209
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 2211
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2212
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2213
    const v4, 0x7f040025

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2216
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 2218
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    .line 2219
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeMiscControls()V

    .line 2220
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 2223
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 2224
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 2225
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeZoom()V

    .line 2226
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initOnScreenIndicator()V

    .line 2227
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 2228
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    .line 2229
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2230
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 2231
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2232
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v0, v3

    .line 2233
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 2234
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 2235
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 2237
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeRenderOverlay()V

    .line 2238
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onFullScreenChanged(Z)V

    .line 2239
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    if-eqz v0, :cond_2

    .line 2240
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V

    .line 2242
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 2233
    goto :goto_1

    .line 2205
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1512
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-nez p1, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 1516
    invoke-direct {p0, v2, p1}, Lcom/android/camera/PhotoModule;->dismissPopup(ZZ)V

    .line 1518
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    .line 1519
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 1521
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_3

    .line 1523
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_8

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 1525
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_4

    .line 1526
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez p1, :cond_9

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1528
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 1529
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1530
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    if-eqz p1, :cond_a

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    :cond_5
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_b

    .line 1533
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_6

    .line 1534
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 1535
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->hideGpsOnScreenIndicator()V

    .line 1544
    :cond_6
    :goto_4
    return-void

    :cond_7
    move v0, v2

    .line 1513
    goto :goto_0

    :cond_8
    move v0, v3

    .line 1523
    goto :goto_1

    :cond_9
    move v1, v2

    .line 1526
    goto :goto_2

    :cond_a
    move v2, v3

    .line 1530
    goto :goto_3

    .line 1539
    :cond_b
    if-eqz p1, :cond_c

    .line 1540
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->expand()V

    goto :goto_4

    .line 1542
    :cond_c
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewSurfaceView;->shrink()V

    goto :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2329
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v3, v3, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-nez v3, :cond_0

    .line 2378
    :goto_0
    return v1

    .line 2332
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2346
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 2350
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    .line 2334
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2335
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    :cond_1
    move v1, v2

    .line 2337
    goto :goto_0

    .line 2339
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2340
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    :cond_2
    move v1, v2

    .line 2342
    goto :goto_0

    .line 2351
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 2352
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2353
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 2357
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    :cond_4
    move v1, v2

    .line 2359
    goto :goto_0

    .line 2355
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 2361
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    if-eqz v1, :cond_6

    .line 2362
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    :cond_6
    move v1, v2

    .line 2364
    goto :goto_0

    .line 2366
    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_7

    .line 2367
    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    add-int/lit8 v0, v1, 0x1

    .line 2368
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->processZoomValueChanged(I)V

    .end local v0           #index:I
    :cond_7
    move v1, v2

    .line 2370
    goto :goto_0

    .line 2372
    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_8

    .line 2373
    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    add-int/lit8 v0, v1, -0x1

    .line 2374
    .restart local v0       #index:I
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->processZoomValueChanged(I)V

    .end local v0           #index:I
    :cond_8
    move v1, v2

    .line 2376
    goto/16 :goto_0

    .line 2332
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1a -> :sswitch_3
        0x1b -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2383
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-nez v2, :cond_1

    .line 2404
    :cond_0
    :goto_0
    return v0

    .line 2386
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2399
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v2, :cond_0

    move v0, v1

    .line 2400
    goto :goto_0

    .line 2388
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_2

    .line 2389
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    :cond_2
    move v0, v1

    .line 2391
    goto :goto_0

    .line 2393
    :sswitch_2
    sget-boolean v0, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    if-eqz v0, :cond_3

    .line 2394
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    :cond_3
    move v0, v1

    .line 2396
    goto :goto_0

    .line 2386
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const/4 v1, 0x6

    .line 1628
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {p1, v0}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 1632
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1633
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1634
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    .line 1636
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->updateGpsIndicator()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2037
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->waitCameraStartUpThread()V

    .line 2040
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    if-eqz v1, :cond_0

    .line 2041
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPhotoControl:Lcom/android/camera/PhotoController;

    invoke-virtual {v1, v4}, Lcom/android/camera/PhotoController;->resetNoHandsShutter(Z)V

    .line 2048
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/ActivityBase;->isFirstStartAfterScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2050
    invoke-static {}, Lcom/android/camera/ActivityBase;->resetFirstStartAfterScreenOn()V

    .line 2051
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraHolder;->keep(I)V

    .line 2055
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_2

    .line 2056
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2058
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 2060
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 2061
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v1, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 2062
    .local v0, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2063
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 2065
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetScreenOn()V

    .line 2068
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    .line 2071
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    .line 2072
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2074
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_5

    .line 2075
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    if-eqz v1, :cond_5

    .line 2076
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$ImageSaver;->finish()V

    .line 2077
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;

    .line 2078
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$ImageNamer;->finish()V

    .line 2079
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;

    .line 2083
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2087
    :cond_6
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 2090
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2091
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2092
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2093
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2094
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2095
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2096
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2097
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2098
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2100
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 2101
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2102
    :cond_7
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 2031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 2032
    return-void
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2943
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2944
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 2946
    :cond_0
    return-void
.end method

.method public onPieOpened(II)V
    .locals 2
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->cancelActivityTouchHandling()V

    .line 2934
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2935
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2936
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 2938
    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2953
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1992
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 2014
    :cond_0
    :goto_0
    return-void

    .line 1994
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 1995
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 1998
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 1999
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetExposureCompensation()V

    .line 2000
    new-instance v0, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 2001
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 2006
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_3

    .line 2007
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2011
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 2013
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    goto :goto_0

    .line 2009
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 1988
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doCancel()V

    .line 1659
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1652
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->doAttach()V

    .line 1653
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1664
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1669
    :goto_0
    return-void

    .line 1667
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->hidePostCaptureAlert()V

    .line 1668
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    .prologue
    .line 2848
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2863
    :goto_0
    return-void

    .line 2850
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2852
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2854
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setStoragePath(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2855
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 2856
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 2859
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    .line 2860
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    .line 2861
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateOnScreenIndicators()V

    .line 2862
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    goto :goto_0

    .line 2856
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3067
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 3069
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1797
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_burst_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1799
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mTimerMode:Z

    if-nez v1, :cond_1

    .line 1800
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCaptureMode:I

    if-lez v1, :cond_2

    .line 1801
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mTimerMode:Z

    .line 1802
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCaptureMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateTimer(I)V

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mTimerMode:Z

    if-eqz v1, :cond_2

    .line 1806
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mTimerMode:Z

    .line 1807
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1811
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->getDoSoftwareHDRShot()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHDRRendering:Z

    if-nez v1, :cond_3

    .line 1812
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Starting HDR shot - set min exposure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1814
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1815
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    .line 1816
    sget-object v0, Lcom/android/camera/PhotoModule;->sHDRShotsPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1819
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1820
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1824
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PhotoModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$7;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1832
    :cond_3
    invoke-static {}, Lcom/android/camera/Util;->getDoSoftwareHDRShot()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    if-nez v1, :cond_6

    .line 1834
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    .line 1835
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    .line 1842
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 1843
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1844
    const-string v0, "CAM_PhotoModule"

    const-string v1, "HDR - Set exposure to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1847
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    .line 1915
    :goto_1
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1916
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PhotoModule$9;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$9;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-static {}, Lcom/android/camera/Util;->getSoftwareHDRExposureSettleTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1848
    :cond_4
    if-nez v0, :cond_5

    .line 1849
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1850
    const-string v0, "CAM_PhotoModule"

    const-string v1, "HDR - Set exposure to max"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1853
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    goto :goto_1

    .line 1856
    :cond_5
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    .line 1857
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mHDRRendering:Z

    .line 1858
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1859
    iput v5, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    .line 1860
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Done shooting all exposures, computing HDR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1864
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1867
    new-instance v0, Lcom/android/camera/HdrSoftwareProcessor;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/HdrSoftwareProcessor;-><init>(Landroid/content/Context;)V

    .line 1869
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0a00db

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0a00a1

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mHdrProgressDialog:Landroid/app/ProgressDialog;

    .line 1872
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/PhotoModule$8;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/PhotoModule$8;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/HdrSoftwareProcessor;)V

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1926
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    .line 1931
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x2faf080

    cmp-long v1, v1, v3

    if-gtz v1, :cond_7

    .line 1932
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1936
    :cond_7
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    :cond_8
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_9

    .line 1945
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    goto/16 :goto_0

    .line 1949
    :cond_9
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    .line 1950
    iget v1, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    .line 1952
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-eqz v1, :cond_a

    .line 1953
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mHDRExposureSet:Z

    .line 1954
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1957
    :cond_a
    iget v1, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    if-lt v1, v0, :cond_b

    .line 1958
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z

    if-nez v0, :cond_0

    .line 1959
    iput v5, p0, Lcom/android/camera/PhotoModule;->mBurstShotsDone:I

    .line 1960
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mBurstShotInProgress:Z

    .line 1961
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    goto/16 :goto_0

    .line 1963
    :cond_b
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_0

    .line 1965
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1966
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mBurstShotInProgress:Z

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1757
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mTimerMode:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_2

    .line 1773
    :cond_1
    :goto_0
    return-void

    .line 1762
    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1764
    :cond_3
    if-eqz p1, :cond_5

    .line 1765
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_4

    .line 1766
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1767
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1769
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterDown()V

    goto :goto_0

    .line 1771
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2290
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 2303
    :cond_0
    :goto_0
    return-void

    .line 2298
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2301
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2302
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 3022
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1647
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 2961
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 2962
    :cond_0
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1616
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 1617
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->dismissPopup(Z)V

    .line 1620
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 1487
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 1488
    return-void
.end method

.method setPreviewFrameLayoutAspectRatio()V
    .locals 6

    .prologue
    .line 3026
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3027
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 3028
    return-void
.end method

.method public showGpsOnScreenIndicator(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGpsIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    if-nez p1, :cond_2

    .line 851
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGpsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 857
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGpsIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 852
    :cond_2
    if-eqz p2, :cond_3

    .line 853
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGpsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 855
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGpsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 5
    .parameter "popup"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 3036
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 3037
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mBlocker:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3038
    invoke-direct {p0, v4}, Lcom/android/camera/PhotoModule;->setShowMenu(Z)V

    .line 3039
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 3040
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 3041
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3043
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3044
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3045
    return-void
.end method

.method public startFaceDetection()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 781
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v3, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->noFaceDetectOnFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v3, v1, :cond_0

    .line 789
    :cond_2
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-ne v3, v1, :cond_0

    .line 790
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    .line 791
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 792
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 793
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 794
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 795
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v3, v4

    .line 796
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 797
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 798
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 799
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/PhotoModule$6;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$6;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 805
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 796
    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 812
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v0, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 816
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 817
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 818
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1548
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 1554
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1557
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 1562
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_0

    .line 1563
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 1569
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1571
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 1572
    return-void
.end method

.method public updateCameraAppView()V
    .locals 2

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->initPowerShutter(Lcom/android/camera/ComboPreferences;)V

    .line 1983
    return-void
.end method

.method public updateNoHandsIndicator()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 945
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNoHandsIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 972
    :goto_0
    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 951
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_nohands_shutter_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a007c

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 953
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCaptureMode:I

    .line 957
    :goto_1
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCaptureMode:I

    if-gez v0, :cond_3

    .line 958
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_voice_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showVoiceHintToast()V

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNoHandsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 962
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNoHandsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 955
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCaptureMode:I

    goto :goto_1

    .line 963
    :cond_3
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCaptureMode:I

    if-lez v0, :cond_4

    .line 964
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNoHandsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 965
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNoHandsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTimerCountdown:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 968
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNoHandsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mTimerCountdown:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNoHandsIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 1976
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 2018
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->cancel()V

    .line 2020
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->join()V

    .line 2021
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 2022
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2027
    :cond_0
    :goto_0
    return-void

    .line 2024
    :catch_0
    move-exception v0

    goto :goto_0
.end method
