.class Lcom/android/settings/search/SearchListAdapter$2;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SearchListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchListAdapter;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/search/SearchListAdapter$2;->this$0:Lcom/android/settings/search/SearchListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 169
    .local v1, "position":I
    iget-object v3, p0, Lcom/android/settings/search/SearchListAdapter$2;->this$0:Lcom/android/settings/search/SearchListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings/search/SearchListAdapter;->getItem(I)Lcom/android/settings/search/SearchItem;

    move-result-object v3

    iget v2, v3, Lcom/android/settings/search/SearchItem;->rowId:I

    .line 171
    .local v2, "rowId":I
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "rowId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v3, p0, Lcom/android/settings/search/SearchListAdapter$2;->this$0:Lcom/android/settings/search/SearchListAdapter;

    # getter for: Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/search/SearchListAdapter;->access$000(Lcom/android/settings/search/SearchListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
