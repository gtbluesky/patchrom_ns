.class public Lcom/bel/android/dspmanager/preference/SummariedListPreference;
.super Landroid/preference/ListPreference;
.source "SummariedListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "set"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-void
.end method


# virtual methods
.method public refreshFromPreference()V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bel/android/dspmanager/preference/SummariedListPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 28
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/preference/SummariedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 17
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/preference/SummariedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 18
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 19
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/bel/android/dspmanager/preference/SummariedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 24
    :cond_0
    return-void

    .line 18
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
