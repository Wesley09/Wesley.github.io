.class public Lcom/android/settings/safetyzone/AccessPointPreference;
.super Landroid/preference/Preference;
.source "AccessPointPreference.java"


# instance fields
.field private mId:I

.field private mIsAccessPoint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "value"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    iput p2, p0, Lcom/android/settings/safetyzone/AccessPointPreference;->mId:I

    .line 30
    iput-boolean p3, p0, Lcom/android/settings/safetyzone/AccessPointPreference;->mIsAccessPoint:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getPreferenceId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/safetyzone/AccessPointPreference;->mId:I

    return v0
.end method

.method public isAccessPoint()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/safetyzone/AccessPointPreference;->mIsAccessPoint:Z

    return v0
.end method
