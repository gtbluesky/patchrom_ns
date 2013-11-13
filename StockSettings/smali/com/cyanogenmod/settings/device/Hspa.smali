.class public Lcom/cyanogenmod/settings/device/Hspa;
.super Ljava/lang/Object;
.source "Hspa.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public static isSupported()Z
    .locals 3

    .prologue
    .line 24
    const-string v1, "ro.crespoparts.rild.hspa"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, mHspa:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 28
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    invoke-static {}, Lcom/cyanogenmod/settings/device/Hspa;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "hspa"

    const-string v2, "23"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cyanogenmod/settings/device/Hspa;->sendIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static sendIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cyanogenmod.SamsungServiceMode.EXECUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, i:Landroid/content/Intent;
    const-string v1, "sub_type"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cyanogenmod/settings/device/Hspa;->mCtx:Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, p2}, Lcom/cyanogenmod/settings/device/Hspa;->sendIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method
