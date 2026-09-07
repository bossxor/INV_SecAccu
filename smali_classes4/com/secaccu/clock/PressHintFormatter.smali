.class public final Lcom/secaccu/clock/PressHintFormatter;
.super Ljava/lang/Object;
.source "PressHintFormatter.kt"


# static fields
.field private static final SEOUL:Ljava/lang/String; = "Asia/Seoul"

.field private static volatile targetHour:I

.field private static volatile targetMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/secaccu/clock/PressHintFormatter;->targetHour:I

    const/4 v0, 0x0

    sput v0, Lcom/secaccu/clock/PressHintFormatter;->targetMinute:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final format(DD)Ljava/lang/String;
    .locals 4
    .param p0, "serverNowMs"    # D
    .param p2, "rttMs"    # D

    invoke-static {p0, p1, p2, p3}, Lcom/secaccu/clock/PressHintFormatter;->nextPressAtMs(DD)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/secaccu/clock/PressHintFormatter;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    double-to-int v1, p2

    invoke-static {}, Lcom/secaccu/clock/PressHintFormatter;->isExactHourMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\uc815\uac01 \uc811\uc18d "

    goto :goto_0

    :cond_0
    const-string v2, "\uc9c0\uc815 \uc2dc\uac01 \uc811\uc18d "

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \uc5d0 \ub204\ub974\uae30  \u00b7  RTT "

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
    .locals 3
    .param p0, "serverNowMs"    # D
    .param p2, "rttMs"    # D

    invoke-static {p0, p1, p2, p3}, Lcom/secaccu/clock/PressHintFormatter;->nextPressAtMs(DD)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/secaccu/clock/PressHintFormatter;->formatTime(J)Ljava/lang/String;

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

.method private static formatTime(J)Ljava/lang/String;
    .locals 3
    .param p0, "ms"    # J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "Asia/Seoul"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getTargetHour()I
    .locals 1

    sget v0, Lcom/secaccu/clock/PressHintFormatter;->targetHour:I

    return v0
.end method

.method public static final getTargetMinute()I
    .locals 1

    sget v0, Lcom/secaccu/clock/PressHintFormatter;->targetMinute:I

    return v0
.end method

.method public static final isExactHourMode()Z
    .locals 1

    sget v0, Lcom/secaccu/clock/PressHintFormatter;->targetHour:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final nextPressAtMs(DD)J
    .locals 8
    .param p0, "serverNowMs"    # D
    .param p2, "rttMs"    # D

    double-to-long v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p2, v2

    double-to-long v2, v2

    invoke-static {}, Lcom/secaccu/clock/PressHintFormatter;->isExactHourMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/32 v4, 0x36ee80

    div-long v6, v0, v4

    const-wide/16 p0, 0x1

    add-long/2addr v6, p0

    mul-long/2addr v6, v4

    sub-long p0, v6, v2

    :goto_0
    cmp-long p2, p0, v0

    if-gtz p2, :cond_0

    add-long/2addr v6, v4

    sub-long p0, v6, v2

    goto :goto_0

    :cond_0
    return-wide p0

    :cond_1
    const-string v4, "Asia/Seoul"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v5, 0xb

    sget v6, Lcom/secaccu/clock/PressHintFormatter;->targetHour:I

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    sget v6, Lcom/secaccu/clock/PressHintFormatter;->targetMinute:I

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long p0, v5, v2

    :goto_1
    cmp-long p2, p0, v0

    if-gtz p2, :cond_2

    const/4 p2, 0x5

    const/4 v5, 0x1

    invoke-virtual {v4, p2, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long p0, v5, v2

    goto :goto_1

    :cond_2
    return-wide p0
.end method

.method public static final setTarget(II)V
    .locals 1
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    if-gez p0, :cond_0

    const/4 v0, -0x1

    sput v0, Lcom/secaccu/clock/PressHintFormatter;->targetHour:I

    const/4 v0, 0x0

    sput v0, Lcom/secaccu/clock/PressHintFormatter;->targetMinute:I

    goto :goto_0

    :cond_0
    rem-int/lit8 v0, p0, 0x18

    if-gez v0, :cond_1

    add-int/lit8 v0, v0, 0x18

    :cond_1
    sput v0, Lcom/secaccu/clock/PressHintFormatter;->targetHour:I

    rem-int/lit8 v0, p1, 0x3c

    if-gez v0, :cond_2

    add-int/lit8 v0, v0, 0x3c

    :cond_2
    sput v0, Lcom/secaccu/clock/PressHintFormatter;->targetMinute:I

    :goto_0
    return-void
.end method

.method public static final targetLabel()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/secaccu/clock/PressHintFormatter;->isExactHourMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\ub9e4\uc2dc \uc815\uac01"

    return-object v0

    :cond_0
    sget v0, Lcom/secaccu/clock/PressHintFormatter;->targetHour:I

    sget v1, Lcom/secaccu/clock/PressHintFormatter;->targetMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%02d:%02d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
