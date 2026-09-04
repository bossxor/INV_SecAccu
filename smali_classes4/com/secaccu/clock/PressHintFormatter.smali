.class public final Lcom/secaccu/clock/PressHintFormatter;
.super Ljava/lang/Object;
.source "PressHintFormatter.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final format(DD)Ljava/lang/String;
    .locals 10
    .param p0, "serverNowMs"    # D
    .param p2, "rttMs"    # D

    double-to-long v0, p0

    const-wide/32 v2, 0x36ee80

    div-long v4, v0, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long/2addr v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, p2, v6

    double-to-long v6, v6

    sub-long v8, v4, v6

    :goto_0
    cmp-long p0, v8, v0

    if-gtz p0, :cond_0

    add-long/2addr v4, v2

    sub-long v8, v4, v6

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    double-to-int v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uc815\uac01 \uc811\uc18d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \uc5d0 \ub204\ub974\uae30"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  \u00b7  RTT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatShort(DD)Ljava/lang/String;
    .locals 10
    .param p0, "serverNowMs"    # D
    .param p2, "rttMs"    # D

    double-to-long v0, p0

    const-wide/32 v2, 0x36ee80

    div-long v4, v0, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long/2addr v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, p2, v6

    double-to-long v6, v6

    sub-long v8, v4, v6

    :goto_0
    cmp-long p0, v8, v0

    if-gtz p0, :cond_0

    add-long/2addr v4, v2

    sub-long v8, v4, v6

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ub204\ub974\uae30 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
