.class Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$4;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;)V
    .locals 0

    .prologue
    .line 3035
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 3037
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 3038
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3039
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3040
    const/4 v0, 0x1

    .line 3042
    :cond_0
    return v0
.end method
