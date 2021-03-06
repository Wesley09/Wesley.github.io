.class public Lcom/android/settings/myprofile/SpLitColorPickerView;
.super Landroid/view/View;
.source "SpLitColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;,
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;,
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;
    }
.end annotation


# static fields
.field public static final COLORS:[I


# instance fields
.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SHADOW_HEIGHT:I

.field private COLOR_SHADOW_WIDTH:I

.field private COLOR_WIDTH:I

.field private GAP:I

.field private final LOG_TAG:Ljava/lang/String;

.field private MARGIN:I

.field public MAX_COLOR_INDEX:I

.field private NUM_COLUMN:I

.field private NUM_ROW:I

.field private POSITION_GAP:I

.field private bClearFocus:Z

.field private context:Landroid/content/Context;

.field private isShowDrawableInLastBlock:Z

.field private mColorShadow:Landroid/graphics/drawable/Drawable;

.field private mCurrentDeviceOrientation:I

.field private mFocusedColorIndex:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

.field private mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

.field private mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

.field private mPreviousColorIndex:I

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedColorIndex:I

.field private m_bDrawFocusImage:Z

.field private m_bKeepCustomColor:Z

.field private m_nSquitBeforeColorIndex:I

.field private rainbow:Landroid/graphics/Bitmap;

.field public useCustomColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xa5

    const/16 v8, 0x72

    const/16 v7, 0x30

    const/4 v6, 0x0

    const/16 v5, 0xff

    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0xfd

    const/16 v3, 0x2d

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x83

    const/16 v3, 0x5d

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xcb

    const/16 v3, 0x85

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    const/16 v3, 0xcc

    const/16 v4, 0x79

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/16 v3, 0x94

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x4

    const/16 v3, 0x67

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xfd

    const/16 v3, 0x2d

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 57
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    .line 65
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 66
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    .line 67
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    .line 75
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 76
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 79
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 83
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 100
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 57
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    .line 65
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 66
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    .line 67
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    .line 75
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 76
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 79
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 83
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 105
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 57
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    .line 65
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 66
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    .line 67
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    .line 75
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 76
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 79
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 83
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 110
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    .line 111
    return-void
.end method

.method private applyColor(IZ)V
    .locals 3
    .param p1, "nIndex"    # I
    .param p2, "isUpEvent"    # Z

    .prologue
    .line 255
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 256
    .local v0, "previousColorIndex":I
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    .line 260
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne p1, v1, :cond_2

    .line 262
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    invoke-interface {v1}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;->onSelectCustomColor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 266
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_0

    .line 267
    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 276
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 279
    :cond_1
    return-void

    .line 272
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    if-nez v1, :cond_0

    .line 273
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    goto :goto_0
.end method

.method private changeColor(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isUpEvent"    # Z

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 211
    .local v2, "pl":I
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    div-int v3, v5, v6

    .line 212
    .local v3, "pt":I
    const/4 v4, 0x0

    .line 213
    .local v4, "x_idx":I
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int v0, v5, v6

    .line 215
    .local v0, "cur_x":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_0

    .line 216
    add-int/lit8 v4, v1, -0x1

    .line 217
    int-to-float v5, v0

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    .line 222
    :cond_0
    int-to-float v5, v3

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-gt v5, v6, :cond_1

    .line 223
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v4, v5

    .line 224
    :cond_1
    invoke-direct {p0, v4, p3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->applyColor(IZ)V

    .line 252
    return-void

    .line 220
    :cond_2
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 283
    .local v15, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    move/from16 v16, v0

    .line 284
    .local v16, "y":I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 285
    .local v13, "rect":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 286
    .local v14, "selectorRect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 288
    .local v10, "focusedRect":Landroid/graphics/Rect;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    if-ge v12, v1, :cond_4

    .line 289
    const/4 v15, 0x0

    .line 290
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v12

    add-int/lit8 v16, v1, 0x5

    .line 292
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-ge v11, v1, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    add-int v2, v2, v16

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    mul-int/2addr v1, v12

    add-int v9, v1, v11

    .line 295
    .local v9, "colorIndex":I
    sget-object v1, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    mul-int/2addr v2, v12

    add-int/2addr v2, v11

    aget v8, v1, v2

    .line 297
    .local v8, "color":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    add-int/lit8 v1, v1, -0x1

    if-ne v12, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v1, :cond_0

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203a4

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 299
    .local v7, "bitmapTrans":Landroid/graphics/Bitmap;
    iget v1, v13, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v13, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 302
    .end local v7    # "bitmapTrans":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 303
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 307
    iget v1, v13, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v13, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 312
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    if-ne v9, v1, :cond_1

    .line 313
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 316
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getDrawFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    if-ne v9, v1, :cond_2

    .line 319
    invoke-virtual {v10, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 323
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    add-int/2addr v1, v2

    add-int/2addr v15, v1

    .line 292
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 288
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v8    # "color":I
    .end local v9    # "colorIndex":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 327
    .end local v11    # "i":I
    :cond_4
    iget v1, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    sub-int/2addr v1, v2

    iput v1, v14, Landroid/graphics/Rect;->left:I

    .line 328
    iget v1, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v1, v2

    iput v1, v14, Landroid/graphics/Rect;->right:I

    .line 329
    iget v1, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    sub-int/2addr v1, v2

    iput v1, v14, Landroid/graphics/Rect;->top:I

    .line 330
    iget v1, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v1, v2

    iput v1, v14, Landroid/graphics/Rect;->bottom:I

    .line 331
    iget v1, v14, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_5

    .line 332
    const/4 v1, 0x0

    iput v1, v14, Landroid/graphics/Rect;->left:I

    .line 334
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    if-eqz v1, :cond_6

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getDrawFocus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 345
    :cond_7
    return-void
.end method

.method private initColorPicker(II)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v12, 0x7f0203a2

    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 132
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    .line 133
    iput p2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_HEIGHT:I

    .line 135
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_PICKER_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    .line 139
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 140
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 142
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 143
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_HEIGHT:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 147
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_SHADOW_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v7, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    invoke-direct {v3, v10, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    .line 154
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    .line 156
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    .line 157
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    .line 159
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    :cond_2
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    .line 173
    .local v5, "colors":[I
    new-array v6, v11, [F

    fill-array-data v6, :array_1

    .line 177
    .local v6, "positions":[F
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 178
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 179
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 180
    .local v8, "c":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 182
    .local v0, "g":Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 183
    .local v9, "p":Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 184
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 186
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    iget v7, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    .end local v0    # "g":Landroid/graphics/LinearGradient;
    .end local v8    # "c":Landroid/graphics/Canvas;
    .end local v9    # "p":Landroid/graphics/Paint;
    :cond_3
    return-void

    .line 169
    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
    .end array-data

    .line 173
    :array_1
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateRowVsColumn()V
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mCurrentDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 587
    :goto_0
    return-void

    .line 578
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 579
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    goto :goto_0

    .line 583
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 584
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    goto :goto_0

    .line 576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 444
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 374
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getColorIndex()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    return v0
.end method

.method public getDrawFocus()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->drawColors(Landroid/graphics/Canvas;)V

    .line 411
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x42

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 464
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->playSoundEffect(I)V

    .line 466
    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    .line 468
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-ge v1, v2, :cond_1

    .line 470
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 472
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 478
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 483
    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_4

    .line 485
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-lt v1, v2, :cond_3

    .line 487
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 488
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 492
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 493
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 498
    :cond_4
    const/16 v1, 0x15

    if-ne p1, v1, :cond_6

    .line 500
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    if-nez v1, :cond_5

    .line 502
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 503
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 507
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 508
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 513
    :cond_6
    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    .line 515
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_7

    .line 517
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 518
    invoke-virtual {p0, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 522
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 523
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 528
    :cond_8
    if-ne p1, v5, :cond_a

    .line 530
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColorIndex(I)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    .line 532
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->applyColor(IZ)V

    .line 534
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_0

    .line 536
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v1, v2, :cond_9

    .line 537
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    goto/16 :goto_0

    .line 539
    :cond_9
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    invoke-interface {v1}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onUnRequestColorPicker()V

    goto/16 :goto_0

    .line 545
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 557
    :cond_0
    const/4 v0, 0x1

    .line 559
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 395
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 396
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v1, :cond_0

    .line 397
    sget-object v1, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    const/16 v2, 0xf

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 400
    :cond_0
    sub-int v1, p4, p2

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    mul-int v0, v1, v2

    .line 401
    .local v0, "height":I
    if-eqz p1, :cond_1

    .line 402
    sub-int v1, p4, p2

    invoke-direct {p0, v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->initColorPicker(II)V

    .line 404
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 416
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 417
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    return v6

    .line 419
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0b0244

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 420
    .local v1, "mView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 421
    iget-object v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 422
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 426
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "mView":Landroid/view/View;
    :pswitch_1
    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->changeColor(FFZ)V

    goto :goto_0

    .line 429
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->playSoundEffect(I)V

    .line 430
    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/myprofile/SpLitColorPickerView;->changeColor(FFZ)V

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, "foundInPreset":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_0

    .line 351
    sget-object v2, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_2

    .line 352
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 353
    const/4 v0, 0x1

    .line 358
    :cond_0
    if-nez v0, :cond_3

    .line 359
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setCustomColor(I)V

    .line 370
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    .line 371
    return-void

    .line 350
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    if-nez v2, :cond_1

    .line 365
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    goto :goto_1
.end method

.method public setColorIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 123
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 124
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 125
    return-void
.end method

.method public setCustomColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    .line 207
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 0
    .param p1, "screenOrientation"    # I

    .prologue
    .line 571
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mCurrentDeviceOrientation:I

    .line 572
    invoke-direct {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->updateRowVsColumn()V

    .line 573
    return-void
.end method

.method public setDrawFocus(Z)V
    .locals 0
    .param p1, "m_bDrawFocusImage"    # Z

    .prologue
    .line 567
    iput-boolean p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 568
    return-void
.end method

.method public setKeepCustomColor(Z)V
    .locals 0
    .param p1, "a_bKeep"    # Z

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 460
    return-void
.end method

.method public setLastIndexColorValue(IZ)V
    .locals 2
    .param p1, "backgroundColorValueFromDB"    # I
    .param p2, "value"    # Z

    .prologue
    .line 590
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    .line 591
    iput-boolean p2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    .line 593
    return-void
.end method

.method public setOnColorChangedListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    .line 383
    return-void
.end method

.method public setOnSelectCustomColorListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    .line 387
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v0, :cond_0

    .line 195
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 196
    :cond_0
    return-void
.end method
