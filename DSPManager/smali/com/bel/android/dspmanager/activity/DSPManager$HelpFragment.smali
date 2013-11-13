.class public Lcom/bel/android/dspmanager/activity/DSPManager$HelpFragment;
.super Landroid/app/DialogFragment;
.source "DSPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bel/android/dspmanager/activity/DSPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelpFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "state"

    .prologue
    .line 50
    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, v:Landroid/view/View;
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, tv:Landroid/widget/TextView;
    const v2, 0x7f060059

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 53
    return-object v1
.end method
