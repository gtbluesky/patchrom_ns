.class public final Lcom/bel/android/dspmanager/activity/DSPManager;
.super Landroid/support/v4/app/FragmentActivity;
.source "DSPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bel/android/dspmanager/activity/DSPManager$HelpFragment;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_PREFERENCES:Ljava/lang/String; = "com.bel.android.dspmanager.UPDATE"

.field public static final SHARED_PREFERENCES_BASENAME:Ljava/lang/String; = "com.bel.android.dspmanager"


# instance fields
.field protected actionBar:Landroid/app/ActionBar;

.field protected pagerAdapter:Lcom/bel/android/dspmanager/activity/MyAdapter;

.field protected viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v8, 0x7f030005

    invoke-virtual {p0, v8}, Lcom/bel/android/dspmanager/activity/DSPManager;->setContentView(I)V

    .line 62
    new-instance v8, Lcom/bel/android/dspmanager/activity/MyAdapter;

    invoke-virtual {p0}, Lcom/bel/android/dspmanager/activity/DSPManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-direct {v8, v9, p0}, Lcom/bel/android/dspmanager/activity/MyAdapter;-><init>(Landroid/app/FragmentManager;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->pagerAdapter:Lcom/bel/android/dspmanager/activity/MyAdapter;

    .line 63
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/activity/DSPManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iput-object v8, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->actionBar:Landroid/app/ActionBar;

    .line 64
    const v8, 0x7f08000b

    invoke-virtual {p0, v8}, Lcom/bel/android/dspmanager/activity/DSPManager;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 66
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v5, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/bel/android/dspmanager/activity/DSPManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 70
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 72
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->pagerAdapter:Lcom/bel/android/dspmanager/activity/MyAdapter;

    invoke-virtual {v8}, Lcom/bel/android/dspmanager/activity/MyAdapter;->getEntries()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 73
    .local v2, entry:Ljava/lang/String;
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v8}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v7

    .line 74
    .local v7, tab:Landroid/app/ActionBar$Tab;
    new-instance v8, Lcom/bel/android/dspmanager/activity/DSPManager$1;

    invoke-direct {v8, p0}, Lcom/bel/android/dspmanager/activity/DSPManager$1;-><init>(Lcom/bel/android/dspmanager/activity/DSPManager;)V

    invoke-virtual {v7, v8}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 89
    :try_start_0
    const-class v8, Lcom/bel/android/dspmanager/R$string;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_title"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 91
    .local v6, stringId:I
    invoke-virtual {p0, v6}, Lcom/bel/android/dspmanager/activity/DSPManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v8, v7}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v6           #stringId:I
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 98
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #entry:Ljava/lang/String;
    .end local v7           #tab:Landroid/app/ActionBar$Tab;
    :cond_0
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->pagerAdapter:Lcom/bel/android/dspmanager/activity/MyAdapter;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 99
    iget-object v8, p0, Lcom/bel/android/dspmanager/activity/DSPManager;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v9, Lcom/bel/android/dspmanager/activity/DSPManager$2;

    invoke-direct {v9, p0}, Lcom/bel/android/dspmanager/activity/DSPManager$2;-><init>(Lcom/bel/android/dspmanager/activity/DSPManager;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 113
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/activity/DSPManager;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 145
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 152
    .local v0, choice:I
    packed-switch v0, :pswitch_data_0

    move v2, v3

    .line 159
    :goto_0
    return v2

    .line 154
    :pswitch_0
    new-instance v1, Lcom/bel/android/dspmanager/activity/DSPManager$HelpFragment;

    invoke-direct {v1}, Lcom/bel/android/dspmanager/activity/DSPManager$HelpFragment;-><init>()V

    .line 155
    .local v1, df:Landroid/app/DialogFragment;
    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 156
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/activity/DSPManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "help"

    invoke-virtual {v1, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x7f080001
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 118
    new-instance v0, Lcom/bel/android/dspmanager/activity/DSPManager$3;

    invoke-direct {v0, p0}, Lcom/bel/android/dspmanager/activity/DSPManager$3;-><init>(Lcom/bel/android/dspmanager/activity/DSPManager;)V

    .line 138
    .local v0, connection:Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bel/android/dspmanager/service/HeadsetService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v1, serviceIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/bel/android/dspmanager/activity/DSPManager;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 140
    return-void
.end method
