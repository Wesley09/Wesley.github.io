.class Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;
.super Ljava/lang/Object;
.source "SmartSwitchWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showSmartAlertGuideDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;->this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    iput-object p2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 599
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 600
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 601
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_smart_alert_noti"

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 603
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;->this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    # invokes: Lcom/android/settings/widget/SmartSwitchWidgetProvider;->stopAnimation()V
    invoke-static {v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->access$000(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V

    .line 604
    return-void
.end method
