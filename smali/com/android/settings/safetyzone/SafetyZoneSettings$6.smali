.class Lcom/android/settings/safetyzone/SafetyZoneSettings$6;
.super Ljava/lang/Object;
.source "SafetyZoneSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetyzone/SafetyZoneSettings;->showSafetyZoneEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetyzone/SafetyZoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/safetyzone/SafetyZoneSettings;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings$6;->this$0:Lcom/android/settings/safetyzone/SafetyZoneSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 599
    const-string v0, "SafetyZoneSettings"

    const-string v1, "showSafetyZoneEnableDialog(), cancel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings$6;->this$0:Lcom/android/settings/safetyzone/SafetyZoneSettings;

    # getter for: Lcom/android/settings/safetyzone/SafetyZoneSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->access$700(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 601
    return-void
.end method
