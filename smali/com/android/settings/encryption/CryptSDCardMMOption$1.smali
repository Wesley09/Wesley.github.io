.class Lcom/android/settings/encryption/CryptSDCardMMOption$1;
.super Ljava/lang/Object;
.source "CryptSDCardMMOption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/encryption/CryptSDCardMMOption;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardMMOption;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardMMOption;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardMMOption$1;->this$0:Lcom/android/settings/encryption/CryptSDCardMMOption;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption$1;->this$0:Lcom/android/settings/encryption/CryptSDCardMMOption;

    # getter for: Lcom/android/settings/encryption/CryptSDCardMMOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->access$000(Lcom/android/settings/encryption/CryptSDCardMMOption;)Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 82
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption$1;->this$0:Lcom/android/settings/encryption/CryptSDCardMMOption;

    # invokes: Lcom/android/settings/encryption/CryptSDCardMMOption;->applyEncryptionUpdates()V
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->access$100(Lcom/android/settings/encryption/CryptSDCardMMOption;)V

    .line 83
    return-void
.end method
