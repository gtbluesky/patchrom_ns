.class final Lcom/android/camera/PhotoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput-object p2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 1020
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 16
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 1025
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4100(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1028
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4200(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hdr"

    if-ne v1, v2, :cond_1

    .line 1029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1030
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1033
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    #setter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v1, v12, v13}, Lcom/android/camera/PhotoModule;->access$4302(Lcom/android/camera/PhotoModule;J)J

    .line 1037
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v1

    const-wide/16 v12, 0x0

    cmp-long v1, v1, v12

    if-eqz v1, :cond_8

    .line 1038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    iput-wide v12, v1, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 1040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    iput-wide v12, v1, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 1048
    :goto_1
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v12, v5, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4400(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mBurstShotInProgress:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHDRShotInProgress:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4600(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mBurstShotsDone:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 1059
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraActivity;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSlide()V

    .line 1061
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 1062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4400(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/camera/Util;->enableZSL()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4200(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hdr"

    if-ne v1, v2, :cond_a

    invoke-static {}, Lcom/android/camera/Util;->needSamsungHDRFormat()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1065
    :cond_4
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    if-eqz v1, :cond_9

    .line 1066
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->setupPreview()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)V

    .line 1087
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4400(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1089
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 1090
    .local v11, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v8

    .line 1092
    .local v8, orientation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegRotation:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)I

    move-result v1

    add-int/2addr v1, v8

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4200(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hdr"

    if-ne v1, v2, :cond_d

    invoke-static {}, Lcom/android/camera/Util;->needSamsungHDRFormat()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1095
    :cond_6
    iget v6, v11, Landroid/hardware/Camera$Size;->width:I

    .line 1096
    .local v6, width:I
    iget v7, v11, Landroid/hardware/Camera$Size;->height:I

    .line 1101
    .local v7, height:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 1102
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 1104
    .local v4, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/camera/PhotoModule$ImageSaver;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageSaver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera/PhotoModule$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V

    .line 1119
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #title:Ljava/lang/String;
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v8           #orientation:I
    .end local v11           #s:Landroid/hardware/Camera$Size;
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1122
    .local v9, now:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)J

    move-result-wide v12

    sub-long v12, v9, v12

    iput-wide v12, v1, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 1123
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mJpegCallbackFinishTime = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v12, v5, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v1, v12, v13}, Lcom/android/camera/PhotoModule;->access$4302(Lcom/android/camera/PhotoModule;J)J

    .line 1127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mBurstShotsDone:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)I

    move-result v1

    if-lez v1, :cond_7

    .line 1128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1131
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mResetExposure:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 1043
    .end local v9           #now:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    iput-wide v12, v1, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    iput-wide v12, v1, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 1071
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v12, 0x12c

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1073
    :cond_a
    invoke-static {}, Lcom/android/camera/Util;->enableZSL()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4200(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hdr"

    if-ne v1, v2, :cond_b

    invoke-static {}, Lcom/android/camera/Util;->needSamsungHDRFormat()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1079
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4400(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->stopPreview()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4800(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_2

    .line 1082
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 1083
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x1

    #calls: Lcom/android/camera/PhotoModule;->setCameraState(I)V
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$2500(Lcom/android/camera/PhotoModule;I)V

    goto/16 :goto_2

    .line 1098
    .restart local v8       #orientation:I
    .restart local v11       #s:Landroid/hardware/Camera$Size;
    :cond_d
    iget v6, v11, Landroid/hardware/Camera$Size;->height:I

    .line 1099
    .restart local v6       #width:I
    iget v7, v11, Landroid/hardware/Camera$Size;->width:I

    .restart local v7       #height:I
    goto/16 :goto_3

    .line 1107
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v8           #orientation:I
    .end local v11           #s:Landroid/hardware/Camera$Size;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    #setter for: Lcom/android/camera/PhotoModule;->mJpegImageData:[B
    invoke-static {v1, v0}, Lcom/android/camera/PhotoModule;->access$5202(Lcom/android/camera/PhotoModule;[B)[B

    .line 1108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mQuickCapture:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5400(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_4

    .line 1111
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->doAttach()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_4
.end method
