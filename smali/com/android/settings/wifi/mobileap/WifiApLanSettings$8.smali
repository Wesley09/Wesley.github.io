.class Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    .line 455
    return-void
.end method
