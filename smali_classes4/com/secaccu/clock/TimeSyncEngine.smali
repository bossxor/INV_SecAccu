.class public final Lcom/secaccu/clock/TimeSyncEngine;
.super Ljava/lang/Object;
.source "TimeSyncEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/secaccu/clock/TimeSyncEngine$Companion;,
        Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;,
        Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;,
        Lcom/secaccu/clock/TimeSyncEngine$Transition;,
        Lcom/secaccu/clock/TimeSyncEngine$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeSyncEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSyncEngine.kt\ncom/secaccu/clock/TimeSyncEngine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,418:1\n1045#2:419\n1549#2:420\n1620#2,3:421\n1045#2:425\n1549#2:426\n1620#2,3:427\n1045#2:430\n1549#2:431\n1620#2,3:432\n1045#2:435\n1#3:424\n*S KotlinDebug\n*F\n+ 1 TimeSyncEngine.kt\ncom/secaccu/clock/TimeSyncEngine\n*L\n67#1:419\n68#1:420\n68#1:421,3\n118#1:425\n118#1:426\n118#1:427,3\n159#1:430\n160#1:431\n160#1:432,3\n238#1:435\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0004\u001c\u001d\u001e\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00180\u0017J$\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00180\u0017H\u0002J$\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00180\u0017H\u0002J$\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00180\u0017H\u0002\u00a8\u0006 "
    }
    d2 = {
        "Lcom/secaccu/clock/TimeSyncEngine;",
        "",
        "()V",
        "detectSecondBoundary",
        "Lcom/secaccu/clock/TimeSyncEngine$Transition;",
        "samples",
        "",
        "Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;",
        "fetchHttpDateSample",
        "url",
        "",
        "method",
        "fetchJsonSample",
        "Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;",
        "fetchNtpSample",
        "host",
        "open",
        "Ljava/net/HttpURLConnection;",
        "sync",
        "Lcom/secaccu/clock/SyncResult;",
        "site",
        "Lcom/secaccu/clock/TimeSite;",
        "onProgress",
        "Lkotlin/Function1;",
        "",
        "syncHttpDate",
        "syncJsonMillis",
        "syncNtp",
        "Companion",
        "HttpDateSample",
        "OffsetSample",
        "Transition",
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


# static fields
.field public static final Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

.field private static final NTP_FRACTION:D = 4.294967296E9

.field private static final NTP_UNIX_EPOCH:J = 0x83aa7e80L

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; Android 15) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36"

.field private static final fallbackDate:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/secaccu/clock/TimeSyncEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/secaccu/clock/TimeSyncEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    .line 310
    nop

    .line 306
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 307
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 308
    const-string v1, "EEE, dd MMM uuuu HH:mm:ss Z"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 309
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 310
    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withResolverStyle(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    const-string v1, "withResolverStyle(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/secaccu/clock/TimeSyncEngine;->fallbackDate:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFallbackDate$cp()Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 41
    sget-object v0, Lcom/secaccu/clock/TimeSyncEngine;->fallbackDate:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method private final detectSecondBoundary(Ljava/util/List;)Lcom/secaccu/clock/TimeSyncEngine$Transition;
    .locals 20
    .param p1, "samples"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;",
            ">;)",
            "Lcom/secaccu/clock/TimeSyncEngine$Transition;"
        }
    .end annotation

    .line 238
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 435
    .local v1, "$i$f$sortedBy":I
    new-instance v2, Lcom/secaccu/clock/TimeSyncEngine$detectSecondBoundary$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/secaccu/clock/TimeSyncEngine$detectSecondBoundary$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 238
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    nop

    .line 239
    .local v0, "ordered":Ljava/util/List;
    const/4 v1, 0x0

    .line 240
    .local v1, "best":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 241
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    .line 242
    .local v4, "a":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    .line 243
    .local v5, "b":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    invoke-virtual {v5}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getDateUtcMs()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getDateUtcMs()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 244
    invoke-virtual {v4}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getT0Mono()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getT1Mono()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-virtual {v5}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getT0Mono()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getT1Mono()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-double v10, v10

    div-double/2addr v10, v8

    add-double/2addr v6, v10

    div-double/2addr v6, v8

    .line 245
    .local v6, "midMono":D
    sget-object v10, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    double-to-long v11, v6

    invoke-static {v10, v11, v12}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$wallAt(Lcom/secaccu/clock/TimeSyncEngine$Companion;J)D

    move-result-wide v10

    .line 246
    .local v10, "localAtMid":D
    invoke-virtual {v5}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getT0Mono()J

    move-result-wide v12

    invoke-virtual {v5}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getT1Mono()J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-virtual {v4}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getT0Mono()J

    move-result-wide v14

    invoke-virtual {v4}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getT1Mono()J

    move-result-wide v16

    add-long v14, v14, v16

    sub-long/2addr v12, v14

    long-to-double v12, v12

    div-double/2addr v12, v8

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 247
    .local v12, "gapMs":D
    div-double v14, v12, v8

    invoke-virtual {v4}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getRttMs()D

    move-result-wide v8

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v4    # "a":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    .local v19, "a":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    invoke-virtual {v5}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getRttMs()D

    move-result-wide v3

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v8

    add-double/2addr v14, v3

    .line 248
    .local v14, "error":D
    invoke-virtual {v5}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getDateUtcMs()J

    move-result-wide v3

    long-to-double v3, v3

    sub-double/2addr v3, v10

    .line 249
    .local v3, "offset":D
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/secaccu/clock/TimeSyncEngine$Transition;->getErrorMs()D

    move-result-wide v8

    cmpg-double v8, v14, v8

    if-gez v8, :cond_2

    .line 250
    :cond_0
    new-instance v8, Lcom/secaccu/clock/TimeSyncEngine$Transition;

    invoke-direct {v8, v3, v4, v14, v15}, Lcom/secaccu/clock/TimeSyncEngine$Transition;-><init>(DD)V

    move-object v1, v8

    goto :goto_1

    .line 243
    .end local v3    # "offset":D
    .end local v6    # "midMono":D
    .end local v10    # "localAtMid":D
    .end local v12    # "gapMs":D
    .end local v14    # "error":D
    .end local v19    # "a":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    .restart local v4    # "a":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    :cond_1
    move/from16 v18, v3

    move-object/from16 v19, v4

    .line 240
    .end local v4    # "a":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    .end local v5    # "b":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v18

    goto/16 :goto_0

    .line 253
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method private final fetchHttpDateSample(Ljava/lang/String;Ljava/lang/String;)Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    .locals 29
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .line 202
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "HEAD"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "GET"

    if-eqz v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    move-object v5, v0

    .line 203
    .local v5, "httpMethod":Ljava/lang/String;
    move-object/from16 v6, p1

    invoke-direct {v1, v6, v5}, Lcom/secaccu/clock/TimeSyncEngine;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 204
    .local v7, "conn":Ljava/net/HttpURLConnection;
    const-string v0, "GET-RANGE"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "Accept"

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "Range"

    const-string v4, "bytes=0-0"

    invoke-virtual {v7, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "*/*"

    invoke-virtual {v7, v8, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_1
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 208
    const-string v0, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v7, v8, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "Accept-Language"

    const-string v4, "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7"

    invoke-virtual {v7, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v19

    .line 215
    .local v19, "t0":J
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 216
    .local v4, "code":I
    const-string v0, "Date"

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 217
    .local v15, "dateHeader":Ljava/lang/String;
    const-string v0, "Age"

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 218
    .local v13, "ageHeader":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/secaccu/clock/TimeSyncEngine;

    .line 424
    .local v0, "$this$fetchHttpDateSample_u24lambda_u2413":Lcom/secaccu/clock/TimeSyncEngine;
    const/4 v8, 0x0

    .line 218
    .local v8, "$i$a$-runCatching-TimeSyncEngine$fetchHttpDateSample$1":I
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .end local v0    # "$this$fetchHttpDateSample_u24lambda_u2413":Lcom/secaccu/clock/TimeSyncEngine;
    .end local v8    # "$i$a$-runCatching-TimeSyncEngine$fetchHttpDateSample$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    .line 220
    .local v11, "t1":J
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 221
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v3, ")"

    if-eqz v0, :cond_4

    const/16 v0, 0x195

    if-eq v4, v0, :cond_3

    const/16 v0, 0x1f5

    if-eq v4, v0, :cond_3

    const/16 v0, 0x193

    if-eq v4, v0, :cond_3

    goto :goto_3

    .line 222
    :cond_3
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HEAD \uac70\ubd80 ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_4
    :goto_3
    move-object v0, v15

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_8

    .line 227
    sget-object v0, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    invoke-static {v0, v13}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$ageUsable(Lcom/secaccu/clock/TimeSyncEngine$Companion;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 230
    sget-object v0, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v15}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->parseHttpDateMillis(Ljava/lang/String;)J

    move-result-wide v9

    .line 231
    .local v9, "dateUtcMs":J
    sub-long v0, v11, v19

    long-to-double v0, v0

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v0, v0, v16

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 232
    .local v0, "rttMs":D
    sget-object v2, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    invoke-static {v2, v11, v12}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$wallAt(Lcom/secaccu/clock/TimeSyncEngine$Companion;J)D

    move-result-wide v2

    .line 233
    .local v2, "localAtT1":D
    move-object/from16 v21, v5

    .end local v5    # "httpMethod":Ljava/lang/String;
    .local v21, "httpMethod":Ljava/lang/String;
    long-to-double v5, v9

    sub-double/2addr v5, v2

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v0, v16

    add-double v5, v5, v16

    .line 234
    .local v5, "coarseOffset":D
    new-instance v22, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    move-object/from16 v8, v22

    move-wide/from16 v23, v9

    .end local v9    # "dateUtcMs":J
    .local v23, "dateUtcMs":J
    move-wide/from16 v9, v19

    move-wide/from16 v25, v11

    .end local v11    # "t1":J
    .local v25, "t1":J
    move-object/from16 v27, v13

    .end local v13    # "ageHeader":Ljava/lang/String;
    .local v27, "ageHeader":Ljava/lang/String;
    move-wide/from16 v13, v23

    move-object/from16 v28, v15

    .end local v15    # "dateHeader":Ljava/lang/String;
    .local v28, "dateHeader":Ljava/lang/String;
    move-wide v15, v0

    move-wide/from16 v17, v5

    invoke-direct/range {v8 .. v18}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;-><init>(JJJDD)V

    return-object v22

    .line 228
    .end local v0    # "rttMs":D
    .end local v2    # "localAtT1":D
    .end local v21    # "httpMethod":Ljava/lang/String;
    .end local v23    # "dateUtcMs":J
    .end local v25    # "t1":J
    .end local v27    # "ageHeader":Ljava/lang/String;
    .end local v28    # "dateHeader":Ljava/lang/String;
    .local v5, "httpMethod":Ljava/lang/String;
    .restart local v11    # "t1":J
    .restart local v13    # "ageHeader":Ljava/lang/String;
    .restart local v15    # "dateHeader":Ljava/lang/String;
    :cond_7
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    const-string v1, "\uce90\uc2dc\ub41c \uc751\ub2f5\uc774\ub77c \ubc00\ub9ac\ucd08 \ub3d9\uae30\ud654\uc5d0 \uc4f8 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4"

    invoke-direct {v0, v1}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_8
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date \ud5e4\ub354 \uc5c6\uc74c (HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final fetchJsonSample(Ljava/lang/String;)Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    .line 186
    const-string v0, "GET"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v0}, Lcom/secaccu/clock/TimeSyncEngine;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 187
    .local v3, "conn":Ljava/net/HttpURLConnection;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 188
    .local v4, "t0":J
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 189
    .local v6, "code":I
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v7

    check-cast v0, Ljava/io/InputStream;

    .local v0, "stream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .local v8, "$i$a$-use-TimeSyncEngine$fetchJsonSample$body$1":I
    new-instance v9, Ljava/lang/String;

    .line 190
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v10, Ljava/io/InputStream;

    invoke-static {v10}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v10

    sget-object v11, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v0    # "stream":Ljava/io/InputStream;
    .end local v8    # "$i$a$-use-TimeSyncEngine$fetchJsonSample$body$1":I
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, v9

    .line 192
    .local v0, "body":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 193
    .local v7, "t1":J
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 194
    const/16 v9, 0xc8

    const/4 v10, 0x0

    if-gt v9, v6, :cond_0

    const/16 v9, 0x190

    if-ge v6, v9, :cond_0

    const/4 v10, 0x1

    :cond_0
    if-eqz v10, :cond_2

    .line 195
    sget-object v9, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    invoke-virtual {v9, v0}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->extractEpochMillis(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 196
    .local v9, "millis":J
    sub-long v11, v7, v4

    long-to-double v11, v11

    const-wide v13, 0x412e848000000000L    # 1000000.0

    div-double/2addr v11, v13

    .line 197
    .local v11, "rttMs":D
    sget-object v13, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    invoke-static {v13, v4, v5, v7, v8}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$wallAtMid(Lcom/secaccu/clock/TimeSyncEngine$Companion;JJ)D

    move-result-wide v13

    .line 198
    .local v13, "localMid":D
    new-instance v15, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;

    move-object/from16 v16, v0

    .end local v0    # "body":Ljava/lang/String;
    .local v16, "body":Ljava/lang/String;
    long-to-double v0, v9

    sub-double/2addr v0, v13

    invoke-direct {v15, v0, v1, v11, v12}, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;-><init>(DD)V

    return-object v15

    .line 195
    .end local v9    # "millis":J
    .end local v11    # "rttMs":D
    .end local v13    # "localMid":D
    .end local v16    # "body":Ljava/lang/String;
    .restart local v0    # "body":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v0

    .end local v0    # "body":Ljava/lang/String;
    .restart local v16    # "body":Ljava/lang/String;
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    const-string v1, "JSON\uc5d0 \uc2dc\uac01\uc774 \uc5c6\uc2b5\ub2c8\ub2e4"

    invoke-direct {v0, v1}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    .end local v16    # "body":Ljava/lang/String;
    .restart local v0    # "body":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v0

    .end local v0    # "body":Ljava/lang/String;
    .restart local v16    # "body":Ljava/lang/String;
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    .end local v7    # "t1":J
    .end local v16    # "body":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "t0":J
    .end local v6    # "code":I
    .end local p1    # "url":Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "t0":J
    .restart local v6    # "code":I
    .restart local p1    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v8, v0

    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private final fetchNtpSample(Ljava/lang/String;)Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    .locals 36
    .param p1, "host"    # Ljava/lang/String;

    .line 257
    const/16 v0, 0x30

    new-array v1, v0, [B

    .line 258
    .local v1, "packet":[B
    const/16 v2, 0x23

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 260
    .local v4, "t0Mono":J
    sget-object v2, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    invoke-static {v2, v4, v5}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$wallAt(Lcom/secaccu/clock/TimeSyncEngine$Companion;J)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 261
    .local v6, "t0WallSec":D
    sget-object v2, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    const/16 v10, 0x28

    invoke-static {v2, v1, v10, v6, v7}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$writeNtpTimestamp(Lcom/secaccu/clock/TimeSyncEngine$Companion;[BID)V

    .line 262
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v11, v2

    check-cast v11, Ljava/net/DatagramSocket;

    .local v11, "socket":Ljava/net/DatagramSocket;
    const/4 v12, 0x0

    .line 263
    .local v12, "$i$a$-use-TimeSyncEngine$fetchNtpSample$1":I
    const/16 v13, 0x7d0

    invoke-virtual {v11, v13}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 264
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 265
    .local v13, "address":Ljava/net/InetAddress;
    new-instance v14, Ljava/net/DatagramPacket;

    array-length v15, v1

    const/16 v8, 0x7b

    invoke-direct {v14, v1, v15, v13, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v11, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 266
    new-array v8, v0, [B

    .line 267
    .local v8, "incoming":[B
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v14, v8

    invoke-direct {v9, v8, v14}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 268
    .local v9, "response":Ljava/net/DatagramPacket;
    invoke-virtual {v11, v9}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    .line 270
    .local v14, "t1Mono":J
    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getLength()I

    move-result v10

    if-lt v10, v0, :cond_5

    .line 271
    aget-byte v0, v8, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    and-int/lit8 v0, v0, 0x7

    .line 272
    .local v0, "mode":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v3, Lcom/secaccu/clock/TimeSyncException;

    const-string v10, "\uc798\ubabb\ub41c NTP \ubaa8\ub4dc"

    invoke-direct {v3, v10}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    .end local v1    # "packet":[B
    .end local v4    # "t0Mono":J
    .end local v6    # "t0WallSec":D
    .end local p1    # "host":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v0    # "mode":I
    .end local v8    # "incoming":[B
    .end local v9    # "response":Ljava/net/DatagramPacket;
    .end local v11    # "socket":Ljava/net/DatagramSocket;
    .end local v12    # "$i$a$-use-TimeSyncEngine$fetchNtpSample$1":I
    .end local v13    # "address":Ljava/net/InetAddress;
    .end local v14    # "t1Mono":J
    .restart local v1    # "packet":[B
    .restart local v4    # "t0Mono":J
    .restart local v6    # "t0WallSec":D
    .restart local p1    # "host":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v10, v1

    move-wide/from16 v30, v4

    move-wide/from16 v24, v6

    move-object v1, v0

    goto/16 :goto_2

    .line 273
    .restart local v0    # "mode":I
    .restart local v8    # "incoming":[B
    .restart local v9    # "response":Ljava/net/DatagramPacket;
    .restart local v11    # "socket":Ljava/net/DatagramSocket;
    .restart local v12    # "$i$a$-use-TimeSyncEngine$fetchNtpSample$1":I
    .restart local v13    # "address":Ljava/net/InetAddress;
    .restart local v14    # "t1Mono":J
    :cond_1
    :goto_0
    const/4 v3, 0x1

    :try_start_2
    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    .line 274
    .local v3, "stratum":I
    if-eqz v3, :cond_4

    .line 275
    sget-object v10, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    move/from16 v19, v0

    .end local v0    # "mode":I
    .local v19, "mode":I
    const/16 v0, 0x20

    invoke-static {v10, v8, v0}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$readNtpTimestamp(Lcom/secaccu/clock/TimeSyncEngine$Companion;[BI)D

    move-result-wide v20

    .line 276
    .local v20, "receive":D
    sget-object v0, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    const/16 v10, 0x28

    invoke-static {v0, v8, v10}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$readNtpTimestamp(Lcom/secaccu/clock/TimeSyncEngine$Companion;[BI)D

    move-result-wide v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 277
    .local v22, "transmit":D
    move-object v10, v1

    .end local v1    # "packet":[B
    .local v10, "packet":[B
    const-wide/16 v0, 0x0

    cmpg-double v18, v22, v0

    if-lez v18, :cond_3

    .line 278
    :try_start_3
    sget-object v0, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    invoke-static {v0, v14, v15}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$wallAt(Lcom/secaccu/clock/TimeSyncEngine$Companion;J)D

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v0, v0, v16

    .line 279
    .local v0, "t1WallSec":D
    const-wide/16 v24, 0x0

    cmpl-double v18, v20, v24

    if-lez v18, :cond_2

    move-wide/from16 v26, v20

    goto :goto_1

    :cond_2
    move-wide/from16 v26, v22

    .line 280
    .local v26, "t2":D
    :goto_1
    sub-double v28, v26, v6

    sub-double v30, v22, v0

    add-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    .line 281
    .local v28, "offsetSec":D
    sub-double v30, v0, v6

    sub-double v32, v22, v26

    move-wide/from16 v34, v0

    .end local v0    # "t1WallSec":D
    .local v34, "t1WallSec":D
    sub-double v0, v30, v32

    move-wide/from16 v30, v4

    move v5, v3

    const-wide/16 v3, 0x0

    .end local v3    # "stratum":I
    .end local v4    # "t0Mono":J
    .local v5, "stratum":I
    .local v30, "t0Mono":J
    :try_start_4
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 282
    .local v0, "rttSec":D
    new-instance v3, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v18, v5

    const-wide v16, 0x408f400000000000L    # 1000.0

    .end local v5    # "stratum":I
    .local v18, "stratum":I
    mul-double v4, v28, v16

    move-wide/from16 v24, v6

    .end local v6    # "t0WallSec":D
    .local v24, "t0WallSec":D
    mul-double v6, v0, v16

    :try_start_5
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;-><init>(DD)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v0    # "rttSec":D
    .end local v8    # "incoming":[B
    .end local v9    # "response":Ljava/net/DatagramPacket;
    .end local v11    # "socket":Ljava/net/DatagramSocket;
    .end local v12    # "$i$a$-use-TimeSyncEngine$fetchNtpSample$1":I
    .end local v13    # "address":Ljava/net/InetAddress;
    .end local v14    # "t1Mono":J
    .end local v18    # "stratum":I
    .end local v19    # "mode":I
    .end local v20    # "receive":D
    .end local v22    # "transmit":D
    .end local v26    # "t2":D
    .end local v28    # "offsetSec":D
    .end local v34    # "t1WallSec":D
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    .end local v24    # "t0WallSec":D
    .restart local v6    # "t0WallSec":D
    :catchall_1
    move-exception v0

    move-wide/from16 v24, v6

    move-object v1, v0

    .end local v6    # "t0WallSec":D
    .restart local v24    # "t0WallSec":D
    goto :goto_2

    .end local v24    # "t0WallSec":D
    .end local v30    # "t0Mono":J
    .restart local v4    # "t0Mono":J
    .restart local v6    # "t0WallSec":D
    :catchall_2
    move-exception v0

    move-wide/from16 v30, v4

    move-wide/from16 v24, v6

    move-object v1, v0

    .end local v4    # "t0Mono":J
    .end local v6    # "t0WallSec":D
    .restart local v24    # "t0WallSec":D
    .restart local v30    # "t0Mono":J
    goto :goto_2

    .line 277
    .end local v24    # "t0WallSec":D
    .end local v30    # "t0Mono":J
    .restart local v3    # "stratum":I
    .restart local v4    # "t0Mono":J
    .restart local v6    # "t0WallSec":D
    .restart local v8    # "incoming":[B
    .restart local v9    # "response":Ljava/net/DatagramPacket;
    .restart local v11    # "socket":Ljava/net/DatagramSocket;
    .restart local v12    # "$i$a$-use-TimeSyncEngine$fetchNtpSample$1":I
    .restart local v13    # "address":Ljava/net/InetAddress;
    .restart local v14    # "t1Mono":J
    .restart local v19    # "mode":I
    .restart local v20    # "receive":D
    .restart local v22    # "transmit":D
    :cond_3
    move/from16 v18, v3

    move-wide/from16 v30, v4

    move-wide/from16 v24, v6

    .end local v3    # "stratum":I
    .end local v4    # "t0Mono":J
    .end local v6    # "t0WallSec":D
    .restart local v18    # "stratum":I
    .restart local v24    # "t0WallSec":D
    .restart local v30    # "t0Mono":J
    :try_start_6
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    const-string v1, "NTP transmit \uc5c6\uc74c"

    invoke-direct {v0, v1}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    .end local v10    # "packet":[B
    .end local v24    # "t0WallSec":D
    .end local v30    # "t0Mono":J
    .end local p1    # "host":Ljava/lang/String;
    throw v0

    .line 274
    .end local v18    # "stratum":I
    .end local v19    # "mode":I
    .end local v20    # "receive":D
    .end local v22    # "transmit":D
    .local v0, "mode":I
    .restart local v1    # "packet":[B
    .restart local v3    # "stratum":I
    .restart local v4    # "t0Mono":J
    .restart local v6    # "t0WallSec":D
    .restart local p1    # "host":Ljava/lang/String;
    :cond_4
    move/from16 v19, v0

    move-object v10, v1

    move/from16 v18, v3

    move-wide/from16 v30, v4

    move-wide/from16 v24, v6

    .end local v0    # "mode":I
    .end local v1    # "packet":[B
    .end local v3    # "stratum":I
    .end local v4    # "t0Mono":J
    .end local v6    # "t0WallSec":D
    .restart local v10    # "packet":[B
    .restart local v18    # "stratum":I
    .restart local v19    # "mode":I
    .restart local v24    # "t0WallSec":D
    .restart local v30    # "t0Mono":J
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    const-string v1, "NTP kiss-of-death"

    invoke-direct {v0, v1}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    .end local v10    # "packet":[B
    .end local v24    # "t0WallSec":D
    .end local v30    # "t0Mono":J
    .end local p1    # "host":Ljava/lang/String;
    throw v0

    .line 270
    .end local v18    # "stratum":I
    .end local v19    # "mode":I
    .restart local v1    # "packet":[B
    .restart local v4    # "t0Mono":J
    .restart local v6    # "t0WallSec":D
    .restart local p1    # "host":Ljava/lang/String;
    :cond_5
    move-object v10, v1

    move-wide/from16 v30, v4

    move-wide/from16 v24, v6

    .end local v1    # "packet":[B
    .end local v4    # "t0Mono":J
    .end local v6    # "t0WallSec":D
    .restart local v10    # "packet":[B
    .restart local v24    # "t0WallSec":D
    .restart local v30    # "t0Mono":J
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    const-string v1, "\uc9e7\uc740 NTP \uc751\ub2f5"

    invoke-direct {v0, v1}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    .end local v10    # "packet":[B
    .end local v24    # "t0WallSec":D
    .end local v30    # "t0Mono":J
    .end local p1    # "host":Ljava/lang/String;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 282
    .end local v8    # "incoming":[B
    .end local v9    # "response":Ljava/net/DatagramPacket;
    .end local v11    # "socket":Ljava/net/DatagramSocket;
    .end local v12    # "$i$a$-use-TimeSyncEngine$fetchNtpSample$1":I
    .end local v13    # "address":Ljava/net/InetAddress;
    .end local v14    # "t1Mono":J
    .restart local v10    # "packet":[B
    .restart local v24    # "t0WallSec":D
    .restart local v30    # "t0Mono":J
    .restart local p1    # "host":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .end local v10    # "packet":[B
    .end local v24    # "t0WallSec":D
    .end local v30    # "t0Mono":J
    .restart local v1    # "packet":[B
    .restart local v4    # "t0Mono":J
    .restart local v6    # "t0WallSec":D
    :catchall_4
    move-exception v0

    move-object v10, v1

    move-wide/from16 v30, v4

    move-wide/from16 v24, v6

    move-object v1, v0

    .end local v1    # "packet":[B
    .end local v4    # "t0Mono":J
    .end local v6    # "t0WallSec":D
    .end local p1    # "host":Ljava/lang/String;
    :goto_2
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .restart local v10    # "packet":[B
    .restart local v24    # "t0WallSec":D
    .restart local v30    # "t0Mono":J
    .restart local p1    # "host":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final open(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .line 287
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .local v1, "$this$open_u24lambda_u2416":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 288
    .local v2, "$i$a$-apply-TimeSyncEngine$open$conn$1":I
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 289
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 290
    const/16 v4, 0x9c4

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 291
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 292
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 293
    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (Linux; Android 15) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v3, "Cache-Control"

    const-string v4, "no-cache"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v3, "Pragma"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    nop

    .line 287
    .end local v1    # "$this$open_u24lambda_u2416":Ljava/net/HttpURLConnection;
    .end local v2    # "$i$a$-apply-TimeSyncEngine$open$conn$1":I
    nop

    .line 297
    .local v0, "conn":Ljava/net/HttpURLConnection;
    return-object v0
.end method

.method public static synthetic sync$default(Lcom/secaccu/clock/TimeSyncEngine;Lcom/secaccu/clock/TimeSite;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/secaccu/clock/SyncResult;
    .locals 0

    .line 43
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/secaccu/clock/TimeSyncEngine$sync$1;->INSTANCE:Lcom/secaccu/clock/TimeSyncEngine$sync$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/secaccu/clock/TimeSyncEngine;->sync(Lcom/secaccu/clock/TimeSite;Lkotlin/jvm/functions/Function1;)Lcom/secaccu/clock/SyncResult;

    move-result-object p0

    return-object p0
.end method

.method private final syncHttpDate(Lcom/secaccu/clock/TimeSite;Lkotlin/jvm/functions/Function1;)Lcom/secaccu/clock/SyncResult;
    .locals 29
    .param p1, "site"    # Lcom/secaccu/clock/TimeSite;
    .param p2, "onProgress"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/secaccu/clock/TimeSite;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/secaccu/clock/SyncResult;"
        }
    .end annotation

    .line 82
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "\uc5f0\uacb0 \ud655\uc778 \uc911"

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "HEAD"

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/4 v4, 0x1

    const-string v6, "GET-RANGE"

    aput-object v6, v0, v4

    const-string v4, "GET"

    const/4 v6, 0x2

    aput-object v4, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 84
    .local v4, "methods":Ljava/util/List;
    const/4 v7, 0x0

    .line 85
    .local v7, "workingMethod":Ljava/lang/String;
    const/4 v0, 0x0

    .line 86
    .local v0, "lastError":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v0

    .end local v0    # "lastError":Ljava/lang/Object;
    .local v9, "lastError":Ljava/lang/Object;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 87
    .local v10, "method":Ljava/lang/String;
    nop

    .line 88
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/secaccu/clock/TimeSyncEngine;->fetchHttpDateSample(Ljava/lang/String;Ljava/lang/String;)Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    move-object v7, v10

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    move-object v9, v0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "method":Ljava/lang/String;
    goto :goto_0

    .line 95
    :cond_0
    :goto_1
    if-nez v7, :cond_2

    if-eqz v9, :cond_1

    move-object v0, v9

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    const-string v3, "Date \ud5e4\ub354\ub97c \uc77d\uc9c0 \ubabb\ud588\uc2b5\ub2c8\ub2e4"

    invoke-direct {v0, v3}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :goto_2
    throw v0

    :cond_2
    move-object v8, v7

    .line 97
    .local v8, "method":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Date \ud5e4\ub354 \uc0d8\ud50c\ub9c1 ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 99
    .local v10, "samples":Ljava/util/List;
    const/16 v11, 0x18

    .line 100
    .local v11, "sampleTarget":I
    add-int/lit8 v12, v11, 0x8

    :goto_3
    if-ge v5, v12, :cond_5

    move v13, v5

    .local v13, "it":I
    const/4 v14, 0x0

    .line 101
    .local v14, "$i$a$-repeat-TimeSyncEngine$syncHttpDate$1":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v11, :cond_4

    .line 102
    nop

    .line 103
    :try_start_1
    move-object v0, v10

    check-cast v0, Ljava/util/Collection;

    invoke-virtual/range {p1 .. p1}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15, v8}, Lcom/secaccu/clock/TimeSyncEngine;->fetchHttpDateSample(Ljava/lang/String;Ljava/lang/String;)Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 104
    :catch_1
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v9, v0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v11, :cond_3

    .line 108
    const-wide/16 v15, 0x1c

    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V

    .line 110
    :cond_3
    nop

    .line 100
    .end local v13    # "it":I
    .end local v14    # "$i$a$-repeat-TimeSyncEngine$syncHttpDate$1":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 111
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_7

    .line 112
    if-eqz v9, :cond_6

    move-object v0, v9

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    const-string v3, "\uc0d8\ud50c\uc774 \ubd80\uc871\ud569\ub2c8\ub2e4"

    invoke-direct {v0, v3}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :goto_5
    throw v0

    .line 115
    :cond_7
    invoke-direct {v1, v10}, Lcom/secaccu/clock/TimeSyncEngine;->detectSecondBoundary(Ljava/util/List;)Lcom/secaccu/clock/TimeSyncEngine$Transition;

    move-result-object v0

    .line 116
    .local v0, "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    move-object v5, v10

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    .line 424
    .local v6, "it":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    const/4 v12, 0x0

    .line 116
    .local v12, "$i$a$-minOf-TimeSyncEngine$syncHttpDate$bestRtt$1":I
    invoke-virtual {v6}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getRttMs()D

    move-result-wide v12

    .end local v6    # "it":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    .end local v12    # "$i$a$-minOf-TimeSyncEngine$syncHttpDate$bestRtt$1":I
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    .line 424
    .restart local v6    # "it":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    const/4 v14, 0x0

    .line 116
    .local v14, "$i$a$-minOf-TimeSyncEngine$syncHttpDate$bestRtt$1":I
    invoke-virtual {v6}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getRttMs()D

    move-result-wide v14

    .end local v6    # "it":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    .end local v14    # "$i$a$-minOf-TimeSyncEngine$syncHttpDate$bestRtt$1":I
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    goto :goto_6

    :cond_8
    move-wide v5, v12

    .line 117
    .local v5, "bestRtt":D
    sget-object v12, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    .line 118
    move-object v13, v10

    check-cast v13, Ljava/lang/Iterable;

    .local v13, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 425
    .local v14, "$i$f$sortedBy":I
    new-instance v15, Lcom/secaccu/clock/TimeSyncEngine$syncHttpDate$$inlined$sortedBy$1;

    invoke-direct {v15}, Lcom/secaccu/clock/TimeSyncEngine$syncHttpDate$$inlined$sortedBy$1;-><init>()V

    check-cast v15, Ljava/util/Comparator;

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v13

    .end local v13    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$sortedBy":I
    check-cast v13, Ljava/lang/Iterable;

    .line 118
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    div-int/2addr v14, v3

    const/4 v3, 0x4

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v13, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 426
    .local v13, "$i$f$map":I
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v3, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    .local v14, "destination$iv$iv":Ljava/util/Collection;
    move-object v15, v3

    .local v15, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 427
    .local v16, "$i$f$mapTo":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 428
    .local v18, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v18

    check-cast v19, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;

    .local v19, "it":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    const/16 v20, 0x0

    .line 118
    .local v20, "$i$a$-map-TimeSyncEngine$syncHttpDate$bulkOffset$2":I
    invoke-virtual/range {v19 .. v19}, Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;->getCoarseOffsetMs()D

    move-result-wide v19

    .end local v19    # "it":Lcom/secaccu/clock/TimeSyncEngine$HttpDateSample;
    .end local v20    # "$i$a$-map-TimeSyncEngine$syncHttpDate$bulkOffset$2":I
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 428
    invoke-interface {v14, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto :goto_7

    .line 429
    .end local v18    # "item$iv$iv":Ljava/lang/Object;
    :cond_9
    nop

    .end local v14    # "destination$iv$iv":Ljava/util/Collection;
    .end local v15    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$mapTo":I
    move-object v1, v14

    check-cast v1, Ljava/util/List;

    .line 426
    nop

    .line 117
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$map":I
    invoke-static {v12, v1}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$median(Lcom/secaccu/clock/TimeSyncEngine$Companion;Ljava/util/List;)D

    move-result-wide v12

    .line 120
    .local v12, "bulkOffset":D
    const-wide/16 v14, 0x0

    .line 121
    .local v14, "offset":D
    const-wide/16 v16, 0x0

    .line 122
    .local v16, "error":D
    const/4 v1, 0x0

    .line 123
    .local v1, "mode":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 124
    invoke-virtual {v0}, Lcom/secaccu/clock/TimeSyncEngine$Transition;->getOffsetMs()D

    move-result-wide v14

    .line 125
    move-object/from16 v25, v4

    .end local v4    # "methods":Ljava/util/List;
    .local v25, "methods":Ljava/util/List;
    invoke-virtual {v0}, Lcom/secaccu/clock/TimeSyncEngine$Transition;->getErrorMs()D

    move-result-wide v3

    move-object/from16 v26, v0

    move-object/from16 v18, v1

    .end local v0    # "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    .end local v1    # "mode":Ljava/lang/String;
    .local v18, "mode":Ljava/lang/String;
    .local v26, "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 126
    .end local v16    # "error":D
    .local v0, "error":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+\uacbd\uacc4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .end local v18    # "mode":Ljava/lang/String;
    .local v3, "mode":Ljava/lang/String;
    const-string v4, "\ucd08 \uacbd\uacc4 \ud3ec\ucc29"

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v27, v14

    goto :goto_8

    .line 129
    .end local v3    # "mode":Ljava/lang/String;
    .end local v25    # "methods":Ljava/util/List;
    .end local v26    # "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    .local v0, "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    .restart local v1    # "mode":Ljava/lang/String;
    .restart local v4    # "methods":Ljava/util/List;
    .restart local v16    # "error":D
    :cond_a
    move-object/from16 v26, v0

    move-object/from16 v18, v1

    move-object/from16 v25, v4

    .end local v0    # "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    .end local v1    # "mode":Ljava/lang/String;
    .end local v4    # "methods":Ljava/util/List;
    .restart local v18    # "mode":Ljava/lang/String;
    .restart local v25    # "methods":Ljava/util/List;
    .restart local v26    # "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    move-wide v14, v12

    .line 130
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, v5, v0

    const-wide v3, 0x407f400000000000L    # 500.0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 131
    .end local v16    # "error":D
    .local v0, "error":D
    move-object v3, v8

    move-wide/from16 v27, v14

    .line 133
    .end local v14    # "offset":D
    .end local v18    # "mode":Ljava/lang/String;
    .restart local v3    # "mode":Ljava/lang/String;
    .local v27, "offset":D
    :goto_8
    new-instance v4, Lcom/secaccu/clock/SyncResult;

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    .line 138
    nop

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/secaccu/clock/TimeSite;->getName()Ljava/lang/String;

    move-result-object v23

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v24

    .line 133
    move-object v14, v4

    move-wide/from16 v15, v27

    move-wide/from16 v17, v0

    move-wide/from16 v19, v5

    move-object/from16 v22, v3

    invoke-direct/range {v14 .. v24}, Lcom/secaccu/clock/SyncResult;-><init>(DDDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 116
    .end local v3    # "mode":Ljava/lang/String;
    .end local v5    # "bestRtt":D
    .end local v12    # "bulkOffset":D
    .end local v25    # "methods":Ljava/util/List;
    .end local v26    # "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    .end local v27    # "offset":D
    .local v0, "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    .restart local v4    # "methods":Ljava/util/List;
    :cond_b
    move-object/from16 v26, v0

    .end local v0    # "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    .restart local v26    # "transition":Lcom/secaccu/clock/TimeSyncEngine$Transition;
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private final syncJsonMillis(Lcom/secaccu/clock/TimeSite;Lkotlin/jvm/functions/Function1;)Lcom/secaccu/clock/SyncResult;
    .locals 22
    .param p1, "site"    # Lcom/secaccu/clock/TimeSite;
    .param p2, "onProgress"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/secaccu/clock/TimeSite;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/secaccu/clock/SyncResult;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 53
    .local v1, "samples":Ljava/util/List;
    const/4 v0, 0x0

    .line 54
    .local v0, "lastError":Ljava/lang/Object;
    const/16 v2, 0x8

    .line 55
    .local v2, "target":I
    const-string v3, "JSON \ubc00\ub9ac\ucd08 \uc2dc\uac01 \uc218\uc9d1 \uc911"

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v3, v2, 0x4

    const/4 v5, 0x0

    move v6, v5

    move-object v5, v0

    .end local v0    # "lastError":Ljava/lang/Object;
    .local v5, "lastError":Ljava/lang/Object;
    :goto_0
    if-ge v6, v3, :cond_1

    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 57
    .local v8, "$i$a$-repeat-TimeSyncEngine$syncJsonMillis$1":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 58
    nop

    .line 59
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual/range {p1 .. p1}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p0

    :try_start_1
    invoke-direct {v10, v9}, Lcom/secaccu/clock/TimeSyncEngine;->fetchJsonSample(Ljava/lang/String;)Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 60
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    move-object v5, v0

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 57
    :cond_0
    move-object/from16 v10, p0

    .line 56
    .end local v7    # "it":I
    .end local v8    # "$i$a$-repeat-TimeSyncEngine$syncJsonMillis$1":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 64
    :cond_1
    move-object/from16 v10, p0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    if-eqz v5, :cond_2

    move-object v0, v5

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_4

    :cond_2
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    const-string v3, "\uc11c\ubc84 \uc2dc\uac01\uc744 \uc77d\uc9c0 \ubabb\ud588\uc2b5\ub2c8\ub2e4"

    invoke-direct {v0, v3}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :goto_4
    throw v0

    .line 67
    :cond_3
    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 419
    .local v3, "$i$f$sortedBy":I
    new-instance v6, Lcom/secaccu/clock/TimeSyncEngine$syncJsonMillis$$inlined$sortedBy$1;

    invoke-direct {v6}, Lcom/secaccu/clock/TimeSyncEngine$syncJsonMillis$$inlined$sortedBy$1;-><init>()V

    check-cast v6, Ljava/util/Comparator;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$sortedBy":I
    check-cast v0, Ljava/lang/Iterable;

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v6, 0x3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "best":Ljava/util/List;
    sget-object v3, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 420
    .local v7, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .local v9, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 421
    .local v11, "$i$f$mapTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 422
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;

    .local v14, "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    const/4 v15, 0x0

    .line 68
    .local v15, "$i$a$-map-TimeSyncEngine$syncJsonMillis$offset$1":I
    invoke-virtual {v14}, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;->getOffsetMs()D

    move-result-wide v14

    .end local v14    # "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    .end local v15    # "$i$a$-map-TimeSyncEngine$syncJsonMillis$offset$1":I
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 422
    invoke-interface {v8, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 423
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    check-cast v8, Ljava/util/List;

    .line 420
    nop

    .line 68
    .end local v6    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$map":I
    invoke-static {v3, v8}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$median(Lcom/secaccu/clock/TimeSyncEngine$Companion;Ljava/util/List;)D

    move-result-wide v6

    .line 69
    .local v6, "offset":D
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;

    .line 424
    .local v8, "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    const/4 v9, 0x0

    .line 69
    .local v9, "$i$a$-minOf-TimeSyncEngine$syncJsonMillis$rtt$1":I
    invoke-virtual {v8}, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;->getRttMs()D

    move-result-wide v8

    .end local v8    # "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    .end local v9    # "$i$a$-minOf-TimeSyncEngine$syncJsonMillis$rtt$1":I
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;

    .line 424
    .local v11, "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    const/4 v12, 0x0

    .line 69
    .local v12, "$i$a$-minOf-TimeSyncEngine$syncJsonMillis$rtt$1":I
    invoke-virtual {v11}, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;->getRttMs()D

    move-result-wide v11

    .end local v11    # "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    .end local v12    # "$i$a$-minOf-TimeSyncEngine$syncJsonMillis$rtt$1":I
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    goto :goto_6

    .line 70
    .local v8, "rtt":D
    :cond_5
    new-instance v3, Lcom/secaccu/clock/SyncResult;

    .line 71
    nop

    .line 72
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v11, v8, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 73
    nop

    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v18

    .line 75
    nop

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/secaccu/clock/TimeSite;->getName()Ljava/lang/String;

    move-result-object v20

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v21

    .line 70
    const-string v19, "JSON"

    move-object v11, v3

    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v21}, Lcom/secaccu/clock/SyncResult;-><init>(DDDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 69
    .end local v8    # "rtt":D
    :cond_6
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method private final syncNtp(Lcom/secaccu/clock/TimeSite;Lkotlin/jvm/functions/Function1;)Lcom/secaccu/clock/SyncResult;
    .locals 23
    .param p1, "site"    # Lcom/secaccu/clock/TimeSite;
    .param p2, "onProgress"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/secaccu/clock/TimeSite;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/secaccu/clock/SyncResult;"
        }
    .end annotation

    .line 145
    const-string v0, "NTP \uc9c8\uc758 \uc911"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/net/URI;

    invoke-virtual/range {p1 .. p1}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v2, v0

    .line 147
    .local v2, "host":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 148
    .local v3, "samples":Ljava/util/List;
    const/4 v0, 0x0

    .line 149
    .local v0, "lastError":Ljava/lang/Object;
    const/4 v4, 0x0

    move v5, v4

    move-object v4, v0

    .end local v0    # "lastError":Ljava/lang/Object;
    .local v4, "lastError":Ljava/lang/Object;
    :goto_0
    const/16 v0, 0x8

    if-ge v5, v0, :cond_0

    move v6, v5

    .local v6, "it":I
    const/4 v7, 0x0

    .line 150
    .local v7, "$i$a$-repeat-TimeSyncEngine$syncNtp$1":I
    nop

    .line 151
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, p0

    :try_start_1
    invoke-direct {v8, v2}, Lcom/secaccu/clock/TimeSyncEngine;->fetchNtpSample(Ljava/lang/String;)Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 152
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v8, p0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    move-object v4, v0

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 149
    .end local v6    # "it":I
    .end local v7    # "$i$a$-repeat-TimeSyncEngine$syncNtp$1":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    :cond_0
    move-object/from16 v8, p0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    if-eqz v4, :cond_1

    move-object v0, v4

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_3

    :cond_1
    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    const-string v5, "NTP \uc751\ub2f5\uc774 \uc5c6\uc2b5\ub2c8\ub2e4"

    invoke-direct {v0, v5}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :goto_3
    throw v0

    .line 159
    :cond_2
    move-object v0, v3

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 430
    .local v5, "$i$f$sortedBy":I
    new-instance v6, Lcom/secaccu/clock/TimeSyncEngine$syncNtp$$inlined$sortedBy$1;

    invoke-direct {v6}, Lcom/secaccu/clock/TimeSyncEngine$syncNtp$$inlined$sortedBy$1;-><init>()V

    check-cast v6, Ljava/util/Comparator;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$sortedBy":I
    check-cast v0, Ljava/lang/Iterable;

    .line 159
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x3

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 160
    .local v0, "best":Ljava/util/List;
    sget-object v5, Lcom/secaccu/clock/TimeSyncEngine;->Companion:Lcom/secaccu/clock/TimeSyncEngine$Companion;

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 431
    .local v7, "$i$f$map":I
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v6, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v6

    .local v10, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 432
    .local v11, "$i$f$mapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 433
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;

    .local v14, "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    const/4 v15, 0x0

    .line 160
    .local v15, "$i$a$-map-TimeSyncEngine$syncNtp$offset$1":I
    invoke-virtual {v14}, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;->getOffsetMs()D

    move-result-wide v14

    .end local v14    # "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    .end local v15    # "$i$a$-map-TimeSyncEngine$syncNtp$offset$1":I
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 433
    invoke-interface {v9, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 434
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    check-cast v9, Ljava/util/List;

    .line 431
    nop

    .line 160
    .end local v6    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$map":I
    invoke-static {v5, v9}, Lcom/secaccu/clock/TimeSyncEngine$Companion;->access$median(Lcom/secaccu/clock/TimeSyncEngine$Companion;Ljava/util/List;)D

    move-result-wide v5

    .line 161
    .local v5, "offset":D
    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;

    .line 424
    .local v9, "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    const/4 v10, 0x0

    .line 161
    .local v10, "$i$a$-minOf-TimeSyncEngine$syncNtp$rtt$1":I
    invoke-virtual {v9}, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;->getRttMs()D

    move-result-wide v9

    .end local v9    # "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    .end local v10    # "$i$a$-minOf-TimeSyncEngine$syncNtp$rtt$1":I
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;

    .line 424
    .local v11, "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    const/4 v12, 0x0

    .line 161
    .local v12, "$i$a$-minOf-TimeSyncEngine$syncNtp$rtt$1":I
    invoke-virtual {v11}, Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;->getRttMs()D

    move-result-wide v11

    .end local v11    # "it":Lcom/secaccu/clock/TimeSyncEngine$OffsetSample;
    .end local v12    # "$i$a$-minOf-TimeSyncEngine$syncNtp$rtt$1":I
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    goto :goto_5

    :cond_4
    move-wide/from16 v21, v9

    .line 162
    .local v21, "rtt":D
    new-instance v7, Lcom/secaccu/clock/SyncResult;

    .line 163
    nop

    .line 164
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v9, v21, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 165
    nop

    .line 166
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    .line 167
    nop

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/secaccu/clock/TimeSite;->getName()Ljava/lang/String;

    move-result-object v19

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/secaccu/clock/TimeSite;->getUrl()Ljava/lang/String;

    move-result-object v20

    .line 162
    const-string v18, "NTP"

    move-object v10, v7

    move-wide v11, v5

    move-wide/from16 v15, v21

    invoke-direct/range {v10 .. v20}, Lcom/secaccu/clock/SyncResult;-><init>(DDDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 161
    .end local v21    # "rtt":D
    :cond_5
    new-instance v7, Ljava/util/NoSuchElementException;

    invoke-direct {v7}, Ljava/util/NoSuchElementException;-><init>()V

    throw v7

    .line 146
    .end local v0    # "best":Ljava/util/List;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "samples":Ljava/util/List;
    .end local v4    # "lastError":Ljava/lang/Object;
    .end local v5    # "offset":D
    :cond_6
    move-object/from16 v8, p0

    new-instance v0, Lcom/secaccu/clock/TimeSyncException;

    const-string v2, "\uc798\ubabb\ub41c NTP \uc8fc\uc18c"

    invoke-direct {v0, v2}, Lcom/secaccu/clock/TimeSyncException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final sync(Lcom/secaccu/clock/TimeSite;Lkotlin/jvm/functions/Function1;)Lcom/secaccu/clock/SyncResult;
    .locals 2
    .param p1, "site"    # Lcom/secaccu/clock/TimeSite;
    .param p2, "onProgress"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/secaccu/clock/TimeSite;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/secaccu/clock/SyncResult;"
        }
    .end annotation

    const-string v0, "site"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/secaccu/clock/TimeSite;->getKind()Lcom/secaccu/clock/SyncKind;

    move-result-object v0

    sget-object v1, Lcom/secaccu/clock/TimeSyncEngine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/secaccu/clock/SyncKind;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/secaccu/clock/TimeSyncEngine;->syncHttpDate(Lcom/secaccu/clock/TimeSite;Lkotlin/jvm/functions/Function1;)Lcom/secaccu/clock/SyncResult;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/secaccu/clock/TimeSyncEngine;->syncJsonMillis(Lcom/secaccu/clock/TimeSite;Lkotlin/jvm/functions/Function1;)Lcom/secaccu/clock/SyncResult;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/secaccu/clock/TimeSyncEngine;->syncNtp(Lcom/secaccu/clock/TimeSite;Lkotlin/jvm/functions/Function1;)Lcom/secaccu/clock/SyncResult;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
