.class public Lcom/android/camera/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/LocationManager$LocationListener;,
        Lcom/android/camera/LocationManager$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGpsEnabled:Z

.field private mHasGpsFix:Z

.field private mLastLocationMillis:J

.field private mListener:Lcom/android/camera/LocationManager$Listener;

.field mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mRecordLocation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/LocationManager$LocationListener;

    new-instance v1, Lcom/android/camera/LocationManager$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/LocationManager$LocationListener;-><init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/LocationManager$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/android/camera/LocationManager$LocationListener;-><init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    .line 52
    iput-object p1, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    .line 54
    iput-boolean v4, p0, Lcom/android/camera/LocationManager;->mHasGpsFix:Z

    .line 55
    iput-boolean v4, p0, Lcom/android/camera/LocationManager;->mGpsEnabled:Z

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/LocationManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/android/camera/LocationManager;->mLastLocationMillis:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/camera/LocationManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/camera/LocationManager;->mGpsEnabled:Z

    return p1
.end method

.method private startReceivingLocationUpdates()V
    .locals 8

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/LocationManager;->mGpsEnabled:Z

    .line 104
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 114
    :goto_1
    const-string v0, "LocationManager"

    const-string v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    return-void

    .line 95
    :catch_0
    move-exception v6

    .line 96
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "LocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 97
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 98
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 110
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "LocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 111
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 112
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "LocationManager"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 127
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v2, "LocationManager"

    const-string v3, "stopReceivingLocationUpdates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    invoke-interface {v2}, Lcom/android/camera/LocationManager$Listener;->hideGpsOnScreenIndicator()V

    .line 133
    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-boolean v3, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-nez v3, :cond_1

    move-object v1, v2

    .line 67
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 63
    iget-object v3, p0, Lcom/android/camera/LocationManager;->mLocationListeners:[Lcom/android/camera/LocationManager$LocationListener;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/camera/LocationManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 64
    .local v1, l:Landroid/location/Location;
    if-nez v1, :cond_0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v1           #l:Landroid/location/Location;
    :cond_2
    const-string v3, "LocationManager"

    const-string v4, "No location received yet."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 67
    goto :goto_0
.end method

.method public onGpsStatusChanged(I)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 150
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/LocationManager;->updateGpsIndicator()V

    .line 151
    return-void

    .line 143
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/camera/LocationManager;->mHasGpsFix:Z

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/LocationManager;->mLastLocationMillis:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/LocationManager;->mHasGpsFix:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public recordLocation(Z)V
    .locals 1
    .parameter "recordLocation"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-eq v0, p1, :cond_0

    .line 72
    iput-boolean p1, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    .line 73
    if-eqz p1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->startReceivingLocationUpdates()V

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/LocationManager;->updateGpsIndicator()V

    .line 80
    :cond_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/LocationManager;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method

.method public updateGpsIndicator()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/LocationManager;->mRecordLocation:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    iget-boolean v1, p0, Lcom/android/camera/LocationManager;->mGpsEnabled:Z

    iget-boolean v2, p0, Lcom/android/camera/LocationManager;->mHasGpsFix:Z

    invoke-interface {v0, v1, v2}, Lcom/android/camera/LocationManager$Listener;->showGpsOnScreenIndicator(ZZ)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/camera/LocationManager;->mListener:Lcom/android/camera/LocationManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/LocationManager$Listener;->hideGpsOnScreenIndicator()V

    goto :goto_0
.end method
