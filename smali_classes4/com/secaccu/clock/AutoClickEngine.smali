.class public final Lcom/secaccu/clock/AutoClickEngine;
.super Ljava/lang/Object;
.source "AutoClickEngine.java"


# static fields
.field public static final DEFAULT_PCT:I = 0x32

.field public static final INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

.field private static final KEY_ADJ:Ljava/lang/String; = "auto_click_adj"

.field private static final KEY_ENABLED:Ljava/lang/String; = "auto_click_enabled"

.field private static final KEY_HAS_POS:Ljava/lang/String; = "auto_click_has_pos"

.field private static final KEY_LOG:Ljava/lang/String; = "auto_click_log"

.field private static final KEY_PCT:Ljava/lang/String; = "auto_click_pct"

.field private static final KEY_X:Ljava/lang/String; = "auto_click_x"

.field private static final KEY_Y:Ljava/lang/String; = "auto_click_y"

.field private static final LOG_LINES:I = 0x5

.field private static final PREFS:Ljava/lang/String; = "secaccu_ui"


# instance fields
.field private volatile appContext:Landroid/content/Context;

.field private volatile firedExact:J

.field private final handler:Landroid/os/Handler;

.field private volatile preAlertExact:J

.field private volatile resyncExact:J

.field private final scheduledClick:Ljava/lang/Runnable;

.field private volatile scheduledExact:J

.field private volatile scheduledPressAt:J

.field private volatile testExact:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/secaccu/clock/AutoClickEngine;

    invoke-direct {v0}, Lcom/secaccu/clock/AutoClickEngine;-><init>()V

    sput-object v0, Lcom/secaccu/clock/AutoClickEngine;->INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/secaccu/clock/AutoClickEngine$1;

    invoke-direct {v0, p0}, Lcom/secaccu/clock/AutoClickEngine$1;-><init>(Lcom/secaccu/clock/AutoClickEngine;)V

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    .line 43
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    .line 44
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    .line 45
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->preAlertExact:J

    .line 46
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->resyncExact:J

    .line 47
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->testExact:J

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/secaccu/clock/AutoClickEngine;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/secaccu/clock/AutoClickEngine;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/secaccu/clock/AutoClickEngine;JJ)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/secaccu/clock/AutoClickEngine;->fireAt(JJ)V

    return-void
.end method

.method private alertFiveMin(Landroid/content/Context;)V
    .locals 3

    .line 310
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x4

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v1, 0x1c

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    .line 313
    :goto_0
    const-string v0, "\uc790\ub3d9 \ud074\ub9ad 5\ubd84 \uc804"

    invoke-virtual {p0, p1, v0}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private fireAt(JJ)V
    .locals 11

    .line 317
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    move-object v1, p0

    goto/16 :goto_4

    .line 320
    :cond_0
    iget-object v2, p0, Lcom/secaccu/clock/AutoClickEngine;->appContext:Landroid/content/Context;

    .line 321
    if-nez v2, :cond_1

    .line 322
    return-void

    .line 324
    :cond_1
    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->testExact:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 325
    invoke-virtual {p0, v2}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v7, :cond_3

    invoke-virtual {p0, v2}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v1, p0

    goto/16 :goto_3

    .line 328
    :cond_3
    invoke-static {}, Lcom/secaccu/clock/AutoClickService;->getInstance()Lcom/secaccu/clock/AutoClickService;

    move-result-object v0

    .line 329
    const-string v8, "string"

    const-wide/16 v3, -0x1

    if-nez v0, :cond_5

    .line 330
    const-string p1, "auto_click_need_a11y"

    invoke-static {v2, p1, v8}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    if-eqz v7, :cond_4

    .line 332
    iput-wide v3, p0, Lcom/secaccu/clock/AutoClickEngine;->testExact:J

    .line 334
    :cond_4
    return-void

    .line 336
    :cond_5
    iput-wide p1, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    .line 337
    iput-wide v3, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    .line 338
    if-eqz v7, :cond_6

    .line 339
    iput-wide v3, p0, Lcom/secaccu/clock/AutoClickEngine;->testExact:J

    .line 341
    :cond_6
    sget-object p1, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object p1

    .line 342
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide p1

    double-to-long p1, p1

    move-wide v5, p1

    goto :goto_1

    :cond_7
    move-wide v5, p3

    .line 343
    :goto_1
    invoke-virtual {p0, v2}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result p1

    .line 344
    invoke-virtual {p0, v2}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result p2

    .line 345
    sget-object v1, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {v1}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 346
    invoke-virtual {v0, p1, p2}, Lcom/secaccu/clock/AutoClickService;->click(FF)Z

    move-result p1

    .line 347
    iget-object p2, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/secaccu/clock/AutoClickEngine$2;

    invoke-direct {v0, p0, v2}, Lcom/secaccu/clock/AutoClickEngine$2;-><init>(Lcom/secaccu/clock/AutoClickEngine;Landroid/content/Context;)V

    const-wide/16 v9, 0x190

    invoke-virtual {p2, v0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    if-eqz p1, :cond_8

    .line 354
    move-object v1, p0

    move-wide v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/secaccu/clock/AutoClickEngine;->record(Landroid/content/Context;JJZ)V

    .line 355
    const-string p1, "auto_click_fired"

    invoke-static {v2, p1, v8}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, v6}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 357
    :cond_8
    move-object v1, p0

    iput-wide v3, v1, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    .line 358
    const-string p1, "auto_click_fail"

    invoke-static {v2, p1, v8}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    :goto_2
    return-void

    .line 325
    :cond_9
    move-object v1, p0

    .line 326
    :goto_3
    return-void

    .line 317
    :cond_a
    move-object v1, p0

    .line 318
    :goto_4
    return-void
.end method

.method static id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static leadFor(DII)J
    .locals 2

    .line 140
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    int-to-double v0, p2

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    int-to-long p2, p3

    add-long/2addr p0, p2

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private leadMs(Landroid/content/Context;D)J
    .locals 1

    .line 144
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getPct(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getAdj(Landroid/content/Context;)I

    move-result p1

    invoke-static {p2, p3, v0, p1}, Lcom/secaccu/clock/AutoClickEngine;->leadFor(DII)J

    move-result-wide p1

    return-wide p1
.end method

.method private static mark(Z)Ljava/lang/String;
    .locals 0

    .line 222
    if-eqz p0, :cond_0

    const-string p0, "\u2714"

    goto :goto_0

    :cond_0
    const-string p0, "\u2718"

    :goto_0
    return-object p0
.end method

.method private nextExact(DD)J
    .locals 4

    .line 149
    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->testExact:J

    .line 150
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/secaccu/clock/PressHintFormatter;->nextPressAtMs(DD)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "secaccu_ui"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method private record(Landroid/content/Context;JJZ)V
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p6, :cond_0

    const-string p6, "[\uc5f0\uc2b5] "

    goto :goto_0

    :cond_0
    move-object p6, v1

    :goto_0
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, "\ubaa9\ud45c "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p0, p2, p3}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, " \u2192 \uc2e4\uc81c "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    .line 192
    invoke-virtual {p0, p4, p5}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, " ("

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    .line 193
    cmp-long v0, p4, p2

    if-ltz v0, :cond_1

    const-string v0, "+"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    sub-long/2addr p4, p2

    invoke-virtual {p6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "ms)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 194
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 195
    const-string p3, "auto_click_log"

    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 196
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    const/4 p6, 0x0

    if-eqz p5, :cond_2

    new-array p4, p6, [Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string p5, "\n"

    invoke-virtual {p4, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 197
    :goto_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    nop

    :goto_3
    array-length p2, p4

    if-ge p6, p2, :cond_3

    const/4 p2, 0x4

    if-ge p6, p2, :cond_3

    .line 199
    const/16 p2, 0xa

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object v0, p4, p6

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 p6, p6, 0x1

    goto :goto_3

    .line 201
    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    return-void
.end method


# virtual methods
.method public calcLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 161
    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    if-nez v0, :cond_1

    .line 163
    const-string p1, ""

    return-object p1

    .line 165
    :cond_1
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/secaccu/clock/AutoClickEngine;->nextExact(DD)J

    move-result-wide v1

    .line 166
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 167
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v5

    invoke-direct {p0, p1, v5, v6}, Lcom/secaccu/clock/AutoClickEngine;->leadMs(Landroid/content/Context;D)J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RTT "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ms  \u00b7  \uc11c\ubc84 \uc815\uac01 \ub3c4\ucc29 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 169
    invoke-virtual {p0, v3, v4}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n\ub204\ub984 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    return-object p1
.end method

.method public cancelSchedule()V
    .locals 2

    .line 363
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    .line 364
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    .line 365
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    return-void
.end method

.method public checkLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uc810\uac80  \uc811\uadfc\uc131 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/secaccu/clock/AutoClickEngine;->mark(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \uc624\ubc84\ub808\uc774 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/secaccu/clock/AutoClickEngine;->mark(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \ubc30\ud130\ub9ac "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isBatteryExempt(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Lcom/secaccu/clock/AutoClickEngine;->mark(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \ub3d9\uae30\ud654 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    .line 218
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->isReady()Z

    move-result v0

    invoke-static {v0}, Lcom/secaccu/clock/AutoClickEngine;->mark(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    return-object p1
.end method

.method public evaluate(Landroid/content/Context;)V
    .locals 12

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->appContext:Landroid/content/Context;

    .line 265
    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->testExact:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 266
    :goto_0
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 270
    :cond_1
    sget-object v1, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v1}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object v1

    .line 271
    if-nez v1, :cond_2

    .line 272
    return-void

    .line 274
    :cond_2
    invoke-virtual {v1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v4

    double-to-long v4, v4

    .line 275
    invoke-virtual {v1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v8

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/secaccu/clock/AutoClickEngine;->nextExact(DD)J

    move-result-wide v6

    .line 276
    iget-wide v8, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_3

    .line 277
    return-void

    .line 279
    :cond_3
    sub-long v8, v6, v4

    .line 280
    if-nez v0, :cond_5

    .line 281
    const-wide/32 v10, 0x493e0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_4

    const-wide/32 v10, 0x3a980

    cmp-long v10, v8, v10

    if-lez v10, :cond_4

    iget-wide v10, p0, Lcom/secaccu/clock/AutoClickEngine;->preAlertExact:J

    cmp-long v10, v10, v6

    if-eqz v10, :cond_4

    .line 282
    iput-wide v6, p0, Lcom/secaccu/clock/AutoClickEngine;->preAlertExact:J

    .line 283
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->alertFiveMin(Landroid/content/Context;)V

    .line 285
    :cond_4
    const-wide/32 v10, 0xea60

    cmp-long v10, v8, v10

    if-gtz v10, :cond_5

    const-wide/16 v10, 0x7530

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    iget-wide v8, p0, Lcom/secaccu/clock/AutoClickEngine;->resyncExact:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_5

    .line 286
    iput-wide v6, p0, Lcom/secaccu/clock/AutoClickEngine;->resyncExact:J

    .line 287
    sget-object v8, Lcom/secaccu/clock/AutoClickUi;->INSTANCE:Lcom/secaccu/clock/AutoClickUi;

    invoke-virtual {v8}, Lcom/secaccu/clock/AutoClickUi;->syncNow()V

    .line 290
    :cond_5
    invoke-virtual {v1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v8

    invoke-direct {p0, p1, v8, v9}, Lcom/secaccu/clock/AutoClickEngine;->leadMs(Landroid/content/Context;D)J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 291
    sub-long v10, v8, v4

    .line 292
    cmp-long p1, v10, v2

    if-gtz p1, :cond_8

    .line 293
    sub-long/2addr v4, v8

    const-wide/16 v1, 0x96

    cmp-long p1, v4, v1

    if-gtz p1, :cond_6

    .line 294
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/secaccu/clock/AutoClickEngine;->fireAt(JJ)V

    goto :goto_1

    .line 295
    :cond_6
    if-eqz v0, :cond_7

    .line 296
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->testExact:J

    .line 298
    :cond_7
    :goto_1
    return-void

    .line 300
    :cond_8
    const-wide/16 v0, 0x7d0

    cmp-long p1, v10, v0

    if-gtz p1, :cond_9

    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    cmp-long p1, v0, v6

    if-eqz p1, :cond_9

    .line 301
    iput-wide v6, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    .line 302
    iput-wide v8, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    .line 303
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v10

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 306
    :cond_9
    return-void

    .line 267
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickEngine;->cancelSchedule()V

    .line 268
    return-void
.end method

.method public formatPressAt(J)Ljava/lang/String;
    .locals 3

    .line 154
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 155
    const-string v1, "Asia/Seoul"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 156
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdj(Landroid/content/Context;)I
    .locals 2

    .line 132
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_adj"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPct(Landroid/content/Context;)I
    .locals 2

    .line 123
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_pct"

    const/16 v1, 0x32

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getX(Landroid/content/Context;)F
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_x"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getY(Landroid/content/Context;)F
    .locals 2

    .line 79
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_y"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public hasPosition(Landroid/content/Context;)Z
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_has_pos"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public historyLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 205
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_log"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\ud074\ub9ad \uae30\ub85d \uc5c6\uc74c"

    :cond_0
    return-object p1
.end method

.method public isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 5

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/secaccu/clock/AutoClickService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    nop

    .line 95
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    .line 94
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 98
    if-eq v3, v1, :cond_0

    .line 99
    return v2

    .line 101
    :cond_0
    nop

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "enabled_accessibility_services"

    .line 101
    invoke-static {p1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    return v2

    .line 107
    :cond_1
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x3a

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 108
    invoke-virtual {v3, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 109
    :cond_2
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 111
    return v1

    .line 115
    :cond_3
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p1

    .line 116
    :goto_0
    invoke-static {}, Lcom/secaccu/clock/AutoClickService;->getInstance()Lcom/secaccu/clock/AutoClickService;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public isBatteryExempt(Landroid/content/Context;)Z
    .locals 1

    .line 210
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 211
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_enabled"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onAppClosed(Landroid/content/Context;)V
    .locals 1

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/secaccu/clock/AutoClickEngine;->setEnabled(Landroid/content/Context;Z)V

    .line 371
    return-void
.end method

.method public positionLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 255
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "string"

    if-nez v0, :cond_0

    .line 256
    const-string v0, "auto_click_pos_unset"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 259
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 260
    const-string v3, "auto_click_pos_set"

    invoke-static {p1, v3, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAdj(Landroid/content/Context;I)V
    .locals 1

    .line 136
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/16 v0, 0x32

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v0, -0x32

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const-string v0, "auto_click_adj"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method

.method public setEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "auto_click_enabled"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    if-nez p2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickEngine;->cancelSchedule()V

    .line 64
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    .line 65
    iput-wide p1, p0, Lcom/secaccu/clock/AutoClickEngine;->testExact:J

    .line 66
    sget-object p1, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Lcom/secaccu/clock/AutoClickOverlay;->hideAll()V

    .line 68
    :cond_0
    return-void
.end method

.method public setPct(Landroid/content/Context;I)V
    .locals 1

    .line 127
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const-string v0, "auto_click_pct"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    return-void
.end method

.method public setPosition(Landroid/content/Context;FF)V
    .locals 3

    .line 83
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    const-string v1, "auto_click_has_pos"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    const-string v1, "auto_click_x"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    const-string v1, "auto_click_y"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    sget-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V

    .line 89
    return-void
.end method

.method public startTest(Landroid/content/Context;)V
    .locals 8

    .line 176
    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v0

    double-to-long v0, v0

    .line 182
    const-wide/16 v2, 0x2710

    div-long v4, v0, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long/2addr v4, v2

    .line 183
    sub-long v0, v4, v0

    const-wide/16 v6, 0x1f40

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    .line 184
    add-long/2addr v4, v2

    .line 186
    :cond_2
    iput-wide v4, p0, Lcom/secaccu/clock/AutoClickEngine;->testExact:J

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uc5f0\uc2b5 \ud0ed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4, v5}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    return-void

    .line 178
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    const-string v0, "auto_click_need_sync"

    goto :goto_2

    :cond_4
    const-string v0, "auto_click_need_pos"

    :goto_2
    const-string v1, "string"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public statusLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 226
    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->isReady()Z

    move-result v0

    const-string v1, "auto_click_need_sync"

    const-string v2, "string"

    if-nez v0, :cond_0

    .line 227
    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 229
    :cond_0
    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object v0

    .line 230
    if-nez v0, :cond_1

    .line 231
    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 233
    :cond_1
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/secaccu/clock/AutoClickEngine;->nextExact(DD)J

    move-result-wide v3

    .line 234
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->leadMs(Landroid/content/Context;D)J

    move-result-wide v0

    sub-long v0, v3, v0

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v1

    const-string v5, "  \u00b7  "

    if-nez v1, :cond_2

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto_click_need_pos"

    invoke-static {p1, v3, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 239
    :cond_2
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto_click_need_a11y"

    invoke-static {p1, v3, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 242
    :cond_3
    iget-wide v5, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    cmp-long v1, v5, v3

    const-string v3, "  "

    if-nez v1, :cond_4

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto_click_done"

    invoke-static {p1, v4, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 245
    :cond_4
    iget-wide v4, p0, Lcom/secaccu/clock/AutoClickEngine;->testExact:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uc5f0\uc2b5 \ud0ed \ub300\uae30  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 248
    :cond_5
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto_click_armed"

    invoke-static {p1, v4, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 251
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uc815\uac01 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \uc5d0 \ub204\ub974\uae30"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 375
    return-void
.end method
