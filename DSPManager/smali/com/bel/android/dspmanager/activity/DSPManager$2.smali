.class Lcom/bel/android/dspmanager/activity/DSPManager$2;
.super Ljava/lang/Object;
.source "DSPManager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bel/android/dspmanager/activity/DSPManager;->onCreate(Landroid/os/Bundle;)V
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
    .line 99
    iput-object p1, p0, Lcom/bel/android/dspmanager/activity/DSPManager$2;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 111
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 107
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "idx"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bel/android/dspmanager/activity/DSPManager$2;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    iget-object v0, v0, Lcom/bel/android/dspmanager/activity/DSPManager;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/bel/android/dspmanager/activity/DSPManager$2;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    iget-object v1, v1, Lcom/bel/android/dspmanager/activity/DSPManager;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 103
    return-void
.end method
