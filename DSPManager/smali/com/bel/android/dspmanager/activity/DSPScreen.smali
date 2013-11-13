.class public final Lcom/bel/android/dspmanager/activity/DSPScreen;
.super Landroid/preference/PreferenceFragment;
.source "DSPScreen.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/bel/android/dspmanager/activity/DSPScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bel/android/dspmanager/activity/DSPScreen;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/bel/android/dspmanager/activity/DSPScreen$1;

    invoke-direct {v0, p0}, Lcom/bel/android/dspmanager/activity/DSPScreen$1;-><init>(Lcom/bel/android/dspmanager/activity/DSPScreen;)V

    iput-object v0, p0, Lcom/bel/android/dspmanager/activity/DSPScreen;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/activity/DSPScreen;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "config"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, config:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/activity/DSPScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.bel.android.dspmanager."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 77
    :try_start_0
    const-class v3, Lcom/bel/android/dspmanager/R$xml;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 78
    .local v2, xmlId:I
    invoke-virtual {p0, v2}, Lcom/bel/android/dspmanager/activity/DSPScreen;->addPreferencesFromResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/activity/DSPScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/bel/android/dspmanager/activity/DSPScreen;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 85
    return-void

    .line 80
    .end local v2           #xmlId:I
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 90
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/activity/DSPScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/bel/android/dspmanager/activity/DSPScreen;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 91
    return-void
.end method
