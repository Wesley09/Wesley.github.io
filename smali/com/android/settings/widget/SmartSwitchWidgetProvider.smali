.class public Lcom/android/settings/widget/SmartSwitchWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SmartSwitchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;,
        Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;,
        Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;
    }
.end annotation


# static fields
.field private static final SMARTALERT_ANIMATION_IMAGE:[I

.field private static final SMARTSTAY_ANIMATION_IMAGE:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

.field private static sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationType:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SmartSwitchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 440
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    .line 447
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTALERT_ANIMATION_IMAGE:[I

    return-void

    .line 440
    :array_0
    .array-data 4
        0x7f020478
        0x7f020479
        0x7f02047a
        0x7f02047b
    .end array-data

    .line 447
    :array_1
    .array-data 4
        0x7f0202cf
        0x7f0202d0
        0x7f0202d1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 426
    iput-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 434
    iput-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 435
    iput v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 436
    iput v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    .line 504
    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$2;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V

    iput-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    .line 794
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->stopAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040170

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 138
    .local v0, "views":Landroid/widget/RemoteViews;
    const v1, 0x7f0b044b

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 140
    const v1, 0x7f0b044f

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 144
    const v1, 0x7f0b0443

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 146
    const v1, 0x7f0b0447

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 149
    invoke-static {v0, p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 150
    return-object v0
.end method

.method private static checkController(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    .line 91
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->register()V

    .line 93
    :cond_0
    return-void
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    .line 82
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;->startObserving()V

    .line 84
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    const-class v1, Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 322
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 324
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 326
    return-object v0
.end method

.method private static isEnabled(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    if-nez p1, :cond_2

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 270
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "master_motion"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 273
    .local v1, "motionState":I
    if-nez v1, :cond_1

    .line 274
    const-string v2, "SmartSwitchWidgetProvider"

    const-string v4, "Motion is disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 309
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "motionState":I
    :cond_0
    :goto_0
    return v2

    .line 277
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "motionState":I
    :cond_1
    const-string v4, "motion_pick_up_to_call_out"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 279
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "motionState":I
    :cond_2
    if-ne p1, v2, :cond_3

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 281
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 283
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 285
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v4, "voice_input_control"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 287
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_4
    const/4 v4, 0x3

    if-ne p1, v4, :cond_5

    .line 288
    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkController(Landroid/content/Context;)V

    .line 289
    sget-object v2, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->isEnabled()Z

    move-result v2

    goto :goto_0

    .line 290
    :cond_5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_7

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 294
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v4, "master_motion"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 297
    .restart local v1    # "motionState":I
    if-nez v1, :cond_6

    .line 298
    const-string v2, "SmartSwitchWidgetProvider"

    const-string v4, "Motion is disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 299
    goto :goto_0

    .line 301
    :cond_6
    const-string v4, "motion_pick_up"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 303
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "motionState":I
    :cond_7
    const/4 v4, 0x5

    if-ne p1, v4, :cond_8

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    const-string v4, "psm_switch"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_8
    move v2, v3

    .line 309
    goto :goto_0
.end method

.method private showPowerSavingGuideDialog(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 738
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 741
    :cond_0
    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 742
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 743
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 744
    return-void
.end method

.method private showSmartAlertGuideDialog(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 578
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 579
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 580
    iput-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 583
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 585
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040103

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 586
    .local v2, "layout":Landroid/view/View;
    const v3, 0x7f0b0105

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 587
    .local v0, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v3, 0x7f0b0107

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 589
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090c12

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 594
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 596
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 597
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 607
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 608
    const-string v3, "SmartSwitchWidgetProvider"

    const-string v4, "Start animation..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 610
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    .line 611
    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    .line 613
    :cond_1
    return-void
.end method

.method private showSmartStayGuideDialog(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 455
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 456
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 457
    iput-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 460
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 462
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040105

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 463
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f0b0105

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 464
    .local v0, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v4, 0x7f0b0107

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 466
    const v4, 0x7f0b034f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 467
    .local v3, "textView":Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090e33

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const v4, 0x7f0b0350

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 470
    .restart local v3    # "textView":Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090e34

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    const v4, 0x7f0b0351

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 473
    .restart local v3    # "textView":Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090e35

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    const v4, 0x7f0b0352

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 476
    .restart local v3    # "textView":Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090ff1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090e2d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 484
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 486
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 487
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 497
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 498
    const-string v4, "SmartSwitchWidgetProvider"

    const-string v5, "Start animation..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iput v7, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 500
    iput v7, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    .line 501
    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    .line 503
    :cond_1
    return-void
.end method

.method private showVoiceCmdGuideDialog(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 545
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 546
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 547
    iput-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 550
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 552
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04004d

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 553
    .local v2, "layout":Landroid/view/View;
    const v3, 0x7f0b00b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 555
    .local v0, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090f4c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090f4e

    new-instance v5, Lcom/android/settings/widget/SmartSwitchWidgetProvider$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$3;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090f4f

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 571
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 573
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 574
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const-string v0, "SmartSwitchWidgetProvider"

    const-string v1, "Stop animation..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 5

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const-string v1, "SmartSwitchWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change animation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    .line 518
    .local v0, "animation":[I
    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 519
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTALERT_ANIMATION_IMAGE:[I

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 523
    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    array-length v2, v0

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 524
    iget-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->stopAnimation()V

    .line 526
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    if-nez v1, :cond_3

    const-wide/16 v1, 0x7d0

    :goto_1
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x1f4

    goto :goto_1
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 6
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f0b0448

    const v4, 0x7f0b0446

    const v1, 0x7f0b0444

    const v3, 0x7f020523

    const v2, 0x7f020522

    .line 175
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const v0, 0x7f020526

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 178
    invoke-virtual {p0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 188
    :goto_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const v0, 0x7f02052e

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 191
    const v0, 0x7f0b044a

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 228
    :goto_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    const v0, 0x7f0b044c

    const v1, 0x7f020530

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 231
    const v0, 0x7f0b044e

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 241
    :goto_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    const v0, 0x7f0b0450

    const v1, 0x7f02052a

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 244
    const v0, 0x7f0b0452

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 253
    :goto_3
    return-void

    .line 181
    :cond_0
    const v0, 0x7f020527

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 183
    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 194
    :cond_1
    const v0, 0x7f02052f

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 196
    const v0, 0x7f0b044a

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 234
    :cond_2
    const v0, 0x7f0b044c

    const v1, 0x7f020531

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 236
    const v0, 0x7f0b044e

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 247
    :cond_3
    const v0, 0x7f0b0450

    const v1, 0x7f02052b

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 249
    const v0, 0x7f0b0452

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 160
    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkController(Landroid/content/Context;)V

    .line 161
    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 163
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 164
    .local v0, "gm":Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 165
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 113
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;->stopObserving()V

    .line 115
    sput-object v1, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    .line 117
    :cond_0
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->unregister()V

    .line 119
    sput-object v1, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    .line 121
    :cond_1
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-static {p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 337
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 338
    const-string v7, "SmartSwitchWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START onReceive()_intent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v7, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 342
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 343
    .local v0, "buttonId":I
    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v3

    .line 344
    .local v3, "enabled":Z
    if-nez v0, :cond_3

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 346
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v3, :cond_2

    .line 348
    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 422
    .end local v0    # "buttonId":I
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "enabled":Z
    :cond_1
    return-void

    .line 351
    .restart local v0    # "buttonId":I
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "data":Landroid/net/Uri;
    .restart local v3    # "enabled":Z
    :cond_2
    const-string v6, "master_motion"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    invoke-static {p1}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 354
    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 357
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_3
    if-ne v0, v5, :cond_6

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 359
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    if-eqz v3, :cond_4

    .line 360
    const-string v5, "intelligent_sleep_mode"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 363
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 365
    .local v4, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v7, "pref_smart_stay_noti"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_5

    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showSmartStayGuideDialog(Landroid/content/Context;)V

    .line 369
    :cond_5
    const-string v6, "intelligent_sleep_mode"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 372
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_6
    const/4 v7, 0x2

    if-ne v0, v7, :cond_9

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 374
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    if-eqz v3, :cond_7

    .line 375
    const-string v5, "voice_input_control"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 377
    :cond_7
    const-string v7, "voiceinputcontrol_showNeverAgain"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_8

    .line 380
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showVoiceCmdGuideDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 382
    :cond_8
    const-string v6, "voice_input_control"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 385
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_9
    const/4 v7, 0x3

    if-ne v0, v7, :cond_b

    .line 386
    if-nez v3, :cond_a

    :goto_1
    invoke-static {v5}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->toggle(Z)V

    goto :goto_0

    :cond_a
    move v5, v6

    goto :goto_1

    .line 387
    :cond_b
    const/4 v7, 0x4

    if-ne v0, v7, :cond_e

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 389
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    if-eqz v3, :cond_c

    .line 391
    const-string v5, "motion_pick_up"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 394
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 396
    .restart local v4    # "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v7, "pref_smart_alert_noti"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_d

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showSmartAlertGuideDialog(Landroid/content/Context;)V

    .line 400
    :cond_d
    const-string v6, "master_motion"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 402
    invoke-static {p1}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 403
    const-string v6, "motion_pick_up"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 406
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_e
    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    .line 407
    if-eqz v3, :cond_f

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "psm_switch"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 410
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showPowerSavingGuideDialog(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 99
    invoke-static {p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 101
    .local v1, "view":Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 102
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method
