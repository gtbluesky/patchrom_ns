.class public Lcom/cyanogenmod/settings/device/DeviceSettings;
.super Landroid/app/Activity;
.source "DeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/device/DeviceSettings$TabsAdapter;
    }
.end annotation


# instance fields
.field mTabsAdapter:Lcom/cyanogenmod/settings/device/DeviceSettings$TabsAdapter;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x8

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 63
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 64
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->setContentView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 69
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 70
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 72
    new-instance v1, Lcom/cyanogenmod/settings/device/DeviceSettings$TabsAdapter;

    iget-object v2, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v2}, Lcom/cyanogenmod/settings/device/DeviceSettings$TabsAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mTabsAdapter:Lcom/cyanogenmod/settings/device/DeviceSettings$TabsAdapter;

    .line 73
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mTabsAdapter:Lcom/cyanogenmod/settings/device/DeviceSettings$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;

    invoke-virtual {v1, v2, v3, v4}, Lcom/cyanogenmod/settings/device/DeviceSettings$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 75
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/DeviceSettings;->mTabsAdapter:Lcom/cyanogenmod/settings/device/DeviceSettings$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/cyanogenmod/settings/device/DisplayFragmentActivity;

    invoke-virtual {v1, v2, v3, v4}, Lcom/cyanogenmod/settings/device/DeviceSettings$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v1, "tab"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->finish()V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "tab"

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/DeviceSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    return-void
.end method
