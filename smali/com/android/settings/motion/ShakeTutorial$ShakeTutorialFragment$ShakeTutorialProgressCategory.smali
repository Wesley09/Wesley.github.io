.class public Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShakeTutorialProgressCategory"
.end annotation


# instance fields
.field private mProgress:Z

.field final synthetic this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    .line 365
    invoke-direct {p0, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->mProgress:Z

    .line 366
    const v0, 0x7f040112

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->setLayoutResource(I)V

    .line 367
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 372
    const v3, 0x7f0b035f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 373
    .local v1, "textView":Landroid/view/View;
    const v3, 0x7f0b035e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, "progressBar":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->mProgress:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 376
    .local v2, "visibility":I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    return-void

    .line 375
    .end local v2    # "visibility":I
    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1, "progressOn"    # Z

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->mProgress:Z

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->notifyChanged()V

    .line 388
    return-void
.end method
