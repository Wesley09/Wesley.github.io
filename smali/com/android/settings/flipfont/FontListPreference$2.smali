.class Lcom/android/settings/flipfont/FontListPreference$2;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListPreference;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 367
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    iput-object v1, v0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    # setter for: Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->access$002(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;

    .line 371
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z
    invoke-static {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->access$102(Lcom/android/settings/flipfont/FontListPreference;Z)Z

    .line 372
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->restartLater()V

    .line 373
    return-void
.end method
