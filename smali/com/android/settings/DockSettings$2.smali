.class Lcom/android/settings/DockSettings$2;
.super Ljava/lang/Object;
.source "DockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DockSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DockSettings;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/settings/DockSettings$2;->this$0:Lcom/android/settings/DockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/settings/DockSettings$2;->this$0:Lcom/android/settings/DockSettings;

    invoke-virtual {v1}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desk_home_screen_display"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    new-instance v0, Lcom/android/settings/DreamBackend;

    iget-object v1, p0, Lcom/android/settings/DockSettings$2;->this$0:Lcom/android/settings/DockSettings;

    invoke-virtual {v1}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "mBackend":Lcom/android/settings/DreamBackend;
    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 386
    :cond_0
    return-void
.end method
