.class public Lcom/android/settings/motion2013/MotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPan:Landroid/preference/SwitchPreferenceScreen;

.field private mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUp:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShake:Landroid/preference/SwitchPreferenceScreen;

.field private mSupportBrowser:Z

.field private mTilt:Landroid/preference/SwitchPreferenceScreen;

.field private mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

.field private mTurnOver:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public isAllMotionDisabled()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    iput-object v13, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 334
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 335
    .local v2, "isTablet":Z
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    .line 337
    .local v3, "isVoiceCapable":Z
    const/4 v9, 0x0

    .line 339
    .local v9, "tiltZoom":I
    const/4 v8, 0x0

    .line 341
    .local v8, "tiltScroll":I
    const/4 v5, 0x0

    .line 343
    .local v5, "panMove":I
    const/4 v4, 0x0

    .line 345
    .local v4, "panBrowse":I
    const/4 v6, 0x0

    .line 347
    .local v6, "shake":I
    const/4 v1, 0x0

    .line 349
    .local v1, "doubleTap":I
    if-eqz v3, :cond_0

    iget-object v13, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "motion_pick_up"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 351
    .local v7, "smartAlert":I
    :goto_0
    const/4 v0, 0x0

    .line 353
    .local v0, "directCall":I
    if-nez v2, :cond_1

    iget-object v13, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "motion_overturn"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 356
    .local v10, "turnover":I
    :goto_1
    or-int/lit8 v13, v7, 0x0

    or-int/2addr v13, v0

    or-int/2addr v13, v10

    if-ge v13, v11, :cond_2

    :goto_2
    return v11

    .end local v0    # "directCall":I
    .end local v7    # "smartAlert":I
    .end local v10    # "turnover":I
    :cond_0
    move v7, v12

    .line 349
    goto :goto_0

    .restart local v0    # "directCall":I
    .restart local v7    # "smartAlert":I
    :cond_1
    move v10, v12

    .line 353
    goto :goto_1

    .restart local v10    # "turnover":I
    :cond_2
    move v11, v12

    .line 356
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 275
    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 292
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0, v12}, Lcom/android/settings/motion2013/MotionSettings;->setHasOptionsMenu(Z)V

    .line 84
    const v10, 0x7f070055

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    .line 87
    new-instance v10, Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 88
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v10, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    const-string v10, "tilt"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    .line 91
    const-string v10, "tilt_to_scroll_list"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    .line 92
    const-string v10, "pan"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    .line 93
    const-string v10, "pan_to_browse_image"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    .line 94
    const-string v10, "shake"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    .line 95
    const-string v10, "double_tap"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    .line 96
    const-string v10, "pick_up"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    .line 97
    const-string v10, "pick_up_to_call_out"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    .line 98
    const-string v10, "turn_over"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    .line 100
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 112
    .local v3, "ps":Landroid/preference/PreferenceScreen;
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 114
    .local v0, "isTablet":Z
    const/4 v6, 0x0

    .line 116
    .local v6, "removeTiltCategory":I
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    add-int/lit8 v6, v6, 0x1

    .line 120
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    add-int/lit8 v6, v6, 0x1

    .line 123
    if-le v6, v12, :cond_0

    .line 124
    const-string v10, "tilt_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 125
    .local v8, "tiltCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    .end local v8    # "tiltCategory":Landroid/preference/PreferenceCategory;
    :cond_0
    const/4 v4, 0x0

    .line 131
    .local v4, "removePanCategory":I
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 135
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    add-int/lit8 v4, v4, 0x1

    .line 138
    if-le v4, v12, :cond_1

    .line 139
    const-string v10, "pan_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 140
    .local v1, "panCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    .end local v1    # "panCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    const-string v10, "shake_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 146
    .local v7, "shakeCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    const/4 v5, 0x0

    .line 154
    .local v5, "removePickupCategory":I
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 155
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    add-int/lit8 v5, v5, 0x1

    .line 159
    :cond_2
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    add-int/lit8 v5, v5, 0x1

    .line 162
    if-le v5, v12, :cond_3

    .line 163
    const-string v10, "pick_up_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 164
    .local v2, "pickupCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    .end local v2    # "pickupCategory":Landroid/preference/PreferenceCategory;
    :cond_3
    if-eqz v0, :cond_4

    .line 168
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    const-string v10, "turn_over_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 170
    .local v9, "turnoverCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v3, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    .end local v9    # "turnoverCategory":Landroid/preference/PreferenceCategory;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.android.browser"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mSupportBrowser:Z

    .line 174
    iget-boolean v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mSupportBrowser:Z

    if-nez v10, :cond_5

    .line 175
    iget-object v10, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    const v11, 0x7f090c15

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 177
    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    const v1, 0x7f090a3a

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201aa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 269
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 264
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 267
    const/4 v1, 0x1

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 231
    iget-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->isAllMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090c07

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 239
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 301
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 303
    .local v1, "value":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_zooming"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->isAllMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 326
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 329
    :cond_1
    return v2

    .end local v1    # "value":I
    :cond_2
    move v1, v3

    .line 302
    goto :goto_0

    .line 305
    .restart local v1    # "value":I
    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_4

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_tilt_to_list_scrolling"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 307
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_5

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_panning"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 309
    :cond_5
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_6

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pan_to_browse_image"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 311
    :cond_6
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_7

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_shake"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 313
    :cond_7
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_8

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_double_tap"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 315
    :cond_8
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_9

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 317
    :cond_9
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_a

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 319
    :cond_a
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 297
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/16 v6, 0x10

    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 182
    iput-boolean v3, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 184
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 187
    .local v1, "padding":I
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3, v3, v1, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 188
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 190
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 194
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 197
    .end local v1    # "padding":I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 204
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 205
    .local v0, "motionEngineState":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 207
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 208
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 209
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 210
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 211
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 212
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 213
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 214
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 215
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 217
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_zooming"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 218
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_tilt_to_list_scrolling"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 219
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_panning"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    :goto_3
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 220
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pan_to_browse_image"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    :goto_4
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 221
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_shake"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v2

    :goto_5
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 222
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_double_tap"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    :goto_6
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 223
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v2

    :goto_7
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 224
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    :goto_8
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 225
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_overturn"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    :goto_9
    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 226
    return-void

    .end local v0    # "motionEngineState":Z
    :cond_2
    move v0, v3

    .line 204
    goto/16 :goto_0

    .restart local v0    # "motionEngineState":Z
    :cond_3
    move v4, v3

    .line 217
    goto/16 :goto_1

    :cond_4
    move v4, v3

    .line 218
    goto :goto_2

    :cond_5
    move v4, v3

    .line 219
    goto :goto_3

    :cond_6
    move v4, v3

    .line 220
    goto :goto_4

    :cond_7
    move v4, v3

    .line 221
    goto :goto_5

    :cond_8
    move v4, v3

    .line 222
    goto :goto_6

    :cond_9
    move v4, v3

    .line 223
    goto :goto_7

    :cond_a
    move v4, v3

    .line 224
    goto :goto_8

    :cond_b
    move v2, v3

    .line 225
    goto :goto_9
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_0
    return-void
.end method
