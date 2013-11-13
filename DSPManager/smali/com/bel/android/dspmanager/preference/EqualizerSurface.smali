.class public Lcom/bel/android/dspmanager/preference/EqualizerSurface;
.super Landroid/view/SurfaceView;
.source "EqualizerSurface.java"


# static fields
.field public static MAX_DB:I

.field private static MAX_FREQ:I

.field public static MIN_DB:I

.field private static MIN_FREQ:I

.field private static SAMPLING_RATE:I


# instance fields
.field private final mControlBar:Landroid/graphics/Paint;

.field private final mControlBarKnob:Landroid/graphics/Paint;

.field private final mControlBarText:Landroid/graphics/Paint;

.field private final mFrequencyResponseBg:Landroid/graphics/Paint;

.field private final mFrequencyResponseHighlight:Landroid/graphics/Paint;

.field private final mFrequencyResponseHighlight2:Landroid/graphics/Paint;

.field private final mGridLines:Landroid/graphics/Paint;

.field private mHeight:I

.field private mLevels:[F

.field private final mWhite:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0xa

    sput v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MIN_FREQ:I

    .line 19
    const/16 v0, 0x5208

    sput v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MAX_FREQ:I

    .line 20
    const v0, 0xac44

    sput v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->SAMPLING_RATE:I

    .line 21
    const/16 v0, -0xc

    sput v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MIN_DB:I

    .line 22
    const/16 v0, 0xc

    sput v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MAX_DB:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    const/4 v6, -0x1

    const/high16 v5, -0x100

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->setWillNotDraw(Z)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWhite:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWhite:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWhite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x4150

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 40
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWhite:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mGridLines:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mGridLines:Landroid/graphics/Paint;

    const v1, 0x22ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mGridLines:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWhite:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarText:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 48
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarText:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBar:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBar:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBar:Landroid/graphics/Paint;

    const v1, -0x77440001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBar:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBar:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBar:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarKnob:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarKnob:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarKnob:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarKnob:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseBg:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseBg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseBg:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight:Landroid/graphics/Paint;

    const/high16 v1, 0x40c0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight:Landroid/graphics/Paint;

    const v1, 0x20ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight2:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight2:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight2:Landroid/graphics/Paint;

    const v1, 0x40ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    return-void
.end method

.method private static color(FFFF)I
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 129
    const/high16 v1, 0x437f

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v0, v1, 0x18

    .line 130
    .local v0, color:I
    invoke-static {p0, p3}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->gamma(FF)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 131
    invoke-static {p1, p3}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->gamma(FF)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 132
    invoke-static {p2, p3}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->gamma(FF)I

    move-result v1

    or-int/2addr v0, v1

    .line 133
    return v0
.end method

.method private static gamma(FF)I
    .locals 10
    .parameter "intensity"
    .parameter "alpha"

    .prologue
    .line 115
    const-wide/16 v0, 0xff

    const-wide/16 v2, 0x0

    const-wide v4, 0x406fe00000000000L

    float-to-double v6, p0

    const-wide v8, 0x3fdd1745d1745d17L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private lin2dB(D)D
    .locals 4
    .parameter "rho"

    .prologue
    .line 284
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4034

    mul-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x3fa7066666666666L

    goto :goto_0
.end method

.method private projectX(D)F
    .locals 10
    .parameter "freq"

    .prologue
    .line 266
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 267
    .local v4, pos:D
    sget v6, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MIN_FREQ:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 268
    .local v2, minPos:D
    sget v6, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MAX_FREQ:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 269
    .local v0, maxPos:D
    sub-double v6, v4, v2

    sub-double v8, v0, v2

    div-double/2addr v6, v8

    double-to-float v6, v6

    return v6
.end method

.method private projectY(D)F
    .locals 6
    .parameter "dB"

    .prologue
    .line 279
    sget v2, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MIN_DB:I

    int-to-double v2, v2

    sub-double v2, p1, v2

    sget v4, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MAX_DB:I

    sget v5, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MIN_DB:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 280
    .local v0, pos:D
    const-wide/high16 v2, 0x3ff0

    sub-double/2addr v2, v0

    double-to-float v2, v2

    return v2
.end method

.method private reverseProjectX(F)D
    .locals 8
    .parameter "pos"

    .prologue
    .line 273
    sget v4, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MIN_FREQ:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 274
    .local v2, minPos:D
    sget v4, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MAX_FREQ:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 275
    .local v0, maxPos:D
    float-to-double v4, p1

    sub-double v6, v0, v2

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public findClosest(F)I
    .locals 13
    .parameter "px"

    .prologue
    .line 294
    const/4 v6, 0x0

    .line 295
    .local v6, idx:I
    const v0, 0x4e6e6b28

    .line 296
    .local v0, best:F
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v7, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    array-length v7, v7

    if-ge v5, v7, :cond_1

    .line 297
    const-wide v7, 0x402f400000000000L

    const-wide/high16 v9, 0x4010

    int-to-double v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v3, v7, v9

    .line 298
    .local v3, freq:D
    invoke-direct {p0, v3, v4}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->projectX(D)F

    move-result v7

    iget v8, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWidth:I

    int-to-float v8, v8

    mul-float v1, v7, v8

    .line 299
    .local v1, cx:F
    sub-float v7, v1, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 301
    .local v2, distance:F
    cmpg-float v7, v2, v0

    if-gez v7, :cond_0

    .line 302
    move v6, v5

    .line 303
    move v0, v2

    .line 296
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 307
    .end local v1           #cx:F
    .end local v2           #distance:F
    .end local v3           #freq:D
    :cond_1
    return v6
.end method

.method public getBand(I)F
    .locals 1
    .parameter "i"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    aget v0, v0, p1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 98
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->setLayerType(ILandroid/graphics/Paint;)V

    .line 99
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->buildLayer()V

    .line 100
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .parameter "canvas"

    .prologue
    .line 168
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 170
    const/4 v2, 0x5

    new-array v11, v2, [Lcom/bel/android/dspmanager/preference/Biquad;

    const/4 v2, 0x0

    new-instance v4, Lcom/bel/android/dspmanager/preference/Biquad;

    invoke-direct {v4}, Lcom/bel/android/dspmanager/preference/Biquad;-><init>()V

    aput-object v4, v11, v2

    const/4 v2, 0x1

    new-instance v4, Lcom/bel/android/dspmanager/preference/Biquad;

    invoke-direct {v4}, Lcom/bel/android/dspmanager/preference/Biquad;-><init>()V

    aput-object v4, v11, v2

    const/4 v2, 0x2

    new-instance v4, Lcom/bel/android/dspmanager/preference/Biquad;

    invoke-direct {v4}, Lcom/bel/android/dspmanager/preference/Biquad;-><init>()V

    aput-object v4, v11, v2

    const/4 v2, 0x3

    new-instance v4, Lcom/bel/android/dspmanager/preference/Biquad;

    invoke-direct {v4}, Lcom/bel/android/dspmanager/preference/Biquad;-><init>()V

    aput-object v4, v11, v2

    const/4 v2, 0x4

    new-instance v4, Lcom/bel/android/dspmanager/preference/Biquad;

    invoke-direct {v4}, Lcom/bel/android/dspmanager/preference/Biquad;-><init>()V

    aput-object v4, v11, v2

    .line 184
    .local v11, biquads:[Lcom/bel/android/dspmanager/preference/Biquad;
    const-wide/high16 v4, 0x4024

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    const/4 v7, 0x0

    aget v2, v2, v7

    const/high16 v7, 0x41a0

    div-float/2addr v2, v7

    float-to-double v7, v2

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    .line 185
    .local v18, gain:D
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    array-length v2, v11

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    .line 186
    const-wide v4, 0x402f400000000000L

    const-wide/high16 v7, 0x4010

    move/from16 v0, v20

    int-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v14, v4, v7

    .line 187
    .local v14, freq:D
    aget-object v2, v11, v20

    const-wide/high16 v4, 0x4000

    mul-double v3, v14, v4

    sget v5, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->SAMPLING_RATE:I

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    add-int/lit8 v8, v20, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    aget v8, v8, v20

    sub-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff0

    invoke-virtual/range {v2 .. v10}, Lcom/bel/android/dspmanager/preference/Biquad;->setHighShelf(DDDD)V

    .line 185
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 190
    .end local v14           #freq:D
    :cond_0
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    .line 191
    .local v16, freqResponse:Landroid/graphics/Path;
    const/16 v20, 0x0

    :goto_1
    const/16 v2, 0x47

    move/from16 v0, v20

    if-ge v0, v2, :cond_2

    .line 192
    move/from16 v0, v20

    int-to-float v2, v0

    const/high16 v4, 0x428c

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->reverseProjectX(F)D

    move-result-wide v14

    .line 193
    .restart local v14       #freq:D
    sget v2, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->SAMPLING_RATE:I

    int-to-double v4, v2

    div-double v4, v14, v4

    const-wide v7, 0x400921fb54442d18L

    mul-double/2addr v4, v7

    const-wide/high16 v7, 0x4000

    mul-double v21, v4, v7

    .line 194
    .local v21, omega:D
    new-instance v23, Lcom/bel/android/dspmanager/preference/Complex;

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5, v7, v8}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    .line 199
    .local v23, z:Lcom/bel/android/dspmanager/preference/Complex;
    const/4 v2, 0x0

    aget-object v2, v11, v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/bel/android/dspmanager/preference/Biquad;->evaluateTransfer(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v24

    .line 200
    .local v24, z2:Lcom/bel/android/dspmanager/preference/Complex;
    const/4 v2, 0x1

    aget-object v2, v11, v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/bel/android/dspmanager/preference/Biquad;->evaluateTransfer(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v25

    .line 201
    .local v25, z3:Lcom/bel/android/dspmanager/preference/Complex;
    const/4 v2, 0x2

    aget-object v2, v11, v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/bel/android/dspmanager/preference/Biquad;->evaluateTransfer(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v26

    .line 202
    .local v26, z4:Lcom/bel/android/dspmanager/preference/Complex;
    const/4 v2, 0x3

    aget-object v2, v11, v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/bel/android/dspmanager/preference/Biquad;->evaluateTransfer(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v27

    .line 203
    .local v27, z5:Lcom/bel/android/dspmanager/preference/Complex;
    const/4 v2, 0x4

    aget-object v2, v11, v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/bel/android/dspmanager/preference/Biquad;->evaluateTransfer(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v28

    .line 206
    .local v28, z6:Lcom/bel/android/dspmanager/preference/Complex;
    invoke-virtual/range {v24 .. v24}, Lcom/bel/android/dspmanager/preference/Complex;->rho()D

    move-result-wide v4

    mul-double v4, v4, v18

    invoke-virtual/range {v25 .. v25}, Lcom/bel/android/dspmanager/preference/Complex;->rho()D

    move-result-wide v7

    mul-double/2addr v4, v7

    invoke-virtual/range {v26 .. v26}, Lcom/bel/android/dspmanager/preference/Complex;->rho()D

    move-result-wide v7

    mul-double/2addr v4, v7

    invoke-virtual/range {v27 .. v27}, Lcom/bel/android/dspmanager/preference/Complex;->rho()D

    move-result-wide v7

    mul-double/2addr v4, v7

    invoke-virtual/range {v28 .. v28}, Lcom/bel/android/dspmanager/preference/Complex;->rho()D

    move-result-wide v7

    mul-double/2addr v4, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->lin2dB(D)D

    move-result-wide v12

    .line 207
    .local v12, dB:D
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->projectX(D)F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWidth:I

    int-to-float v4, v4

    mul-float v3, v2, v4

    .line 208
    .local v3, x:F
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->projectY(D)F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    int-to-float v4, v4

    mul-float v6, v2, v4

    .line 211
    .local v6, y:F
    if-nez v20, :cond_1

    .line 212
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 191
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 214
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 218
    .end local v3           #x:F
    .end local v6           #y:F
    .end local v12           #dB:D
    .end local v14           #freq:D
    .end local v21           #omega:D
    .end local v23           #z:Lcom/bel/android/dspmanager/preference/Complex;
    .end local v24           #z2:Lcom/bel/android/dspmanager/preference/Complex;
    .end local v25           #z3:Lcom/bel/android/dspmanager/preference/Complex;
    .end local v26           #z4:Lcom/bel/android/dspmanager/preference/Complex;
    .end local v27           #z5:Lcom/bel/android/dspmanager/preference/Complex;
    .end local v28           #z6:Lcom/bel/android/dspmanager/preference/Complex;
    :cond_2
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 219
    .local v17, freqResponseBg:Landroid/graphics/Path;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 220
    const/4 v2, 0x0

    const/high16 v4, -0x3f80

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 221
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 223
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->close()V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseBg:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseHighlight2:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 230
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWidth:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWhite:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    sget v14, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MIN_FREQ:I

    .local v14, freq:I
    :goto_3
    sget v2, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MAX_FREQ:I

    if-ge v14, v2, :cond_6

    .line 234
    int-to-double v4, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->projectX(D)F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWidth:I

    int-to-float v4, v4

    mul-float v3, v2, v4

    .line 235
    .restart local v3       #x:F
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mGridLines:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 236
    const/16 v2, 0x64

    if-ge v14, v2, :cond_3

    .line 237
    add-int/lit8 v14, v14, 0xa

    goto :goto_3

    .line 238
    :cond_3
    const/16 v2, 0x3e8

    if-ge v14, v2, :cond_4

    .line 239
    add-int/lit8 v14, v14, 0x64

    goto :goto_3

    .line 240
    :cond_4
    const/16 v2, 0x2710

    if-ge v14, v2, :cond_5

    .line 241
    add-int/lit16 v14, v14, 0x3e8

    goto :goto_3

    .line 243
    :cond_5
    add-int/lit16 v14, v14, 0x2710

    goto :goto_3

    .line 248
    .end local v3           #x:F
    :cond_6
    sget v2, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MIN_DB:I

    add-int/lit8 v12, v2, 0x3

    .local v12, dB:I
    :goto_4
    sget v2, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->MAX_DB:I

    add-int/lit8 v2, v2, -0x3

    if-gt v12, v2, :cond_7

    .line 249
    int-to-double v4, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->projectY(D)F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    int-to-float v4, v4

    mul-float v6, v2, v4

    .line 250
    .restart local v6       #y:F
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWidth:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mGridLines:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v8, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 251
    const-string v2, "%+d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    sub-float v5, v6, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWhite:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    add-int/lit8 v12, v12, 0x3

    goto :goto_4

    .line 254
    .end local v6           #y:F
    :cond_7
    const/16 v20, 0x0

    .end local v14           #freq:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    array-length v2, v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_a

    .line 255
    const-wide v4, 0x402f400000000000L

    const-wide/high16 v7, 0x4010

    move/from16 v0, v20

    int-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v14, v4, v7

    .line 256
    .local v14, freq:D
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->projectX(D)F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWidth:I

    int-to-float v4, v4

    mul-float v3, v2, v4

    .line 257
    .restart local v3       #x:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    aget v2, v2, v20

    float-to-double v4, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->projectY(D)F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    int-to-float v4, v4

    mul-float v6, v2, v4

    .line 258
    .restart local v6       #y:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBar:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBar:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const v4, 0x3f28f5c3

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarKnob:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    const-string v2, "%+1.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    aget v7, v7, v20

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    const-wide v4, 0x408f400000000000L

    cmpg-double v2, v14, v4

    if-gez v2, :cond_8

    const-string v2, "%.0f"

    :goto_6
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide v7, 0x408f400000000000L

    cmpg-double v7, v14, v7

    if-gez v7, :cond_9

    .end local v14           #freq:D
    :goto_7
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWhite:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    .line 261
    .restart local v14       #freq:D
    :cond_8
    const-string v2, "%.0fk"

    goto :goto_6

    :cond_9
    const-wide v7, 0x408f400000000000L

    div-double/2addr v14, v7

    goto :goto_7

    .line 263
    .end local v3           #x:F
    .end local v6           #y:F
    .end local v14           #freq:D
    :cond_a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 138
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 140
    sub-int v0, p4, p2

    iput v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWidth:I

    .line 141
    sub-int v0, p5, p3

    iput v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    .line 142
    iget v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mWidth:I

    iget-object v1, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40c0

    div-float v8, v0, v1

    .line 143
    .local v8, barWidth:F
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBar:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBarKnob:Landroid/graphics/Paint;

    const/high16 v1, 0x3f00

    mul-float/2addr v1, v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 145
    iget-object v9, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mFrequencyResponseBg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    int-to-float v4, v4

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x3e4ccccd

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f00

    invoke-static {v7, v10, v11, v12}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->color(FFFF)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x3d4ccccd

    const v10, 0x3d4ccccd

    const/4 v11, 0x0

    const/high16 v12, 0x3f00

    invoke-static {v7, v10, v11, v12}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->color(FFFF)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    const v10, 0x3ca3d70a

    const/4 v11, 0x0

    const/high16 v12, 0x3f00

    invoke-static {v7, v10, v11, v12}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->color(FFFF)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    const v10, 0x3c23d70a

    const/4 v11, 0x0

    const/high16 v12, 0x3f00

    invoke-static {v7, v10, v11, v12}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->color(FFFF)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 150
    iget-object v9, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mControlBar:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mHeight:I

    int-to-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    return-void

    .line 145
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 150
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xcct 0xfft
        0xfft 0xfft 0xcct 0x44t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 89
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 90
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "super"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/SurfaceView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 91
    const-string v1, "levels"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    .line 92
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "super"

    invoke-super {p0}, Landroid/view/SurfaceView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    const-string v1, "levels"

    iget-object v2, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 84
    return-object v0
.end method

.method public setBand(IF)V
    .locals 1
    .parameter "i"
    .parameter "value"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->mLevels:[F

    aput p2, v0, p1

    .line 158
    invoke-virtual {p0}, Lcom/bel/android/dspmanager/preference/EqualizerSurface;->postInvalidate()V

    .line 159
    return-void
.end method
