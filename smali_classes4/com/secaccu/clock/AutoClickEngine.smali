.class public final Lcom/secaccu/clock/AutoClickEngine;
.super Ljava/lang/Object;
.source "AutoClickEngine.java"


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/AutoClickEngine;

.field private static final KEY_ENABLED:Ljava/lang/String; = "auto_click_enabled"

.field private static final KEY_HAS_POS:Ljava/lang/String; = "auto_click_has_pos"

.field private static final KEY_LOG:Ljava/lang/String; = "auto_click_log"

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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/secaccu/clock/AutoClickEngine$1;

    invoke-direct {v0, p0}, Lcom/secaccu/clock/AutoClickEngine$1;-><init>(Lcom/secaccu/clock/AutoClickEngine;)V

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    .line 40
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    .line 41
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    .line 42
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->preAlertExact:J

    .line 43
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->resyncExact:J

    .line 46
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

    .line 260
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

    .line 262
    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    .line 263
    :goto_0
    const-string v0, "\uc790\ub3d9 \ud074\ub9ad 5\ubd84 \uc804"

    invoke-virtual {p0, p1, v0}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private fireAt(JJ)V
    .locals 10

    .line 267
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_7

    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    move-object v1, p0

    goto/16 :goto_3

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/secaccu/clock/AutoClickEngine;->appContext:Landroid/content/Context;

    .line 271
    if-nez v2, :cond_1

    .line 272
    return-void

    .line 274
    :cond_1
    invoke-virtual {p0, v2}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v1, p0

    goto/16 :goto_2

    .line 277
    :cond_2
    invoke-static {}, Lcom/secaccu/clock/AutoClickService;->getInstance()Lcom/secaccu/clock/AutoClickService;

    move-result-object v0

    .line 278
    const-string v7, "string"

    if-nez v0, :cond_3

    .line 279
    const-string p1, "auto_click_need_a11y"

    invoke-static {v2, p1, v7}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    return-void

    .line 282
    :cond_3
    iput-wide p1, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    .line 283
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    .line 284
    sget-object v1, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v1}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v3

    double-to-long v3, v3

    move-wide v5, v3

    goto :goto_0

    :cond_4
    move-wide v5, p3

    .line 286
    :goto_0
    invoke-virtual {p0, v2}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v1

    .line 287
    invoke-virtual {p0, v2}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v3

    .line 288
    sget-object v4, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {v4}, Lcom/secaccu/clock/AutoClickOverlay;->hideMarker()V

    .line 289
    invoke-virtual {v0, v1, v3}, Lcom/secaccu/clock/AutoClickService;->click(FF)Z

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/secaccu/clock/AutoClickEngine$2;

    invoke-direct {v3, p0, v2}, Lcom/secaccu/clock/AutoClickEngine$2;-><init>(Lcom/secaccu/clock/AutoClickEngine;Landroid/content/Context;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    if-eqz v0, :cond_5

    .line 297
    move-object v1, p0

    move-wide v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/secaccu/clock/AutoClickEngine;->record(Landroid/content/Context;JJ)V

    .line 298
    const-string p1, "auto_click_fired"

    invoke-static {v2, p1, v7}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, v6}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 300
    :cond_5
    move-object v1, p0

    iput-wide p1, v1, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    .line 301
    const-string p1, "auto_click_fail"

    invoke-static {v2, p1, v7}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/secaccu/clock/AutoClickEngine;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    :goto_1
    return-void

    .line 274
    :cond_6
    move-object v1, p0

    .line 275
    :goto_2
    return-void

    .line 267
    :cond_7
    move-object v1, p0

    .line 268
    :goto_3
    return-void
.end method

.method static id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static leadMs(D)J
    .locals 2

    .line 118
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static mark(Z)Ljava/lang/String;
    .locals 0

    .line 178
    if-eqz p0, :cond_0

    const-string p0, "\u2714"

    goto :goto_0

    :cond_0
    const-string p0, "\u2718"

    :goto_0
    return-object p0
.end method

.method private nextExact(DD)J
    .locals 0

    .line 122
    invoke-static {p1, p2, p3, p4}, Lcom/secaccu/clock/PressHintFormatter;->nextPressAtMs(DD)J

    move-result-wide p1

    return-wide p1
.end method

.method private prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "secaccu_ui"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method private record(Landroid/content/Context;JJ)V
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ubaa9\ud45c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2192 \uc2e4\uc81c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-virtual {p0, p4, p5}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    cmp-long v1, p4, p2

    const-string v2, ""

    if-ltz v1, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long/2addr p4, p2

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "ms)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 151
    const-string p3, "auto_click_log"

    invoke-interface {p1, p3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 152
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    new-array p4, v0, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p5, "\n"

    invoke-virtual {p4, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 153
    :goto_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    nop

    :goto_2
    array-length p2, p4

    if-ge v0, p2, :cond_2

    const/4 p2, 0x4

    if-ge v0, p2, :cond_2

    .line 155
    const/16 p2, 0xa

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object v1, p4, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 157
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    return-void
.end method


# virtual methods
.method public calcLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 133
    sget-object p1, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    :goto_0
    if-nez p1, :cond_1

    .line 135
    const-string p1, ""

    return-object p1

    .line 137
    :cond_1
    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/secaccu/clock/AutoClickEngine;->nextExact(DD)J

    move-result-wide v0

    .line 138
    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 139
    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/secaccu/clock/AutoClickEngine;->leadMs(D)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uc9c0\uae08 \ub204\ub974\uba74 \uc11c\ubc84 \uc815\uac01 \ub3c4\ucc29: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2, v3}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  (RTT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    invoke-virtual {p1}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "ms)\n\uc815\uac01\uacfc \uadf8 \uc0ac\uc774 \ub204\ub984: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    return-object p1
.end method

.method public cancelSchedule()V
    .locals 2

    .line 306
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    .line 307
    iput-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    .line 308
    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public checkLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 171
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

    .line 172
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/secaccu/clock/AutoClickEngine;->mark(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \ubc30\ud130\ub9ac "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
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

    .line 174
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->isReady()Z

    move-result v0

    invoke-static {v0}, Lcom/secaccu/clock/AutoClickEngine;->mark(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    return-object p1
.end method

.method public evaluate(Landroid/content/Context;)V
    .locals 11

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->appContext:Landroid/content/Context;

    .line 218
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 222
    :cond_0
    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object v0

    .line 223
    if-nez v0, :cond_1

    .line 224
    return-void

    .line 226
    :cond_1
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v1

    double-to-long v1, v1

    .line 227
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/secaccu/clock/AutoClickEngine;->nextExact(DD)J

    move-result-wide v3

    .line 228
    iget-wide v5, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    .line 229
    return-void

    .line 231
    :cond_2
    sub-long v5, v3, v1

    .line 233
    const-wide/32 v7, 0x493e0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_3

    const-wide/32 v7, 0x3a980

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    iget-wide v7, p0, Lcom/secaccu/clock/AutoClickEngine;->preAlertExact:J

    cmp-long v7, v7, v3

    if-eqz v7, :cond_3

    .line 234
    iput-wide v3, p0, Lcom/secaccu/clock/AutoClickEngine;->preAlertExact:J

    .line 235
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->alertFiveMin(Landroid/content/Context;)V

    .line 237
    :cond_3
    const-wide/32 v7, 0xea60

    cmp-long p1, v5, v7

    if-gtz p1, :cond_4

    const-wide/16 v7, 0x7530

    cmp-long p1, v5, v7

    if-lez p1, :cond_4

    iget-wide v5, p0, Lcom/secaccu/clock/AutoClickEngine;->resyncExact:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_4

    .line 238
    iput-wide v3, p0, Lcom/secaccu/clock/AutoClickEngine;->resyncExact:J

    .line 239
    sget-object p1, Lcom/secaccu/clock/AutoClickUi;->INSTANCE:Lcom/secaccu/clock/AutoClickUi;

    invoke-virtual {p1}, Lcom/secaccu/clock/AutoClickUi;->syncNow()V

    .line 242
    :cond_4
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/secaccu/clock/AutoClickEngine;->leadMs(D)J

    move-result-wide v5

    sub-long v5, v3, v5

    .line 243
    sub-long v7, v5, v1

    .line 244
    const-wide/16 v9, 0x0

    cmp-long p1, v7, v9

    if-gtz p1, :cond_6

    .line 245
    sub-long/2addr v1, v5

    const-wide/16 v7, 0x96

    cmp-long p1, v1, v7

    if-gtz p1, :cond_5

    .line 246
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/secaccu/clock/AutoClickEngine;->fireAt(JJ)V

    .line 248
    :cond_5
    return-void

    .line 250
    :cond_6
    const-wide/16 v0, 0x7d0

    cmp-long p1, v7, v0

    if-gtz p1, :cond_7

    iget-wide v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_7

    .line 251
    iput-wide v3, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledExact:J

    .line 252
    iput-wide v5, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledPressAt:J

    .line 253
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-object p1, p0, Lcom/secaccu/clock/AutoClickEngine;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/secaccu/clock/AutoClickEngine;->scheduledClick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v7

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 256
    :cond_7
    return-void

    .line 219
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickEngine;->cancelSchedule()V

    .line 220
    return-void
.end method

.method public formatPressAt(J)Ljava/lang/String;
    .locals 3

    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 127
    const-string v1, "Asia/Seoul"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 128
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getX(Landroid/content/Context;)F
    .locals 2

    .line 70
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

    .line 74
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

    .line 66
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

    .line 161
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "auto_click_log"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\ud074\ub9ad \uae30\ub85d \uc5c6\uc74c"

    :cond_0
    return-object p1
.end method

.method public isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 5

    .line 87
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

    .line 89
    nop

    .line 90
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    .line 89
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 93
    if-eq v3, v1, :cond_0

    .line 94
    return v2

    .line 96
    :cond_0
    nop

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "enabled_accessibility_services"

    .line 96
    invoke-static {p1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    return v2

    .line 102
    :cond_1
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x3a

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 103
    invoke-virtual {v3, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 104
    :cond_2
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 106
    return v1

    .line 110
    :cond_3
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p1

    .line 111
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

    .line 166
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 167
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

    .line 53
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

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/secaccu/clock/AutoClickEngine;->setEnabled(Landroid/content/Context;Z)V

    .line 314
    return-void
.end method

.method public positionLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 208
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "string"

    if-nez v0, :cond_0

    .line 209
    const-string v0, "auto_click_pos_unset"

    invoke-static {p1, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getX(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 212
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->getY(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 213
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

.method public setEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "auto_click_enabled"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/secaccu/clock/AutoClickEngine;->cancelSchedule()V

    .line 60
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    .line 61
    sget-object p1, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Lcom/secaccu/clock/AutoClickOverlay;->hideAll()V

    .line 63
    :cond_0
    return-void
.end method

.method public setPosition(Landroid/content/Context;FF)V
    .locals 3

    .line 78
    invoke-direct {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    const-string v1, "auto_click_has_pos"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    const-string v1, "auto_click_x"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    const-string v1, "auto_click_y"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    sget-object v0, Lcom/secaccu/clock/AutoClickOverlay;->INSTANCE:Lcom/secaccu/clock/AutoClickOverlay;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/secaccu/clock/AutoClickOverlay;->showMarker(Landroid/content/Context;FF)V

    .line 84
    return-void
.end method

.method public statusLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 182
    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->isReady()Z

    move-result v0

    const-string v1, "auto_click_need_sync"

    const-string v2, "string"

    if-nez v0, :cond_0

    .line 183
    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    sget-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock;->snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object v0

    .line 186
    if-nez v0, :cond_1

    .line 187
    invoke-static {p1, v1, v2}, Lcom/secaccu/clock/AutoClickEngine;->id(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 189
    :cond_1
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getServerNowMs()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/secaccu/clock/AutoClickEngine;->nextExact(DD)J

    move-result-wide v3

    .line 190
    invoke-virtual {v0}, Lcom/secaccu/clock/ServerClock$Snapshot;->getRttMs()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->leadMs(D)J

    move-result-wide v0

    sub-long v0, v3, v0

    .line 191
    invoke-virtual {p0, v0, v1}, Lcom/secaccu/clock/AutoClickEngine;->formatPressAt(J)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->hasPosition(Landroid/content/Context;)Z

    move-result v1

    const-string v5, "  \u00b7  "

    if-nez v1, :cond_2

    .line 193
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

    .line 195
    :cond_2
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 196
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

    .line 198
    :cond_3
    iget-wide v5, p0, Lcom/secaccu/clock/AutoClickEngine;->firedExact:J

    cmp-long v1, v5, v3

    const-string v3, "  "

    if-nez v1, :cond_4

    .line 199
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

    .line 201
    :cond_4
    invoke-virtual {p0, p1}, Lcom/secaccu/clock/AutoClickEngine;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
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

    .line 204
    :cond_5
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

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 318
    return-void
.end method
