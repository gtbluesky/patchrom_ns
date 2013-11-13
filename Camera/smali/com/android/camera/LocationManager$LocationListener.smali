.class Lcom/android/camera/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/android/camera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/LocationManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 171
    iput-object p2, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    .line 172
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 173
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "newLocation"

    .prologue
    const-wide/16 v2, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    if-nez v0, :cond_1

    .line 183
    const-string v0, "LocationManager"

    const-string v1, "Got first location."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    const-string v0, "gps"

    iget-object v1, p0, Lcom/android/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    #setter for: Lcom/android/camera/LocationManager;->mLastLocationMillis:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/LocationManager;->access$002(Lcom/android/camera/LocationManager;J)J

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    .line 202
    iput-boolean v1, p0, Lcom/android/camera/LocationManager$LocationListener;->mValid:Z

    .line 203
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    #setter for: Lcom/android/camera/LocationManager;->mGpsEnabled:Z
    invoke-static {v0, v1}, Lcom/android/camera/LocationManager;->access$102(Lcom/android/camera/LocationManager;Z)Z

    .line 205
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->updateGpsIndicator()V

    .line 207
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 194
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/LocationManager;->mGpsEnabled:Z
    invoke-static {v0, v1}, Lcom/android/camera/LocationManager;->access$102(Lcom/android/camera/LocationManager;Z)Z

    .line 196
    iget-object v0, p0, Lcom/android/camera/LocationManager$LocationListener;->this$0:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->updateGpsIndicator()V

    .line 198
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 212
    return-void
.end method
