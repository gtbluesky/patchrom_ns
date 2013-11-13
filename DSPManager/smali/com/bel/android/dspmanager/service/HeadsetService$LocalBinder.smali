.class public Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;
.super Landroid/os/Binder;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bel/android/dspmanager/service/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bel/android/dspmanager/service/HeadsetService;


# direct methods
.method public constructor <init>(Lcom/bel/android/dspmanager/service/HeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/bel/android/dspmanager/service/HeadsetService;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;->this$0:Lcom/bel/android/dspmanager/service/HeadsetService;

    return-object v0
.end method
