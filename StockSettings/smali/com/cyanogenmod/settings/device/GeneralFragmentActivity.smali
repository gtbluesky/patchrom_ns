.class public Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;
.super Landroid/preference/PreferenceFragment;
.source "GeneralFragmentActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mDeepIdle:Landroid/preference/CheckBoxPreference;

.field private mIdleStats:Landroid/preference/PreferenceScreen;

.field private mNotification:Landroid/preference/CheckBoxPreference;

.field private mbldTuning:Lcom/cyanogenmod/settings/device/bldTuningPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "FILE"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "/sys/class/misc/deepidle/enabled"

    invoke-static {v2}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "/sys/class/misc/deepidle/enabled"

    invoke-static {v2}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, sDefaultValue:Ljava/lang/String;
    const-string v2, "/sys/class/misc/deepidle/enabled"

    const-string v3, "deepidle"

    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 116
    .end local v0           #sDefaultValue:Ljava/lang/String;
    :cond_0
    const-string v2, "/sys/class/misc/notification/enabled"

    invoke-static {v2}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const-string v2, "/sys/class/misc/notification/enabled"

    invoke-static {v2}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0       #sDefaultValue:Ljava/lang/String;
    const-string v2, "/sys/class/misc/notification/enabled"

    const-string v3, "touchkey_notification"

    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    .end local v0           #sDefaultValue:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showIdleStatsDialog()V
    .locals 7

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/high16 v5, 0x7f03

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, content:Landroid/view/View;
    const-string v4, "/sys/class/misc/deepidle/idle_stats_list"

    invoke-static {v4}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, sStatsLine:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, sValues:[Ljava/lang/String;
    const/high16 v4, 0x7f07

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v4, 0x7f070002

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v4, 0x7f070004

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v4, 0x7f070001

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v4, 0x7f070003

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v4, 0x7f070005

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f060027

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 139
    const v4, 0x7f06002b

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity$1;

    invoke-direct {v5, p0}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity$1;-><init>(Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    const v4, 0x7f06002c

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity$2;

    invoke-direct {v5, p0}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity$2;-><init>(Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 153
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 61
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "deepidle"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mDeepIdle:Landroid/preference/CheckBoxPreference;

    .line 62
    const-string v1, "touchkey_notification"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mNotification:Landroid/preference/CheckBoxPreference;

    .line 63
    const-string v1, "deepidle_stats"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mIdleStats:Landroid/preference/PreferenceScreen;

    .line 65
    const-string v1, "/sys/class/misc/deepidle/enabled"

    invoke-static {v1}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mDeepIdle:Landroid/preference/CheckBoxPreference;

    const-string v2, "1"

    const-string v3, "/sys/class/misc/deepidle/enabled"

    invoke-static {v3}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 67
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mIdleStats:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    :goto_0
    const-string v1, "/sys/class/misc/notification/enabled"

    invoke-static {v1}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mNotification:Landroid/preference/CheckBoxPreference;

    const-string v2, "1"

    const-string v3, "/sys/class/misc/notification/enabled"

    invoke-static {v3}, Lcom/cyanogenmod/settings/device/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    :goto_1
    const-string v1, "bld_tuning"

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/settings/device/bldTuningPreference;

    iput-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mbldTuning:Lcom/cyanogenmod/settings/device/bldTuningPreference;

    .line 80
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mbldTuning:Lcom/cyanogenmod/settings/device/bldTuningPreference;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mbldTuning:Lcom/cyanogenmod/settings/device/bldTuningPreference;

    invoke-static {}, Lcom/cyanogenmod/settings/device/bldTuningPreference;->isSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/device/bldTuningPreference;->setEnabled(Z)V

    .line 83
    :cond_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mDeepIdle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 70
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mIdleStats:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deepidle_stats"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/cyanogenmod/settings/device/GeneralFragmentActivity;->showIdleStatsDialog()V

    .line 160
    const/4 v0, 0x1

    .line 162
    :cond_0
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, key:Ljava/lang/String;
    const-string v3, "CrespoParts_General"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v3, "deepidle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, p2

    .line 93
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 94
    .local v1, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "1"

    .line 95
    .local v0, boxValue:Ljava/lang/String;
    :goto_0
    const-string v3, "/sys/class/misc/deepidle/enabled"

    invoke-static {v3, v0}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v0           #boxValue:Ljava/lang/String;
    .end local v1           #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 94
    .restart local v1       #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 96
    .end local v1           #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_2
    const-string v3, "touchkey_notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 97
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 98
    .restart local v1       #chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "1"

    .line 99
    .restart local v0       #boxValue:Ljava/lang/String;
    :goto_2
    const-string v3, "/sys/class/misc/notification/enabled"

    invoke-static {v3, v0}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    .end local v0           #boxValue:Ljava/lang/String;
    :cond_3
    const-string v0, "0"

    goto :goto_2
.end method
