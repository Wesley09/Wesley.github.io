.class Lcom/android/settings/DisplaySettings$6$1;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings$6;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DisplaySettings$6;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings$6;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$6$1;->this$1:Lcom/android/settings/DisplaySettings$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$6$1;->this$1:Lcom/android/settings/DisplaySettings$6;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings$6;->this$0:Lcom/android/settings/DisplaySettings;

    # getter for: Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$400(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 311
    return-void
.end method
