.class Lcom/android/settings/flipfont/FontListPreference$10;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontListPreference;->RebootDialog()V
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
    .line 970
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$10;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$10;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    .line 973
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$10;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z
    invoke-static {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->access$502(Lcom/android/settings/flipfont/FontListPreference;Z)Z

    .line 974
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$10;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 975
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$10;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->restartNow()V

    .line 976
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$10;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->dismissList()V

    .line 977
    return-void
.end method
