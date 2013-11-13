.class Lcom/bel/android/dspmanager/preference/Biquad;
.super Ljava/lang/Object;
.source "Biquad.java"


# instance fields
.field private a0:Lcom/bel/android/dspmanager/preference/Complex;

.field private a1:Lcom/bel/android/dspmanager/preference/Complex;

.field private a2:Lcom/bel/android/dspmanager/preference/Complex;

.field private b0:Lcom/bel/android/dspmanager/preference/Complex;

.field private b1:Lcom/bel/android/dspmanager/preference/Complex;

.field private b2:Lcom/bel/android/dspmanager/preference/Complex;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluateTransfer(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;
    .locals 5
    .parameter "z"

    .prologue
    .line 25
    invoke-virtual {p1, p1}, Lcom/bel/android/dspmanager/preference/Complex;->mul(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v2

    .line 26
    .local v2, zSquared:Lcom/bel/android/dspmanager/preference/Complex;
    iget-object v3, p0, Lcom/bel/android/dspmanager/preference/Biquad;->b0:Lcom/bel/android/dspmanager/preference/Complex;

    iget-object v4, p0, Lcom/bel/android/dspmanager/preference/Biquad;->b1:Lcom/bel/android/dspmanager/preference/Complex;

    invoke-virtual {v4, p1}, Lcom/bel/android/dspmanager/preference/Complex;->div(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bel/android/dspmanager/preference/Complex;->add(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v3

    iget-object v4, p0, Lcom/bel/android/dspmanager/preference/Biquad;->b2:Lcom/bel/android/dspmanager/preference/Complex;

    invoke-virtual {v4, v2}, Lcom/bel/android/dspmanager/preference/Complex;->div(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bel/android/dspmanager/preference/Complex;->add(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v1

    .line 27
    .local v1, nom:Lcom/bel/android/dspmanager/preference/Complex;
    iget-object v3, p0, Lcom/bel/android/dspmanager/preference/Biquad;->a0:Lcom/bel/android/dspmanager/preference/Complex;

    iget-object v4, p0, Lcom/bel/android/dspmanager/preference/Biquad;->a1:Lcom/bel/android/dspmanager/preference/Complex;

    invoke-virtual {v4, p1}, Lcom/bel/android/dspmanager/preference/Complex;->div(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bel/android/dspmanager/preference/Complex;->add(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v3

    iget-object v4, p0, Lcom/bel/android/dspmanager/preference/Biquad;->a2:Lcom/bel/android/dspmanager/preference/Complex;

    invoke-virtual {v4, v2}, Lcom/bel/android/dspmanager/preference/Complex;->div(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bel/android/dspmanager/preference/Complex;->add(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v0

    .line 28
    .local v0, den:Lcom/bel/android/dspmanager/preference/Complex;
    invoke-virtual {v1, v0}, Lcom/bel/android/dspmanager/preference/Complex;->div(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v3

    return-object v3
.end method

.method protected setHighShelf(DDDD)V
    .locals 15
    .parameter "centerFrequency"
    .parameter "samplingFrequency"
    .parameter "dbGain"
    .parameter "slope"

    .prologue
    .line 12
    const-wide v6, 0x401921fb54442d18L

    mul-double v6, v6, p1

    div-double v4, v6, p3

    .line 13
    .local v4, w0:D
    const-wide/high16 v6, 0x4024

    const-wide/high16 v8, 0x4044

    div-double v8, p5, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 14
    .local v0, A:D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    div-double/2addr v8, v0

    add-double/2addr v8, v0

    const-wide/high16 v10, 0x3ff0

    div-double v10, v10, p7

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v2, v6, v8

    .line 16
    .local v2, alpha:D
    new-instance v6, Lcom/bel/android/dspmanager/preference/Complex;

    const-wide/high16 v7, 0x3ff0

    add-double/2addr v7, v0

    const-wide/high16 v9, 0x3ff0

    sub-double v9, v0, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    mul-double/2addr v9, v2

    add-double/2addr v7, v9

    mul-double/2addr v7, v0

    const-wide/16 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    iput-object v6, p0, Lcom/bel/android/dspmanager/preference/Biquad;->b0:Lcom/bel/android/dspmanager/preference/Complex;

    .line 17
    new-instance v6, Lcom/bel/android/dspmanager/preference/Complex;

    const-wide/high16 v7, -0x4000

    mul-double/2addr v7, v0

    const-wide/high16 v9, 0x3ff0

    sub-double v9, v0, v9

    const-wide/high16 v11, 0x3ff0

    add-double/2addr v11, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    iput-object v6, p0, Lcom/bel/android/dspmanager/preference/Biquad;->b1:Lcom/bel/android/dspmanager/preference/Complex;

    .line 18
    new-instance v6, Lcom/bel/android/dspmanager/preference/Complex;

    const-wide/high16 v7, 0x3ff0

    add-double/2addr v7, v0

    const-wide/high16 v9, 0x3ff0

    sub-double v9, v0, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    mul-double/2addr v9, v2

    sub-double/2addr v7, v9

    mul-double/2addr v7, v0

    const-wide/16 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    iput-object v6, p0, Lcom/bel/android/dspmanager/preference/Biquad;->b2:Lcom/bel/android/dspmanager/preference/Complex;

    .line 19
    new-instance v6, Lcom/bel/android/dspmanager/preference/Complex;

    const-wide/high16 v7, 0x3ff0

    add-double/2addr v7, v0

    const-wide/high16 v9, 0x3ff0

    sub-double v9, v0, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    const-wide/high16 v9, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    mul-double/2addr v9, v2

    add-double/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    iput-object v6, p0, Lcom/bel/android/dspmanager/preference/Biquad;->a0:Lcom/bel/android/dspmanager/preference/Complex;

    .line 20
    new-instance v6, Lcom/bel/android/dspmanager/preference/Complex;

    const-wide/high16 v7, 0x4000

    const-wide/high16 v9, 0x3ff0

    sub-double v9, v0, v9

    const-wide/high16 v11, 0x3ff0

    add-double/2addr v11, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    iput-object v6, p0, Lcom/bel/android/dspmanager/preference/Biquad;->a1:Lcom/bel/android/dspmanager/preference/Complex;

    .line 21
    new-instance v6, Lcom/bel/android/dspmanager/preference/Complex;

    const-wide/high16 v7, 0x3ff0

    add-double/2addr v7, v0

    const-wide/high16 v9, 0x3ff0

    sub-double v9, v0, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    const-wide/high16 v9, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    mul-double/2addr v9, v2

    sub-double/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    iput-object v6, p0, Lcom/bel/android/dspmanager/preference/Biquad;->a2:Lcom/bel/android/dspmanager/preference/Complex;

    .line 22
    return-void
.end method
