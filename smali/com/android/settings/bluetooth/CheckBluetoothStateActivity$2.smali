.class Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;
.super Ljava/lang/Object;
.source "CheckBluetoothStateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->showEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$2;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    # invokes: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$100(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    .line 143
    return-void
.end method
