.class Lcom/android/camera/PhotoModule$ImageSaver;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PhotoModule$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 1
    .parameter

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 1194
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageSaver;->start()V

    .line 1195
    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V
    .locals 10
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 1302
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p7

    move-object v6, p1

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/Storage;->updateImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BII)Z

    move-result v9

    .line 1304
    .local v9, ok:Z
    if-eqz v9, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1307
    :cond_0
    return-void
.end method


# virtual methods
.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V
    .locals 3
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 1200
    new-instance v0, Lcom/android/camera/PhotoModule$SaveRequest;

    invoke-direct {v0, v1}, Lcom/android/camera/PhotoModule$SaveRequest;-><init>(Lcom/android/camera/PhotoModule$1;)V

    .line 1201
    .local v0, r:Lcom/android/camera/PhotoModule$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/PhotoModule$SaveRequest;->data:[B

    .line 1202
    iput-object p2, v0, Lcom/android/camera/PhotoModule$SaveRequest;->uri:Landroid/net/Uri;

    .line 1203
    iput-object p3, v0, Lcom/android/camera/PhotoModule$SaveRequest;->title:Ljava/lang/String;

    .line 1204
    if-nez p4, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/android/camera/PhotoModule$SaveRequest;->loc:Landroid/location/Location;

    .line 1205
    iput p5, v0, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    .line 1206
    iput p6, v0, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    .line 1207
    iput p7, v0, Lcom/android/camera/PhotoModule$SaveRequest;->orientation:I

    .line 1208
    monitor-enter p0

    .line 1209
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 1211
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1212
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1204
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 1216
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1218
    monitor-exit p0

    .line 1219
    return-void

    .line 1218
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageSaver;->waitDone()V

    .line 1288
    monitor-enter p0

    .line 1289
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mStop:Z

    .line 1290
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1291
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1297
    :goto_0
    return-void

    .line 1291
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1294
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 1226
    :goto_0
    monitor-enter p0

    .line 1227
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1228
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 1232
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule$ImageSaver;->mStop:Z

    if-eqz v3, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1270
    return-void

    .line 1235
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1239
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1242
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1241
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/PhotoModule$SaveRequest;

    .line 1242
    .local v17, r:Lcom/android/camera/PhotoModule$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4200(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hdr"

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/android/camera/Util;->needSamsungHDRFormat()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1245
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1246
    .local v16, baos:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/camera/PhotoModule$SaveRequest;->data:[B

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    invoke-static {v3, v4, v5}, Lcom/android/camera/Util;->decodeYUV422P([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1247
    .local v2, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegRotation:I
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1248
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1249
    .local v7, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegRotation:I
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1250
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1252
    .end local v7           #matrix:Landroid/graphics/Matrix;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegRotation:I
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_3

    .line 1253
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    move/from16 v18, v0

    .line 1254
    .local v18, x:I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    move/from16 v19, v0

    .line 1255
    .local v19, y:I
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    .line 1256
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    .line 1258
    .end local v18           #x:I
    .end local v19           #y:I
    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;

    move-result-object v4

    const-string v5, "pref_camera_jpeg_key"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$ImageSaver;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    const v8, 0x7f0a004d

    invoke-virtual {v6, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1261
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/camera/PhotoModule$SaveRequest;->data:[B

    .line 1263
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v16           #baos:Ljava/io/ByteArrayOutputStream;
    :cond_4
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/camera/PhotoModule$SaveRequest;->data:[B

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/camera/PhotoModule$SaveRequest;->uri:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/camera/PhotoModule$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/camera/PhotoModule$SaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/camera/PhotoModule$SaveRequest;->width:I

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/camera/PhotoModule$SaveRequest;->height:I

    move-object/from16 v0, v17

    iget v15, v0, Lcom/android/camera/PhotoModule$SaveRequest;->orientation:I

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/camera/PhotoModule$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V

    .line 1265
    monitor-enter p0

    .line 1266
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1267
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 1268
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 1236
    .end local v17           #r:Lcom/android/camera/PhotoModule$SaveRequest;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 1274
    monitor-enter p0

    .line 1275
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1277
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1278
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1282
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 1283
    return-void

    .line 1282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
