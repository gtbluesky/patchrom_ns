.class Lcom/cyanogenmod/settings/device/GeneralFragmentActivity$1;
.super Ljava/lang/Object;
.source "GeneralFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->showIdleStatsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity$1;->this$0:Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 142
    const-string v0, "/sys/class/misc/deepidle/reset_stats"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 144
    return-void
.end method
