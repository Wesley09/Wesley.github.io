.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1196
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1198
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 1203
    :goto_0
    return-void

    .line 1200
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1201
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    goto :goto_0
.end method
