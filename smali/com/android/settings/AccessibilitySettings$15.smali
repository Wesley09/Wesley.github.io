.class Lcom/android/settings/AccessibilitySettings$15;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$15;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$15;->this$0:Lcom/android/settings/AccessibilitySettings;

    # getter for: Lcom/android/settings/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$1100(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2084
    return-void
.end method
