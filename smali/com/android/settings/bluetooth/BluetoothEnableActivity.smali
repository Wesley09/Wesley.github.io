.class public Lcom/android/settings/bluetooth/BluetoothEnableActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnableActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnableActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040033

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b0085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    .local v0, "contentView":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090d89

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090d8a

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 123
    packed-switch p2, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 125
    :pswitch_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const v0, 0x7f090d91

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->finish()V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->finish()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->finish()V

    .line 149
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 77
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f090d88

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 79
    const v1, 0x7f090d8c

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 80
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    const v1, 0x7f090d8b

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 82
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->setupAlert()V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 99
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    .line 101
    const-string v0, "BluetoothEnableActivity"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnableActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    return-void
.end method
