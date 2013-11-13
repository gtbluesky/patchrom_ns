.class Lcom/bel/android/dspmanager/activity/DSPScreen$1;
.super Ljava/lang/Object;
.source "DSPScreen.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bel/android/dspmanager/activity/DSPScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bel/android/dspmanager/activity/DSPScreen;


# direct methods
.method constructor <init>(Lcom/bel/android/dspmanager/activity/DSPScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bel/android/dspmanager/activity/DSPScreen$1;->this$0:Lcom/bel/android/dspmanager/activity/DSPScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 12
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v11, 0x0

    .line 30
    const-string v9, "dsp.tone.eq"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 31
    invoke-interface {p1, p2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, newValue:Ljava/lang/String;
    const-string v9, "custom"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 34
    .local v2, e:Landroid/content/SharedPreferences$Editor;
    const-string v9, "dsp.tone.eq.custom"

    invoke-interface {v2, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    iget-object v9, p0, Lcom/bel/android/dspmanager/activity/DSPScreen$1;->this$0:Lcom/bel/android/dspmanager/activity/DSPScreen;

    invoke-virtual {v9}, Lcom/bel/android/dspmanager/activity/DSPScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "dsp.tone.eq.custom"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/bel/android/dspmanager/preference/EqualizerPreference;

    .line 39
    .local v4, eq:Lcom/bel/android/dspmanager/preference/EqualizerPreference;
    invoke-virtual {v4}, Lcom/bel/android/dspmanager/preference/EqualizerPreference;->refreshFromPreference()V

    .line 44
    .end local v2           #e:Landroid/content/SharedPreferences$Editor;
    .end local v4           #eq:Lcom/bel/android/dspmanager/preference/EqualizerPreference;
    .end local v7           #newValue:Ljava/lang/String;
    :cond_0
    const-string v9, "dsp.tone.eq.custom"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 45
    invoke-interface {p1, p2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 47
    .restart local v7       #newValue:Ljava/lang/String;
    const-string v1, "custom"

    .line 48
    .local v1, desiredValue:Ljava/lang/String;
    iget-object v9, p0, Lcom/bel/android/dspmanager/activity/DSPScreen$1;->this$0:Lcom/bel/android/dspmanager/activity/DSPScreen;

    invoke-virtual {v9}, Lcom/bel/android/dspmanager/activity/DSPScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "dsp.tone.eq"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/bel/android/dspmanager/preference/SummariedListPreference;

    .line 49
    .local v8, preset:Lcom/bel/android/dspmanager/preference/SummariedListPreference;
    invoke-virtual {v8}, Lcom/bel/android/dspmanager/preference/SummariedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 50
    .local v3, entry:Ljava/lang/CharSequence;
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 51
    move-object v1, v7

    .line 57
    .end local v3           #entry:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v8}, Lcom/bel/android/dspmanager/preference/SummariedListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 58
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 59
    .restart local v2       #e:Landroid/content/SharedPreferences$Editor;
    const-string v9, "dsp.tone.eq"

    invoke-interface {v2, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    invoke-virtual {v8}, Lcom/bel/android/dspmanager/preference/SummariedListPreference;->refreshFromPreference()V

    .line 65
    .end local v0           #arr$:[Ljava/lang/CharSequence;
    .end local v1           #desiredValue:Ljava/lang/String;
    .end local v2           #e:Landroid/content/SharedPreferences$Editor;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #newValue:Ljava/lang/String;
    .end local v8           #preset:Lcom/bel/android/dspmanager/preference/SummariedListPreference;
    :cond_2
    iget-object v9, p0, Lcom/bel/android/dspmanager/activity/DSPScreen$1;->this$0:Lcom/bel/android/dspmanager/activity/DSPScreen;

    invoke-virtual {v9}, Lcom/bel/android/dspmanager/activity/DSPScreen;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.bel.android.dspmanager.UPDATE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void

    .line 49
    .restart local v0       #arr$:[Ljava/lang/CharSequence;
    .restart local v1       #desiredValue:Ljava/lang/String;
    .restart local v3       #entry:Ljava/lang/CharSequence;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #newValue:Ljava/lang/String;
    .restart local v8       #preset:Lcom/bel/android/dspmanager/preference/SummariedListPreference;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
