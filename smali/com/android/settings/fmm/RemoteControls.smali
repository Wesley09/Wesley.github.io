.class public Lcom/android/settings/fmm/RemoteControls;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RemoteControls.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fmm/RemoteControls$FragmentLocation;,
        Lcom/android/settings/fmm/RemoteControls$SamsungAccount;,
        Lcom/android/settings/fmm/RemoteControls$FragmentAccount;,
        Lcom/android/settings/fmm/RemoteControls$PreferenceListener;
    }
.end annotation


# static fields
.field public static chkboxFlag:Z


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Lcom/android/settings/fmm/RemoteControls$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fmm/RemoteControls$1;-><init>(Lcom/android/settings/fmm/RemoteControls;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/RemoteControls;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fmm/RemoteControls;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/RemoteControls;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/RemoteControls;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/RemoteControls;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/RemoteControls;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/RemoteControls;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/RemoteControls;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 214
    if-eqz p2, :cond_2

    .line 215
    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CMCC"

    const-string v1, "OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CU"

    const-string v1, "OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/settings/fmm/RemoteControls;->chkboxFlag:Z

    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->showNotificationChargeDialog()V

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    .line 112
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 113
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 114
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    .local v1, "padding":I
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 117
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    .line 127
    .end local v1    # "padding":I
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    const v0, 0x7f04012e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 194
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 197
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b0226

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b03bc

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b03bd

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 202
    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 210
    return-void

    .line 203
    .restart local v2    # "transaction":Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RemoteControls"

    const-string v4, "can\'t perform transaction.commit()"

    invoke-static {v3, v4, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    .line 176
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const v8, 0x7f0b03bc

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 133
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 134
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "FMMPreferences"

    invoke-virtual {v5, v6, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 139
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_fmm"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "samsung_signin"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_5

    .line 141
    :cond_1
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 145
    :goto_0
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "remote_control"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_6

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "remote_control"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    new-instance v3, Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/fmm/RemoteControls$PreferenceListener;-><init>(Lcom/android/settings/fmm/RemoteControls;Lcom/android/settings/fmm/RemoteControls$1;)V

    iput-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    .line 153
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;

    .line 157
    .local v0, "SA":Lcom/android/settings/fmm/RemoteControls$SamsungAccount;
    # getter for: Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungDescription:Landroid/accounts/AuthenticatorDescription;
    invoke-static {v0}, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->access$400(Lcom/android/settings/fmm/RemoteControls$SamsungAccount;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    if-nez v3, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 159
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    # getter for: Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungDescription:Landroid/accounts/AuthenticatorDescription;
    invoke-static {v0}, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->access$400(Lcom/android/settings/fmm/RemoteControls$SamsungAccount;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    if-nez v3, :cond_3

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 162
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_4
    :goto_2
    return-void

    .line 143
    .end local v0    # "SA":Lcom/android/settings/fmm/RemoteControls$SamsungAccount;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    move v3, v4

    .line 145
    goto :goto_1

    .line 163
    .restart local v0    # "SA":Lcom/android/settings/fmm/RemoteControls$SamsungAccount;
    .restart local v2    # "transaction":Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RemoteControls"

    const-string v4, "can\'t perform transaction.commit()"

    invoke-static {v3, v4, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400dc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 232
    .local v2, "mDialogLayout":Landroid/view/View;
    const v3, 0x7f0b0297

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 233
    .local v0, "chkbox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v3, Lcom/android/settings/fmm/RemoteControls$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/RemoteControls$2;-><init>(Lcom/android/settings/fmm/RemoteControls;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090fe0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fmm/RemoteControls$4;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/RemoteControls$4;-><init>(Lcom/android/settings/fmm/RemoteControls;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/fmm/RemoteControls$3;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/RemoteControls$3;-><init>(Lcom/android/settings/fmm/RemoteControls;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 263
    .local v1, "dialog":Landroid/app/Dialog;
    return-void
.end method
