.class Lcom/bel/android/dspmanager/activity/MyAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "DSPManager.java"


# instance fields
.field private final entries:[Ljava/lang/String;

.field private final tmpEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;Landroid/content/Context;)V
    .locals 2
    .parameter "fm"
    .parameter "context"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    .line 172
    iget-object v0, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    const-string v1, "headset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    const-string v1, "speaker"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-static {p2}, Lcom/bel/android/dspmanager/activity/WM8994;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    const-string v1, "wm8994"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->entries:[Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->entries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->entries:[Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .parameter "position"

    .prologue
    .line 197
    iget-object v2, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->entries:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v3, "wm8994"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v1, Lcom/bel/android/dspmanager/activity/WM8994;

    invoke-direct {v1}, Lcom/bel/android/dspmanager/activity/WM8994;-><init>()V

    .line 204
    :goto_0
    return-object v1

    .line 200
    :cond_0
    new-instance v1, Lcom/bel/android/dspmanager/activity/DSPScreen;

    invoke-direct {v1}, Lcom/bel/android/dspmanager/activity/DSPScreen;-><init>()V

    .line 201
    .local v1, dspFragment:Lcom/bel/android/dspmanager/activity/DSPScreen;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "config"

    iget-object v3, p0, Lcom/bel/android/dspmanager/activity/MyAdapter;->entries:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, v0}, Lcom/bel/android/dspmanager/activity/DSPScreen;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method
