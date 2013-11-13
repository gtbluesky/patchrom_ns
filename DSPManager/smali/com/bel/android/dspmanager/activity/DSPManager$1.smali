.class Lcom/bel/android/dspmanager/activity/DSPManager$1;
.super Ljava/lang/Object;
.source "DSPManager.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


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
    .line 74
    iput-object p1, p0, Lcom/bel/android/dspmanager/activity/DSPManager$1;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 77
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bel/android/dspmanager/activity/DSPManager$1;->this$0:Lcom/bel/android/dspmanager/activity/DSPManager;

    iget-object v0, v0, Lcom/bel/android/dspmanager/activity/DSPManager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 82
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 86
    return-void
.end method
