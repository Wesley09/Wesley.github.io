.class public Lcom/android/settings/wifi/Hs20AccessPoint;
.super Landroid/preference/Preference;
.source "Hs20AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/Hs20AccessPoint$PskType;
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field Hotspot20Available:Z

.field bssid:Ljava/lang/String;

.field frequency:I

.field hessid:Ljava/lang/String;

.field keyMgmts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCWErrorReason:I

.field private mCWState:I

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field networkId:I

.field operatorName:Ljava/lang/String;

.field pskType:Lcom/android/settings/wifi/Hs20AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/Hs20AccessPoint;->DBG:Z

    .line 44
    new-array v0, v2, [I

    const/high16 v2, 0x7f010000

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/Hs20AccessPoint;->STATE_SECURED:[I

    .line 47
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings/wifi/Hs20AccessPoint;->STATE_NONE:[I

    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/Hs20ScanResult;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/Hs20ScanResult;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 229
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->wpsAvailable:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->Hotspot20Available:Z

    .line 75
    sget-object v0, Lcom/android/settings/wifi/Hs20AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/Hs20AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->pskType:Lcom/android/settings/wifi/Hs20AccessPoint$PskType;

    .line 85
    iput v1, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mCWState:I

    .line 86
    iput v1, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mCWErrorReason:I

    .line 230
    const v0, 0x7f04011b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/Hs20AccessPoint;->setWidgetLayoutResource(I)V

    .line 231
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/Hs20AccessPoint;->loadResult(Landroid/net/wifi/Hs20ScanResult;)V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->refresh()V

    .line 233
    return-void
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/Hs20AccessPoint$PskType;
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 200
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 201
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 202
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 203
    sget-object v2, Lcom/android/settings/wifi/Hs20AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/Hs20AccessPoint$PskType;

    .line 210
    :goto_0
    return-object v2

    .line 204
    :cond_0
    if-eqz v1, :cond_1

    .line 205
    sget-object v2, Lcom/android/settings/wifi/Hs20AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/Hs20AccessPoint$PskType;

    goto :goto_0

    .line 206
    :cond_1
    if-eqz v0, :cond_2

    .line 207
    sget-object v2, Lcom/android/settings/wifi/Hs20AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/Hs20AccessPoint$PskType;

    goto :goto_0

    .line 209
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v2, Lcom/android/settings/wifi/Hs20AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/Hs20AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 3
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, 0x3

    .line 128
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const/4 v0, 0x1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    const/4 v0, 0x2

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "CCKM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/Hs20ScanResult;)V
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/Hs20ScanResult;

    .prologue
    const/4 v2, 0x2

    .line 305
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    .line 306
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->bssid:Ljava/lang/String;

    .line 307
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->HESSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->hessid:Ljava/lang/String;

    .line 308
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->frequency:I

    .line 309
    invoke-static {p1}, Lcom/android/settings/wifi/Hs20AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->security:I

    .line 310
    iget v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->wpsAvailable:Z

    .line 311
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "HS20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->Hotspot20Available:Z

    .line 312
    iget v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->security:I

    if-ne v0, v2, :cond_0

    .line 313
    invoke-static {p1}, Lcom/android/settings/wifi/Hs20AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/Hs20AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->pskType:Lcom/android/settings/wifi/Hs20AccessPoint$PskType;

    .line 314
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->networkId:I

    .line 315
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mRssi:I

    .line 316
    iput-object p1, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 317
    iget-object v0, p1, Landroid/net/wifi/Hs20ScanResult;->operatorName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->operatorName:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 319
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_2
    return-void

    .line 310
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 8

    .prologue
    const v7, 0x7f0902f5

    const v6, 0x7f0902f8

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 526
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 528
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "color":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 537
    .end local v0    # "color":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_3

    .line 542
    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v3}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 631
    :goto_1
    return-void

    .line 530
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2

    .line 531
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .restart local v0    # "color":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 534
    .end local v0    # "color":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 544
    :cond_3
    iget v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_4

    .line 545
    const v3, 0x7f0902fc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 546
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 547
    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 573
    :pswitch_0
    const v3, 0x7f0902f6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 550
    :pswitch_1
    const v3, 0x7f0902fb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 554
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 557
    :pswitch_3
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 560
    :pswitch_4
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 563
    :pswitch_5
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 566
    :pswitch_6
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 569
    :pswitch_7
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 576
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .local v2, "summary":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_6

    .line 585
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_6
    iget v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->security:I

    if-eqz v3, :cond_b

    .line 590
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 591
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->isSupportedSecurityType()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 594
    const v3, 0x7f090301

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_9

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090304

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/Hs20AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 596
    :cond_a
    const v3, 0x7f090303

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 612
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 613
    const v3, 0x7f090302

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 387
    instance-of v4, p1, Lcom/android/settings/wifi/Hs20AccessPoint;

    if-nez v4, :cond_1

    move v2, v3

    .line 423
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 390
    check-cast v1, Lcom/android/settings/wifi/Hs20AccessPoint;

    .line 392
    .local v1, "other":Lcom/android/settings/wifi/Hs20AccessPoint;
    iget-object v4, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v1, Lcom/android/settings/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v4, v5, :cond_2

    .line 393
    iget-object v4, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 396
    :cond_2
    iget v4, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mRssi:I

    iget v5, v1, Lcom/android/settings/wifi/Hs20AccessPoint;->mRssi:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_3

    .line 397
    iget v4, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 400
    :cond_3
    iget v4, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->networkId:I

    iget v5, v1, Lcom/android/settings/wifi/Hs20AccessPoint;->networkId:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_4

    .line 401
    iget v4, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->networkId:I

    if-ne v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 404
    :cond_4
    const-string v2, "rssi"

    const-string v3, "ssid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 405
    iget v2, v1, Lcom/android/settings/wifi/Hs20AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 406
    .local v0, "difference":I
    if-eqz v0, :cond_5

    move v2, v0

    .line 407
    goto :goto_0

    .line 423
    .end local v0    # "difference":I
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/Hs20AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 475
    iget v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 476
    const/4 v0, -0x1

    .line 478
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public isSupportedSecurityType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 650
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 657
    :cond_0
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 331
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mTitleText:Landroid/widget/TextView;

    .line 332
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mSummaryText:Landroid/widget/TextView;

    .line 349
    iget-object v7, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mTitleText:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 352
    .local v3, "res":Landroid/content/res/Resources;
    const v7, 0x7f0700b2

    :try_start_0
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 353
    .local v6, "xpp":Landroid/content/res/XmlResourceParser;
    invoke-static {v3, v6}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 354
    .local v1, "csl":Landroid/content/res/ColorStateList;
    iget-object v7, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v6    # "xpp":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 366
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0034

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, "signalStrength":[Ljava/lang/String;
    const v7, 0x7f0b0374

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 369
    .local v4, "signal":Landroid/widget/ImageView;
    iget v7, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mRssi:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_1

    .line 370
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    :goto_1
    return-void

    .line 355
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "signal":Landroid/widget/ImageView;
    .end local v5    # "signalStrength":[Ljava/lang/String;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "Settings.AccessPoint"

    const-string v8, "onBindView(), XmlResourceParser exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "res":Landroid/content/res/Resources;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "signal":Landroid/widget/ImageView;
    .restart local v5    # "signalStrength":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->getLevel()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0902e0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->getLevel()I

    move-result v8

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 378
    const v7, 0x7f020568

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    iget v7, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->security:I

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/settings/wifi/Hs20AccessPoint;->STATE_SECURED:[I

    :goto_2
    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/android/settings/wifi/Hs20AccessPoint;->STATE_NONE:[I

    goto :goto_2
.end method

.method public update(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 457
    .local v0, "reorder":Z
    :goto_0
    iput-object p1, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 458
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v1, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 459
    invoke-direct {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->refresh()V

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->notifyHierarchyChanged()V

    .line 463
    :cond_0
    return-void

    .line 456
    .end local v0    # "reorder":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    iget-object v3, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_1

    move v3, v1

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    xor-int v0, v3, v1

    .line 466
    .local v0, "reorder":Z
    iput-object p1, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 467
    iput-object p2, p0, Lcom/android/settings/wifi/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 468
    invoke-direct {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->refresh()V

    .line 469
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/wifi/Hs20AccessPoint;->notifyHierarchyChanged()V

    .line 472
    :cond_0
    return-void

    .end local v0    # "reorder":Z
    :cond_1
    move v3, v2

    .line 465
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
