.class Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleRejectDevice"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .locals 0

    .prologue
    .line 1915
    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1916
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1920
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;->this$0:Lcom/android/settings/nearby/NearbySettings;

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/util/HashSet;

    if-nez v2, :cond_1

    .line 1935
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 1925
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    :try_start_0
    const-string v2, "AllshareSetting: "

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleRejectDevice"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    check-cast p2, Ljava/util/HashSet;

    .end local p2    # "newValue":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;->this$0:Lcom/android/settings/nearby/NearbySettings;

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/settings/nearby/AccessDeviceList;->removeRejectList(Ljava/util/HashSet;Landroid/content/Context;)V

    .line 1927
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;->this$0:Lcom/android/settings/nearby/NearbySettings;

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1928
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;->this$0:Lcom/android/settings/nearby/NearbySettings;

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/nearby/IMediaServer;->announceServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1935
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AllshareSetting: "

    const-string v3, "HandleSetUploadPath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
