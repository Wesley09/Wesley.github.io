.class public Lcom/android/settings/dormantmode/DormantmodeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DormantmodeSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DIALOG_CURRENT_TIMEPICKER:I


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

.field private mAllowedContactsPref:Landroid/preference/ListPreference;

.field private mAllowedListPref:Landroid/preference/Preference;

.field private mAlwaysPref:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

.field private final mDormantModeObserver:Landroid/database/ContentObserver;

.field private mEndhour:I

.field private mEndmin:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mHelpPref:Landroid/preference/Preference;

.field private mIncomingCallPref:Landroid/preference/CheckBoxPreference;

.field private mIsGoingIntoAllowedList:Z

.field private mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

.field private mNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetTimPref:Landroid/preference/PreferenceCategory;

.field private mSetTimeDialogPref:Landroid/preference/Preference;

.field private mStarthour:I

.field private mStartmin:I

.field private mTimeFromBtn:Landroid/widget/Button;

.field private mTimePickerDlg:Landroid/app/Dialog;

.field private mTimeToBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    .line 99
    new-instance v0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings$1;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private TimeFormat(II)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "hour"    # I
    .param p2, "mine"    # I

    .prologue
    const/16 v7, 0xc

    .line 497
    const-string v2, ""

    .line 498
    .local v2, "mTimeAMPM":Ljava/lang/String;
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 499
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "dfsAmPm":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 502
    if-ge p1, v7, :cond_3

    .line 503
    if-nez p1, :cond_0

    add-int/lit8 p1, p1, 0xc

    .line 504
    :cond_0
    const/4 v6, 0x0

    aget-object v2, v1, v6

    .line 511
    :cond_1
    :goto_0
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v7, p1

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "mTimeHour":Ljava/lang/String;
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v7, p2

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "mTimeMin":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .local v5, "setTime":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isRTLMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 517
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u200e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 521
    :goto_1
    return-object v5

    .line 506
    .end local v3    # "mTimeHour":Ljava/lang/String;
    .end local v4    # "mTimeMin":Ljava/lang/String;
    .end local v5    # "setTime":Ljava/lang/StringBuilder;
    :cond_3
    if-eq p1, v7, :cond_4

    add-int/lit8 p1, p1, -0xc

    .line 507
    :cond_4
    const/4 v6, 0x1

    aget-object v2, v1, v6

    goto :goto_0

    .line 519
    .restart local v3    # "mTimeHour":Ljava/lang/String;
    .restart local v4    # "mTimeMin":Ljava/lang/String;
    .restart local v5    # "setTime":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/dormantmode/DormantmodeSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/dormantmode/DormantmodeSettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    return-void
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 49
    sput p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/dormantmode/DormantmodeSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/dormantmode/DormantmodeSettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dormantmode/DormantmodeSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    return-void
.end method

.method private setAllowListsummery(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, "values":[Ljava/lang/String;
    const v2, 0x7f0a008d

    .line 527
    .local v2, "summaryArrayResId":I
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 530
    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_1
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private setEndTime(II)V
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_end_hour"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_end_min"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->TimeFormat(II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 493
    .local v0, "EndTime":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 494
    return-void
.end method

.method private setStartTime(II)V
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_start_hour"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_start_min"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->TimeFormat(II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 484
    .local v0, "StartTime":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 485
    return-void
.end method


# virtual methods
.method initDromantswitchBtn()V
    .locals 9

    .prologue
    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 312
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 314
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 315
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 316
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 317
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 319
    .local v1, "padding":I
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 320
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 322
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 327
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    .line 330
    .end local v1    # "padding":I
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v3, Lcom/android/settings/dormantmode/DormantModeEnabler;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4, v7}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Z)V

    iput-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    .line 332
    return-void
.end method

.method public initPref()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    const-string v1, "dormant_mode_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 194
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    const v4, 0x7f040070

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 200
    const-string v1, "disable_incoming_calls"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    .line 201
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dormant_disable_incoming_calls"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    const-string v1, "disable_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 204
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dormant_disable_notifications"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    const-string v1, "disable_alarm_and_timer"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    .line 207
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dormant_disable_alarm_and_timer"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    const-string v1, "disable_led_indicator"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    .line 210
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dormant_disable_led_indicator"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    const-string v1, "always"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    .line 213
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dormant_always"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 215
    const-string v1, "allowed_contacts"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    .line 216
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dormant_allow_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dormant_allow_list"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setAllowListsummery(Ljava/lang/String;)V

    .line 221
    const-string v1, "allowed_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    .line 222
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Custom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 225
    const-string v1, "set_time_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    .line 227
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Lcom/android/settings/dormantmode/DormantmodeSettings$3;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/settings/dormantmode/DormantmodeSettings$3;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    .line 254
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_b

    :goto_6
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    const v2, 0x7f040073

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v1, "allowed_contacts_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    :cond_2
    const-string v1, "feature_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 269
    .local v0, "featureCategory":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_4

    .line 271
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    :cond_4
    return-void

    .line 196
    .end local v0    # "featureCategory":Landroid/preference/PreferenceCategory;
    :cond_5
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    const v4, 0x7f04006f

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 201
    goto/16 :goto_1

    :cond_7
    move v1, v3

    .line 204
    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 207
    goto/16 :goto_3

    :cond_9
    move v1, v3

    .line 210
    goto/16 :goto_4

    :cond_a
    move v1, v3

    .line 213
    goto/16 :goto_5

    :cond_b
    move v2, v3

    .line 254
    goto/16 :goto_6
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_incoming_calls"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 386
    .local v1, "incoming":I
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_notifications"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 387
    .local v3, "notification":I
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_alarm_and_timer"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, "alarm":I
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_led_indicator"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 391
    .local v2, "indicator":I
    const/4 v2, 0x0

    .line 394
    const-string v5, "DormantModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 396
    const/4 v4, 0x1

    .line 398
    :cond_0
    return v4
.end method

.method loadDormantTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 339
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->addPreferencesFromResource(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DORMANTMODE_ACTIVITY_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mFilter:Landroid/content/IntentFilter;

    .line 116
    new-instance v0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dormantmode/DormantmodeSettings$2;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->initDromantswitchBtn()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->initPref()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->updateDormantmodepage()V

    .line 128
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 404
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 406
    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    .line 408
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 421
    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    .line 425
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    return-object v0

    .line 410
    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    .line 415
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 416
    .local v6, "calendar":Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    const-string v1, "DormantModeSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 159
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    iget-boolean v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "state":I
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    if-ne v4, v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0910f0

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 172
    .end local v0    # "state":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings/dormantmode/DormantModeEnabler;->pause()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 457
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 458
    const-string v1, "allowed_contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    check-cast p2, Ljava/lang/String;

    .line 461
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_allow_list"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 462
    invoke-direct {p0, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setAllowListsummery(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    const-string v0, "Custom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 469
    const-class v1, Lcom/android/settings/dormantmode/DormantModeCustomList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0910ea

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    .line 472
    const-string v0, "DormantModeSettings"

    const-string v1, "display custom contact list for tablet"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    return v6

    .line 464
    :catch_0
    move-exception v0

    .line 465
    const-string v1, "DormantModeSettings"

    const-string v2, "could not set KEY_ALLOW_LIST"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 344
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 345
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 346
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_incoming_calls"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    .end local v1    # "value":Z
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->isAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 380
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .restart local v1    # "value":Z
    :cond_2
    move v2, v4

    .line 346
    goto :goto_0

    .line 348
    .end local v1    # "value":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 349
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 350
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_notifications"

    if-eqz v1, :cond_4

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_3

    .line 352
    .end local v1    # "value":Z
    :cond_5
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 353
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 354
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_alarm_and_timer"

    if-eqz v1, :cond_6

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_4

    .line 356
    .end local v1    # "value":Z
    :cond_7
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 357
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 358
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_led_indicator"

    if-eqz v1, :cond_8

    move v2, v3

    :goto_5
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v2, v4

    goto :goto_5

    .line 360
    .end local v1    # "value":Z
    :cond_9
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 361
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 362
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_always"

    if-eqz v1, :cond_a

    move v2, v3

    :goto_6
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 365
    const-string v2, "DormantModeSettings"

    const-string v5, "Broadcast intent : android.settings.DORMANTMODE_CHANGED"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_a
    move v2, v4

    .line 362
    goto :goto_6

    :cond_b
    move v2, v4

    .line 363
    goto :goto_7

    .line 368
    .end local v1    # "value":Z
    :cond_c
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    iput-boolean v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    goto/16 :goto_1

    .line 377
    :cond_d
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    const-string v0, "DormantModeSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->resume()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_switch_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->updateDormantmodepage()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 148
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    .line 149
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    .line 152
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    .line 153
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 180
    const-string v0, "DormantModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 187
    :cond_1
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v3, 0x1

    .line 430
    sget v1, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    if-ne v1, v3, :cond_2

    .line 431
    iput p2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    .line 432
    iput p3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    .line 433
    invoke-direct {p0, p2, p3}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    .line 439
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    if-ne v1, v2, :cond_1

    .line 440
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3

    .line 441
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    .line 442
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 443
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    .line 448
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0910e5

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 450
    :cond_1
    const-string v1, "DormantModeSettings"

    const-string v2, "Broadcast intent : android.settings.DORMANTMODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    return-void

    .line 434
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget v1, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 435
    iput p2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    .line 436
    iput p3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 437
    invoke-direct {p0, p2, p3}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    goto :goto_0

    .line 445
    :cond_3
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 446
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    goto :goto_1
.end method

.method updateDormantmodepage()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 288
    .local v0, "State":I
    if-nez v0, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 290
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 291
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 292
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 293
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 294
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 296
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 308
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 299
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 300
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 302
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 303
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 304
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 306
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Custom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
