.class public final Lcom/secaccu/clock/TimeSyncEngine$Companion;
.super Ljava/lang/Object;
.source "TimeSyncEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/secaccu/clock/TimeSyncEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeSyncEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSyncEngine.kt\ncom/secaccu/clock/TimeSyncEngine$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,418:1\n1#2:419\n1549#3:420\n1620#3,3:421\n288#3,2:424\n*S KotlinDebug\n*F\n+ 1 TimeSyncEngine.kt\ncom/secaccu/clock/TimeSyncEngine$Companion\n*L\n318#1:420\n318#1:421,3\n319#1:424,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008H\u0002J \u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0012H\u0002J\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0014\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u00020\u00042\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\u0010\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0008H\u0002J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0008J\u0018\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002J\u0018\u0010#\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002J\u0017\u0010$\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0014\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0006H\u0002J\u0018\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0006H\u0002J \u0010*\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010+\u001a\u00020\u0004H\u0002J \u0010,\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/secaccu/clock/TimeSyncEngine$Companion;",
        "",
        "()V",
        "NTP_FRACTION",
        "",
        "NTP_UNIX_EPOCH",
        "",
        "USER_AGENT",
        "",
        "fallbackDate",
        "Ljava/time/format/DateTimeFormatter;",
        "ageUsable",
        "",
        "age",
        "collectNumbers",
        "",
        "value",
        "out",
        "",
        "extractEpochMillis",
        "body",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "median",
        "values",
        "",
        "normalizeEpoch",
        "normalizeZone",
        "text",
        "parseHttpDateMillis",
        "raw",
        "readNtpTimestamp",
        "buf",
        "",
        "offset",
        "",
        "readU32",
        "regexEpoch",
        "wallAt",
        "monoNanos",
        "wallAtMid",
        "t0",
        "t1",
        "writeNtpTimestamp",
        "unixSeconds",
        "writeU32",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/secaccu/clock/TimeSyncEngine$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$ageUsable(Lcom/secaccu/clock/TimeSyncEngine$Companion;Ljava/lang/String;)Z
    .locals 1
    .param p0, "$this"    # Lcom/secaccu/clock/TimeSyncEngine$Companion;
    .param p1, "age"    # Ljava/lang/String;

    .line 300
    invoke-direct {p0, p1}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->ageUsable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$median(Lcom/secaccu/clock/TimeSyncEngine$Companion;Ljava/util/List;)D
    .locals 2
    .param p0, "$this"    # Lcom/secaccu/clock/TimeSyncEngine$Companion;
    .param p1, "values"    # Ljava/util/List;

    .line 300
    invoke-direct {p0, p1}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->median(Ljava/util/List;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$readNtpTimestamp(Lcom/secaccu/clock/TimeSyncEngine$Companion;[BI)D
    .locals 2
    .param p0, "$this"    # Lcom/secaccu/clock/TimeSyncEngine$Companion;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->readNtpTimestamp([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$wallAt(Lcom/secaccu/clock/TimeSyncEngine$Companion;J)D
    .locals 2
    .param p0, "$this"    # Lcom/secaccu/clock/TimeSyncEngine$Companion;
    .param p1, "monoNanos"    # J

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->wallAt(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$wallAtMid(Lcom/secaccu/clock/TimeSyncEngine$Companion;JJ)D
    .locals 2
    .param p0, "$this"    # Lcom/secaccu/clock/TimeSyncEngine$Companion;
    .param p1, "t0"    # J
    .param p3, "t1"    # J

    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->wallAtMid(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$writeNtpTimestamp(Lcom/secaccu/clock/TimeSyncEngine$Companion;[BID)V
    .locals 0
    .param p0, "$this"    # Lcom/secaccu/clock/TimeSyncEngine$Companion;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "unixSeconds"    # D

    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->writeNtpTimestamp([BID)V

    return-void
.end method

.method private final ageUsable(Ljava/lang/String;)Z
    .locals 7
    .param p1, "age"    # Ljava/lang/String;

    .line 371
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 372
    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 419
    .local v3, "it":D
    const/4 v0, 0x0

    .line 372
    .local v0, "$i$a$-let-TimeSyncEngine$Companion$ageUsable$1":I
    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_3

    move v1, v2

    .end local v0    # "$i$a$-let-TimeSyncEngine$Companion$ageUsable$1":I
    .end local v3    # "it":D
    :cond_3
    move v2, v1

    :cond_4
    return v2
.end method

.method private final collectNumbers(Ljava/lang/Object;Ljava/util/List;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 323
    nop

    .line 324
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 325
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 326
    .local v0, "keys":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    .local v1, "key":Ljava/lang/String;
    move-object v2, p1

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->collectNumbers(Ljava/lang/Object;Ljava/util/List;)V

    .line 329
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "time"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 330
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "date"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    const-string v2, "data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/json/JSONObject;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 334
    .local v5, "n":J
    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "n":J
    goto :goto_0

    .line 338
    .end local v0    # "keys":Ljava/util/Iterator;
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_3
    return-void
.end method

.method private final median(Ljava/util/List;)D
    .locals 6
    .param p1, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 384
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 385
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 386
    .local v0, "sorted":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 387
    .local v1, "mid":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method private final normalizeEpoch(J)J
    .locals 2
    .param p1, "value"    # J

    .line 349
    nop

    .line 350
    const-wide v0, 0x174876e800L

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long/2addr v0, p1

    goto :goto_1

    .line 352
    :cond_1
    nop

    .line 353
    :goto_0
    move-wide v0, p1

    :goto_1
    return-wide v0
.end method

.method private final normalizeZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 364
    nop

    .line 365
    const-string v0, " KST"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " +0900"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_0
    const-string v0, " EEST"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " +0300"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_1
    move-object v0, p1

    .line 368
    :goto_0
    return-object v0
.end method

.method private final readNtpTimestamp([BI)D
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->readU32([BI)J

    move-result-wide v0

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    .line 392
    .local v0, "seconds":J
    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->readU32([BI)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x41f0000000000000L    # 4.294967296E9

    div-double/2addr v2, v4

    .line 393
    .local v2, "fraction":D
    long-to-double v4, v0

    add-double/2addr v4, v2

    return-wide v4
.end method

.method private final readU32([BI)J
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .line 404
    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    .line 405
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    .line 404
    or-long/2addr v0, v4

    .line 406
    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    .line 404
    or-long/2addr v0, v4

    .line 407
    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    .line 404
    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final regexEpoch(Ljava/lang/String;)Ljava/lang/Long;
    .locals 15
    .param p1, "body"    # Ljava/lang/String;

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 344
    .local v0, "now":J
    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "\\d{13}"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v6

    .line 345
    .local v2, "match":Lkotlin/text/MatchResult;
    :cond_0
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 346
    .local v7, "n":J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 419
    .local v9, "it":J
    const/4 v5, 0x0

    .line 346
    .local v5, "$i$a$-takeIf-TimeSyncEngine$Companion$regexEpoch$1":I
    sub-long v11, v9, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0x927c0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_1

    const/4 v4, 0x1

    .end local v5    # "$i$a$-takeIf-TimeSyncEngine$Companion$regexEpoch$1":I
    .end local v9    # "it":J
    :cond_1
    if-eqz v4, :cond_2

    move-object v6, v3

    :cond_2
    return-object v6
.end method

.method private final wallAt(J)D
    .locals 10
    .param p1, "monoNanos"    # J

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 377
    .local v0, "nowMono":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 378
    .local v2, "nowWall":J
    long-to-double v4, v2

    sub-long v6, p1, v0

    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    return-wide v4
.end method

.method private final wallAtMid(JJ)D
    .locals 4
    .param p1, "t0"    # J
    .param p3, "t1"    # J

    .line 381
    add-long v0, p1, p3

    const/4 v2, 0x2

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->wallAt(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private final writeNtpTimestamp([BID)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "unixSeconds"    # D

    .line 397
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide v2, 0x83aa7e80L

    add-long/2addr v0, v2

    .line 398
    .local v0, "whole":J
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double v2, p3, v2

    const-wide/high16 v4, 0x41f0000000000000L    # 4.294967296E9

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 399
    .local v2, "frac":J
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->writeU32([BIJ)V

    .line 400
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4, v2, v3}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->writeU32([BIJ)V

    .line 401
    return-void
.end method

.method private final writeU32([BIJ)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "value"    # J

    .line 411
    const/16 v0, 0x18

    shr-long v0, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 412
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x10

    shr-long v4, p3, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 413
    add-int/lit8 v0, p2, 0x2

    const/16 v1, 0x8

    shr-long v4, p3, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 414
    add-int/lit8 v0, p2, 0x3

    and-long v1, p3, v2

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 415
    return-void
.end method


# virtual methods
.method public final extractEpochMillis(Ljava/lang/String;)Ljava/lang/Long;
    .locals 17
    .param p1, "body"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "body"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/secaccu/clock/TimeSyncEngine$Companion;

    .line 419
    .local v0, "$this$extractEpochMillis_u24lambda_u240":Lcom/secaccu/clock/TimeSyncEngine$Companion;
    const/4 v3, 0x0

    .line 313
    .local v3, "$i$a$-runCatching-TimeSyncEngine$Companion$extractEpochMillis$json$1":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .end local v0    # "$this$extractEpochMillis_u24lambda_u240":Lcom/secaccu/clock/TimeSyncEngine$Companion;
    .end local v3    # "$i$a$-runCatching-TimeSyncEngine$Companion$extractEpochMillis$json$1":I
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->regexEpoch(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 314
    .local v0, "json":Lorg/json/JSONObject;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 315
    .local v3, "candidates":Ljava/util/List;
    invoke-direct {v1, v0, v3}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->collectNumbers(Ljava/lang/Object;Ljava/util/List;)V

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 317
    .local v5, "now":J
    move-object v7, v3

    check-cast v7, Ljava/lang/Iterable;

    .line 318
    nop

    .local v7, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 420
    .local v8, "$i$f$map":I
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 421
    .local v11, "$i$f$mapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 422
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    .local v14, "it":J
    const/16 v16, 0x0

    .line 318
    .local v16, "$i$a$-map-TimeSyncEngine$Companion$extractEpochMillis$1":I
    sget-object v4, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    invoke-direct {v4, v14, v15}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->normalizeEpoch(J)J

    move-result-wide v14

    .end local v14    # "it":J
    .end local v16    # "$i$a$-map-TimeSyncEngine$Companion$extractEpochMillis$1":I
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 422
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    move-object v4, v9

    check-cast v4, Ljava/util/List;

    .line 420
    nop

    .end local v7    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$map":I
    check-cast v4, Ljava/lang/Iterable;

    .line 319
    nop

    .local v4, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 424
    .local v7, "$i$f$firstOrNull":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .local v10, "it":J
    const/4 v12, 0x0

    .line 319
    .local v12, "$i$a$-firstOrNull-TimeSyncEngine$Companion$extractEpochMillis$2":I
    sub-long v13, v10, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/32 v15, 0x927c0

    cmp-long v13, v13, v15

    if-gtz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 424
    .end local v10    # "it":J
    .end local v12    # "$i$a$-firstOrNull-TimeSyncEngine$Companion$extractEpochMillis$2":I
    :goto_2
    if-eqz v13, :cond_3

    move-object v4, v9

    goto :goto_3

    .line 425
    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_5
    const/4 v4, 0x0

    .end local v4    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$firstOrNull":I
    :goto_3
    check-cast v4, Ljava/lang/Long;

    .line 317
    return-object v4
.end method

.method public final parseHttpDateMillis(Ljava/lang/String;)J
    .locals 4
    .param p1, "raw"    # Ljava/lang/String;

    const-string v0, "raw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->normalizeZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "text":Ljava/lang/String;
    nop

    .line 358
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v2, Ljava/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "_":Ljava/time/format/DateTimeParseException;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {}, Lcom/secaccu/clock/TimeSyncEngine;->access$getFallbackDate$cp()Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    move-wide v1, v2

    .line 357
    .end local v1    # "_":Ljava/time/format/DateTimeParseException;
    :goto_0
    return-wide v1
.end method
