.class Lcom/bel/android/dspmanager/preference/Complex;
.super Ljava/lang/Object;
.source "Complex.java"


# instance fields
.field private final im:D

.field private final re:D


# direct methods
.method protected constructor <init>(DD)V
    .locals 0
    .parameter "re"
    .parameter "im"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    .line 13
    iput-wide p3, p0, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    .line 14
    return-void
.end method


# virtual methods
.method protected add(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;
    .locals 7
    .parameter "other"

    .prologue
    .line 50
    new-instance v0, Lcom/bel/android/dspmanager/preference/Complex;

    iget-wide v1, p0, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    iget-wide v3, p1, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    iget-wide v5, p1, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    return-object v0
.end method

.method protected con()Lcom/bel/android/dspmanager/preference/Complex;
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lcom/bel/android/dspmanager/preference/Complex;

    iget-wide v1, p0, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    iget-wide v3, p0, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    neg-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    return-object v0
.end method

.method protected div(D)Lcom/bel/android/dspmanager/preference/Complex;
    .locals 5
    .parameter "a"

    .prologue
    .line 91
    new-instance v0, Lcom/bel/android/dspmanager/preference/Complex;

    iget-wide v1, p0, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    div-double/2addr v1, p1

    iget-wide v3, p0, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    div-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    return-object v0
.end method

.method protected div(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;
    .locals 8
    .parameter "other"

    .prologue
    .line 80
    iget-wide v2, p1, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    iget-wide v4, p1, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    mul-double/2addr v2, v4

    iget-wide v4, p1, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    iget-wide v6, p1, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    .line 81
    .local v0, lengthSquared:D
    invoke-virtual {p1}, Lcom/bel/android/dspmanager/preference/Complex;->con()Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bel/android/dspmanager/preference/Complex;->mul(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bel/android/dspmanager/preference/Complex;->div(D)Lcom/bel/android/dspmanager/preference/Complex;

    move-result-object v2

    return-object v2
.end method

.method protected mul(D)Lcom/bel/android/dspmanager/preference/Complex;
    .locals 5
    .parameter "a"

    .prologue
    .line 70
    new-instance v0, Lcom/bel/android/dspmanager/preference/Complex;

    iget-wide v1, p0, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    mul-double/2addr v1, p1

    iget-wide v3, p0, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    mul-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    return-object v0
.end method

.method protected mul(Lcom/bel/android/dspmanager/preference/Complex;)Lcom/bel/android/dspmanager/preference/Complex;
    .locals 9
    .parameter "other"

    .prologue
    .line 60
    new-instance v0, Lcom/bel/android/dspmanager/preference/Complex;

    iget-wide v1, p0, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    iget-wide v3, p1, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    iget-wide v5, p1, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    iget-wide v5, p1, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    iget-wide v7, p1, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bel/android/dspmanager/preference/Complex;-><init>(DD)V

    return-object v0
.end method

.method protected rho()D
    .locals 6

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    iget-wide v2, p0, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    iget-wide v4, p0, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method protected theta()D
    .locals 4

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/bel/android/dspmanager/preference/Complex;->im:D

    iget-wide v2, p0, Lcom/bel/android/dspmanager/preference/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method
