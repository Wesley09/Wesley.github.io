.class Lcom/android/settings/wifi/WifiApDialog$3;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # invokes: Lcom/android/settings/wifi/WifiApDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$1600(Lcom/android/settings/wifi/WifiApDialog;)V

    .line 746
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 740
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->access$1702(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 742
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v1, 0x3f

    .line 727
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # getter for: Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$1700(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # getter for: Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$1700(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_1

    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # getter for: Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$1800(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # getter for: Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$1700(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # getter for: Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$600(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # getter for: Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$600(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090305

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 735
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # getter for: Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$1800(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # getter for: Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$1800(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 737
    :cond_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    # getter for: Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$1800(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
