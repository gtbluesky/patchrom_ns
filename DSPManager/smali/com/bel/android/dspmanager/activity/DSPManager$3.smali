.class Lcom/bel/android/dspmanager/activity/DSPManager$3;
.super Ljava/lang/Object;
.source "DSPManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bel/android/dspmanager/activity/DSPManager;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bel/android/dspmanager/activity/DSPManager;


# direct methods
.method constructor <init>(Lcom/bel/android/dspmanager/activity/DSPManager;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/bel/android/dspmanager/activity/DSPManager$3;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 121
    check-cast p2, Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/bel/android/dspmanager/service/HeadsetService$LocalBinder;->getService()Lcom/bel/android/dspmanager/service/HeadsetService;

    move-result-object v3

    .line 122
    .local v3, service:Lcom/bel/android/dspmanager/service/HeadsetService;
    invoke-virtual {v3}, Lcom/bel/android/dspmanager/service/HeadsetService;->getAudioOutputRouting()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, routing:Ljava/lang/String;
    iget-object v4, p0, Lcom/bel/android/dspmanager/activity/DSPManager$3;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    iget-object v4, v4, Lcom/bel/android/dspmanager/activity/DSPManager;->pagerAdapter:Lcom/bel/android/dspmanager/activity/MyAdapter;

    invoke-virtual {v4}, Lcom/bel/android/dspmanager/activity/MyAdapter;->getEntries()[Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, entries:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 125
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/bel/android/dspmanager/activity/DSPManager$3;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    iget-object v4, v4, Lcom/bel/android/dspmanager/activity/DSPManager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 127
    iget-object v4, p0, Lcom/bel/android/dspmanager/activity/DSPManager$3;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    iget-object v4, v4, Lcom/bel/android/dspmanager/activity/DSPManager;->actionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/bel/android/dspmanager/activity/DSPManager$3;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    iget-object v5, v5, Lcom/bel/android/dspmanager/activity/DSPManager;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 131
    :cond_0
    iget-object v4, p0, Lcom/bel/android/dspmanager/activity/DSPManager$3;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    invoke-virtual {v4, p0}, Lcom/bel/android/dspmanager/activity/DSPManager;->unbindService(Landroid/content/ServiceConnection;)V

    .line 132
    return-void

    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 136
    return-void
.end method
