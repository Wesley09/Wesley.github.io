.class Lcom/android/settings/dmr/DMRSettings$5;
.super Ljava/lang/Object;
.source "DMRSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dmr/DMRSettings;

.field final synthetic val$clickedList:Ljava/util/List;

.field final synthetic val$device_list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/dmr/DMRSettings;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/android/settings/dmr/DMRSettings$5;->this$0:Lcom/android/settings/dmr/DMRSettings;

    iput-object p2, p0, Lcom/android/settings/dmr/DMRSettings$5;->val$clickedList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/dmr/DMRSettings$5;->val$device_list:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private AddToClickedList(IZ)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "isChecked"    # Z

    .prologue
    .line 1733
    const-string v0, "Settings"

    const-string v1, "Add To Clicked List"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    if-eqz p2, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings$5;->val$clickedList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$5;->val$device_list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1739
    :goto_0
    return-void

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings$5;->val$clickedList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$5;->val$device_list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 1724
    invoke-direct {p0, p2, p3}, Lcom/android/settings/dmr/DMRSettings$5;->AddToClickedList(IZ)V

    .line 1726
    return-void
.end method
